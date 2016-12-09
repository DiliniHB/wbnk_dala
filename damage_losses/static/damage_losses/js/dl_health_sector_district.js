var app = angular.module('dlHealthSectorDistrictApp', []);

app.controller("DlHealthSectorDistrictController", ['$scope','$http',function ($scope,$http) {

 $scope.district;
 //bind Disasteroption
    $scope.dlhealthsectordistrict = {
        'Table_8': {
            'DshPubTh': [{
                facilities_assets : 'Provincial General Hospitals',
                total_num_affected :0,
                male :0,
                female :0,
                total_damages :0,
                losses_y1 :0,
                losses_y2  :0,
                total_losses :0,
                },{
                facilities_assets : 'District General Hospitals',
                total_num_affected :0,
                male :0,
                female :0,
                total_damages :0,
                losses_y1 :0,
                losses_y2  :0,
                total_losses :0,
                },{
                facilities_assets : 'Total',
                total_num_affected :0,
                male :0,
                female :0,
                total_damages :0,
                losses_y1 :0,
                losses_y2  :0,
                total_losses :0,
                },{
                facilities_assets : 'MOH',
                total_num_affected :0,
                male :0,
                female :0,
                total_damages :0,
                losses_y1 :0,
                losses_y2  :0,
                total_losses :0,
                },{
                facilities_assets : 'Offices',
                total_num_affected :0,
                male :0,
                female :0,
                total_damages :0,
                losses_y1 :0,
                losses_y2  :0,
                total_losses :0,
                },{
                facilities_assets : 'Others',
                total_num_affected :0,
                male :0,
                female :0,
                total_damages :0,
                losses_y1 :0,
                losses_y2  :0,
                total_losses :0,
                },{
                facilities_assets : 'Total',
                total_num_affected :0,
                male :0,
                female :0,
                total_damages :0,
                losses_y1 :0,
                losses_y2  :0,
                total_losses :0,
                }],
                'DshPubOmc': [{
                facilities_assets : 'Base Hospital',
                total_num_affected :0,
                male :0,
                female :0,
                total_damages :0,
                losses_y1 :0,
                losses_y2  :0,
                total_losses :0,
                },{
                facilities_assets : 'Divisional Hospital',
                total_num_affected :0,
                male :0,
                female :0,
                total_damages :0,
                losses_y1 :0,
                losses_y2  :0,
                total_losses :0,
                },{
                facilities_assets : 'Rural Hospital',
                total_num_affected :0,
                male :0,
                female :0,
                total_damages :0,
                losses_y1 :0,
                losses_y2  :0,
                total_losses :0,
                },{
                facilities_assets : 'Central Dispensary',
                total_num_affected :0,
                male :0,
                female :0,
                total_damages :0,
                losses_y1 :0,
                losses_y2  :0,
                total_losses :0,
                },{
                facilities_assets : 'PMCUs',
                total_num_affected :0,
                male :0,
                female :0,
                total_damages :0,
                losses_y1 :0,
                losses_y2  :0,
                total_losses :0,
                },{
                facilities_assets : 'MCHCs',
                total_num_affected :0,
                male :0,
                female :0,
                total_damages :0,
                losses_y1 :0,
                losses_y2  :0,
                total_losses :0,
                },{
                facilities_assets : 'Total',
                total_num_affected :0,
                male :0,
                female :0,
                total_damages :0,
                losses_y1 :0,
                losses_y2  :0,
                total_losses :0,
                },{
                facilities_assets : 'TOTAL',
                total_num_affected :0,
                male :0,
                female :0,
                total_damages :0,
                losses_y1 :0,
                losses_y2  :0,
                total_losses :0,
                }],
                'DshPvtFa': [{
                facilities_assets : 'Private Clinics',
                total_num_affected :0,
                male :0,
                female :0,
                total_damages :0,
                losses_y1 :0,
                losses_y2  :0,
                total_losses :0,
                },{
                facilities_assets : 'Others',
                total_num_affected :0,
                male :0,
                female :0,
                total_damages :0,
                losses_y1 :0,
                losses_y2  :0,
                total_losses :0,
                },{
                facilities_assets : 'TOTAL',
                total_num_affected :0,
                male :0,
                female :0,
                total_damages :0,
                losses_y1 :0,
                losses_y2  :0,
                total_losses :0,
                }],
                'DshTdlOwship': [{
                ownership : 'Public Sector',
                damages :0,
                losses_y1 :0,
                losses_y2 :0,
                total :0,
                },{
                ownership : 'Private Sector',
                damages :0,
                losses_y1 :0,
                losses_y2 :0,
                total :0,
                },{
                ownership : 'TOTAL',
                damages :0,
                losses_y1 :0,
                losses_y2 :0,
                total :0,
                }

                ]



        }
    }





    $scope.SaveData = function() {
        console.log($scope.data);

        $http({
            method: 'POST',
            url: '/damage_losses/dl_save_data',
            contentType: 'application/json; charset=utf-8',
            data: angular.toJson({
                'table_data': $scope.dlhealthsectordistrict,
                'com_data': {
                    'district': $scope.district,

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


