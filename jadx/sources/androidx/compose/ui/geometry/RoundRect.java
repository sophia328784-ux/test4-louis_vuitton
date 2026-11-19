package androidx.compose.ui.geometry;

import defpackage.fc;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\u000eBO\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0007¢\u0006\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Landroidx/compose/ui/geometry/RoundRect;", "", "", "left", "top", "right", "bottom", "Landroidx/compose/ui/geometry/CornerRadius;", "topLeftCornerRadius", "topRightCornerRadius", "bottomRightCornerRadius", "bottomLeftCornerRadius", "<init>", "(FFFFJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "ui-geometry"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class RoundRect {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f8814a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f8815b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f8816c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f8817e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f8818f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f8819h;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/geometry/RoundRect$Companion;", "", "ui-geometry"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        CornerRadius.f8802a.getClass();
        RoundRectKt.c(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public RoundRect(float f2, float f3, float f4, float f5, long j2, long j3, long j4, long j5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        long j6;
        long j7;
        long j8;
        long j9;
        if ((i2 & 16) != 0) {
            CornerRadius.f8802a.getClass();
            j6 = 0;
        } else {
            j6 = j2;
        }
        if ((i2 & 32) != 0) {
            CornerRadius.f8802a.getClass();
            j7 = 0;
        } else {
            j7 = j3;
        }
        if ((i2 & 64) != 0) {
            CornerRadius.f8802a.getClass();
            j8 = 0;
        } else {
            j8 = j4;
        }
        if ((i2 & 128) != 0) {
            CornerRadius.f8802a.getClass();
            j9 = 0;
        } else {
            j9 = j5;
        }
        this(f2, f3, f4, f5, j6, j7, j8, j9, null);
    }

    public final float a() {
        return this.d - this.f8815b;
    }

    public final float b() {
        return this.f8816c - this.f8814a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RoundRect)) {
            return false;
        }
        RoundRect roundRect = (RoundRect) obj;
        return Float.compare(this.f8814a, roundRect.f8814a) == 0 && Float.compare(this.f8815b, roundRect.f8815b) == 0 && Float.compare(this.f8816c, roundRect.f8816c) == 0 && Float.compare(this.d, roundRect.d) == 0 && CornerRadius.a(this.f8817e, roundRect.f8817e) && CornerRadius.a(this.f8818f, roundRect.f8818f) && CornerRadius.a(this.g, roundRect.g) && CornerRadius.a(this.f8819h, roundRect.f8819h);
    }

    public final int hashCode() {
        int iB = pq0.b(pq0.b(pq0.b(Float.hashCode(this.f8814a) * 31, 31, this.f8815b), 31, this.f8816c), 31, this.d);
        CornerRadius.Companion companion = CornerRadius.f8802a;
        return Long.hashCode(this.f8819h) + fc.a(fc.a(fc.a(iB, 31, this.f8817e), 31, this.f8818f), 31, this.g);
    }

    public final String toString() {
        String str = GeometryUtilsKt.a(this.f8814a) + ", " + GeometryUtilsKt.a(this.f8815b) + ", " + GeometryUtilsKt.a(this.f8816c) + ", " + GeometryUtilsKt.a(this.d);
        long j2 = this.f8817e;
        long j3 = this.f8818f;
        boolean zA = CornerRadius.a(j2, j3);
        long j4 = this.g;
        long j5 = this.f8819h;
        if (!zA || !CornerRadius.a(j3, j4) || !CornerRadius.a(j4, j5)) {
            StringBuilder sbR = pq0.r("RoundRect(rect=", str, ", topLeft=");
            sbR.append((Object) CornerRadius.b(j2));
            sbR.append(", topRight=");
            sbR.append((Object) CornerRadius.b(j3));
            sbR.append(", bottomRight=");
            sbR.append((Object) CornerRadius.b(j4));
            sbR.append(", bottomLeft=");
            sbR.append((Object) CornerRadius.b(j5));
            sbR.append(')');
            return sbR.toString();
        }
        int i2 = (int) (j2 >> 32);
        float fIntBitsToFloat = Float.intBitsToFloat(i2);
        int i3 = (int) (j2 & BodyPartID.bodyIdMax);
        if (fIntBitsToFloat == Float.intBitsToFloat(i3)) {
            StringBuilder sbR2 = pq0.r("RoundRect(rect=", str, ", radius=");
            sbR2.append(GeometryUtilsKt.a(Float.intBitsToFloat(i2)));
            sbR2.append(')');
            return sbR2.toString();
        }
        StringBuilder sbR3 = pq0.r("RoundRect(rect=", str, ", x=");
        sbR3.append(GeometryUtilsKt.a(Float.intBitsToFloat(i2)));
        sbR3.append(", y=");
        sbR3.append(GeometryUtilsKt.a(Float.intBitsToFloat(i3)));
        sbR3.append(')');
        return sbR3.toString();
    }

    public RoundRect(float f2, float f3, float f4, float f5, long j2, long j3, long j4, long j5, DefaultConstructorMarker defaultConstructorMarker) {
        this.f8814a = f2;
        this.f8815b = f3;
        this.f8816c = f4;
        this.d = f5;
        this.f8817e = j2;
        this.f8818f = j3;
        this.g = j4;
        this.f8819h = j5;
    }
}
