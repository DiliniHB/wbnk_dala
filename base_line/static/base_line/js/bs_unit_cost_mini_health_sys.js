var app= angular.module('unitCostMiniHealthSysApp', [])

app.controller('unitCostMiniHealthSysController', ['$scope', '$http', function($scope, $http) {
    $scope.district;
    $scope.baselineDate;

    $scope.bsUnitCostMiniHealthSys = {
        'Table_3': {
            'BucMarStructure': [{
                particulars : '1 Floor Structure',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
            }, {
                particulars : '2-3 Floors Structure',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
            }, {
                particulars : 'More Than 3 Floors Structure',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
            }],
            'BucMarSupplies': [{
                particulars : 'Medicines',
                teaching_hospital: 0,
                provincial_general_hospital: 0,
                district_general_hospital: 0,
            }, {
                particulars : 'Medical Supplies',
                teaching_hospital: 0,
                provincial_general_hospital: 0,
                district_general_hospital: 0,
            }, {
                particulars : 'Others',
                teaching_hospital: 0,
                provincial_general_hospital: 0,
                district_general_hospital: 0,
            }],
            'BucMarMequipment' : [{
                particulars : 'CT Scan',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
             }, {
                particulars : 'X-ray Machine',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
             }, {
                particulars : 'MRI Machine',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
             }, {
                particulars : 'Other Equipment (Specify)',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
             }],
            'BucMarOassets' : [{
                particulars : 'Computers',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
            }, {
                particulars : 'Vehicles',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
            }, {
                particulars : 'Furniture',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
            }, {
                particulars : 'Office Equipment',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
            }, {
                particulars : 'Others',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
            }],
            //----
            'BucMarcStructures': [{
                particulars : 'Roof',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
            }, {
                particulars : 'Wall',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
            }, {
                particulars : 'Flooring',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
            }],
            'BucMarcMequipment' : [{
                particulars : 'CT Scan',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
            }, {
                particulars : 'X-ray Machine',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
            }, {
                particulars : 'MRI Machine',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
            }, {
                particulars : 'Other Equipment (Specify)',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
             }],
            'BucMarcOassets' : [{
                particulars : 'Computers',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
            }, {
                particulars : 'Vehicles',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
            }, {
                particulars : 'Furniture',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
            }, {
                particulars : 'Office Equipment',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
            }, {
                particulars : 'Others',
                teaching_hospital : 0,
                provincial_general_hospital : 0,
                district_general_hospital : 0,
                office : 0,
                other : 0,
            }],
            'BucMarcCrpm': [{
                particulars : 'Average Construction Period',
                teaching_hospital: 0,
                provincial_general_hospital: 0,
                district_general_hospital: 0,
                office : 0,
                other : 0,
            }, {
                particulars : 'Average Repair Period',
                teaching_hospital: 0,
                provincial_general_hospital: 0,
                district_general_hospital: 0,
                office : 0,
                other : 0,
            }]
        }
    }

    $scope.saveBucMarStructure = function() {
        console.log($scope.data);
        $http({
            method : 'POST',
            url : '/base_line/bs_save_data',
            contentType: 'application/json; charset=utf-8',
            data: angular.toJson({
                'table_data': $scope.bsUnitCostMiniHealthSys,
                'com_data':{
                    'district': $scope.district,
                    'bs_date': $scope.baselineDate
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
