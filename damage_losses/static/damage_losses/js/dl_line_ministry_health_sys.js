var app = angular.module('dlInTheLineMinistryHealthSysApp', [])

app.controller('dlInTheLineMinistryHealthSysAppController', ['$scope', '$http', function($scope, $http) {
    $scope.district;
    $scope.dlDate;

    $scope.dlMinistryHealthSys = {
        'Table_5': {
            'DmhDfNum' : [{
                num_des_facilities : 'Number of Destroyed Facilities',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0
            }],
            'DmhDfPaf' : [{
                num_patients_affected : 'Male',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0
            }, {
                num_patients_affected : 'Female',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0
            }],
            //tab 2
            'DmhNdatFacStructure' : [{
                asset : '1 Floor Structure',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0,
            }, {
                asset : '2-3 Floors Structure',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0,
            }, {
                asset : 'More Than 3 Floors Structure',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0,
            }, {
                asset : 'Value of Destroyed Structures',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0,
            }],
            'DmhNdatFacSupplies' : [{
                asset : 'Medicines',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                total : 0,
            }, {
                asset : 'Medical Supplies',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                total : 0,
            }, {
                asset : 'Others',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                total : 0,
            }, {
                asset : 'Value of Destroyed Supplies',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                total : 0,
            }],
            'DmhNdatFacMequipment' : [{
                asset : 'CT Scan',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                total : 0,
            }, {
                asset : 'X-ray Machine',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                total : 0,
            }, {
                asset : 'MRI Machine',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                total : 0,
            }, {
                asset : 'Other Equipment (Specify)',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                total : 0,
            }],
            'DmhNdatFacOassets' : [{
                asset : 'Computers',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0,
            },{
                asset : 'Vehicles',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0,
            },{
                asset : 'Furniture',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0,
            },{
                asset : 'Office Equipment',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0,
            },{
                asset : 'Others',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0,
            },{
                asset : 'Value of Destroyed Other Assets',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0,
            },{
                asset : 'VALUE OF DESTROYED ASSETS',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0,
            }],
            //tab 3
            'DmhPdfaNum': [{
                num_des_facilities : 'Number of Destroyed Facilities',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0,
            }],
            'DmhPdfaPaf' : [{
                num_patients_affected : 'Male',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0,
            }, {
                num_patients_affected : 'Female',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0,
            }],
            //tab 4
            'DmhPdfaStructure': [{
                asset : 'Roof',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0,
            }, {
                asset : 'Wall',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0,
            }, {
                asset : 'Flooring',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0,
            }, {
                asset : 'Value of Partially Damaged Structure',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0,
            }],
            'DmhPdfaMequipment' : [{
                asset : 'CT Scan',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                total : 0,
            }, {
                asset : 'X-ray Machine',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                total : 0,
            }, {
                asset : 'MRI Machine',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                total : 0,
            }, {
                asset : 'Other Equipment (Specify)',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                total : 0,
            }, {
                asset : 'Value of Partially Damaged Medical Equipment',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                total : 0,
            }],
            'DmhPdfaOassets' : [{
                asset : 'Computers',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0,
            }, {
                asset : 'Vehicles',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0,
            }, {
                asset : 'Furniture',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0,
            }, {
                asset : 'Office Equipment',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0,
            }, {
                asset : 'Others',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0,
            }, {
                asset : 'Value of Partially Damaged Other Assets',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0,
            }, {
                asset : 'VALUE OF PARTIALLY DAMAGED ASSETS',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0,
            }, {
                asset : 'GRAND TOTAL OF DAMAGES',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0,
            }],
            //tab 5
            'DmhLosFi' : [{
                type_of_losses : 'Disaster Year 1',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0
            }, {
                type_of_losses : 'Year 2',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0
            }, {
                type_of_losses : 'Total',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0
            }],
            'DmhLosCud' : [{
                type_of_losses : 'Disaster Year 1',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0
            }, {
                type_of_losses : 'Year 2',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0
            }, {
                type_of_losses : 'Total',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0
            }],
            'DmhLosHoc' : [{
                type_of_losses : 'Disaster Year 1',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0
            }, {
                type_of_losses : 'Year 2',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0
            }, {
                type_of_losses : 'Total',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0
            }],
            'DmhLosOue' : [{
                type_of_losses : 'Disaster Year 1',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0
            }, {
                type_of_losses : 'Year 2',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0
            }, {
                type_of_losses : 'Total',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0
            }, {
                type_of_losses : 'TOTAL VALUE OF LOSSES',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
                total : 0
            }],
        }
    }

    $scope.saveBucMarStructure = function() {
        console.log($scope.data);
        $http({
            method : 'POST',
            url : '/damage_losses/dl_save_data',
            contentType: 'application/json; charset=utf-8',
            data: angular.toJson({
                'table_data': $scope.dlMinistryHealthSys,
                'com_data':{
                    'district': $scope.district,
                    'dl_date': $scope.dlDate
                }
            }),
            dataType: 'json',
        }).then(function mySucces(response) {
            //if data sent to server side method successfull
            console.log(response);
            }, function myError(response) {
                //if data sent to server side method unsuccessfull
                console.log(response);
        });
    }
}])
