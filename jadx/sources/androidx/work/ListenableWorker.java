package androidx.work;

import android.content.Context;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.md;
import defpackage.v40;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public abstract class ListenableWorker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f20256a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WorkerParameters f20257b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicInteger f20258c = new AtomicInteger(-256);
    public boolean d;

    public ListenableWorker(Context context, WorkerParameters workerParameters) {
        if (context == null) {
            md.n("Application Context is null");
            throw null;
        }
        if (workerParameters == null) {
            md.n("WorkerParameters is null");
            throw null;
        }
        this.f20256a = context;
        this.f20257b = workerParameters;
    }

    public ListenableFuture a() {
        return CallbackToFutureAdapter.a(new v40(5));
    }

    public abstract ListenableFuture b();

    public static abstract class Result {

        public static final class Retry extends Result {
            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && Retry.class == obj.getClass();
            }

            public final int hashCode() {
                return 25945934;
            }

            public final String toString() {
                return "Retry";
            }
        }

        public static final class Failure extends Result {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Data f20259a;

            public Failure(Data data) {
                this.f20259a = data;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj == null || Failure.class != obj.getClass()) {
                    return false;
                }
                return this.f20259a.equals(((Failure) obj).f20259a);
            }

            public final int hashCode() {
                return this.f20259a.hashCode() + 846803280;
            }

            public final String toString() {
                return "Failure {mOutputData=" + this.f20259a + '}';
            }

            public Failure() {
                this(Data.f20244c);
            }
        }

        public static final class Success extends Result {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Data f20260a;

            public Success(Data data) {
                this.f20260a = data;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj == null || Success.class != obj.getClass()) {
                    return false;
                }
                return this.f20260a.equals(((Success) obj).f20260a);
            }

            public final int hashCode() {
                return this.f20260a.hashCode() - 1876823561;
            }

            public final String toString() {
                return "Success {mOutputData=" + this.f20260a + '}';
            }

            public Success() {
                this(Data.f20244c);
            }
        }
    }
}
