import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/services.dart';

class HtMeter extends StatefulWidget {
  const HtMeter({super.key});

  @override
  State<HtMeter> createState() => _HtMeterState();
}

class _HtMeterState extends State<HtMeter> {
  String? selectedDivision;
  String? selectedSubDivision;
  String? selectedSection;
  DateTime? selectedDate;
  String? selectedPremises;
  String? selectedService;
  String? selectedEbsMeterMake;
  String? selectedFieldMeterMake;
  String? selectedMeterCtRatio;
  String? selectedMeterPtRatio;
  String? selectedMeterWarranty;
  String? selectedCTPTMake;
  String? selectedCTPTptRatio;
  String? selectedCTPTctRatio;
  String? meterSatisfaction = "Yes";
  String? selectedNewMeterMake;
  String? selectedNewMeterCtRatio;
  String? selectedNewMeterPtRatio;
  String? selectedNewMeterWarranty;
  String? selectedNewCTPTMake;
  String? selectedNewCTPTptRatio;
  String? selectedNewCTPTctRatio;
  String? meterNewSatisfaction = "Yes";

  final TextEditingController _fieldmeterserialno = TextEditingController();
  final TextEditingController _fieldmetermf = TextEditingController();
  final TextEditingController _fieldmeterpomonth = TextEditingController();
  final TextEditingController _fieldmeterpono = TextEditingController();
  final TextEditingController _ctptserialno = TextEditingController();
  final TextEditingController _ctptsaqequipmentno = TextEditingController();
  final TextEditingController _kwh = TextEditingController();
  final TextEditingController _kvah = TextEditingController();
  final TextEditingController _md = TextEditingController();
  final TextEditingController _tod1kvah = TextEditingController();
  final TextEditingController _kwhError = TextEditingController();
  final TextEditingController _importKWH = TextEditingController();
  final TextEditingController _exportKWH = TextEditingController();
  final TextEditingController _importKVAH = TextEditingController();
  final TextEditingController _exportKVAH = TextEditingController();
  final TextEditingController _importMD = TextEditingController();
  final TextEditingController _exportMD = TextEditingController();
  final TextEditingController _solartod1kvah = TextEditingController();
  final TextEditingController _kwhErrorInSolar = TextEditingController();
  final TextEditingController _newmeterserialno = TextEditingController();
  final TextEditingController _newmetermf = TextEditingController();
  final TextEditingController _newmeterpono = TextEditingController();
  final TextEditingController _newmeterpomonth = TextEditingController();
  final TextEditingController _newctptserialno = TextEditingController();
  final TextEditingController _newctptsapquipmentno = TextEditingController();
  final TextEditingController _newkwh = TextEditingController();
  final TextEditingController _newkvah = TextEditingController();
  final TextEditingController _newmd = TextEditingController();
  final TextEditingController _newkwhError = TextEditingController();
  final TextEditingController _newimportKWH = TextEditingController();
  final TextEditingController _newexportKWH = TextEditingController();
  final TextEditingController _newimportKVAH = TextEditingController();
  final TextEditingController _newexportKVAH = TextEditingController();
  final TextEditingController _newimportMD = TextEditingController();
  final TextEditingController _newexportMD = TextEditingController();
  final TextEditingController _newkwhErrorInSolar = TextEditingController();
  final TextEditingController _remarks = TextEditingController();
  // final TextEditingController _ = TextEditingController();
  // final TextEditingController _ = TextEditingController();
  // final TextEditingController _ = TextEditingController();
  // final TextEditingController _ = TextEditingController();

  List<String> selectDivision = [
    "SELECT",
    "HANAMKONDA TOWN",
    "HANAMKONDA RURAL",
  ];
  List<String> selectSubDivision = [
    "SELECT",
    "KAZIPET",
    "HANAMKONDA",
    "NAYEEMANAGAR",
  ];
  List<String> selectSection = [
    "SELECT",
    "SUBEDARI",
    "CHOWRASTHA/HNK",
    "NAKKALAGUTTA",
    "MACHILIBAZAR",
  ];
  List<String> selectPremises = [
    "Select",
    "Consumer Service",
    "Substation Service",
  ];

  List<String> selectFieldMetermake = [
    "SELECT",
    "Duke Arnics",
    "Elster",
    "GENUS",
    "HE",
    "HPL",
    "L&G",
  ];
  List<String> selectMeterCtRatio = [
    "-1/A",
    "5/5A",
    "10/5A",
    "20/5A",
    "40/5A",
    "60/5A",
    "75/5A",
    "100/5A",
  ];
  List<String> selectMeterPtRatio = [
    "-/110V",
    "11KV/110V",
    "33KV/110V",
    "132KV/110V",
  ];
  List<String> selectCTPTMake = ["SELECT", "Vishal", "GE Electrical", "Vijay"];

  List<String> selectCTPTctRatio = [
    "-1/A",
    "5/5A",
    "10/5A",
    "20/5A",
    "40/5A",
    "60/5A",
    "75/5A",
    "100/5A",
  ];

  List<String> selectCTPTptRatio = [
    "-/110V",
    "11KV/110V",
    "33KV/110V",
    "132KV/110V",
  ];
  List<String> selectNewMeterMake = [
    "SELECT",
    "Duke Arnics",
    "Elster",
    "GENUS",
    "HE",
    "HPL",
    "L&G",
  ];
  List<String> selectNewMeterCtRatio = [
    "-1/A",
    "5/5A",
    "10/5A",
    "20/5A",
    "40/5A",
    "60/5A",
    "75/5A",
    "100/5A",
  ];
  List<String> selectNewMeterPtRatio = [
    "-/110V",
    "11KV/110V",
    "33KV/110V",
    "132KV/110V",
  ];

  List<String> selectNewCTPTMake = [
    "SELECT",
    "Vishal",
    "GE Electrical",
    "Vijay",
  ];

