from django.shortcuts import render
from settings.models import District, BdSessionKeys, Province
from incidents.models import IncidentReport
from base_line.models import BucOmarStructure
import yaml
from django.utils import timezone
from django.http import HttpResponse
from django.apps import apps
from django.views.decorators.csrf import csrf_protect, csrf_exempt
from datetime import datetime, date
from django.utils import timezone
from django.http import Http404
from django.core.serializers.json import DjangoJSONEncoder
from django.core import serializers
from django.http import JsonResponse


def dl_health_damagelost_other_medical_facilities(request):
    districts = District.objects.all()
    incidents = IncidentReport.objects.all()

    context = {
        'districts': districts,
        'incidents': incidents
    }
    return render(request, 'damage_losses/health_damagelost_other_medi.html', context)


#dileepa
def health_damagelost_ministry_helth(request):
    districts = District.objects.all()
    provinces = Province.objects.all()
    context = {
        'districts': districts,
        'provinces': provinces,
    }
    return render(request, 'damage_losses/health_damagelost_ministry_helth.html', context)


def health_damagelost_private(request):
    districts = District.objects.all()
    provinces = Province.objects.all()
    context = {
        'districts': districts,
        'provinces': provinces,
    }
    return render(request, 'damage_losses/health_damagelost_private.html', context)


#Sachie
def dl_health_other_medical_facilities(request):
    districts = District.objects.all()
    incidents = IncidentReport.objects.all()
    context = {
        'districts': districts,
        'incidents': incidents,
    }
    return render(request, 'damage_losses/health_damagelost_other_medi.html', context)


def dl_health_summary_sector_district(request):
    districts = District.objects.all()
    context = {
        'districts': districts
    }
    return render(request, 'damage_losses/health_summery_damageloss_dis.html', context)


def dl_health_summary_damage_nationwide(request):
    districts = District.objects.all()
    context = {
        'districts': districts
    }
    return render(request, 'damage_losses/health_summery_damageloss_national.html', context)



@csrf_exempt
def dl_save_data(request):
    bs_data = (yaml.safe_load(request.body))
    bs_table_hs_data = bs_data['table_data']
    com_data = bs_data['com_data']
    todate = timezone.now()

    try:
        for interface_table in bs_table_hs_data:
            print 'interface table', ' -->', interface_table, '\n'
            for db_table in bs_table_hs_data[interface_table]:

                print 'db table', ' -->', db_table, '\n'

                for row in bs_table_hs_data[interface_table][db_table]:

                    model_class = apps.get_model('damage_losses', db_table)
                    model_object = model_class()

                    # assigning common properties to model object
                    model_object.created_date = todate
                    model_object.lmd = todate
                    #model_object.district_id = com_data['district']
                    #model_object.incident_id = com_data['incident']

                    print 'row', ' --> ', row, '\n', ' object '

                    for property in row:
                        setattr(model_object, property, row[property])

                        print 'property ', ' --> ', property, ' db_property ', row[property], ' index ', '\n'
                        model_object.save()

    except Exception as e:
        return HttpResponse(e)

    return HttpResponse('success')



