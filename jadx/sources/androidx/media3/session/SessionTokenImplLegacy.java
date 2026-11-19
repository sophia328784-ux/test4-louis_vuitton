package androidx.media3.session;

import android.content.ComponentName;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.media3.common.util.Util;
import androidx.media3.session.legacy.LegacyParcelableUtil;
import androidx.media3.session.legacy.MediaSessionCompat;
import androidx.versionedparcelable.ParcelUtils;
import androidx.versionedparcelable.VersionedParcelable;
import com.google.common.base.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
final class SessionTokenImplLegacy implements SessionToken.SessionTokenImpl {
    public static final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f17578h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f17579i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f17580j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f17581k;
    public static final String l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MediaSessionCompat.Token f17582a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f17583b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f17584c;
    public final ComponentName d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f17585e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Bundle f17586f;

    static {
        String str = Util.f14242a;
        g = Integer.toString(0, 36);
        f17578h = Integer.toString(1, 36);
        f17579i = Integer.toString(2, 36);
        f17580j = Integer.toString(3, 36);
        f17581k = Integer.toString(4, 36);
        l = Integer.toString(5, 36);
    }

    public SessionTokenImplLegacy(MediaSessionCompat.Token token, int i2, int i3, ComponentName componentName, String str, Bundle bundle) {
        Preconditions.g((Build.MANUFACTURER.equals("samsung") && Build.VERSION.SDK_INT == 36) || !TextUtils.isEmpty(str));
        this.f17582a = token;
        this.f17583b = i2;
        this.f17584c = i3;
        this.d = componentName;
        this.f17585e = str;
        this.f17586f = bundle;
    }

    @Override // androidx.media3.session.SessionToken.SessionTokenImpl
    public final Bundle a() {
        Bundle bundle;
        Bundle bundle2 = new Bundle();
        String str = g;
        MediaSessionCompat.Token token = this.f17582a;
        if (token == null) {
            bundle = null;
        } else {
            Bundle bundle3 = new Bundle();
            bundle3.putParcelable("android.support.v4.media.session.TOKEN", LegacyParcelableUtil.a(token, android.support.v4.media.session.MediaSessionCompat.Token.CREATOR));
            synchronized (token.f17818b) {
                try {
                    androidx.media3.session.legacy.IMediaSession iMediaSession = token.d;
                    if (iMediaSession != null) {
                        bundle3.putBinder("android.support.v4.media.session.EXTRA_BINDER", iMediaSession.asBinder());
                    }
                    VersionedParcelable versionedParcelable = token.f17820e;
                    if (versionedParcelable != null) {
                        ParcelUtils.b(bundle3, versionedParcelable);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            bundle = bundle3;
        }
        bundle2.putBundle(str, bundle);
        bundle2.putInt(f17578h, this.f17583b);
        bundle2.putInt(f17579i, this.f17584c);
        bundle2.putParcelable(f17580j, this.d);
        bundle2.putString(f17581k, this.f17585e);
        bundle2.putBundle(l, this.f17586f);
        return bundle2;
    }

    @Override // androidx.media3.session.SessionToken.SessionTokenImpl
    public final Object b() {
        return this.f17582a;
    }

    @Override // androidx.media3.session.SessionToken.SessionTokenImpl
    public final String c() {
        return this.f17585e;
    }

    @Override // androidx.media3.session.SessionToken.SessionTokenImpl
    public final int d() {
        return 0;
    }

    @Override // androidx.media3.session.SessionToken.SessionTokenImpl
    public final ComponentName e() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SessionTokenImplLegacy)) {
            return false;
        }
        SessionTokenImplLegacy sessionTokenImplLegacy = (SessionTokenImplLegacy) obj;
        int i2 = sessionTokenImplLegacy.f17584c;
        int i3 = this.f17584c;
        if (i3 != i2) {
            return false;
        }
        if (i3 == 100) {
            return Objects.equals(this.f17582a, sessionTokenImplLegacy.f17582a);
        }
        if (i3 != 101) {
            return false;
        }
        return Objects.equals(this.d, sessionTokenImplLegacy.d);
    }

    @Override // androidx.media3.session.SessionToken.SessionTokenImpl
    public final boolean f() {
        return true;
    }

    @Override // androidx.media3.session.SessionToken.SessionTokenImpl
    public final android.media.session.MediaSession.Token g() {
        MediaSessionCompat.Token token = this.f17582a;
        if (token == null) {
            return null;
        }
        return token.f17819c;
    }

    @Override // androidx.media3.session.SessionToken.SessionTokenImpl
    public final Bundle getExtras() {
        return new Bundle(this.f17586f);
    }

    @Override // androidx.media3.session.SessionToken.SessionTokenImpl
    public final String getServiceName() {
        ComponentName componentName = this.d;
        return componentName == null ? "" : componentName.getClassName();
    }

    @Override // androidx.media3.session.SessionToken.SessionTokenImpl
    public final int getType() {
        return this.f17584c != 101 ? 0 : 2;
    }

    @Override // androidx.media3.session.SessionToken.SessionTokenImpl
    public final int getUid() {
        return this.f17583b;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f17584c), this.d, this.f17582a);
    }

    public final String toString() {
        return defpackage.a.i(this.f17583b, "}", new StringBuilder("SessionToken {legacy, uid="));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SessionTokenImplLegacy(ComponentName componentName, int i2) {
        this(null, i2, 101, componentName, componentName.getPackageName(), Bundle.EMPTY);
        componentName.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SessionTokenImplLegacy(MediaSessionCompat.Token token, String str, int i2, Bundle bundle) {
        this(token, i2, 100, null, str, bundle);
        token.getClass();
        bundle.getClass();
    }
}
