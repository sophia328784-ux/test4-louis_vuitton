package com.google.android.gms.measurement.internal;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobScheduler;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes2.dex */
public final class zzok extends zzos {
    public final AlarmManager d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public zzoj f31946e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Integer f31947f;

    public zzok(zzpg zzpgVar) {
        super(zzpgVar);
        this.d = (AlarmManager) this.f31850a.f31838a.getSystemService("alarm");
    }

    @Override // com.google.android.gms.measurement.internal.zzos
    public final void j() {
        AlarmManager alarmManager = this.d;
        if (alarmManager != null) {
            Context context = this.f31850a.f31838a;
            alarmManager.cancel(PendingIntent.getBroadcast(context, 0, new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementReceiver").setAction("com.google.android.gms.measurement.UPLOAD"), com.google.android.gms.internal.measurement.zzce.f30599a));
        }
        m();
    }

    public final zzaz k() {
        if (this.f31946e == null) {
            this.f31946e = new zzoj(this, this.f31948b.l);
        }
        return this.f31946e;
    }

    public final void l() {
        h();
        zzic zzicVar = this.f31850a;
        zzgu zzguVar = zzicVar.f31842f;
        zzic.m(zzguVar);
        zzguVar.n.a("Unscheduling upload");
        AlarmManager alarmManager = this.d;
        if (alarmManager != null) {
            Context context = zzicVar.f31838a;
            alarmManager.cancel(PendingIntent.getBroadcast(context, 0, new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementReceiver").setAction("com.google.android.gms.measurement.UPLOAD"), com.google.android.gms.internal.measurement.zzce.f30599a));
        }
        k().c();
        m();
    }

    public final void m() {
        JobScheduler jobScheduler = (JobScheduler) this.f31850a.f31838a.getSystemService("jobscheduler");
        if (jobScheduler != null) {
            jobScheduler.cancel(n());
        }
    }

    public final int n() {
        if (this.f31947f == null) {
            this.f31947f = Integer.valueOf("measurement".concat(String.valueOf(this.f31850a.f31838a.getPackageName())).hashCode());
        }
        return this.f31947f.intValue();
    }
}
