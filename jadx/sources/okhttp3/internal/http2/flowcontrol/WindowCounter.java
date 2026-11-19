package okhttp3.internal.http2.flowcontrol;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lokhttp3/internal/http2/flowcontrol/WindowCounter;", "", "", "streamId", "<init>", "(I)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class WindowCounter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f77299a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f77300b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f77301c;

    public WindowCounter(int i2) {
        this.f77299a = i2;
    }

    public static void b(WindowCounter windowCounter, long j2, long j3, int i2) {
        if ((i2 & 1) != 0) {
            j2 = 0;
        }
        if ((i2 & 2) != 0) {
            j3 = 0;
        }
        synchronized (windowCounter) {
            try {
                if (j2 < 0) {
                    throw new IllegalStateException("Check failed.");
                }
                if (j3 < 0) {
                    throw new IllegalStateException("Check failed.");
                }
                long j4 = windowCounter.f77300b + j2;
                windowCounter.f77300b = j4;
                long j5 = windowCounter.f77301c + j3;
                windowCounter.f77301c = j5;
                if (j5 > j4) {
                    throw new IllegalStateException("Check failed.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized long a() {
        return this.f77300b - this.f77301c;
    }

    public final String toString() {
        return "WindowCounter(streamId=" + this.f77299a + ", total=" + this.f77300b + ", acknowledged=" + this.f77301c + ", unacknowledged=" + a() + ')';
    }
}
