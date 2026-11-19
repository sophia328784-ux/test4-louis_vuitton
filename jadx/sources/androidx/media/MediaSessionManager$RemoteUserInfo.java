package androidx.media;

import android.media.session.MediaSessionManager;
import android.text.TextUtils;
import defpackage.md;
import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class MediaSessionManager$RemoteUserInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MediaSessionManagerImplApi28$RemoteUserInfoImplApi28 f13654a;

    public MediaSessionManager$RemoteUserInfo(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        String packageName = remoteUserInfo.getPackageName();
        if (packageName == null) {
            r81.d("package shouldn't be null");
            throw null;
        }
        if (TextUtils.isEmpty(packageName)) {
            md.n("packageName should be nonempty");
            throw null;
        }
        this.f13654a = new MediaSessionManagerImplApi28$RemoteUserInfoImplApi28(remoteUserInfo.getPackageName(), remoteUserInfo.getPid(), remoteUserInfo.getUid());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaSessionManager$RemoteUserInfo)) {
            return false;
        }
        return this.f13654a.equals(((MediaSessionManager$RemoteUserInfo) obj).f13654a);
    }

    public final int hashCode() {
        return this.f13654a.hashCode();
    }

    public MediaSessionManager$RemoteUserInfo(String str, int i2, int i3) {
        if (str != null) {
            if (!TextUtils.isEmpty(str)) {
                MediaSessionManagerImplApi28$RemoteUserInfoImplApi28 mediaSessionManagerImplApi28$RemoteUserInfoImplApi28 = new MediaSessionManagerImplApi28$RemoteUserInfoImplApi28(str, i2, i3);
                new MediaSessionManager.RemoteUserInfo(str, i2, i3);
                this.f13654a = mediaSessionManagerImplApi28$RemoteUserInfoImplApi28;
                return;
            }
            md.n("packageName should be nonempty");
            throw null;
        }
        r81.d("package shouldn't be null");
        throw null;
    }
}
