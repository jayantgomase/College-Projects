<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManagingSectionManagement.aspx.cs" Inherits="DBMSproject.ManagingSectionManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <style>
        div.dataTables_wrapper {
        width: 800px;
        margin: 0 auto;
    }
    </style>

    <script type="text/javascript">
        $(document).ready(function () {
            $('GridView1').DataTable({
                "scrollX": true
            });
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-">
        <div class="row">
            <div class="col-md-6 ">
                
                <div class="card">
                    <div class="card-body">

                         <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Data Changes</h4>
                                 </center>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <center>
                                    <img src="imgs/logo.png" />
                                </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                 <label class="form-label">Bill NO.</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" 
                                        runat="server" TextMode="Number"></asp:TextBox>
                                    </div>
                            </div>
                            <div class="col-md-4">
                                 <label class="form-label">Product Code</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2" 
                                        runat="server"></asp:TextBox>
                                    </div>
                            </div>
                            <div class="col-md-4">
                                 <label class="form-label">Product Type</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" 
                                        runat="server"></asp:TextBox>
                                    </div>
                            </div>                            
                        </div>

                        
                        <div class="row">
                            <div class="col-md-4">
                                 <label class="form-label">Selling Date</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox4"
                                            runat="server" TextMode="Date"></asp:TextBox>
                                    </div>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label">Selling Price</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox5"
                                            runat="server" placeholder="Rs." TextMode="Number"></asp:TextBox>
                                    </div>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label">Warranty Period</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox6"
                                            runat="server" TextMode="Number"></asp:TextBox>
                                    </div>
                            </div>
                        </div>

                        
                        <div class="row">
                            <div class="col-md-5">
                                 <label class="form-label">Customer Name</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox7"
                                            runat="server" placeholder="Name"></asp:TextBox>
                                    </div>
                            </div>                            
                            <div class="col-md-7">
                                 <label class="form-label">Seller Name</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox8"
                                            runat="server" placeholder="Seller Name"></asp:TextBox>
                                    </div>
                            </div>                           
                        </div>                     
                      
                        <div class="row">
                            <div class="col-md-5">
                                 <label class="form-label">Complaint of Product</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox9"
                                            runat="server" placeholder="Text Here"></asp:TextBox>
                                    </div>
                            </div>                            
                            <div class="col-md-7">
                                 <label class="form-label">Complaint Solve?</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox10"
                                            runat="server" placeholder="Yes / No"></asp:TextBox>
                                    </div>
                            </div>                           
                        </div>                     
                      
                        

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        
                   
                        <div class="row">
                            <div class="col-md-4 mx-auto">              
                                        <br />
                                    <div class="form-group">
                                       <center>
                                        <asp:Button CssClass="btn btn-success btn-block btn-lg" ID="Button1"
                                            runat="server" Text="ADD" OnClick="Button1_Click" />
                                        </center>
                                    </div>
                                </div>
                            <div class="col-md-4 mx-auto">              
                                        <br />
                                    <div class="form-group">
                                       <center>
                                        <asp:Button CssClass="btn btn-primary btn-block btn-lg" ID="Button2"
                                            runat="server" Text="UPDATE" OnClick="Button2_Click" />
                                        </center>
                                    </div>
                                </div>
                            <div class="col-md-4 mx-auto">              
                                        <br />
                                    <div class="form-group">
                                       <center>
                                        <asp:Button CssClass="btn btn-danger btn-block btn-lg" ID="Button3"
                                            runat="server" Text="DELETE" OnClick="Button3_Click" />
                                        </center>
                                    </div>
                                </div>
                            </div>
                        </div>                    
                    </div>                    
                    <br />
                </div>
            
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h2>Management Section</h2><br />
                                    <h4>Sold Product Data<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                                        <Columns>
                                            <asp:BoundField DataField="Bill_no" HeaderText="Bill_no" SortExpression="Bill_no" />
                                            <asp:BoundField DataField="product_code" HeaderText="product_code" SortExpression="product_code" />
                                            <asp:BoundField DataField="product_type" HeaderText="product_type" SortExpression="product_type" />
                                            <asp:BoundField DataField="selling_date" HeaderText="selling_date" SortExpression="selling_date" />
                                            <asp:BoundField DataField="selling_price" HeaderText="selling_price" SortExpression="selling_price" />
                                            <asp:BoundField DataField="warrantyperiod" HeaderText="warrantyperiod" SortExpression="warrantyperiod" />
                                            <asp:BoundField DataField="seller_name" HeaderText="seller_name" SortExpression="seller_name" />
                                            <asp:BoundField DataField="customer_name" HeaderText="customer_name" SortExpression="customer_name" />
                                        </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Market_ManagementConnectionString %>" SelectCommand="SELECT [Bill_no], [product_code], [product_type], [selling_date], [selling_price], [warrantyperiod], [seller_name], [customer_name] FROM [Sold_product_data]"></asp:SqlDataSource>
                                    </h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                
                            </div>
                        </div>
                                         
                    
                    </div> 
                </div>
            </div>
        </div>
    </div>
</asp:Content>

