package com.batch.android;

import android.app.job.JobParameters;
import android.app.job.JobService;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BatchDisplayReceiptJobService extends JobService {
    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        return false;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return false;
    }
}
