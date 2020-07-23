using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace ForestProductTracker
{
    public class Transactions
    {
        public string State { get; }
        public string Forest { get; }
        public DateTime Date_of_trans { get; }
        public string Quantity { get; }
        public int T_id { get; }
        public int F_Id { get; }
        public int Tr_Id { get; }
        public Transactions(string state, string forest, DateTime date_of_trans, string quantity, int t_id, int f_Id, int tr_Id)
        {
            State = state;
            Forest = forest;
            Date_of_trans = date_of_trans;
            Quantity = quantity;
            T_id = t_id;
            F_Id = f_Id;
            Tr_Id = tr_Id;
        }
    }
    public class Block
    {
        private readonly DateTime _timeStamp;
        private long _nonce;
        public string PreviousHash { get; set; }
        public List<Transactions> Transactions { get; set; }

        public string Hash { get; private set; }

        public Block(DateTime timeStamp, List<Transactions> transactions, string previousHash = "")
        {
            _timeStamp = timeStamp;
            _nonce = 0;
            Transactions = transactions;
            PreviousHash = previousHash;
            Hash = CreateHash();
        }
        public void MineBlock(int proofOfWorkDifficulty)
        {
            string hashValidationTemplate = new String('0', proofOfWorkDifficulty);

            while (Hash.Substring(0, proofOfWorkDifficulty) != hashValidationTemplate)
            {
                _nonce++;
                Hash = CreateHash();
            }
            //Console.WriteLine("Blocked with HASH={0} successfully mined!", Hash);
        }
        public string CreateHash()
        {
            using (SHA256 sha256 = SHA256.Create())
            {
                string rawData = PreviousHash + _timeStamp + Transactions + _nonce;
                byte[] bytes = sha256.ComputeHash(Encoding.UTF8.GetBytes(rawData));
                return Encoding.Default.GetString(bytes);
            }
        }
    }

    public class BlockChain
    {
        private readonly int _proofOfWorkDifficulty;
        private readonly double _miningReward;
        private List<Transactions> _pendingTransactions;
        public List<Block> Chain { get; set; }
        public BlockChain(int proofOfWorkDifficulty, int miningReward)
        {
            _proofOfWorkDifficulty = proofOfWorkDifficulty;
            _miningReward = miningReward;
            _pendingTransactions = new List<Transactions>();
            Chain = new List<Block> { CreateGenesisBlock() };
        }
        public void CreateTransaction(Transactions transaction)
        {
            _pendingTransactions.Add(transaction);
        }
        
        public bool IsValidChain()
        {
            for (int i = 1; i < Chain.Count; i++)
            {
                Block previousBlock = Chain[i - 1];
                Block currentBlock = Chain[i];
                if (currentBlock.Hash != currentBlock.CreateHash())
                    return false;
                if (currentBlock.PreviousHash != previousBlock.Hash)
                    return false;
            }
            return true;
        }
        
        private Block CreateGenesisBlock()
        {
            List<Transactions> transactions = new List<Transactions> { new Transactions("", "",new DateTime(), "", 0, 0, 0) };
            return new Block(DateTime.Now, transactions, "0");
        }
    }

    public partial class TraderVerifyTransaction : System.Web.UI.Page
    {
        SqlDataAdapter sda = null;
        DataSet ds = null;
        String connetionString = @"Data Source=LAPTOP-F67O8TSJ\MSSQLSERVER8;Initial Catalog=Forest_user_data ; integrated Security=true ";

        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(connetionString);
            conn.Open();
            sda = new SqlDataAdapter("Select State,Forest,Date_of_trans,Quantity,T_id,F_Id From dbo.Transactions where Tr_Id=" + Session["Id"] + " AND isVerfied = 0 ", conn);            
            ds = new DataSet();
            sda.Fill(ds, "dbo.Transactions");
            GridView1.DataSource = ds.Tables["dbo.Transactions"];
            GridView1.DataBind();
            conn.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Transaction 1
            string state;
            string forest;
            DateTime Date_of_trans;
            string quantity;
            int t_id;
            int f_id;
            int tr_id;

            conn = new SqlConnection(connetionString);
            conn.Open();
            sda = new SqlDataAdapter("Select State,Forest,Date_of_trans,Quantity,T_id,F_Id From dbo.Transactions where Tr_Id=" + Session["Id"] + " AND isVerfied = 0 ", conn);
            ds = new DataSet();
            sda.Fill(ds, "dbo.Transactions");

            BlockChain blockChain = new BlockChain(proofOfWorkDifficulty: 2, miningReward: 10);

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                state = ds.Tables[0].Rows[i]["State"].ToString();
                forest = ds.Tables[0].Rows[i]["Forest"].ToString();
                Date_of_trans = new DateTime();
                quantity = ds.Tables[0].Rows[i]["Quantity"].ToString();
                t_id = Int32.Parse(ds.Tables[0].Rows[i]["T_id"].ToString());
                f_id = Int32.Parse(ds.Tables[0].Rows[i]["F_Id"].ToString());               
                tr_id = Int32.Parse(Session["Id"].ToString());

                blockChain.CreateTransaction(new Transactions(state, forest, Date_of_trans, quantity, t_id, f_id, tr_id));

            }

            if (blockChain.IsValidChain().Equals(true))
            {
                SqlCommand cmd = new SqlCommand("UPDATE dbo.Transactions SET isVerfied=1 WHERE Tr_Id="+ Session["Id"] , conn);
               int res= cmd.ExecuteNonQuery();
                if(res>0)
                MessageBox.Show("Transaction has been verified");
            }                                                     
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("TraderDashboard.aspx");
        }
    }
}