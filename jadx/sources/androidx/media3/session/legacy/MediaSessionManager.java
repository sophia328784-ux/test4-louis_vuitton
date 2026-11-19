package androidx.media3.session.legacy;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Process;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.media3.common.util.Log;
import defpackage.md;
import defpackage.r81;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class MediaSessionManager {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Object f17821b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile MediaSessionManager f17822c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public MediaSessionManagerImpl f17823a;

    public static class MediaSessionManagerImpl {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Context f17824a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ContentResolver f17825b;

        public final boolean a(RemoteUserInfoImplApi28 remoteUserInfoImplApi28, String str) {
            int i2 = remoteUserInfoImplApi28.f17828b;
            Context context = this.f17824a;
            if (i2 < 0) {
                return context.getPackageManager().checkPermission(str, remoteUserInfoImplApi28.f17827a) == 0;
            }
            return context.checkPermission(str, i2, remoteUserInfoImplApi28.f17829c) == 0;
        }
    }

    public interface RemoteUserInfoImpl {
    }

    public static final class RemoteUserInfoImplApi28 extends RemoteUserInfoImplBase {
    }

    public static class RemoteUserInfoImplBase implements RemoteUserInfoImpl {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f17827a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f17828b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f17829c;

        public RemoteUserInfoImplBase(String str, int i2, int i3) {
            this.f17827a = str;
            this.f17828b = i2;
            this.f17829c = i3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RemoteUserInfoImplBase)) {
                return false;
            }
            RemoteUserInfoImplBase remoteUserInfoImplBase = (RemoteUserInfoImplBase) obj;
            int i2 = remoteUserInfoImplBase.f17829c;
            String str = remoteUserInfoImplBase.f17827a;
            int i3 = remoteUserInfoImplBase.f17828b;
            int i4 = this.f17829c;
            String str2 = this.f17827a;
            int i5 = this.f17828b;
            if (i5 < 0 || i3 < 0) {
                return TextUtils.equals(str2, str) && i4 == i2;
            }
            return TextUtils.equals(str2, str) && i5 == i3 && i4 == i2;
        }

        public final int hashCode() {
            return Objects.hash(this.f17827a, Integer.valueOf(this.f17829c));
        }
    }

    public static MediaSessionManager a(Context context) {
        MediaSessionManager mediaSessionManager;
        synchronized (f17821b) {
            try {
                if (f17822c == null) {
                    Context applicationContext = context.getApplicationContext();
                    MediaSessionManager mediaSessionManager2 = new MediaSessionManager();
                    MediaSessionManagerImpl mediaSessionManagerImpl = new MediaSessionManagerImpl();
                    mediaSessionManagerImpl.f17824a = applicationContext;
                    mediaSessionManagerImpl.f17825b = applicationContext.getContentResolver();
                    mediaSessionManager2.f17823a = mediaSessionManagerImpl;
                    f17822c = mediaSessionManager2;
                }
                mediaSessionManager = f17822c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return mediaSessionManager;
    }

    public final boolean b(RemoteUserInfo remoteUserInfo) {
        MediaSessionManagerImpl mediaSessionManagerImpl = this.f17823a;
        RemoteUserInfoImplApi28 remoteUserInfoImplApi28 = remoteUserInfo.f17826a;
        Context context = mediaSessionManagerImpl.f17824a;
        int i2 = remoteUserInfoImplApi28.f17829c;
        String str = remoteUserInfoImplApi28.f17827a;
        try {
            if (context.getPackageManager().getApplicationInfo(str, 0) != null) {
                if (i2 == 1000 || i2 == Process.myUid() || context.checkPermission("android.permission.MEDIA_CONTENT_CONTROL", remoteUserInfoImplApi28.f17828b, remoteUserInfoImplApi28.f17829c) == 0 || mediaSessionManagerImpl.a(remoteUserInfoImplApi28, "android.permission.STATUS_BAR_SERVICE") || mediaSessionManagerImpl.a(remoteUserInfoImplApi28, "android.permission.MEDIA_CONTENT_CONTROL")) {
                    return true;
                }
                String string = Settings.Secure.getString(mediaSessionManagerImpl.f17825b, "enabled_notification_listeners");
                if (string != null) {
                    for (String str2 : string.split(":")) {
                        ComponentName componentNameUnflattenFromString = ComponentName.unflattenFromString(str2);
                        if (componentNameUnflattenFromString != null && componentNameUnflattenFromString.getPackageName().equals(str)) {
                            return true;
                        }
                    }
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
            Log.b("Package " + str + " doesn't exist");
            return false;
        }
    }

    public static final class RemoteUserInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final RemoteUserInfoImplApi28 f17826a;

        public RemoteUserInfo(android.media.session.MediaSessionManager.RemoteUserInfo remoteUserInfo) {
            String packageName = remoteUserInfo.getPackageName();
            if (packageName == null) {
                r81.d("package shouldn't be null");
                throw null;
            }
            if (TextUtils.isEmpty(packageName)) {
                md.n("packageName should be nonempty");
                throw null;
            }
            this.f17826a = new RemoteUserInfoImplApi28(remoteUserInfo.getPackageName(), remoteUserInfo.getPid(), remoteUserInfo.getUid());
        }

        public final String a() {
            return this.f17826a.f17827a;
        }

        public final int b() {
            return this.f17826a.f17828b;
        }

        public final int c() {
            return this.f17826a.f17829c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RemoteUserInfo)) {
                return false;
            }
            return this.f17826a.equals(((RemoteUserInfo) obj).f17826a);
        }

        public final int hashCode() {
            return this.f17826a.hashCode();
        }

        public RemoteUserInfo(String str, int i2, int i3) {
            if (str != null) {
                if (!TextUtils.isEmpty(str)) {
                    this.f17826a = new RemoteUserInfoImplApi28(str, i2, i3);
                    return;
                } else {
                    md.n("packageName should be nonempty");
                    throw null;
                }
            }
            r81.d("package shouldn't be null");
            throw null;
        }
    }
}
