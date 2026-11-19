package androidx.media;

import android.text.TextUtils;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
abstract class MediaSessionManagerImplBase$RemoteUserInfoImplBase implements MediaSessionManager$RemoteUserInfoImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f13655a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f13656b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f13657c;

    public MediaSessionManagerImplBase$RemoteUserInfoImplBase(String str, int i2, int i3) {
        this.f13655a = str;
        this.f13656b = i2;
        this.f13657c = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaSessionManagerImplBase$RemoteUserInfoImplBase)) {
            return false;
        }
        MediaSessionManagerImplBase$RemoteUserInfoImplBase mediaSessionManagerImplBase$RemoteUserInfoImplBase = (MediaSessionManagerImplBase$RemoteUserInfoImplBase) obj;
        int i2 = mediaSessionManagerImplBase$RemoteUserInfoImplBase.f13657c;
        String str = mediaSessionManagerImplBase$RemoteUserInfoImplBase.f13655a;
        int i3 = mediaSessionManagerImplBase$RemoteUserInfoImplBase.f13656b;
        int i4 = this.f13657c;
        String str2 = this.f13655a;
        int i5 = this.f13656b;
        if (i5 < 0 || i3 < 0) {
            return TextUtils.equals(str2, str) && i4 == i2;
        }
        return TextUtils.equals(str2, str) && i5 == i3 && i4 == i2;
    }

    public final int hashCode() {
        return Objects.hash(this.f13655a, Integer.valueOf(this.f13657c));
    }
}
