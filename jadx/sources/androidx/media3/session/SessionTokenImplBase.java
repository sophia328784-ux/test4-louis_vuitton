package androidx.media3.session;

import android.content.ComponentName;
import android.os.Bundle;
import android.os.IBinder;
import android.text.TextUtils;
import androidx.media3.common.util.Util;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
final class SessionTokenImplBase implements SessionToken.SessionTokenImpl {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f17569k;
    public static final String l;
    public static final String m;
    public static final String n;
    public static final String o;
    public static final String p;
    public static final String q;
    public static final String r;
    public static final String s;
    public static final String t;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f17570a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f17571b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f17572c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f17573e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f17574f;
    public final ComponentName g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final IBinder f17575h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Bundle f17576i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final android.media.session.MediaSession.Token f17577j;

    static {
        String str = Util.f14242a;
        f17569k = Integer.toString(0, 36);
        l = Integer.toString(1, 36);
        m = Integer.toString(2, 36);
        n = Integer.toString(3, 36);
        o = Integer.toString(4, 36);
        p = Integer.toString(5, 36);
        q = Integer.toString(6, 36);
        r = Integer.toString(7, 36);
        s = Integer.toString(8, 36);
        t = Integer.toString(9, 36);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public SessionTokenImplBase(int i2, int i3, int i4, int i5, String str, IMediaSession iMediaSession, Bundle bundle, android.media.session.MediaSession.Token token) {
        str.getClass();
        IBinder iBinderAsBinder = iMediaSession.asBinder();
        bundle.getClass();
        this(i2, i3, i4, i5, str, "", null, iBinderAsBinder, bundle, token);
    }

    @Override // androidx.media3.session.SessionToken.SessionTokenImpl
    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putInt(f17569k, this.f17570a);
        bundle.putInt(l, this.f17571b);
        bundle.putInt(m, this.f17572c);
        bundle.putString(n, this.f17573e);
        bundle.putString(o, this.f17574f);
        bundle.putBinder(q, this.f17575h);
        bundle.putParcelable(p, this.g);
        bundle.putBundle(r, this.f17576i);
        bundle.putInt(s, this.d);
        android.media.session.MediaSession.Token token = this.f17577j;
        if (token != null) {
            bundle.putParcelable(t, token);
        }
        return bundle;
    }

    @Override // androidx.media3.session.SessionToken.SessionTokenImpl
    public final Object b() {
        return this.f17575h;
    }

    @Override // androidx.media3.session.SessionToken.SessionTokenImpl
    public final String c() {
        return this.f17573e;
    }

    @Override // androidx.media3.session.SessionToken.SessionTokenImpl
    public final int d() {
        return this.d;
    }

    @Override // androidx.media3.session.SessionToken.SessionTokenImpl
    public final ComponentName e() {
        return this.g;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SessionTokenImplBase)) {
            return false;
        }
        SessionTokenImplBase sessionTokenImplBase = (SessionTokenImplBase) obj;
        return this.f17570a == sessionTokenImplBase.f17570a && this.f17571b == sessionTokenImplBase.f17571b && this.f17572c == sessionTokenImplBase.f17572c && this.d == sessionTokenImplBase.d && TextUtils.equals(this.f17573e, sessionTokenImplBase.f17573e) && TextUtils.equals(this.f17574f, sessionTokenImplBase.f17574f) && Objects.equals(this.g, sessionTokenImplBase.g) && Objects.equals(this.f17575h, sessionTokenImplBase.f17575h) && Objects.equals(this.f17577j, sessionTokenImplBase.f17577j);
    }

    @Override // androidx.media3.session.SessionToken.SessionTokenImpl
    public final boolean f() {
        return false;
    }

    @Override // androidx.media3.session.SessionToken.SessionTokenImpl
    public final android.media.session.MediaSession.Token g() {
        return this.f17577j;
    }

    @Override // androidx.media3.session.SessionToken.SessionTokenImpl
    public final Bundle getExtras() {
        return new Bundle(this.f17576i);
    }

    @Override // androidx.media3.session.SessionToken.SessionTokenImpl
    public final String getServiceName() {
        return this.f17574f;
    }

    @Override // androidx.media3.session.SessionToken.SessionTokenImpl
    public final int getType() {
        return this.f17571b;
    }

    @Override // androidx.media3.session.SessionToken.SessionTokenImpl
    public final int getUid() {
        return this.f17570a;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f17570a), Integer.valueOf(this.f17571b), Integer.valueOf(this.f17572c), Integer.valueOf(this.d), this.f17573e, this.f17574f, this.g, this.f17575h, this.f17577j);
    }

    public final String toString() {
        return "SessionToken {pkg=" + this.f17573e + " type=" + this.f17571b + " libraryVersion=" + this.f17572c + " interfaceVersion=" + this.d + " service=" + this.f17574f + " IMediaSession=" + this.f17575h + " extras=" + this.f17576i + "}";
    }

    public SessionTokenImplBase(int i2, int i3, int i4, int i5, String str, String str2, ComponentName componentName, IBinder iBinder, Bundle bundle, android.media.session.MediaSession.Token token) {
        this.f17570a = i2;
        this.f17571b = i3;
        this.f17572c = i4;
        this.d = i5;
        this.f17573e = str;
        this.f17574f = str2;
        this.g = componentName;
        this.f17575h = iBinder;
        this.f17576i = bundle;
        this.f17577j = token;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SessionTokenImplBase(ComponentName componentName, int i2, int i3) {
        this(i2, i3, 1000000, 0, componentName.getPackageName(), componentName.getClassName(), componentName, null, Bundle.EMPTY, null);
        componentName.getClass();
    }
}
