var app = angular.module('bsPubMedicalFacilitiesApp', []);

app.controller("BsPubMedicalFacilitiesController", ['$scope', '$http', function($scope, $http) {


    $scope.district;
    $scope.baselineDate;


    $scope.bsDataMedicalFacilities = {
        'Table_2': {
            'BmfPubMf': [{
                type_pub_mf: 'Teaching Hospital (TH)',
                number: 1,
                male: 1,
                female: 1,
            }, {
                type_pub_mf: 'Provincial General Hospital (PGH)',
                number: 1,
                male: 1,
                female: 1,
            }, {
                type_pub_mf: 'District General Hospital (DGH)',
                number: 1,
                male: 1,
                female: 1,
            },{
                type_pub_mf: 'Base Hospital (BH )',
                number: 1,
                male: 1,
                female: 1,
            },{
                type_pub_mf: 'Divisional Hospital (DH )',
                number: 1,
                male: 1,
                female: 1,
            },{
                type_pub_mf: 'Rural Hospital (RH )',
                number: 1,
                male: 1,
                female: 1,
            },{
                type_pub_mf: 'Central Dispensary (CH )',
                number: 1,
                male: 1,
                female: 1,
            },{
                type_pub_mf: 'Primary Medical Care Units (PMCU)',
                number: 1,
                male: 1,
                female: 1,
            },{
                type_pub_mf: 'Primary Health Care Centers (PHCC)',
                number: 1,
                male: 1,
                female: 1,
            },{
                type_pub_mf: 'Maternal and Child Health Clinics (MCHC)',
                number: 1,
                male: 1,
                female: 1,
            },{
                type_pub_mf: 'MOH Offices ',
                number: 1,
                male: 1,
                female: 1,
            },{
                type_pub_mf: 'Others (Specify)',
                number: 1,
                male: 1,
                female: 1,
            },{
                type_pub_mf: 'TOTAL',
                number: 0,
                male: 0,
                female: 0,
            }],
            'BmfPvtMf': [{
                type_pub_mf: 'Private Clinics',
                number: 1,
                male: 1,
                female: 1,
            },{
                type_pub_mf: 'Others',
                number: 1,
                male: 1,
                female: 1,
            },{
                type_pub_mf: 'TOTAL',
                number: 0,
                male: 0,
                female: 0,
            }]

        }
    }


    $scope.SaveData = function() {
        console.log($scope.data);

        $http({
            method: 'POST',
            url: '/base_line/bs_save_data',
            contentType: 'application/json; charset=utf-8',
            data: angular.toJson({
                'table_data': $scope.bsDataMedicalFacilities,
                'com_data': {
                    'district': $scope.district,
                    'bs_date':$scope.baselineDate
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
