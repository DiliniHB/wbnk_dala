var app = angular.module('dlHealthDamagelostPrivateApp', [])

app.controller('dlHealthDamagelostPrivateAppController', ['$scope', '$http', function($scope, $http) {
    $scope.district;
    $scope.dlDate;

    $scope.dlHealthDamagelostPrivateSys = {
        'Table_7': {
            //tab 1
            'DapNapTmf' : [{
                type_med_fac : 'Private Clinics',
                num_affected_fac : 0,
                male : 0,
                female : 0,
            }, {
                type_med_fac : 'Others',
                num_affected_fac : 0,
                male : 0,
                female : 0,
            }, {
                type_med_fac : 'TOTAL',
                num_affected_fac : 0,
                male : 0,
                female : 0,
            }],
            //tab 2
            'DapBefPc1': [{
                pvt_clinics : 'Structure',
                est_replacement_cost : 0,
                est_repair_cost : 0,
                total_damages : 0,
                est_losses_y1 : 0,
                est_losses_y2 : 0,
                total_losses : 0,
            }, {
                pvt_clinics : 'Supplies and Materials',
                est_replacement_cost : 0,
                est_repair_cost : 0,
                total_damages : 0,
                est_losses_y1 : 0,
                est_losses_y2 : 0,
                total_losses : 0,
            }, {
                pvt_clinics : 'Equipment',
                est_replacement_cost : 0,
                est_repair_cost : 0,
                total_damages : 0,
                est_losses_y1 : 0,
                est_losses_y2 : 0,
                total_losses : 0,
            }, {
                pvt_clinics : 'Total',
                est_replacement_cost : 0,
                est_repair_cost : 0,
                total_damages : 0,
                est_losses_y1 : 0,
                est_losses_y2 : 0,
                total_losses : 0,
            }],
            'DapBefPcn': [{
                pvt_clinics : 'Structure',
                est_replacement_cost : 0,
                est_repair_cost : 0,
                total_damages : 0,
                est_losses_y1 : 0,
                est_losses_y2 : 0,
                total_losses : 0,
            }, {
                pvt_clinics : 'Supplies and Materials',
                est_replacement_cost : 0,
                est_repair_cost : 0,
                total_damages : 0,
                est_losses_y1 : 0,
                est_losses_y2 : 0,
                total_losses : 0,
            }, {
                pvt_clinics : 'Equipment',
                est_replacement_cost : 0,
                est_repair_cost : 0,
                total_damages : 0,
                est_losses_y1 : 0,
                est_losses_y2 : 0,
                total_losses : 0,
            }, {
                pvt_clinics : 'Total',
                est_replacement_cost : 0,
                est_repair_cost : 0,
                total_damages : 0,
                est_losses_y1 : 0,
                est_losses_y2 : 0,
                total_losses : 0,
            }],
            'DapBefOther': [{
                pvt_clinics : 'Structure',
                est_replacement_cost : 0,
                est_repair_cost : 0,
                total_damages : 0,
                est_losses_y1 : 0,
                est_losses_y2 : 0,
                total_losses : 0,
            }, {
                pvt_clinics : 'Supplies and Materials',
                est_replacement_cost : 0,
                est_repair_cost : 0,
                total_damages : 0,
                est_losses_y1 : 0,
                est_losses_y2 : 0,
                total_losses : 0,
            }, {
                pvt_clinics : 'Equipment',
                est_replacement_cost : 0,
                est_repair_cost : 0,
                total_damages : 0,
                est_losses_y1 : 0,
                est_losses_y2 : 0,
                total_losses : 0,
            }, {
                pvt_clinics : 'Total',
                est_replacement_cost : 0,
                est_repair_cost : 0,
                total_damages : 0,
                est_losses_y1 : 0,
                est_losses_y2 : 0,
                total_losses : 0,
            }, {
                pvt_clinics : 'TOTAL',
                est_replacement_cost : 0,
                est_repair_cost : 0,
                total_damages : 0,
                est_losses_y1 : 0,
                est_losses_y2 : 0,
                total_losses : 0,
            }]
        }
    }

    $scope.saveDlHealthDamagelostPrivate = function() {
        console.log($scope.data);
        $http({
            method : 'POST',
            url : '/damage_losses/dl_save_data',
            contentType: 'application/json; charset=utf-8',
            data: angular.toJson({
                'table_data': $scope.dlHealthDamagelostPrivateSys,
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
