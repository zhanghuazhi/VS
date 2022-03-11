using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Xml;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace zhanghuazhi1029WindowsFormsApp
{
    public partial class EmployeeRecordsForm : Form
    {
        public EmployeeRecordsForm()
        {
            InitializeComponent();
            PopulateTreeView();
            initalizeListViem();
        }

        private void EmployeeRecordsForm_Load(object sender, EventArgs e)
        {
            
        }
        private void PopulateTreeView()
        {
            statusBarPanel1.Tag = "Refreshing Employee Code .Please Wait...";
            this.Cursor = Cursors.WaitCursor;
            treeView1.Nodes.Clear();
            TreeNode tvRootNode = new TreeNode("Employee Records");
            this.Cursor=Cursors.Default;
            treeView1.Nodes.Add(tvRootNode);

            TreeNodeCollection nodeCollection = tvRootNode.Nodes;
            XmlTextReader reader = new XmlTextReader("D:\\VS\\repos" +
                "\\zhanghuazhi1029WindowsFormsApp\\zhanghuazhi1029WindowsFormsApp\\EmpRec.xml");
            reader.MoveToElement();
            try
            {
                while (reader.Read())
                {
                    if(reader.HasAttributes  && reader.NodeType == XmlNodeType.Element)
                    {
                        reader.MoveToElement();
                        reader.MoveToElement();

                        reader.MoveToAttribute("Id");
                        string strVal=reader.Value;

                        reader.Read();
                        reader.Read();
                        if(reader.Name == "Dept")
                        {
                            reader.Read();
                        }
                        TreeNode EcodeNode  = new TreeNode(strVal);
                        nodeCollection.Add(EcodeNode);
                    }
                }
                statusBarPanel1.Tag = "Click on an employee code to see their record.";
            }
            catch(XmlException ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        protected void initalizeListViem()
        {
             listView1.Clear();
            listView1.Columns.Add("Employee Name",255,HorizontalAlignment.Left);
            listView1.Columns.Add("Date of join ", 70, HorizontalAlignment.Right);
            listView1.Columns.Add("Gread", 105, HorizontalAlignment.Left);
            listView1.Columns.Add("Salary", 105, HorizontalAlignment.Left);
        }
        protected void PopulateListView(TreeNode crrNode)
        {
            initalizeListViem();
            XmlTextReader listRead = new XmlTextReader("D:\\VS\\repos" +
               "\\zhanghuazhi1029WindowsFormsApp\\zhanghuazhi1029WindowsFormsApp\\EmpRec.xml");
            listRead.MoveToElement();
            while (listRead.Read())
            {
                string strNodeName;
                string strNodePath;
                string Name;
                string gread;
                string doj;
                string sal;
                string[] strItemsArr =new string[4];
                listRead.MoveToFirstAttribute();
                strNodeName = listRead.Value;
                strNodePath = crrNode.FullPath.Remove(0, 17);
                if (strNodeName == strNodePath)
                {
                    ListViewItem lvi;
                    listRead.MoveToNextAttribute();
                    Name = listRead.Value;
                    lvi=listView1.Items.Add(Name);

                    listRead.Read();
                    listRead.Read();

                    listRead.MoveToFirstAttribute();
                    doj = listRead.Value;
                    lvi.SubItems.Add(doj);

                    listRead.MoveToNextAttribute();
                    gread = listRead.Value;
                    lvi.SubItems.Add(gread);

                    listRead.MoveToNextAttribute();
                    sal = listRead.Value;
                    lvi.SubItems.Add(sal);

                    listRead.MoveToNextAttribute();
                    listRead.MoveToElement();
                    listRead.ReadString();
                }
                
            }
        }

        private void treeView1_AfterSelect(object sender, TreeViewEventArgs e)
        {
            TreeNode currNode=e.Node;
            TreeNode tvRootNode = null;
            if (tvRootNode == currNode)
            {
                statusBarPanel1.Text = "Double click the Employee Records";
                return;
            }
            else
            {
                statusBarPanel1.Text = "Click an Employee code to view individual record";
            }
            PopulateListView(currNode);
        }
    }
}
