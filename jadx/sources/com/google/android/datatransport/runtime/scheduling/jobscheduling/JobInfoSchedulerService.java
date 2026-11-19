package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.util.Base64;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.TransportRuntime;
import com.google.android.datatransport.runtime.util.PriorityMapping;
import defpackage.hw;
import defpackage.jr;

/* JADX INFO: loaded from: classes2.dex */
public class JobInfoSchedulerService extends JobService {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f28066b = 0;

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("backendName");
        String string2 = jobParameters.getExtras().getString("extras");
        int i2 = jobParameters.getExtras().getInt("priority");
        int i3 = jobParameters.getExtras().getInt("attemptNumber");
        TransportRuntime.b(getApplicationContext());
        TransportContext.Builder builderA = TransportContext.a();
        builderA.b(string);
        builderA.d(PriorityMapping.b(i2));
        if (string2 != null) {
            builderA.c(Base64.decode(string2, 0));
        }
        Uploader uploader = TransportRuntime.a().d;
        uploader.f28072e.execute(new hw(uploader, builderA.a(), i3, new jr(this, jobParameters, 22)));
        return true;
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        return true;
    }
}
