from django.db import models
from settings.models import DisasterType
# Create your models here.


class IncidentReport(models.Model):
    disaster_type = models.ForeignKey(DisasterType)
    reported_date_time = models.DateTimeField(blank=True, null=True)
    description = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'incident_report'
