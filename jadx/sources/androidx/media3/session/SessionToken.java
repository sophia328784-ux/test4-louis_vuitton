package androidx.media3.session;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.text.TextUtils;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import defpackage.lc0;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class SessionToken {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f17566b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f17567c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SessionTokenImpl f17568a;

    /* JADX INFO: renamed from: androidx.media3.session.SessionToken$1, reason: invalid class name */
    class AnonymousClass1 extends ResultReceiver {
        @Override // android.os.ResultReceiver
        public final void onReceiveResult(int i2, Bundle bundle) {
            throw null;
        }
    }

    public interface SessionTokenImpl {
        Bundle a();

        Object b();

        String c();

        int d();

        ComponentName e();

        boolean f();

        android.media.session.MediaSession.Token g();

        Bundle getExtras();

        String getServiceName();

        int getType();

        int getUid();
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface TokenType {
    }

    static {
        MediaLibraryInfo.a("media3.session");
        String str = Util.f14242a;
        f17566b = Integer.toString(0, 36);
        f17567c = Integer.toString(1, 36);
    }

    public SessionToken(Context context, ComponentName componentName) {
        int i2;
        int i3;
        Preconditions.m(context, "context must not be null");
        Preconditions.m(componentName, "serviceComponent must not be null");
        PackageManager packageManager = context.getPackageManager();
        try {
            i2 = packageManager.getApplicationInfo(componentName.getPackageName(), 0).uid;
        } catch (PackageManager.NameNotFoundException unused) {
            i2 = -1;
        }
        if (a(packageManager, "androidx.media3.session.MediaLibraryService", componentName)) {
            i3 = 2;
        } else if (a(packageManager, "androidx.media3.session.MediaSessionService", componentName)) {
            i3 = 1;
        } else {
            if (!a(packageManager, "android.media.browse.MediaBrowserService", componentName)) {
                lc0.n("Failed to resolve SessionToken for ", componentName, ". Manifest doesn't declare one of either MediaSessionService, MediaLibraryService, MediaBrowserService or MediaBrowserServiceCompat. Use service's full name.");
                throw null;
            }
            i3 = 101;
        }
        if (i3 != 101) {
            this.f17568a = new SessionTokenImplBase(componentName, i2, i3);
        } else {
            this.f17568a = new SessionTokenImplLegacy(componentName, i2);
        }
    }

    public static boolean a(PackageManager packageManager, String str, ComponentName componentName) {
        ServiceInfo serviceInfo;
        Intent intent = new Intent(str);
        intent.setPackage(componentName.getPackageName());
        List<ResolveInfo> listQueryIntentServices = packageManager.queryIntentServices(intent, 128);
        if (listQueryIntentServices != null) {
            for (int i2 = 0; i2 < listQueryIntentServices.size(); i2++) {
                ResolveInfo resolveInfo = listQueryIntentServices.get(i2);
                if (resolveInfo != null && (serviceInfo = resolveInfo.serviceInfo) != null && TextUtils.equals(serviceInfo.name, componentName.getClassName())) {
                    return true;
                }
            }
        }
        return false;
    }

    public final Bundle b() {
        Bundle bundle = new Bundle();
        SessionTokenImpl sessionTokenImpl = this.f17568a;
        boolean z = sessionTokenImpl instanceof SessionTokenImplBase;
        String str = f17566b;
        if (z) {
            bundle.putInt(str, 0);
        } else {
            bundle.putInt(str, 1);
        }
        bundle.putBundle(f17567c, sessionTokenImpl.a());
        return bundle;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof SessionToken) {
            return this.f17568a.equals(((SessionToken) obj).f17568a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f17568a.hashCode();
    }

    public final String toString() {
        return this.f17568a.toString();
    }

    public SessionToken(int i2, int i3, int i4, String str, IMediaSession iMediaSession, Bundle bundle, android.media.session.MediaSession.Token token) {
        this.f17568a = new SessionTokenImplBase(i2, 0, i3, i4, str, iMediaSession, bundle, token);
    }
}
