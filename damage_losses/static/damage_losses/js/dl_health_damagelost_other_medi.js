var app = angular.module('dsHealthDamagelostOtherMediApp', []);

app.controller("DsHealthDamagelostOtherMediController", ['$scope','$http',function ($scope,$http) {

 $scope.district;
 $scope.incident;
 $scope.bs_data = {};

 //bind Disasteroption
    $scope.dlDataHealthDamagelostOtherMedicalFacilities = {
        'Table_6': {
            'DmfDfaNum': [{
                num_des_facilities: 'Number of Destroyed Facilities',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            }],
            'DmfDfaPaf': [{
                num_patients_affected: 'Male',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                num_patients_affected: 'Female',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            }],
            'DmfDaStructure': [{
                asset: '1 Floor Structure',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                asset: '2-3 Floors Structure',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                asset: 'More Than 3 Floors Structure',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                asset: 'Value of Destroyed Structure',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            }],
            'DmfDaSupplies': [{
                asset: 'Medicines',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                asset: 'Medical Supplies',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                asset: 'Others',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                asset: 'Value of Destroyed Supplies',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            }],
            'DmfDaMequipment': [{
                asset: 'CT Scan',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                asset: 'X-ray Machine',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                asset: 'MRI Machine',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                asset: 'Other Equipment (Specify)',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                asset: 'Value of Destroyed Medical Equipment',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            }],
            'DmfDaOassets': [{
                asset: 'Computers',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                asset: 'Vehicles',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                asset: 'Furniture',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                asset: 'Other Equipment (Specify)',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                asset: 'Office Equipment',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                asset: 'Others',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                asset: 'Value of Destroyed Other Assets',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                asset: 'VALUE OF DESTROYED ASSETS',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            }],
            'DmfPdfaNum': [{
                num_pdamaged_facilities: 'Number of Partially Damaged Facilities',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            }],
            'DmfPdfaPaf': [{
                num_patients_affected: 'Male',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                num_patients_affected: 'Female',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            }],

           'DmfPdaStructure': [{
                asset: 'Roof',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                asset: 'Wall',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                asset: 'Flooring',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                asset: 'Value of Partially Damaged Structure',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            }],
            'DmfPdaMequipment': [{
                asset: 'CT Scan',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                asset: 'X-ray Machine',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                asset: 'MRI Machine',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                asset: 'Other Equipment (Specify)',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                asset: 'Value of Partially Damaged Medical Equipment',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            }],
            'DmfPdaOassets': [{
                asset: 'Computers',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                asset: 'Vehicles',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                asset: 'Furniture',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                asset: 'Office Equipment',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                asset: 'Others',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                asset: 'Value of Partially Damaged Other Assets',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                asset: 'VALUE OF PARTIALLY DAMAGED ASSETS',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                asset: 'TOTAL VALUE OF DAMAGES',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            }],
            'DmfLosFi': [{
                type_of_losses: 'Disaster Year 1',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                type_of_losses: 'Year 2',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                type_of_losses: 'Total',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            }],
            'DmfLosCud': [{
                type_of_losses: 'Disaster Year 1',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                type_of_losses: 'Year 2',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                type_of_losses: 'Total',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            }],
            'DmfLosHoc': [{
                type_of_losses: 'Disaster Year 1',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                type_of_losses: 'Year 2',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                type_of_losses: 'Total',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            }],
            'DmfLosOue': [{
                type_of_losses: 'Disaster Year 1',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                type_of_losses: 'Year 2',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },{
                type_of_losses: 'Total',
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            },
            {
                type_of_losses: 'TOTAL VALUE OF LOSSES',
                base_hospital : 0,
                base_hospital : 0,
                divisional_hospital: 0,
                rural_hospital : 0,
                central_dispensary: 0,
                pmcus : 0,
                phccs: 0,
                mchcs : 0,
                total: 0,
            }]



        }
    }


    $scope.SaveData = function() {
        console.log($scope.data);

        $http({
            method: 'POST',
            url: '/damage_losses/dl_save_data',
            contentType: 'application/json; charset=utf-8',
            data: angular.toJson({
                'table_data': $scope.dlDataHealthDamagelostOtherMedicalFacilities,
                'com_data': {
                    'district': $scope.district,
                    'incident': $scope.incident
                }
            }),
            dataType: 'json',
        }).then(function successCallback(response) {

            console.log(response);

        }, function errorCallback(response) {

            console.log(response);
        });

    }

    // get relevant base-line data for calculations
    function getBsData()
    {

        $http({
        method: 'POST',
        url: '/base_line/bs_get_data',
        contentType: 'application/json; charset=utf-8',
        data: angular.toJson({
                'db_tables': ['BucOmarStructure', 'BhsComDiseases'],
            }),
        dataType: 'json',
        }).then(function successCallback(response) {
            // for calculations base_hospital - row wise , particulars = 1 Floor Structure column wise
            var data = response.data;
            angular.forEach(data, function(value, key) {
              $scope.bs_data[key] = JSON.parse(value);
            });
            //console.log($scope.bs_data['BucOmarStructure'][0].fields);
            console.log($scope.bs_data);

        }, function errorCallback(response) {

            console.log(response);
        });
    }


    $scope.init = function init()
    {
      getBsData();
    }

 }])

