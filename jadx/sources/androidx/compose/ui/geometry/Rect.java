package androidx.compose.ui.geometry;

import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\b\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\tB'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Landroidx/compose/ui/geometry/Rect;", "", "", "left", "top", "right", "bottom", "<init>", "(FFFF)V", "Companion", "ui-geometry"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class Rect {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f8809e = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Rect f8810f = new Rect(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f8811a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f8812b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f8813c;
    public final float d;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/geometry/Rect$Companion;", "", "ui-geometry"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public Rect(float f2, float f3, float f4, float f5) {
        this.f8811a = f2;
        this.f8812b = f3;
        this.f8813c = f4;
        this.d = f5;
    }

    public final boolean a(long j2) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax));
        return (fIntBitsToFloat >= this.f8811a) & (fIntBitsToFloat < this.f8813c) & (fIntBitsToFloat2 >= this.f8812b) & (fIntBitsToFloat2 < this.d);
    }

    public final long b() {
        float f2 = this.f8813c;
        float f3 = this.f8811a;
        float f4 = ((f2 - f3) / 2.0f) + f3;
        float f5 = this.d;
        float f6 = this.f8812b;
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(((f5 - f6) / 2.0f) + f6)) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(f4) << 32);
        Offset.Companion companion = Offset.f8806b;
        return jFloatToRawIntBits;
    }

    public final long c() {
        float f2 = this.f8813c - this.f8811a;
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(this.d - this.f8812b)) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(f2) << 32);
        Size.Companion companion = Size.f8820b;
        return jFloatToRawIntBits;
    }

    public final long d() {
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(this.f8811a)) << 32) | (((long) Float.floatToRawIntBits(this.f8812b)) & BodyPartID.bodyIdMax);
        Offset.Companion companion = Offset.f8806b;
        return jFloatToRawIntBits;
    }

    public final Rect e(Rect rect) {
        return new Rect(Math.max(this.f8811a, rect.f8811a), Math.max(this.f8812b, rect.f8812b), Math.min(this.f8813c, rect.f8813c), Math.min(this.d, rect.d));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Rect)) {
            return false;
        }
        Rect rect = (Rect) obj;
        return Float.compare(this.f8811a, rect.f8811a) == 0 && Float.compare(this.f8812b, rect.f8812b) == 0 && Float.compare(this.f8813c, rect.f8813c) == 0 && Float.compare(this.d, rect.d) == 0;
    }

    public final boolean f() {
        return (this.f8811a >= this.f8813c) | (this.f8812b >= this.d);
    }

    public final boolean g(Rect rect) {
        return (this.f8811a < rect.f8813c) & (rect.f8811a < this.f8813c) & (this.f8812b < rect.d) & (rect.f8812b < this.d);
    }

    public final Rect h(float f2, float f3) {
        return new Rect(this.f8811a + f2, this.f8812b + f3, this.f8813c + f2, this.d + f3);
    }

    public final int hashCode() {
        return Float.hashCode(this.d) + pq0.b(pq0.b(Float.hashCode(this.f8811a) * 31, 31, this.f8812b), 31, this.f8813c);
    }

    public final Rect i(long j2) {
        int i2 = (int) (j2 >> 32);
        float fIntBitsToFloat = Float.intBitsToFloat(i2) + this.f8811a;
        int i3 = (int) (j2 & BodyPartID.bodyIdMax);
        return new Rect(fIntBitsToFloat, Float.intBitsToFloat(i3) + this.f8812b, Float.intBitsToFloat(i2) + this.f8813c, Float.intBitsToFloat(i3) + this.d);
    }

    public final String toString() {
        return "Rect.fromLTRB(" + GeometryUtilsKt.a(this.f8811a) + ", " + GeometryUtilsKt.a(this.f8812b) + ", " + GeometryUtilsKt.a(this.f8813c) + ", " + GeometryUtilsKt.a(this.d) + ')';
    }
}
