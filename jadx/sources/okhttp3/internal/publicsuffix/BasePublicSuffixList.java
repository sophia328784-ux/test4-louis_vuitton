package okhttp3.internal.publicsuffix;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;
import okio.RealBufferedSource;
import okio.Source;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b \u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lokhttp3/internal/publicsuffix/BasePublicSuffixList;", "Lokhttp3/internal/publicsuffix/PublicSuffixList;", "<init>", "()V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class BasePublicSuffixList implements PublicSuffixList {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f77336a = new AtomicBoolean(false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CountDownLatch f77337b = new CountDownLatch(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ByteString f77338c;
    public ByteString d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public IOException f77339e;

    @Override // okhttp3.internal.publicsuffix.PublicSuffixList
    public final ByteString a() {
        ByteString byteString = this.f77338c;
        if (byteString != null) {
            return byteString;
        }
        Intrinsics.h("bytes");
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0034 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // okhttp3.internal.publicsuffix.PublicSuffixList
    public final void b() {
        AtomicBoolean atomicBoolean = this.f77336a;
        if (atomicBoolean.get()) {
            this.f77337b.await();
        } else {
            boolean z = false;
            if (atomicBoolean.compareAndSet(false, true)) {
                while (true) {
                    try {
                        try {
                            f();
                            break;
                        } catch (InterruptedIOException unused) {
                            Thread.interrupted();
                            z = true;
                        } catch (IOException e2) {
                            this.f77339e = e2;
                            if (z) {
                            }
                        }
                    } catch (Throwable th) {
                        if (z) {
                            Thread.currentThread().interrupt();
                        }
                        throw th;
                    }
                }
                if (z) {
                    Thread.currentThread().interrupt();
                }
            } else {
                try {
                    this.f77337b.await();
                } catch (InterruptedException unused2) {
                    Thread.currentThread().interrupt();
                }
            }
        }
        if (this.f77338c != null) {
            return;
        }
        IllegalStateException illegalStateException = new IllegalStateException("Unable to load " + ((Object) d()) + " resource.");
        illegalStateException.initCause(this.f77339e);
        throw illegalStateException;
    }

    @Override // okhttp3.internal.publicsuffix.PublicSuffixList
    public final ByteString c() {
        ByteString byteString = this.d;
        if (byteString != null) {
            return byteString;
        }
        Intrinsics.h("exceptionBytes");
        throw null;
    }

    public abstract String d();

    public abstract Source e();

    public final void f() {
        try {
            RealBufferedSource realBufferedSource = new RealBufferedSource(e());
            try {
                ByteString byteStringN0 = realBufferedSource.N0(realBufferedSource.readInt());
                ByteString byteStringN1 = realBufferedSource.N0(realBufferedSource.readInt());
                realBufferedSource.close();
                synchronized (this) {
                    byteStringN0.getClass();
                    this.f77338c = byteStringN0;
                    byteStringN1.getClass();
                    this.d = byteStringN1;
                }
                this.f77337b.countDown();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.a(realBufferedSource, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            this.f77337b.countDown();
            throw th3;
        }
    }
}
