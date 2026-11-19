package androidx.camera.camera2.internal;

import android.util.Size;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.UseCaseConfig;
import defpackage.r81;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_Camera2CameraImpl_UseCaseInfo extends Camera2CameraImpl.UseCaseInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1397a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Class f1398b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SessionConfig f1399c;
    public final UseCaseConfig d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Size f1400e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final StreamSpec f1401f;
    public final List g;

    public AutoValue_Camera2CameraImpl_UseCaseInfo(String str, Class cls, SessionConfig sessionConfig, UseCaseConfig useCaseConfig, Size size, StreamSpec streamSpec, ArrayList arrayList) {
        this.f1397a = str;
        this.f1398b = cls;
        if (sessionConfig == null) {
            r81.d("Null sessionConfig");
            throw null;
        }
        this.f1399c = sessionConfig;
        if (useCaseConfig == null) {
            r81.d("Null useCaseConfig");
            throw null;
        }
        this.d = useCaseConfig;
        this.f1400e = size;
        this.f1401f = streamSpec;
        this.g = arrayList;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Camera2CameraImpl.UseCaseInfo)) {
            return false;
        }
        AutoValue_Camera2CameraImpl_UseCaseInfo autoValue_Camera2CameraImpl_UseCaseInfo = (AutoValue_Camera2CameraImpl_UseCaseInfo) ((Camera2CameraImpl.UseCaseInfo) obj);
        if (!this.f1397a.equals(autoValue_Camera2CameraImpl_UseCaseInfo.f1397a) || !this.f1398b.equals(autoValue_Camera2CameraImpl_UseCaseInfo.f1398b) || !this.f1399c.equals(autoValue_Camera2CameraImpl_UseCaseInfo.f1399c) || !this.d.equals(autoValue_Camera2CameraImpl_UseCaseInfo.d)) {
            return false;
        }
        Size size = autoValue_Camera2CameraImpl_UseCaseInfo.f1400e;
        Size size2 = this.f1400e;
        if (size2 == null) {
            if (size != null) {
                return false;
            }
        } else if (!size2.equals(size)) {
            return false;
        }
        StreamSpec streamSpec = autoValue_Camera2CameraImpl_UseCaseInfo.f1401f;
        StreamSpec streamSpec2 = this.f1401f;
        if (streamSpec2 == null) {
            if (streamSpec != null) {
                return false;
            }
        } else if (!streamSpec2.equals(streamSpec)) {
            return false;
        }
        List list = autoValue_Camera2CameraImpl_UseCaseInfo.g;
        List list2 = this.g;
        if (list2 == null) {
            return list == null;
        }
        return list2.equals(list);
    }

    public final int hashCode() {
        int iHashCode = (((((((this.f1397a.hashCode() ^ 1000003) * 1000003) ^ this.f1398b.hashCode()) * 1000003) ^ this.f1399c.hashCode()) * 1000003) ^ this.d.hashCode()) * 1000003;
        Size size = this.f1400e;
        int iHashCode2 = (iHashCode ^ (size == null ? 0 : size.hashCode())) * 1000003;
        StreamSpec streamSpec = this.f1401f;
        int iHashCode3 = (iHashCode2 ^ (streamSpec == null ? 0 : streamSpec.hashCode())) * 1000003;
        List list = this.g;
        return iHashCode3 ^ (list != null ? list.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("UseCaseInfo{useCaseId=");
        sb.append(this.f1397a);
        sb.append(", useCaseType=");
        sb.append(this.f1398b);
        sb.append(", sessionConfig=");
        sb.append(this.f1399c);
        sb.append(", useCaseConfig=");
        sb.append(this.d);
        sb.append(", surfaceResolution=");
        sb.append(this.f1400e);
        sb.append(", streamSpec=");
        sb.append(this.f1401f);
        sb.append(", captureTypes=");
        return defpackage.a.o(sb, this.g, "}");
    }
}
