package androidx.media3.session;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ObjectArrays;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class SessionCommand {
    public static final ImmutableList d = ImmutableList.A(40010);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ImmutableList f17536e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f17537f;
    public static final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f17538h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f17539a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f17540b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Bundle f17541c;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface CommandCode {
    }

    static {
        Object[] objArr = {50000, 50001, 50002, 50003, 50004, 50005, 50006};
        ObjectArrays.a(7, objArr);
        f17536e = ImmutableList.q(7, objArr);
        String str = Util.f14242a;
        f17537f = Integer.toString(0, 36);
        g = Integer.toString(1, 36);
        f17538h = Integer.toString(2, 36);
    }

    public SessionCommand(int i2) {
        Preconditions.h(i2 != 0, "commandCode shouldn't be COMMAND_CODE_CUSTOM");
        this.f17539a = i2;
        this.f17540b = "";
        this.f17541c = Bundle.EMPTY;
    }

    public static SessionCommand a(Bundle bundle) {
        int i2 = bundle.getInt(f17537f, 0);
        if (i2 != 0) {
            return new SessionCommand(i2);
        }
        String string = bundle.getString(g);
        string.getClass();
        Bundle bundleP = Util.p(bundle.getBundle(f17538h));
        if (bundleP == null) {
            bundleP = Bundle.EMPTY;
        }
        return new SessionCommand(string, bundleP);
    }

    public final Bundle b() {
        Bundle bundle = new Bundle();
        bundle.putInt(f17537f, this.f17539a);
        bundle.putString(g, this.f17540b);
        bundle.putBundle(f17538h, this.f17541c);
        return bundle;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SessionCommand)) {
            return false;
        }
        SessionCommand sessionCommand = (SessionCommand) obj;
        return this.f17539a == sessionCommand.f17539a && TextUtils.equals(this.f17540b, sessionCommand.f17540b);
    }

    public final int hashCode() {
        return Objects.hash(this.f17540b, Integer.valueOf(this.f17539a));
    }

    public SessionCommand(String str, Bundle bundle) {
        this.f17539a = 0;
        str.getClass();
        this.f17540b = str;
        bundle.getClass();
        this.f17541c = new Bundle(bundle);
    }
}
