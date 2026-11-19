package androidx.camera.core;

import androidx.camera.core.impl.AdapterCameraInfo;
import androidx.camera.core.impl.Identifier;
import androidx.core.util.Preconditions;
import defpackage.fc;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/camera/core/CameraIdentifier;", "", "Companion", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class CameraIdentifier {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f1888c = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f1889a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Identifier f1890b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0087\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/camera/core/CameraIdentifier$Companion;", "", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static CameraIdentifier a(String str, String str2, Identifier identifier) {
            str.getClass();
            ArrayList arrayListU = CollectionsKt.U(str);
            if (str2 != null) {
                arrayListU.add(str2);
            }
            return new CameraIdentifier(arrayListU, identifier, null);
        }

        public static CameraIdentifier b(AdapterCameraInfo adapterCameraInfo, AdapterCameraInfo adapterCameraInfo2) {
            String strB = adapterCameraInfo2 != null ? adapterCameraInfo2.f2302a.b() : null;
            Identifier identifierY = adapterCameraInfo.d.Y();
            identifierY.getClass();
            String strB2 = adapterCameraInfo.f2302a.b();
            strB2.getClass();
            return a(strB2, strB, identifierY);
        }
    }

    public CameraIdentifier(List list, Identifier identifier, DefaultConstructorMarker defaultConstructorMarker) {
        this.f1889a = list;
        this.f1890b = identifier;
        Preconditions.b(!list.isEmpty(), "Camera ID set cannot be empty.");
    }

    public final String a() {
        List list = this.f1889a;
        Preconditions.f("getInternalId() is only available for single-camera identifiers.", list.size() == 1);
        return (String) CollectionsKt.B(list);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CameraIdentifier)) {
            return false;
        }
        CameraIdentifier cameraIdentifier = (CameraIdentifier) obj;
        return Intrinsics.c(this.f1889a, cameraIdentifier.f1889a) && Intrinsics.c(this.f1890b, cameraIdentifier.f1890b);
    }

    public final int hashCode() {
        int iHashCode = this.f1889a.hashCode() * 31;
        Identifier identifier = this.f1890b;
        return iHashCode + (identifier != null ? identifier.hashCode() : 0);
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("CameraIdentifier{cameraIds=");
        sb.append(CollectionsKt.K(this.f1889a, ",", null, null, null, 62));
        Identifier identifier = this.f1890b;
        if (identifier != null) {
            str = ", compatId=" + identifier;
        } else {
            str = "";
        }
        return fc.l(sb, str, '}');
    }
}
