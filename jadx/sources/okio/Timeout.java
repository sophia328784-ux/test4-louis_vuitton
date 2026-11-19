package okio;

import defpackage.b21;
import defpackage.d21;
import defpackage.md;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lokio/Timeout;", "", "<init>", "()V", "Companion", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class Timeout {
    public static final Timeout$Companion$NONE$1 d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f77455a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f77456b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f77457c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lokio/Timeout$Companion;", "", "Lokio/Timeout;", "NONE", "Lokio/Timeout;", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        d = new Timeout$Companion$NONE$1();
    }

    public Timeout a() {
        this.f77455a = false;
        return this;
    }

    public Timeout b() {
        this.f77457c = 0L;
        return this;
    }

    public long c() {
        if (this.f77455a) {
            return this.f77456b;
        }
        md.k("No deadline");
        return 0L;
    }

    public Timeout d(long j2) {
        this.f77455a = true;
        this.f77456b = j2;
        return this;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public boolean getF77455a() {
        return this.f77455a;
    }

    public void f() throws InterruptedIOException {
        if (Thread.currentThread().isInterrupted()) {
            throw new InterruptedIOException("interrupted");
        }
        if (this.f77455a && this.f77456b - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    public Timeout g(long j2, TimeUnit timeUnit) {
        timeUnit.getClass();
        if (j2 >= 0) {
            this.f77457c = timeUnit.toNanos(j2);
            return this;
        }
        b21.n(d21.g(j2, "timeout < 0: "));
        return null;
    }

    /* JADX INFO: renamed from: h, reason: from getter */
    public long getF77457c() {
        return this.f77457c;
    }
}
