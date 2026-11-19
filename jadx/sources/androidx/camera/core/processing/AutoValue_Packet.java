package androidx.camera.core.processing;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.util.Size;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.utils.Exif;
import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_Packet<T> extends Packet<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f2523a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Exif f2524b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2525c;
    public final Size d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Rect f2526e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f2527f;
    public final Matrix g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CameraCaptureResult f2528h;

    public AutoValue_Packet(Object obj, Exif exif, int i2, Size size, Rect rect, int i3, Matrix matrix, CameraCaptureResult cameraCaptureResult) {
        if (obj == null) {
            r81.d("Null data");
            throw null;
        }
        this.f2523a = obj;
        this.f2524b = exif;
        this.f2525c = i2;
        if (size == null) {
            r81.d("Null size");
            throw null;
        }
        this.d = size;
        if (rect == null) {
            r81.d("Null cropRect");
            throw null;
        }
        this.f2526e = rect;
        this.f2527f = i3;
        if (matrix == null) {
            r81.d("Null sensorToBufferTransform");
            throw null;
        }
        this.g = matrix;
        if (cameraCaptureResult != null) {
            this.f2528h = cameraCaptureResult;
        } else {
            r81.d("Null cameraCaptureResult");
            throw null;
        }
    }

    @Override // androidx.camera.core.processing.Packet
    public final CameraCaptureResult a() {
        return this.f2528h;
    }

    @Override // androidx.camera.core.processing.Packet
    public final Rect b() {
        return this.f2526e;
    }

    @Override // androidx.camera.core.processing.Packet
    public final Object c() {
        return this.f2523a;
    }

    @Override // androidx.camera.core.processing.Packet
    public final Exif d() {
        return this.f2524b;
    }

    @Override // androidx.camera.core.processing.Packet
    public final int e() {
        return this.f2525c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Packet) {
            Packet packet = (Packet) obj;
            if (this.f2523a.equals(packet.c())) {
                Exif exif = this.f2524b;
                if (exif == null) {
                    if (packet.d() == null) {
                    }
                } else if (exif != packet.d()) {
                    return false;
                }
                if (this.f2525c == packet.e() && this.d.equals(packet.h()) && this.f2526e.equals(packet.b()) && this.f2527f == packet.f() && this.g.equals(packet.g()) && this.f2528h.equals(packet.a())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // androidx.camera.core.processing.Packet
    public final int f() {
        return this.f2527f;
    }

    @Override // androidx.camera.core.processing.Packet
    public final Matrix g() {
        return this.g;
    }

    @Override // androidx.camera.core.processing.Packet
    public final Size h() {
        return this.d;
    }

    public final int hashCode() {
        int iHashCode = (this.f2523a.hashCode() ^ 1000003) * 1000003;
        Exif exif = this.f2524b;
        return this.f2528h.hashCode() ^ ((((((((((((iHashCode ^ (exif == null ? 0 : exif.hashCode())) * 1000003) ^ this.f2525c) * 1000003) ^ this.d.hashCode()) * 1000003) ^ this.f2526e.hashCode()) * 1000003) ^ this.f2527f) * 1000003) ^ this.g.hashCode()) * 1000003);
    }

    public final String toString() {
        return "Packet{data=" + this.f2523a + ", exif=" + this.f2524b + ", format=" + this.f2525c + ", size=" + this.d + ", cropRect=" + this.f2526e + ", rotationDegrees=" + this.f2527f + ", sensorToBufferTransform=" + this.g + ", cameraCaptureResult=" + this.f2528h + "}";
    }
}
