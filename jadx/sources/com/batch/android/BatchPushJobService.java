package com.batch.android;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.os.AsyncTask;
import android.os.Bundle;
import com.batch.android.e.t;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class BatchPushJobService extends JobService {
    public static final String JOB_EXTRA_PUSH_DATA_KEY = "com.batch.push_data";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f22832a = "BatchPushJobService";

    public static class a extends AsyncTask<Void, Void, Void> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Bundle f22833a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private WeakReference<JobService> f22834b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private JobParameters f22835c;

        public a(Bundle bundle, JobService jobService, JobParameters jobParameters) {
            this.f22833a = bundle;
            this.f22834b = new WeakReference<>(jobService);
            this.f22835c = jobParameters;
        }

        /* JADX WARN: Code duplicated, block: B:29:0x0044 A[PHI: r7
          0x0044: PHI (r7v3 android.app.job.JobParameters) = (r7v1 android.app.job.JobParameters), (r7v4 android.app.job.JobParameters) binds: [B:28:0x0042, B:21:0x0035] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Undo finally extract visitor
        java.lang.NullPointerException
        	at jadx.core.utils.Pair.hashCode(Pair.java:35)
        	at java.base/java.util.HashMap.hash(HashMap.java:340)
        	at java.base/java.util.HashMap.containsKey(HashMap.java:592)
        	at jadx.core.dex.visitors.finaly.traverser.state.TraverserGlobalCommonState.hasBlocksBeenCached(TraverserGlobalCommonState.java:35)
        	at jadx.core.dex.visitors.finaly.traverser.handlers.MergePathActivePathTraverserHandler.handle(MergePathActivePathTraverserHandler.java:174)
        	at jadx.core.dex.visitors.finaly.traverser.handlers.AbstractActivePathTraverserHandler.process(AbstractActivePathTraverserHandler.java:19)
        	at jadx.core.dex.visitors.finaly.traverser.TraverserController.processHandlerImplementations(TraverserController.java:43)
        	at jadx.core.dex.visitors.finaly.traverser.TraverserController.advance(TraverserController.java:156)
        	at jadx.core.dex.visitors.finaly.traverser.TraverserController.process(TraverserController.java:79)
        	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.findCommonInsns(MarkFinallyVisitor.java:404)
        	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.extractFinally(MarkFinallyVisitor.java:284)
        	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.processTryBlock(MarkFinallyVisitor.java:202)
        	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.visit(MarkFinallyVisitor.java:135)
         */
        @Override // android.os.AsyncTask
        public Void doInBackground(Void... voidArr) {
            JobParameters jobParameters;
            WeakReference<JobService> weakReference = this.f22834b;
            JobService jobService = weakReference != null ? weakReference.get() : null;
            if (jobService == null) {
                t.c(BatchPushJobService.f22832a, "JobService vanished before a push notification could be presented with it.");
                return null;
            }
            if (this.f22835c == null) {
                t.c(BatchPushJobService.f22832a, "JobParameters vanished before a push notification could be presented with them.");
                return null;
            }
            Bundle bundle = this.f22833a;
            if (bundle == null) {
                t.c(BatchPushJobService.f22832a, "Unexpected error: missing push data");
                return null;
            }
            try {
                try {
                    e.a(jobService, bundle);
                    jobParameters = this.f22835c;
                    if (jobParameters != null) {
                        jobService.jobFinished(jobParameters, false);
                        t.c(BatchPushJobService.f22832a, "Push notification display job finished successfully");
                    } else {
                        t.c(BatchPushJobService.f22832a, "Unexpected error: job parameters vanished");
                    }
                } catch (j e2) {
                    throw e2.a();
                } catch (Exception e3) {
                    t.c(BatchPushJobService.f22832a, "Error while handing notification", e3);
                    jobParameters = this.f22835c;
                    if (jobParameters != null) {
                        jobService.jobFinished(jobParameters, false);
                        t.c(BatchPushJobService.f22832a, "Push notification display job finished successfully");
                    }
                }
                return null;
            } catch (Throwable th) {
                JobParameters jobParameters2 = this.f22835c;
                if (jobParameters2 != null) {
                    jobService.jobFinished(jobParameters2, false);
                    t.c(BatchPushJobService.f22832a, "Push notification display job finished successfully");
                } else {
                    t.c(BatchPushJobService.f22832a, "Unexpected error: job parameters vanished");
                }
                throw th;
            }
        }
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        if (jobParameters == null) {
            t.c(f22832a, "JobParameters were null");
            return false;
        }
        Bundle bundle = jobParameters.getTransientExtras().getBundle(JOB_EXTRA_PUSH_DATA_KEY);
        if (bundle == null) {
            t.c(f22832a, "No push data was found in the job's parameters");
            return false;
        }
        new a(bundle, this, jobParameters).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        return true;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        t.c(f22832a, "onStopJob");
        return false;
    }
}
