package androidx.compose.ui.geometry;

import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/geometry/MutableRect;", "", "", "left", "top", "right", "bottom", "<init>", "(FFFF)V", "ui-geometry"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MutableRect {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f8803a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f8804b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f8805c;
    public float d;

    public MutableRect(float f2, float f3, float f4, float f5) {
        this.f8803a = f2;
        this.f8804b = f3;
        this.f8805c = f4;
        this.d = f5;
    }

    public final void a(float f2, float f3, float f4, float f5) {
        this.f8803a = Math.max(f2, this.f8803a);
        this.f8804b = Math.max(f3, this.f8804b);
        this.f8805c = Math.min(f4, this.f8805c);
        this.d = Math.min(f5, this.d);
    }

    public final boolean b() {
        return (this.f8803a >= this.f8805c) | (this.f8804b >= this.d);
    }

    public final void c(long j2) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax));
        this.f8803a += fIntBitsToFloat;
        this.f8804b += fIntBitsToFloat2;
        this.f8805c += fIntBitsToFloat;
        this.d += fIntBitsToFloat2;
    }

    public final String toString() {
        return "MutableRect(" + GeometryUtilsKt.a(this.f8803a) + ", " + GeometryUtilsKt.a(this.f8804b) + ", " + GeometryUtilsKt.a(this.f8805c) + ", " + GeometryUtilsKt.a(this.d) + ')';
    }
}
