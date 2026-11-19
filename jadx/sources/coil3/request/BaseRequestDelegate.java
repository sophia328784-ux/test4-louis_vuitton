package coil3.request;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0081@\u0018\u00002\u00020\u0001\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006\u0004"}, d2 = {"Lcoil3/request/BaseRequestDelegate;", "Lcoil3/request/RequestDelegate;", "job", "Lkotlinx/coroutines/Job;", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
@JvmInline
public final class BaseRequestDelegate implements RequestDelegate {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Job f21608b;

    public /* synthetic */ BaseRequestDelegate(Job job) {
        this.f21608b = job;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof BaseRequestDelegate) {
            return this.f21608b.equals(((BaseRequestDelegate) obj).f21608b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f21608b.hashCode();
    }

    public final String toString() {
        return "BaseRequestDelegate(job=" + this.f21608b + ")";
    }
}
