package com.google.android.gms.measurement;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import com.google.android.gms.measurement.internal.zznp;
import com.google.android.gms.measurement.internal.zznt;

/* JADX INFO: loaded from: classes2.dex */
public final class AppMeasurementJobService extends JobService implements zznp {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public zznt f31525b;

    @Override // com.google.android.gms.measurement.internal.zznp
    public final void a(Intent intent) {
    }

    @Override // com.google.android.gms.measurement.internal.zznp
    public final void b(JobParameters jobParameters) {
        jobFinished(jobParameters, false);
    }

    public final zznt c() {
        if (this.f31525b == null) {
            this.f31525b = new zznt(this);
        }
        return this.f31525b;
    }

    @Override // com.google.android.gms.measurement.internal.zznp
    public final boolean e(int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        c().f31928a.getClass().getSimpleName().concat(" is starting up.");
    }

    @Override // android.app.Service
    public final void onDestroy() {
        c().f31928a.getClass().getSimpleName().concat(" is shutting down.");
        super.onDestroy();
    }

    @Override // android.app.Service
    public final void onRebind(Intent intent) {
        c();
        if (intent == null) {
            return;
        }
        "onRebind called. action: ".concat(String.valueOf(intent.getAction()));
    }

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        c().b(jobParameters);
        return true;
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        return false;
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        c();
        if (intent == null) {
            return true;
        }
        "onUnbind called for intent. action: ".concat(String.valueOf(intent.getAction()));
        return true;
    }
}
