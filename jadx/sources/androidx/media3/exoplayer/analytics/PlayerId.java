package androidx.media3.exoplayer.analytics;

import android.media.metrics.LogSessionId;
import android.os.Build;
import com.appsflyer.sdk_base.referrer.Payload;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class PlayerId {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final PlayerId f14853c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f14854a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LogSessionIdApi31 f14855b;

    public static final class LogSessionIdApi31 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public LogSessionId f14856a = LogSessionId.LOG_SESSION_ID_NONE;

        public final void a(LogSessionId logSessionId) {
            Preconditions.q(this.f14856a.equals(LogSessionId.LOG_SESSION_ID_NONE));
            this.f14856a = logSessionId;
        }
    }

    static {
        new PlayerId("");
        f14853c = new PlayerId(Payload.TYPE_PRELOAD);
    }

    public PlayerId(String str) {
        this.f14854a = str;
        this.f14855b = Build.VERSION.SDK_INT >= 31 ? new LogSessionIdApi31() : null;
    }

    public final synchronized LogSessionId a() {
        LogSessionIdApi31 logSessionIdApi31;
        logSessionIdApi31 = this.f14855b;
        logSessionIdApi31.getClass();
        return logSessionIdApi31.f14856a;
    }

    public final synchronized void b(LogSessionId logSessionId) {
        LogSessionIdApi31 logSessionIdApi31 = this.f14855b;
        logSessionIdApi31.getClass();
        logSessionIdApi31.a(logSessionId);
    }
}
