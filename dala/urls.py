from django.conf.urls import include, url
from django.contrib import admin
from tastypie.api import Api
from api.resources import DistrictResource, ProvinceResource, BmfPubMfResource

v1_api = Api(api_name='v1')
v1_api.register(DistrictResource())
v1_api.register(ProvinceResource())
v1_api.register(BmfPubMfResource())

urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^api/', include(v1_api.urls)),
    url(r'^base_line/', include('base_line.urls', namespace='base_line')),
    url(r'^damage_losses/', include('damage_losses.urls', namespace='damage_losses')),

]
