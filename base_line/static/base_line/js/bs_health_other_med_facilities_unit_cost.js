var app = angular.module('bsOtherMedFacilitiesUnitCostApp', []);

app.controller("BsOtherMedFacilitiesUnitCostController", ['$scope','$http',function ($scope, $http) {

    $scope.district;
    $scope.baselineDate;


    $scope.bsDataOtherMedicalFacilities = {
        'Table_4': {
            'BucOmarStructure': [{
                particulars: '1 Floor Structure',
                base_hospital: 0,
                divisional_hospital: 0,
                rural_hospital: 0,
                central_dispensary:0,
                pri_med_cunits:0,
                pri_health_ccenters:0,
                mat_child_health_clinics:0,
            }, {
                particulars: '2-3 Floors Structure',
                base_hospital: 0,
                divisional_hospital: 0,
                rural_hospital: 0,
                central_dispensary:0,
                pri_med_cunits:0,
                pri_health_ccenters:0,
                mat_child_health_clinics:0,
            }, {
                particulars: 'More Than 3 Floors Structure',
                base_hospital: 0,
                divisional_hospital: 0,
                rural_hospital: 0,
                central_dispensary:0,
                pri_med_cunits:0,
                pri_health_ccenters:0,
                mat_child_health_clinics:0,
            }],
            'BucOmarSupplies': [{
                particulars: 'Medicine',
                base_hospital: 0,
                divisional_hospital: 0,
                rural_hospital: 0,
                central_dispensary:0,
                pri_med_cunits:0,
                pri_health_ccenters:0,
                mat_child_health_clinics:0,
            }, {
                particulars: 'Medical Supplies',
                base_hospital: 0,
                divisional_hospital: 0,
                rural_hospital: 0,
                central_dispensary:0,
                pri_med_cunits:0,
                pri_health_ccenters:0,
                mat_child_health_clinics:0,
            }, {
                particulars: 'Others',
                base_hospital: 0,
                divisional_hospital: 0,
                rural_hospital: 0,
                central_dispensary:0,
                pri_med_cunits:0,
                pri_health_ccenters:0,
                mat_child_health_clinics:0,
            }],
            'BucOmarMequipment': [{
                particulars: 'CT Scan',
                base_hospital: 0,
                divisional_hospital: 0,
                rural_hospital: 0,
                central_dispensary:0,
                pri_med_cunits:0,
                pri_health_ccenters:0,
                mat_child_health_clinics:0,
            }, {
                particulars: 'X-ray Machine',
                base_hospital: 0,
                divisional_hospital: 0,
                rural_hospital: 0,
                central_dispensary:0,
                pri_med_cunits:0,
                pri_health_ccenters:0,
                mat_child_health_clinics:0,
            }, {
                particulars: 'MRI Machine',
                base_hospital: 0,
                divisional_hospital: 0,
                rural_hospital: 0,
                central_dispensary:0,
                pri_med_cunits:0,
                pri_health_ccenters:0,
                mat_child_health_clinics:0,
            },{
                particulars: 'Other Equipment (Specify)',
                base_hospital: 0,
                divisional_hospital: 0,
                rural_hospital: 0,
                central_dispensary:0,
                pri_med_cunits:0,
                pri_health_ccenters:0,
                mat_child_health_clinics:0,
            }],
            'BucOmarOassets': [{
                particulars: 'Computers',
                base_hospital: 0,
                divisional_hospital: 0,
                rural_hospital: 0,
                central_dispensary:0,
                pri_med_cunits:0,
                pri_health_ccenters:0,
                mat_child_health_clinics:0,
            }, {
                particulars: 'Vehicles',
                base_hospital: 0,
                divisional_hospital: 0,
                rural_hospital: 0,
                central_dispensary:0,
                pri_med_cunits:0,
                pri_health_ccenters:0,
                mat_child_health_clinics:0,
            }, {
                particulars: 'Furniture',
                base_hospital: 0,
                divisional_hospital: 0,
                rural_hospital: 0,
                central_dispensary:0,
                pri_med_cunits:0,
                pri_health_ccenters:0,
                mat_child_health_clinics:0,
            },{
                particulars: 'Office Equipment',
                base_hospital: 0,
                divisional_hospital: 0,
                rural_hospital: 0,
                central_dispensary:0,
                pri_med_cunits:0,
                pri_health_ccenters:0,
                mat_child_health_clinics:0,
            },{
                particulars: 'Others',
                base_hospital: 0,
                divisional_hospital: 0,
                rural_hospital: 0,
                central_dispensary:0,
                pri_med_cunits:0,
                pri_health_ccenters:0,
                mat_child_health_clinics:0,
            }],
            'BucOmarcCrpm': [{
                particulars: 'Average Construction Period',
                base_hospital: 0,
                divisional_hospital: 0,
                rural_hospital: 0,
                central_dispensary:0,
                pri_med_cunits:0,
                pri_health_ccenters:0,
                mat_child_health_clinics:0,
            }, {
                particulars: 'Average Repair Period',
                base_hospital: 0,
                divisional_hospital: 0,
                rural_hospital: 0,
                central_dispensary:0,
                pri_med_cunits:0,
                pri_health_ccenters:0,
                mat_child_health_clinics:0,
            }],
            'BucOmarcStructure': [{
                particulars: 'Roof',
                base_hospital: 0,
                divisional_hospital: 0,
                rural_hospital: 0,
                central_dispensary:0,
                pri_med_cunits:0,
                pri_health_ccenters:0,
                mat_child_health_clinics:0,
            }, {
                particulars: 'Wall',
                base_hospital: 0,
                divisional_hospital: 0,
                rural_hospital: 0,
                central_dispensary:0,
                pri_med_cunits:0,
                pri_health_ccenters:0,
                mat_child_health_clinics:0,
            }, {
                particulars: 'Flooring',
                base_hospital: 0,
                divisional_hospital: 0,
                rural_hospital: 0,
                central_dispensary:0,
                pri_med_cunits:0,
                pri_health_ccenters:0,
                mat_child_health_clinics:0,
            }],
               'BucOmarcMequipment': [{
                particulars: 'CT Scan',
                base_hospital: 0,
                divisional_hospital: 0,
                rural_hospital: 0,
                central_dispensary:0,
                pri_med_cunits:0,
                pri_health_ccenters:0,
                mat_child_health_clinics:0,
            }, {
                particulars: 'X-ray Machine',
                base_hospital: 0,
                divisional_hospital: 0,
                rural_hospital: 0,
                central_dispensary:0,
                pri_med_cunits:0,
                pri_health_ccenters:0,
                mat_child_health_clinics:0,
            }, {
                particulars: 'MRI Machine',
                base_hospital: 0,
                divisional_hospital: 0,
                rural_hospital: 0,
                central_dispensary:0,
                pri_med_cunits:0,
                pri_health_ccenters:0,
                mat_child_health_clinics:0,
            },{
                particulars: 'Other Equipment (Specify)',
                base_hospital: 0,
                divisional_hospital: 0,
                rural_hospital: 0,
                central_dispensary:0,
                pri_med_cunits:0,
                pri_health_ccenters:0,
                mat_child_health_clinics:0,
            }],
            'BucOmarcOassets': [{
                particulars: 'Computers',
                base_hospital: 0,
                divisional_hospital: 0,
                rural_hospital: 0,
                central_dispensary:0,
                pri_med_cunits:0,
                pri_health_ccenters:0,
                mat_child_health_clinics:0,
            }, {
                particulars: 'Vehicles',
                base_hospital: 0,
                divisional_hospital: 0,
                rural_hospital: 0,
                central_dispensary:0,
                pri_med_cunits:0,
                pri_health_ccenters:0,
                mat_child_health_clinics:0,
            }, {
                particulars: 'Furniture',
                base_hospital: 0,
                divisional_hospital: 0,
                rural_hospital: 0,
                central_dispensary:0,
                pri_med_cunits:0,
                pri_health_ccenters:0,
                mat_child_health_clinics:0,
            },{
                particulars: 'Office Equipment',
                base_hospital: 0,
                divisional_hospital: 0,
                rural_hospital: 0,
                central_dispensary:0,
                pri_med_cunits:0,
                pri_health_ccenters:0,
                mat_child_health_clinics:0,
            },{
                particulars: 'Others',
                base_hospital: 0,
                divisional_hospital: 0,
                rural_hospital: 0,
                central_dispensary:0,
                pri_med_cunits:0,
                pri_health_ccenters:0,
                mat_child_health_clinics:0,
            }]
        }
    }

     $scope.SaveData = function() {

        $http({
            method: 'POST',
            url: '/base_line/bs_save_data',
            contentType: 'application/json; charset=utf-8',
            data: angular.toJson({
                'table_data': $scope.bsDataOtherMedicalFacilities,
                'com_data': {
                    'district': $scope.district,
                    'bs_date': $scope.baselineDate
                }
            }),
            dataType: 'json',
        }).then(function successCallback(response) {

            console.log(response);

        }, function errorCallback(response) {

            console.log(response);
        });

    }

}])
