<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EmployeeInfoCreation.ascx.cs" Inherits="LeaveApplication.Employee_Information_Forms.EmployeeInfoCreation.EmployeeInfoCreation" %>

<html lang="en">
<head>
    <link type="text/css" rel="stylesheet" href="" />
    <link type="text/css" rel="stylesheet" href="" />
</head>
<body>
    <div class="container wrapper">
        <div class="row">
            <div class="col-md-12">
                <div class="headerbg">
                    <h2>Employee Information Form</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="compcont">
                <div class="col-md-2 nopad">
                    <img src="images/logo.png" class="img-responsive" />
                </div>
                <div class="col-md-8">
                    <div class="companyinfo">
                        <ul>
                            <li>Tillid Software Solutions Pvt. Ltd.</li>
                            <li>Arut Jothi Towers (II floor),</li>
                            <li>No: 2 &amp; 9, Shakthi Nagar,</li>
                            <li>Mt. Poonamallee Rd,</li>
                            <li>Porur</li>
                            <li>Chennai - 600 116.</li>
                            <li><span>Phone</span>-<span>044 4505 2443</span><span> Wesbite : <a href="http://www.tillidsoftware.com/" target="_blank">http://www.tillidsoftware.com</a></span></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-2 nopad emp_image">
                    <img src="images/placeholder.png" class="img-responsive" />
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="innerheadbg">
                    <h5>Personal Information</h5>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="table-responsive personinfotable">
                    <table class="table tablenobrdr">
                        <tr>
                            <td>First name</td>
                            <td>
                                <input type="text" class="form-control" />
                            </td>
                            <td>Last Name</td>
                            <td>
                                <input type="text" class="form-control" />
                            </td>
                        </tr>
                        <tr>
                            <td>Date of Birth</td>
                            <td>
                                <input type="text" class="form-control" />
                            </td>
                            <td>Gender</td>
                            <td>
                                <label class="radio-inline">
                                    <input type="radio" name="optradio">Male</label>
                                <label class="radio-inline">
                                    <input type="radio" name="optradio">Female</label>
                            </td>
                        </tr>
                        <tr>
                            <td>Present Address</td>
                            <td colspan="3">
                                <textarea rows="6" class="form-control"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td>Permanent Address</td>
                            <td colspan="3">
                                <textarea rows="6" class="form-control"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td>Residence Contact No:</td>
                            <td colspan="3">
                                <table width="100%">
                                    <tr>
                                        <td>
                                            <input type="text" class="form-control" placeholder="Residence Contact Number 1" /></td>
                                        <td class="padclass">
                                            <input type="text" class="form-control" placeholder="Residence Contact Number 2" /></td>
                                        <td>Mobile No:</td>
                                        <td>
                                            <input type="text" class="form-control" /></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>Martial Status:</td>
                            <td colspan="3">
                                <table width="100%">
                                    <tr>
                                        <td colspan="2">
                                            <table width="100%">
                                                <tr>
                                                    <td>
                                                        <label class="radio-inline">
                                                            <input type="radio" name="optradio">Single</label>
                                                        <label class="radio-inline">
                                                            <input type="radio" name="optradio">Married</label>
                                                    </td>
                                                    <td>Marriage Date</td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td colspan="2">
                                            <table width="100%">
                                                <tr>
                                                    <td>
                                                        <input type="text" class="form-control" />
                                                    </td>
                                                    <td class="padclass">Kids (in numbers)</td>
                                                    <td>
                                                        <select class="form-control">
                                                            <option>Select</option>
                                                            <option value="1">1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                        </select>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="innerheadbg">
                    <h5>Family Details</h5>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="table-responsive customtab">
                    <table class="table">
                        <thead>
                            <tr>
                                <th width="10%">Sr No</th>
                                <th width="25%">Name</th>
                                <th width="15%">Date of birth</th>
                                <th width="10%">Gender</th>
                                <th width="20%">Relationship</th>
                                <th width="20%">Occupation</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td align="center">1</td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                            </tr>
                            <tr>
                                <td align="center">2</td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                            </tr>
                            <tr>
                                <td align="center">3</td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                            </tr>
                            <tr>
                                <td align="center">4</td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                            </tr>
                            <tr>
                                <td align="center">5</td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="innerheadbg">
                    <h5>Medical Condition</h5>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="table-responsive customtab">
                    <table class="table">
                        <tr>
                            <td width="30%">Blood Group</td>
                            <td width="70%"></td>
                        </tr>
                        <tr>
                            <td width="30%">Ailments (Heart condition, BP, Sugar, etc.,)</td>
                            <td width="70%"></td>
                        </tr>
                        <tr>
                            <td width="30%">Allergies (Drug, food, etc.,)</td>
                            <td width="70%"></td>
                        </tr>
                        <tr>
                            <td width="30%">Undergoing any other medications?</td>
                            <td width="70%"></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="innerheadbg">
                    <h5>Emergency Contact Details</h5>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="table-responsive customtab">
                    <table class="table">
                        <thead>
                            <tr>
                                <th width="10%">Sr No</th>
                                <th width="25%">Contact Person Name</th>
                                <th width="35%">Relation</th>
                                <th width="15%">Landline No</th>
                                <th width="15%">Mobile No</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td align="center">1</td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                            </tr>
                            <tr>
                                <td align="center">2</td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                            </tr>
                            <tr>
                                <td align="center">3</td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                            </tr>
                            <tr>
                                <td align="center">4</td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                            </tr>
                            <tr>
                                <td align="center">5</td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="innerheadbg">
                    <h5>Educational Qualification</h5>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="table-responsive customtab">
                    <table class="table">
                        <thead>
                            <tr>
                                <th width="10%">Sr No</th>
                                <th width="25%">School/Degree/Diploma/Certificate</th>
                                <th width="25%">Institute/University</th>
                                <th width="15%">From</th>
                                <th width="15%">To</th>
                                <th width="10%">Percentage</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td align="center">1</td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                            </tr>
                            <tr>
                                <td align="center">2</td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                            </tr>
                            <tr>
                                <td align="center">3</td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                            </tr>
                            <tr>
                                <td align="center">4</td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                            </tr>
                            <tr>
                                <td align="center">5</td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="innerheadbg">
                    <h5>Other Dossier</h5>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="table-responsive customtab">
                    <table class="table">
                        <tr>
                            <td width="20%">Aadhar Card Number:</td>
                            <td width="80%"></td>
                        </tr>
                        <tr>
                            <td width="20%">PAN Card Number:</td>
                            <td width="80%"></td>
                        </tr>
                        <tr>
                            <td width="20%">Passport Number :</td>
                            <td width="80%"></td>
                        </tr>
                        <tr>
                            <td width="20%">Bank A/C No you want your salary to be credited (if from HDFC) with Branch Name :</td>
                            <td width="80%"></td>
                        </tr>
                        <tr>
                            <td width="20%">PF A/C No :</td>
                            <td width="80%"></td>
                        </tr>
                        <tr>
                            <td width="20%">UAN No :</td>
                            <td width="80%"></td>
                        </tr>
                        <tr>
                            <td width="20%">ESIC No :</td>
                            <td width="80%"></td>
                        </tr>
                        <tr>
                            <td width="20%">Mode of Transport – Vehicle No :</td>
                            <td width="80%">
                                <table width="100%" class="innertable">
                                    <tr>
                                        <td>Two wheeler</td>
                                        <td>
                                            <input type="text" class="form-control" /></td>
                                        <td class="padclass">Four Wheeler</td>
                                        <td>
                                            <input type="text" class="form-control" /></td>
                                        <td class="padclass">Public Transport</td>
                                        <td>
                                            <input type="text" class="form-control" /></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="innerheadbg">
                    <h5>References (other than family members)</h5>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="table-responsive customtab">
                    <table class="table">
                        <thead>
                            <tr>
                                <th width="10%">Sr No</th>
                                <th width="20%">Name</th>
                                <th width="27%">Working In</th>
                                <th width="27%">Working As</th>
                                <th width="16%">Contact No</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td align="center">1</td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                            </tr>
                            <tr>
                                <td align="center">2</td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                            </tr>
                            <tr>
                                <td align="center">3</td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                            </tr>
                            <tr>
                                <td align="center">4</td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                            </tr>
                            <tr>
                                <td align="center">5</td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="innerheadbg">
                    <h5>Previous Experience(s)</h5>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="table-responsive customtab">
                    <table class="table">
                        <thead>
                            <tr>
                                <th width="5%">Sr No</th>
                                <th width="15%">Company Name</th>
                                <th width="15%">Designation</th>
                                <th width="15%">Date Of Joining</th>
                                <th width="15%">Date Of Relieving</th>
                                <th width="15%">Contact No</th>
                                <th width="20%">Reason</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td align="center">1</td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                            </tr>
                            <tr>
                                <td align="center">2</td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                            </tr>
                            <tr>
                                <td align="center">3</td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                            </tr>
                            <tr>
                                <td align="center">4</td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                            </tr>
                            <tr>
                                <td align="center">5</td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                                <td>
                                    <input type="text" class="form-control"></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <p>I hereby affirm that the aforementioned information given by me is true and correct and that I have not held back any information. Any information given here is found to be false, I shall be liable for dismissal.</p>
                <div class="decalration">
                    <p>This is to acknowledge that Tillid Software Solutions does not hold any of my original documents.  And the company no longer responsible for the same in case of any loss.</p>
                </div>
                <p class="redtxt">* In case any changes in personal information should be intimate to HR department within 24 hrs.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="table-responsive customtab">
                    <table class="table">
                        <tr>
                            <td width="30%">Date:</td>
                            <td width="70%"></td>
                        </tr>
                        <tr>
                            <td width="30%">Place:</td>
                            <td width="70%"></td>
                        </tr>
                        <tr>
                            <td colspan="2" align="right">
                                <p>Sudhakar KT</p>
                                <p><strong>Siganture</strong></p>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</body>
</html>