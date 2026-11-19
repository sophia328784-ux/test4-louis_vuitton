package okio;

import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lokio/ForwardingTimeout;", "Lokio/Timeout;", "delegate", "<init>", "(Lokio/Timeout;)V", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class ForwardingTimeout extends Timeout {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Timeout f77417e;

    public ForwardingTimeout(Timeout timeout) {
        timeout.getClass();
        this.f77417e = timeout;
    }

    @Override // okio.Timeout
    public final Timeout a() {
        return this.f77417e.a();
    }

    @Override // okio.Timeout
    public final Timeout b() {
        return this.f77417e.b();
    }

    @Override // okio.Timeout
    public final long c() {
        return this.f77417e.c();
    }

    @Override // okio.Timeout
    public final Timeout d(long j2) {
        return this.f77417e.d(j2);
    }

    @Override // okio.Timeout
    /* JADX INFO: renamed from: e */
    public final boolean getF77455a() {
        return this.f77417e.getF77455a();
    }

    @Override // okio.Timeout
    public final void f() throws InterruptedIOException {
        this.f77417e.f();
    }

    @Override // okio.Timeout
    public final Timeout g(long j2, TimeUnit timeUnit) {
        timeUnit.getClass();
        return this.f77417e.g(j2, timeUnit);
    }

    @Override // okio.Timeout
    /* JADX INFO: renamed from: h */
    public final long getF77457c() {
        return this.f77417e.getF77457c();
    }
}
