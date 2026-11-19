package androidx.media3.session;

import android.os.Bundle;
import android.os.SystemClock;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes.dex */
public final class SessionResult {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f17560e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f17561f;
    public static final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f17562h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f17563a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Bundle f17564b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f17565c;
    public final SessionError d;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Code {
    }

    static {
        String str = Util.f14242a;
        f17560e = Integer.toString(0, 36);
        f17561f = Integer.toString(1, 36);
        g = Integer.toString(2, 36);
        f17562h = Integer.toString(3, 36);
    }

    public SessionResult(int i2, Bundle bundle, long j2, SessionError sessionError) {
        Preconditions.g(sessionError == null || i2 < 0);
        this.f17563a = i2;
        this.f17564b = new Bundle(bundle);
        this.f17565c = j2;
        if (sessionError == null && i2 < 0) {
            sessionError = new SessionError(i2, "no error message provided");
        }
        this.d = sessionError;
    }

    public static SessionResult a(Bundle bundle) {
        SessionError sessionError;
        int i2 = bundle.getInt(f17560e, -1);
        Bundle bundleP = Util.p(bundle.getBundle(f17561f));
        long j2 = bundle.getLong(g, SystemClock.elapsedRealtime());
        Bundle bundle2 = bundle.getBundle(f17562h);
        if (bundle2 != null) {
            sessionError = SessionError.a(bundle2);
        } else {
            sessionError = i2 != 0 ? new SessionError(i2, "no error message provided") : null;
        }
        SessionError sessionError2 = sessionError;
        if (bundleP == null) {
            bundleP = Bundle.EMPTY;
        }
        return new SessionResult(i2, bundleP, j2, sessionError2);
    }

    public final Bundle b() {
        Bundle bundle = new Bundle();
        bundle.putInt(f17560e, this.f17563a);
        bundle.putBundle(f17561f, this.f17564b);
        bundle.putLong(g, this.f17565c);
        SessionError sessionError = this.d;
        if (sessionError != null) {
            bundle.putBundle(f17562h, sessionError.b());
        }
        return bundle;
    }

    public SessionResult(int i2, Bundle bundle) {
        this(i2, bundle, SystemClock.elapsedRealtime(), null);
    }

    public SessionResult(SessionError sessionError) {
        this(sessionError.f17548a, Bundle.EMPTY, SystemClock.elapsedRealtime(), sessionError);
    }

    public SessionResult(SessionError sessionError, Bundle bundle) {
        this(sessionError.f17548a, bundle, SystemClock.elapsedRealtime(), sessionError);
    }

    public SessionResult(int i2) {
        this(i2, Bundle.EMPTY);
    }
}
