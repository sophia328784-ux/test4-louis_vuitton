package androidx.media3.session;

import android.os.Bundle;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class SessionError {
    public static final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f17546e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f17547f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f17548a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f17549b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Bundle f17550c;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Code {
    }

    static {
        String str = Util.f14242a;
        d = Integer.toString(0, 36);
        f17546e = Integer.toString(1, 36);
        f17547f = Integer.toString(2, 36);
    }

    public SessionError(int i2, String str, Bundle bundle) {
        boolean z = true;
        if (i2 >= 0 && i2 != 1) {
            z = false;
        }
        Preconditions.g(z);
        this.f17548a = i2;
        this.f17549b = str;
        this.f17550c = bundle;
    }

    public static SessionError a(Bundle bundle) {
        int i2 = bundle.getInt(d, 1000);
        String string = bundle.getString(f17546e, "");
        Bundle bundleP = Util.p(bundle.getBundle(f17547f));
        if (bundleP == null) {
            bundleP = Bundle.EMPTY;
        }
        return new SessionError(i2, string, bundleP);
    }

    public final Bundle b() {
        Bundle bundle = new Bundle();
        bundle.putInt(d, this.f17548a);
        bundle.putString(f17546e, this.f17549b);
        Bundle bundle2 = this.f17550c;
        if (!bundle2.isEmpty()) {
            bundle.putBundle(f17547f, bundle2);
        }
        return bundle;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SessionError)) {
            return false;
        }
        SessionError sessionError = (SessionError) obj;
        return this.f17548a == sessionError.f17548a && Objects.equals(this.f17549b, sessionError.f17549b);
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f17548a), this.f17549b);
    }

    public SessionError(int i2, String str) {
        this(i2, str, Bundle.EMPTY);
    }
}