  List<String> selectNewCTPTctRatio = [
    "-1/A",
    "5/5A",
    "10/5A",
    "20/5A",
    "40/5A",
    "60/5A",
    "75/5A",
    "100/5A",
  ];

  List<String> selectNewCTPTptRatio = [
    "-/110V",
    "11KV/110V",
    "33KV/110V",
    "132KV/110V",
  ];
  Future<void> _pickDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );

    if (picked != null) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  bool isChecked = false;
  bool isNewChecked = false;
  final InputDecoration myTextFieldDecoration = const InputDecoration(
    border: UnderlineInputBorder(),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.grey, width: 1),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.blue, width: 2),
    ),
    contentPadding: EdgeInsets.symmetric(vertical: 4),
  );

  void _openSearchDialog() {
    filteredData = List.from(allData);

    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setDialogState) {
            return AlertDialog(
              title: const Text("Search Service Details"),
              content: SizedBox(
                width: double.maxFinite,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      decoration: const InputDecoration(
                        hintText: "Search...",
                        prefixIcon: Icon(Icons.search),
                      ),
                      onChanged: (value) {
                        setDialogState(() {
                          filteredData = allData
                              .where(
                                (item) => item.toLowerCase().contains(
                                      value.toLowerCase(),
                                    ),
                              )
                              .toList();
                        });
                      },
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        itemCount: filteredData.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(filteredData[index]),
                            onTap: () {
                              // Update parent dropdown
                              setState(() {
                                selectedService = filteredData[index];
                              });
                              Navigator.pop(context);
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Close"),
                ),
              ],
            );
          },
        );
      },
    );
  }

  List<String> filteredData = [];

  List<String> allData = [
    "Alpha",
    "Beta",
    "Gamma",
    "Delta",
    "Epsilon",
    "Zeta",
    "Theta",
    "Iota",
    "Kappa",
  ];

  void _showSnackBar(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        elevation: 0,
        duration: const Duration(seconds: 2),
        content: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Text(
              msg,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _checkField(BuildContext context) {
    if (selectedDivision == null) {
      _showSnackBar(context, "Please Select your Division !");
    } else if (selectedSubDivision == null || selectedSubDivision!.isEmpty) {
      _showSnackBar(context, "Please Select your Sub Division !");
    } else if (selectedSection == null || selectedSection!.isEmpty) {
      _showSnackBar(context, "Please Select your Section !");
    } else if (selectedDate == null) {
      _showSnackBar(context, "Please Select Date of Conversion");
    } else if (selectedPremises == null || selectedPremises!.isEmpty) {
      _showSnackBar(context, "Please Select Nature of Premises");
    } else if (selectedService == null || selectedService!.isEmpty) {
      _showSnackBar(context, "Please Select Your Service No");
    } else if (selectedEbsMeterMake == null || selectedEbsMeterMake!.isEmpty) {
      _showSnackBar(context, "Please Select Meter Make ");
    } else if (selectedFieldMeterMake == null ||
        selectedFieldMeterMake!.isEmpty) {
      _showSnackBar(
          context, "Please Select Meter Make in Meter Details as Per Field");
    } else if (_fieldmeterserialno.text.trim().isEmpty) {
      _showSnackBar(context, " Please Enter Meter Serial No ");
    } else if (selectedMeterCtRatio == null || selectedMeterCtRatio!.isEmpty) {
      _showSnackBar(context, "Please Select Meter CT Ratio");
    } else if (selectedMeterPtRatio == null || selectedMeterPtRatio!.isEmpty) {
      _showSnackBar(context, "Please Select Meter PT Ratio");
    } else if (_fieldmetermf.text.trim().isEmpty) {
      _showSnackBar(context, "Please Enter METER MF");
    } else if (selectedMeterWarranty == null ||
        selectedMeterWarranty!.isEmpty) {
      _showSnackBar(context, "Please Select Meter Warranty");
    } else if (_fieldmeterpono.text.trim().isEmpty) {
      _showSnackBar(context, "Please Enter Meter PO NO");
    } else if (_fieldmeterpomonth.text.trim().isEmpty) {
      _showSnackBar(context, "Please Enter PO MONTH");
    } else if (selectedCTPTMake == null || selectedCTPTMake!.isEmpty) {
      _showSnackBar(context, "Please Select CTPT MAKE");
    } else if (_ctptserialno.text.trim().isEmpty) {
      _showSnackBar(context, "Please Enter CTPT Serial No");
    } else if (_ctptsaqequipmentno.text.trim().isEmpty) {
      _showSnackBar(context, "Please Enter CTPT SAP EQUIPMENT NO");
    } else if (selectedCTPTctRatio == null || selectedCTPTctRatio!.isEmpty) {
      _showSnackBar(context, "Please Select CT Ratio");
    } else if (selectedCTPTptRatio == null || selectedCTPTptRatio!.isEmpty) {
      _showSnackBar(context, "Please Select PT Ratio");
    } else if (!isChecked && _kwh.text.trim().isEmpty) {
      _showSnackBar(context, "Please Enter KWH");
    } else if (!isChecked && _kvah.text.trim().isEmpty) {
      _showSnackBar(context, "Please Enter KVAH");
    } else if (!isChecked && _md.text.trim().isEmpty) {
      _showSnackBar(context, "Please Enter MD");
    } else if (!isChecked && _tod1kvah.text.trim().isEmpty) {
      _showSnackBar(context, "Please Enter TOD 1 KWH");
    } else if (!isChecked && _kwhError.text.trim().isEmpty) {
      _showSnackBar(context, "Please Enter KWH ERROR");
    } else if (!isChecked && meterSatisfaction == null ||
        meterSatisfaction!.isEmpty) {
      _showSnackBar(context, "Please Check the METER SATISFACTION");
    } else if (isChecked && _importKWH.text.trim().isEmpty) {
      _showSnackBar(context, "Please Enter IMPORT KWH ");
    } else if (isChecked && _exportKWH.text.trim().isEmpty) {
      _showSnackBar(context, "Please Enter EXPORT  KWH");
    } else if (isChecked && _importKVAH.text.trim().isEmpty) {
      _showSnackBar(context, "Please Enter IMPORT KVAH");
    } else if (isChecked && _exportKVAH.text.trim().isEmpty) {
      _showSnackBar(context, "Please Enter EXPORT  KAVH");
    } else if (isChecked && _importMD.text.trim().isEmpty) {
      _showSnackBar(context, "Please Enter IMPORT  MD");
    } else if (isChecked && _exportMD.text.trim().isEmpty) {
      _showSnackBar(context, "Please Enter EXPORT  MD");
    } else if (isChecked && _solartod1kvah.text.trim().isEmpty) {
      _showSnackBar(context, "Please Enter TOD 1 KWH");
    } else if (isChecked && _kwhErrorInSolar.text.trim().isEmpty) {
      _showSnackBar(context, "Please Enter KWH ERROR IN SOLAR");
    } else if (isChecked && meterSatisfaction == null ||
        meterSatisfaction!.isEmpty) {
      _showSnackBar(context, "Please Check the METER SATISFACTION");
    } else if (selectedNewMeterMake == null || selectedNewMeterMake!.isEmpty) {
      _showSnackBar(context, "Please Select New Meter Make");
    } else if (_newmeterserialno.text.trim().isEmpty) {
      _showSnackBar(context, "Please Enter New Meter Serial No");
    } else if (selectedNewMeterCtRatio == null ||
        selectedNewMeterCtRatio!.isEmpty) {
      _showSnackBar(context, "Please Select New Meter CT Ratio");
    } else if (selectedNewMeterPtRatio == null ||
        selectedNewMeterPtRatio!.isEmpty) {
      _showSnackBar(context, "Please Select New Meter PT Ratio");
    } else if (_newmetermf.text.trim().isEmpty) {
      _showSnackBar(context, "Please Select New Meter MF");
    } else if (selectedNewMeterWarranty == null ||
        selectedNewMeterWarranty!.isEmpty) {
      _showSnackBar(context, "Please Select New Meter Warranty");
    } else if (_newmeterpono.text.trim().isEmpty) {
      _showSnackBar(context, "Please Enter New Meter PO NO");
    } else if (_newmeterpomonth.text.trim().isEmpty) {
      _showSnackBar(context, "Please Enter New Meter PO MONTH");
    } else if (selectedNewCTPTMake == null || selectedNewCTPTMake!.isEmpty) {
      _showSnackBar(context, "Please Select CTPT METER MAKE");
    } else if (_ctptserialno.text.trim().isEmpty) {
      _showSnackBar(context, "Please Enter CTPT SERIAL NO");
    } else if (_ctptsaqequipmentno.text.trim().isEmpty) {
      _showSnackBar(context, "Please Enter CTPT SAP EQUIPMENT NO");
    } else if (selectedCTPTctRatio == null || selectedCTPTctRatio!.isEmpty) {
      _showSnackBar(context, "Please Select CTPT CT RATIO");
    } else if (selectedCTPTptRatio == null || selectedCTPTptRatio!.isEmpty) {
      _showSnackBar(context, "Please Select CTPT PT RATIO");
    } else if (!isNewChecked && _newkwh.text.trim().isEmpty) {
      _showSnackBar(context, "Please Enter KWH");
    } else if (!isNewChecked && _newkvah.text.trim().isEmpty) {
      _showSnackBar(context, "Please Enter KVAH");
    } else if (!isNewChecked && _newmd.text.trim().isEmpty) {
      _showSnackBar(context, "Please Enter MD");
    } else if (!isNewChecked && _newkwhError.text.trim().isEmpty) {
      _showSnackBar(context, "Please Enter KWH ERROR");
    } else if (!isNewChecked && meterNewSatisfaction == null ||
        meterNewSatisfaction!.isEmpty) {
      _showSnackBar(context, "Please Check the METER SATISFACTION");
    } else if (isNewChecked && _newimportKWH.text.trim().isEmpty) {
      _showSnackBar(context, "Please Enter IMPORT KWH ");
    } else if (isNewChecked && _newexportKWH.text.trim().isEmpty) {
      _showSnackBar(context, "Please Enter EXPORT  KWH");
    } else if (isNewChecked && _newimportKVAH.text.trim().isEmpty) {
      _showSnackBar(context, "Please Enter IMPORT KVAH");
    } else if (isNewChecked && _newexportKVAH.text.trim().isEmpty) {
      _showSnackBar(context, "Please Enter EXPORT  KAVH");
    } else if (isNewChecked && _newimportMD.text.trim().isEmpty) {
      _showSnackBar(context, "Please Enter IMPORT  MD");
    } else if (isNewChecked && _newexportMD.text.trim().isEmpty) {
      _showSnackBar(context, "Please Enter EXPORT  MD");
    } else if (isNewChecked && _newkwhErrorInSolar.text.trim().isEmpty) {
      _showSnackBar(context, "Please Enter KWH ERROR IN SOLAR");
    } else if (isNewChecked && meterNewSatisfaction == null ||
        meterNewSatisfaction!.isEmpty) {
      _showSnackBar(context, "Please Check the METER SATISFACTION");
    } else if (_remarks.text.trim().isEmpty) {
      _showSnackBar(context, "Please Enter Your Remarks");
    } else {
      _showSuccessDialog(context);
    }
  }

  void _showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        backgroundColor: Colors.white,
        titlePadding: EdgeInsets.zero,
        title: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(12),
          color: Colors.green,
          child: const Text(
            "Success",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        content: const Text(
          "All fields are filled successfully ",
          style: TextStyle(color: Colors.green, fontSize: 16),
          textAlign: TextAlign.center,
        ),
        actionsPadding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
        actions: [
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              onPressed: () => Navigator.of(ctx).pop(),
              child: const Text("OK"),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: const Color.fromARGB(255, 167, 15, 46),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('HT METERS', style: TextStyle(fontSize: 18)),
            Text(
              'HT_CONV_HT_TO_SOLAR',
              style: TextStyle(fontSize: 14, color: Colors.white70),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "SECTION DETAILS",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Division Dropdown
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "SELECT DIVISION",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),

                      DropdownButtonFormField2<String>(
                        isExpanded: true,
                        value: selectedDivision,
                        decoration: InputDecoration(
                          hintText: "SELECT",
                          border: OutlineInputBorder(),
                          // labelText: 'Select Complaint 2',
                        ),
                        items: selectDivision
                            .map(
                              (e) => DropdownMenuItem<String>(
                                value: e,
                                child: Text(e),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedDivision = value;
                            selectedSubDivision = null;
                            //selectSubDivision[0]; // reset next
                            selectedSection = null; // reset third
                          });
                        },
                      ),
                      const SizedBox(height: 12),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "SELECT SUB-DIVISION",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      DropdownButtonFormField2<String>(
                        isExpanded: true,
                        value: selectedSubDivision,
                        decoration: InputDecoration(
                          hintText: "SELECT",
                          border: OutlineInputBorder(),
                          // labelText: 'Select Complaint 2',
                        ),
                        items: selectSubDivision
                            .map(
                              (e) => DropdownMenuItem<String>(
                                value: e,
                                child: Text(e),
                              ),
                            )
                            .toList(),
                        onChanged: selectedDivision == null
                            ? null
                            : (value) {
                                setState(() {
                                  selectedSubDivision = value;
                                  selectedSection = null;
                                  // selectedSection = selectSection[0];
                                });
                              },
                      ),

                      const SizedBox(height: 12),

                      // Status Dropdown
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "SELECT SECTION",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),

                      DropdownButtonFormField2<String>(
                        isExpanded: true,
                        value: selectedSection,
                        decoration: InputDecoration(
                          hintText: "SELECT",
                          border: OutlineInputBorder(),
                          // labelText: 'Select Complaint 2',
                        ),
                        items: selectSection
                            .map(
                              (e) => DropdownMenuItem<String>(
                                value: e,
                                child: Text(e),
                              ),
                            )
                            .toList(),
                        onChanged: selectedSubDivision == null
                            ? null
                            : (value) {
                                setState(() {
                                  selectedSection = value;
                                });
                              },
                      ),

                      const SizedBox(height: 12),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "Date of Conversion",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: _pickDate,
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 14,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            selectedDate != null
                                ? "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}"
                                : "TAP HERE",
                            style: const TextStyle(fontSize: 14),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "NATURE OF PREMISES",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),

                      DropdownButtonFormField2<String>(
                        isExpanded: true,
                        value: selectedPremises,
                        decoration: InputDecoration(
                          hintText: "SELECT",
                          border: OutlineInputBorder(),
                          // labelText: 'Select Complaint 2',
                        ),
                        items: selectPremises
                            .map(
                              (e) => DropdownMenuItem<String>(
                                value: e,
                                child: Text(e),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedPremises = value;

                            //selectSubDivision[0]; // reset next
                          });
                        },
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ),

              Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "SERVICE DETAILS",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "SERVICE NO",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: DropdownButtonFormField2<String>(
                              value: selectedService,
                              decoration: const InputDecoration(
                                labelStyle: TextStyle(color: Colors.red),
                                border: OutlineInputBorder(),
                                hintText: "SELECT",
                              ),
                              items: allData
                                  .map(
                                    (status) => DropdownMenuItem(
                                      value: status,
                                      child: Text(status),
                                    ),
                                  )
                                  .toList(),
                              onChanged: (value) {
                                setState(() {
                                  selectedService = value;
                                });
                              },
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.rectangle,
                            ),
                            child: IconButton(
                              onPressed: _openSearchDialog,
                              icon: const Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(color: Colors.grey.shade300, thickness: 1),
                      Row(
                        children: [
                          Text("SC.NO/USCNO"),
                          Spacer(),
                          Text("22 22 129371/15855182"),
                        ],
                      ),
                      Divider(color: Colors.grey.shade300, thickness: 1),
                      Row(
                        children: [
                          Text("NAME"),
                          Spacer(),
                          Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.end, // align right
                            children: [
                              Text("SMT.THOTA SHPBHA RANI &Others"),
                              // Text("&Others"),
                            ],
                          ),
                        ],
                      ),
                      Divider(color: Colors.grey.shade300, thickness: 1),
                      Row(children: [Text("CAT/MF"), Spacer(), Text("2/1")]),
                      Divider(color: Colors.grey.shade300, thickness: 1),
                      Row(
                        children: [
                          Text("DISTRIBUTION"),
                          Spacer(),
                          Text("H.NO.6-2-316"),
                        ],
                      ),
                      Divider(color: Colors.grey.shade300, thickness: 1),
                      Row(children: [Text("CMD"), Spacer(), Text("120.0")]),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "METER DETAILS AS PER EBS",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Division Dropdown
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "METER MAKE",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      DropdownButtonFormField2<String>(
                        isExpanded: true,
                        value: selectedEbsMeterMake,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "SELECT",
                          // labelText: 'Select Complaint 2',
                        ),
                        items: ["SECURI"]
                            .map(
                              (e) => DropdownMenuItem<String>(
                                value: e,
                                child: Text(e),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedEbsMeterMake = value;
                          });
                        },
                      ),

                      const SizedBox(height: 12),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "METER SERIAL NO",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      TextField(
                        readOnly: true,
                        controller: TextEditingController(text: "Read Only "),
                        decoration: const InputDecoration(
                          // labelText: "Read Only Field",
                          border: InputBorder.none,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 12),
                    ],
                  ),
                ),
              ),

              //meter details as per field card
              Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "METER DETAILS AS PER FIELD",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Division Dropdown
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "METER MAKE",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      DropdownButtonFormField2<String>(
                        isExpanded: true,
                        value: selectedFieldMeterMake,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "SELECT",

                          // labelText: 'Select Complaint 2',
                        ),
                        items: selectFieldMetermake
                            .map(
                              (e) => DropdownMenuItem<String>(
                                value: e,
                                child: Text(e),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedFieldMeterMake = value;
                          });
                        },
                      ),

                      const SizedBox(height: 12),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "METER SERIAL NO",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      TextField(
                        controller: _fieldmeterserialno,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "METER CT RATIO",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),

                      DropdownButtonFormField2<String>(
                        isExpanded: true,
                        value: selectedMeterCtRatio,
                        decoration: InputDecoration(
                          hintText: "SELECT",
                          border: OutlineInputBorder(),
                          // labelText: 'Select Complaint 2',
                        ),
                        items: selectMeterCtRatio
                            .map(
                              (e) => DropdownMenuItem<String>(
                                value: e,
                                child: Text(e),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedMeterCtRatio = value;
                          });
                        },
                      ),

                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "METER PT RATIO",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),

                      DropdownButtonFormField2<String>(
                        isExpanded: true,
                        value: selectedMeterPtRatio,
                        decoration: InputDecoration(
                          hintText: "SELECT",
                          border: OutlineInputBorder(),
                          // labelText: 'Select Complaint 2',
                        ),
                        items: selectMeterPtRatio
                            .map(
                              (e) => DropdownMenuItem<String>(
                                value: e,
                                child: Text(e),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedMeterPtRatio = value;
                          });
                        },
                      ),
                      SizedBox(height: 10),

                      SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 2,
                            child: const Text(
                              "METER MF",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            flex: 2,
                            child: TextField(
                              controller: _fieldmetermf,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.right,
                              // textDirection: TextDirection.rtl,
                              inputFormatters: [
                                FilteringTextInputFormatter
                                    .digitsOnly, // only digits
                                LengthLimitingTextInputFormatter(
                                  5,
                                ), // max 5 digits
                              ],
                              decoration: const InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 8,
                                ),
                                border: InputBorder.none,
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                    width: 2,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "METER WARRANTY",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),

                      DropdownButtonFormField2<String>(
                        isExpanded: true,
                        value: selectedMeterWarranty,
                        decoration: InputDecoration(
                          hintText: "SELECT",
                          border: OutlineInputBorder(),
                          // labelText: 'Select Complaint 2',
                        ),
                        items: ["WGP", "RGP", "BGP"]
                            .map(
                              (e) => DropdownMenuItem<String>(
                                value: e,
                                child: Text(e),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedMeterWarranty = value;
                            //     });
                          });
                        },
                      ),
                      SizedBox(height: 12),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "METER PO NO",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      TextField(
                        controller: _fieldmeterpono,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          const Text(
                            "PO MONTH YEAR(MM/YY)",
                            style: TextStyle(fontSize: 12, color: Colors.red),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              controller: _fieldmeterpomonth,
                              textAlign: TextAlign.right,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(
                                  6,
                                ), // MMYYYY (digits only, no slash)
                                TextInputFormatter.withFunction((
                                  oldValue,
                                  newValue,
                                ) {
                                  String digits = newValue.text.replaceAll(
                                    '/',
                                    '',
                                  );

                                  // Auto-prepend '0' if month is single digit and > 1
                                  if (digits.length == 1 &&
                                      int.tryParse(digits) != null) {
                                    int m = int.parse(digits);
                                    if (m > 1) {
                                      digits = '0' + digits; // e.g., 3 → 03
                                    }
                                  }

                                  if (digits.length >= 2) {
                                    int month =
                                        int.tryParse(digits.substring(0, 2)) ??
                                            0;
                                    if (month < 1 || month > 12) {
                                      return oldValue;
                                    }
                                  }

                                  if (digits.length > 6) {
                                    digits = digits.substring(0, 6);
                                  }

                                  // Insert slash after month
                                  String formatted = digits;
                                  if (digits.length > 2) {
                                    formatted = digits.substring(0, 2) +
                                        '/' +
                                        digits.substring(2);
                                  }

                                  return TextEditingValue(
                                    text: formatted,
                                    selection: TextSelection.collapsed(
                                      offset: formatted.length,
                                    ),
                                  );
                                }),
                              ],
                              decoration: InputDecoration(
                                hintText: "MM/YYYY",
                                border: OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 8,
                                  horizontal: 10,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                    ],
                  ),
                ),
              ),

              Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "CTPT DETAILS",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Division Dropdown
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "CTPT MAKE",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      DropdownButtonFormField2<String>(
                        isExpanded: true,
                        value: selectedCTPTMake,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "SELECT",

                          // labelText: 'Select Complaint 2',
                        ),
                        items: selectCTPTMake
                            .map(
                              (e) => DropdownMenuItem<String>(
                                value: e,
                                child: Text(e),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedCTPTMake = value;
                          });
                        },
                      ),

                      const SizedBox(height: 12),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "CTPT SERIAL NO",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      TextField(
                        controller: _ctptserialno,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(20),
                        ],
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "CTPT SAP EQUIPMENT NO",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),

                      TextField(
                        controller: _ctptsaqequipmentno,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(15),
                        ],
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "CT RATIO",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),

                      DropdownButtonFormField2<String>(
                        isExpanded: true,
                        value: selectedCTPTctRatio,
                        decoration: InputDecoration(
                          hintText: "SELECT",
                          border: OutlineInputBorder(),
                          // labelText: 'Select Complaint 2',
                        ),
                        items: selectCTPTctRatio
                            .map(
                              (e) => DropdownMenuItem<String>(
                                value: e,
                                child: Text(e),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedCTPTctRatio = value;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "PT RATIO",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),

                      DropdownButtonFormField2<String>(
                        isExpanded: true,
                        value: selectedCTPTptRatio,
                        decoration: InputDecoration(
                          hintText: "SELECT",
                          border: OutlineInputBorder(),
                          // labelText: 'Select Complaint 2',
                        ),
                        items: selectCTPTptRatio
                            .map(
                              (e) => DropdownMenuItem<String>(
                                value: e,
                                child: Text(e),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedCTPTptRatio = value;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),

              Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "METER READING DETAILS",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Division Dropdown
                      Row(
                        children: [
                          Checkbox(
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value ?? false;
                              });
                            },
                          ),
                          const Text("SOLAR METER"),
                        ],
                      ),
                      if (!isChecked) ...[
                        Row(
                          children: [
                            Expanded(flex: 2, child: const Text("KWH")),
                            Expanded(
                              flex: 2,
                              child: TextField(
                                controller: _kwh,
                                textAlign: TextAlign.right,
                                keyboardType: TextInputType.number,
                                decoration: myTextFieldDecoration,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(flex: 2, child: const Text("KVAH")),
                            Expanded(
                              flex: 2,
                              child: TextField(
                                controller: _kvah,
                                textAlign: TextAlign.right,
                                keyboardType: TextInputType.number,
                                decoration: myTextFieldDecoration,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(flex: 2, child: const Text("MD")),
                            Expanded(
                              flex: 2,
                              child: TextField(
                                controller: _md,
                                textAlign: TextAlign.right,
                                keyboardType: TextInputType.number,
                                decoration: myTextFieldDecoration,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(flex: 2, child: const Text("TOD 1 KVAH")),
                            Expanded(
                              flex: 2,
                              child: TextField(
                                controller: _tod1kvah,
                                textAlign: TextAlign.right,
                                keyboardType: TextInputType.number,
                                decoration: myTextFieldDecoration,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(flex: 2, child: const Text("KWH ERROR %")),
                            Expanded(
                              flex: 2,
                              child: TextField(
                                controller: _kwhError,
                                textAlign: TextAlign.right,
                                keyboardType: TextInputType.number,
                                decoration: myTextFieldDecoration,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: const Text("METER SATISFACTORY"),
                            ),
                            Expanded(
                              flex: 2,
                              child: DropdownButtonFormField2<String>(
                                decoration: myTextFieldDecoration,
                                value: meterSatisfaction,
                                hint: const Text("Select"),
                                items: ["Yes", "No"]
                                    .map(
                                      (e) => DropdownMenuItem<String>(
                                        value: e,
                                        child: Text(e),
                                      ),
                                    )
                                    .toList(),
                                onChanged: (value) {
                                  setState(() {
                                    meterSatisfaction = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ] else ...[
                        Row(
                          children: [
                            Expanded(flex: 2, child: const Text("IMPORT KWH")),
                            Expanded(
                              flex: 2,
                              child: TextField(
                                controller: _importKWH,
                                textAlign: TextAlign.right,
                                keyboardType: TextInputType.number,
                                decoration: myTextFieldDecoration,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(flex: 2, child: const Text("EXPORT KWH")),
                            Expanded(
                              flex: 2,
                              child: TextField(
                                controller: _exportKWH,
                                textAlign: TextAlign.right,
                                keyboardType: TextInputType.number,
                                decoration: myTextFieldDecoration,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(flex: 2, child: const Text("IMPORT KVAH")),
                            Expanded(
                              flex: 2,
                              child: TextField(
                                controller: _importKVAH,
                                textAlign: TextAlign.right,
                                keyboardType: TextInputType.number,
                                decoration: myTextFieldDecoration,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(flex: 2, child: const Text("EXPORT KVAH")),
                            Expanded(
                              flex: 2,
                              child: TextField(
                                controller: _exportKVAH,
                                textAlign: TextAlign.right,
                                keyboardType: TextInputType.number,
                                decoration: myTextFieldDecoration,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(flex: 2, child: const Text("IMPORT MD")),
                            Expanded(
                              flex: 2,
                              child: TextField(
                                controller: _importMD,
                                textAlign: TextAlign.right,
                                keyboardType: TextInputType.number,
                                decoration: myTextFieldDecoration,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(flex: 2, child: const Text("EXPORT MD")),
                            Expanded(
                              flex: 2,
                              child: TextField(
                                controller: _exportMD,
                                textAlign: TextAlign.right,
                                keyboardType: TextInputType.number,
                                decoration: myTextFieldDecoration,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(flex: 2, child: const Text("TOD 1 KVAH")),
                            Expanded(
                              flex: 2,
                              child: TextField(
                                controller: _solartod1kvah,
                                textAlign: TextAlign.right,
                                keyboardType: TextInputType.number,
                                decoration: myTextFieldDecoration,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(flex: 2, child: const Text("KWH ERROR %")),
                            Expanded(
                              flex: 2,
                              child: TextField(
                                controller: _kwhErrorInSolar,
                                textAlign: TextAlign.right,
                                keyboardType: TextInputType.number,
                                decoration: myTextFieldDecoration,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: const Text("METER SATISFACTORY"),
                            ),
                            Expanded(
                              flex: 2,
                              child: DropdownButtonFormField2<String>(
                                decoration: myTextFieldDecoration,
                                value: meterSatisfaction,
                                hint: const Text("Select"),
                                items: ["Yes", "No"]
                                    .map(
                                      (e) => DropdownMenuItem<String>(
                                        value: e,
                                        child: Text(e),
                                      ),
                                    )
                                    .toList(),
                                onChanged: (value) {
                                  setState(() {
                                    meterSatisfaction = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ],
                  ),
                ),
              ),

              //NEW METER DETAILS
              Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "NEW METER DETAILS",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Division Dropdown
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "NEW METER MAKE",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      DropdownButtonFormField2<String>(
                        isExpanded: true,
                        value: selectedNewMeterMake,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "SELECT",

                          // labelText: 'Select Complaint 2',
                        ),
                        items: selectNewMeterMake
                            .map(
                              (e) => DropdownMenuItem<String>(
                                value: e,
                                child: Text(e),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedNewMeterMake = value;
                          });
                        },
                      ),

                      const SizedBox(height: 12),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "METER SERIAL NO",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      TextField(
                        controller: _newmeterserialno,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(20),
                        ],
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 12),

                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "METER CT RATIO",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),

                      DropdownButtonFormField2<String>(
                        isExpanded: true,
                        value: selectedNewMeterCtRatio,
                        decoration: InputDecoration(
                          hintText: "SELECT",
                          border: OutlineInputBorder(),
                          // labelText: 'Select Complaint 2',
                        ),
                        items: selectNewMeterCtRatio
                            .map(
                              (e) => DropdownMenuItem<String>(
                                value: e,
                                child: Text(e),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedNewMeterCtRatio = value;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "METER PT RATIO",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),

                      DropdownButtonFormField2<String>(
                        isExpanded: true,
                        value: selectedNewMeterPtRatio,
                        decoration: InputDecoration(
                          hintText: "SELECT",
                          border: OutlineInputBorder(),
                          // labelText: 'Select Complaint 2',
                        ),
                        items: selectNewMeterPtRatio
                            .map(
                              (e) => DropdownMenuItem<String>(
                                value: e,
                                child: Text(e),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedNewMeterPtRatio = value;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 2,
                            child: const Text(
                              "METER MF",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            flex: 2,
                            child: TextField(
                              controller: _newmetermf,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.right,
                              // textDirection: TextDirection.rtl,
                              inputFormatters: [
                                FilteringTextInputFormatter
                                    .digitsOnly, // only digits
                                LengthLimitingTextInputFormatter(
                                  5,
                                ), // max 5 digits
                              ],
                              decoration: const InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 8,
                                ),
                                border: InputBorder.none,
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                    width: 2,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // meter warranty
                      SizedBox(height: 12),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "METER WARRANTY",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),

                      DropdownButtonFormField2<String>(
                        isExpanded: true,
                        value: selectedNewMeterWarranty,
                        decoration: InputDecoration(
                          hintText: "SELECT",
                          border: OutlineInputBorder(),
                          // labelText: 'Select Complaint 2',
                        ),
                        items: ["WGP", "RGP", "BGP"]
                            .map(
                              (e) => DropdownMenuItem<String>(
                                value: e,
                                child: Text(e),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedNewMeterWarranty = value;
                            //     });
                          });
                        },
                      ),
                      SizedBox(height: 12),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "METER PO NO",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      TextField(
                        controller: _newmeterpono,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          const Text(
                            "PO MONTH YEAR(MM/YY)",
                            style: TextStyle(fontSize: 12, color: Colors.red),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              controller: _newmeterpomonth,
                              textAlign: TextAlign.right,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(
                                  6,
                                ), // MMYYYY (digits only, no slash)
                                TextInputFormatter.withFunction((
                                  oldValue,
                                  newValue,
                                ) {
                                  String digits = newValue.text.replaceAll(
                                    '/',
                                    '',
                                  );

                                  // Auto-prepend '0' if month is single digit and > 1
                                  if (digits.length == 1 &&
                                      int.tryParse(digits) != null) {
                                    int m = int.parse(digits);
                                    if (m > 1) {
                                      digits = '0' + digits; // e.g., 3 → 03
                                    }
                                  }

                                  // Validate month
                                  if (digits.length >= 2) {
                                    int month =
                                        int.tryParse(digits.substring(0, 2)) ??
                                            0;
                                    if (month < 1 || month > 12) {
                                      return oldValue; // Reject invalid month
                                    }
                                  }

                                  // Limit to 6 digits (MMYYYY)
                                  if (digits.length > 6) {
                                    digits = digits.substring(0, 6);
                                  }

                                  // Insert slash after month
                                  String formatted = digits;
                                  if (digits.length > 2) {
                                    formatted = digits.substring(0, 2) +
                                        '/' +
                                        digits.substring(2);
                                  }

                                  return TextEditingValue(
                                    text: formatted,
                                    selection: TextSelection.collapsed(
                                      offset: formatted.length,
                                    ),
                                  );
                                }),
                              ],
                              decoration: InputDecoration(
                                hintText: "MM/YYYY",
                                border: OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 8,
                                  horizontal: 10,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                    ],
                  ),
                ),
              ),
              // NEW CTPT DETAILS
              Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "NEW CTPT DETAILS",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Division Dropdown
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "CTPT MAKE",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      DropdownButtonFormField2<String>(
                        isExpanded: true,
                        value: selectedNewCTPTMake,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "SELECT",

                          // labelText: 'Select Complaint 2',
                        ),
                        items: selectNewCTPTMake
                            .map(
                              (e) => DropdownMenuItem<String>(
                                value: e,
                                child: Text(e),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedNewCTPTMake = value;
                          });
                        },
                      ),

                      const SizedBox(height: 12),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "CTPT SERIAL NO",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      TextField(
                        controller: _newctptserialno,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(20),
                        ],
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "NEW CTPT SAP EQUIPMENT NO",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),

                      TextField(
                        controller: _newctptsapquipmentno,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(15),
                        ],
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "CT RATIO",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),

                      DropdownButtonFormField2<String>(
                        isExpanded: true,
                        value: selectedNewCTPTctRatio,
                        decoration: InputDecoration(
                          hintText: "SELECT",
                          border: OutlineInputBorder(),
                          // labelText: 'Select Complaint 2',
                        ),
                        items: selectNewCTPTctRatio
                            .map(
                              (e) => DropdownMenuItem<String>(
                                value: e,
                                child: Text(e),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedNewCTPTctRatio = value;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "PT RATIO",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),

                      DropdownButtonFormField2<String>(
                        isExpanded: true,
                        value: selectedNewCTPTptRatio,
                        decoration: InputDecoration(
                          hintText: "SELECT",
                          border: OutlineInputBorder(),
                          // labelText: 'Select Complaint 2',
                        ),
                        items: selectNewCTPTptRatio
                            .map(
                              (e) => DropdownMenuItem<String>(
                                value: e,
                                child: Text(e),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedNewCTPTptRatio = value;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),

              // NEW METER READING DETAILS
              Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "NEW METER READING DETAILS",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Division Dropdown
                      Row(
                        children: [
                          Checkbox(
                            value: isNewChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isNewChecked = value ?? false;
                              });
                            },
                          ),
                          const Text("SOLAR METER"),
                        ],
                      ),
                      if (!isNewChecked) ...[
                        Row(
                          children: [
                            Expanded(flex: 2, child: const Text("KWH")),
                            Expanded(
                              flex: 2,
                              child: TextField(
                                controller: _newkwh,
                                textAlign: TextAlign.right,
                                keyboardType: TextInputType.number,
                                decoration: myTextFieldDecoration,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(flex: 2, child: const Text("KVAH")),
                            Expanded(
                              flex: 2,
                              child: TextField(
                                controller: _newkvah,
                                textAlign: TextAlign.right,
                                keyboardType: TextInputType.number,
                                decoration: myTextFieldDecoration,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(flex: 2, child: const Text("MD")),
                            Expanded(
                              flex: 2,
                              child: TextField(
                                controller: _newmd,
                                textAlign: TextAlign.right,
                                keyboardType: TextInputType.number,
                                decoration: myTextFieldDecoration,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(flex: 2, child: const Text("KWH ERROR %")),
                            Expanded(
                              flex: 2,
                              child: TextField(
                                controller: _newkwhError,
                                textAlign: TextAlign.right,
                                keyboardType: TextInputType.number,
                                decoration: myTextFieldDecoration,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: const Text("NEW METER SATISFACTORY"),
                            ),
                            Expanded(
                              flex: 2,
                              child: DropdownButtonFormField2<String>(
                                decoration: myTextFieldDecoration,
                                value: meterNewSatisfaction,
                                hint: const Text("Select"),
                                items: ["Yes", "No"]
                                    .map(
                                      (e) => DropdownMenuItem<String>(
                                        value: e,
                                        child: Text(e),
                                      ),
                                    )
                                    .toList(),
                                onChanged: (value) {
                                  setState(() {
                                    meterNewSatisfaction = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ] else ...[
                        Row(
                          children: [
                            Expanded(flex: 2, child: const Text("IMPORT KWH")),
                            Expanded(
                              flex: 2,
                              child: TextField(
                                controller: _newimportKWH,
                                textAlign: TextAlign.right,
                                keyboardType: TextInputType.number,
                                decoration: myTextFieldDecoration,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(flex: 2, child: const Text("EXPORT KWH")),
                            Expanded(
                              flex: 2,
                              child: TextField(
                                controller: _newexportKWH,
                                textAlign: TextAlign.right,
                                keyboardType: TextInputType.number,
                                decoration: myTextFieldDecoration,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(flex: 2, child: const Text("IMPORT KVAH")),
                            Expanded(
                              flex: 2,
                              child: TextField(
                                controller: _newimportKVAH,
                                textAlign: TextAlign.right,
                                keyboardType: TextInputType.number,
                                decoration: myTextFieldDecoration,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(flex: 2, child: const Text("EXPORT KVAH")),
                            Expanded(
                              flex: 2,
                              child: TextField(
                                controller: _newexportKVAH,
                                textAlign: TextAlign.right,
                                keyboardType: TextInputType.number,
                                decoration: myTextFieldDecoration,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(flex: 2, child: const Text("IMPORT MD")),
                            Expanded(
                              flex: 2,
                              child: TextField(
                                controller: _newimportMD,
                                textAlign: TextAlign.right,
                                keyboardType: TextInputType.number,
                                decoration: myTextFieldDecoration,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(flex: 2, child: const Text("EXPORT MD")),
                            Expanded(
                              flex: 2,
                              child: TextField(
                                controller: _newexportMD,
                                textAlign: TextAlign.right,
                                keyboardType: TextInputType.number,
                                decoration: myTextFieldDecoration,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(flex: 2, child: const Text("KWH ERROR %")),
                            Expanded(
                              flex: 2,
                              child: TextField(
                                controller: _newkwhErrorInSolar,
                                textAlign: TextAlign.right,
                                keyboardType: TextInputType.number,
                                decoration: myTextFieldDecoration,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: const Text("NEW METER SATISFACTORY"),
                            ),
                            Expanded(
                              flex: 2,
                              child: DropdownButtonFormField2<String>(
                                decoration: myTextFieldDecoration,
                                value: meterNewSatisfaction,
                                hint: const Text("Select"),
                                items: ["Yes", "No"]
                                    .map(
                                      (e) => DropdownMenuItem<String>(
                                        value: e,
                                        child: Text(e),
                                      ),
                                    )
                                    .toList(),
                                onChanged: (value) {
                                  setState(() {
                                    meterNewSatisfaction = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),

              Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "REMARKS",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "REMARKS",
                            style: TextStyle(fontSize: 12, color: Colors.red),
                          ),
                        ],
                      ),
                      TextField(
                        controller: _remarks,
                        minLines: 5,
                        maxLines: null,
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                          hintText: "Enter remarks...",
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),

              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    _checkField(context);
                  },
                  child: const Text("Submit"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
