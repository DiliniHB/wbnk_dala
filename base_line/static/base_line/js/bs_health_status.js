
var bsHealthStatusApp = angular.module('bsHealthStatusApp', []);

bsHealthStatusApp.controller('BsHealthStatusController', function BsHealthStatusController($scope, $http) {

$scope.district;
$scope.number1;
$scope.number2;
$scope.sum;
$scope.bs_date;
$scope.is_edit = false;

$scope.dataHealthStatus = {
'Table_1':{
'BhsPlc':[
{
male: 5,
female: 3,
children: 5,
elderly: 7,
}
],
'BhsComDiseases':
[
{
com_disease: 'Diarrhea',
male: 5,
female: 6,
children: 7,
elderly: 8,
},
{
com_disease: 'Dengue',
male: 5,
female: 6,
children: 7,
elderly: 8,
}
]
,
'BhsVi':
[
{
vital_indicators: 'Under-5 Mortality Rate',
male: 3,
female: 3,
children: 3,
elderly: 3,
},
{
vital_indicators: 'Mortality Rate',
male: 3,
female: 3,
children: 3,
elderly: 3,
}
]
,
'BhsOi':
[
{
other_indicators: 'Crude Birth Rate',
unit_measure: 1
},
{
other_indicators: 'Maternal Mortality Rate',
unit_measure: ""
}
]
}
}

$scope.getSum = function()
{
alert($scope.sum);
}

$scope.hSDataSubmit = function()
{
console.log(($scope.dataHealthStatus));

 $http({
    method: "POST",
    url: "/base_line/bs_save_hs_data",
    data: angular.toJson({'table_data': ($scope.dataHealthStatus), 'com_data': {'district': $scope.district,
          'bs_date': $scope.bs_date}, 'is_edit': $scope.is_edit }),
    }).success(function(data) {

    console.log(data);


 })

}

$scope.insertDisease = function(table)
{
    console.log($scope.dataHealthStatus.Table_1[table]);
    var new_row;
    if(table == 'BhsOi'){
    new_row = {
    other_indicators: '',
    unit_measure: 5
    }
    }
    else if(table == 'BhsComDiseases'){
    new_row = {
    com_disease: '',
    male: 5,
    female: 6,
    children: 7,
    elderly: 8,
    }
    }
    else if(table == 'BhsVi'){
    new_row = {
    vital_indicators: '',
    male: 3,
    female: 3,
    children: 3,
    elderly: 3,
    }
    }

    $scope.dataHealthStatus.Table_1[table].push(new_row);

}

$scope.bsHsDataEdit = function()
{

   $scope.is_edit = true;

    $http({
    method: "POST",
    url: "/base_line/bs_fetch_edit_data",
    data: angular.toJson({'table_name': 'Table_1' }),
    }).success(function(data) {

    console.log(data);
    $scope.dataHealthStatus = data;
    })


}

$scope.cancelEdit = function()
{
    $scope.is_edit = false;

}


})
