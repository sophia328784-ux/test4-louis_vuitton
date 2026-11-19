package androidx.compose.ui.spatial;

import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.unit.IntOffset;
import defpackage.fc;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001BC\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/compose/ui/spatial/RelativeLayoutBounds;", "", "", "topLeft", "bottomRight", "Landroidx/compose/ui/unit/IntOffset;", "windowOffset", "screenOffset", "windowSize", "Landroidx/compose/ui/graphics/Matrix;", "viewToWindowMatrix", "Landroidx/compose/ui/node/DelegatableNode;", "node", "<init>", "(JJJJJ[FLandroidx/compose/ui/node/DelegatableNode;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RelativeLayoutBounds {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f10394a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f10395b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f10396c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f10397e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float[] f10398f;
    public final DelegatableNode g;

    public RelativeLayoutBounds(long j2, long j3, long j4, long j5, long j6, float[] fArr, DelegatableNode delegatableNode, DefaultConstructorMarker defaultConstructorMarker) {
        this.f10394a = j2;
        this.f10395b = j3;
        this.f10396c = j4;
        this.d = j5;
        this.f10397e = j6;
        this.f10398f = fArr;
        this.g = delegatableNode;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x004d  */
    public final boolean equals(Object obj) {
        boolean zC;
        if (this == obj) {
            return true;
        }
        if (obj == null || RelativeLayoutBounds.class != obj.getClass()) {
            return false;
        }
        RelativeLayoutBounds relativeLayoutBounds = (RelativeLayoutBounds) obj;
        if (this.f10394a != relativeLayoutBounds.f10394a || this.f10395b != relativeLayoutBounds.f10395b || this.f10397e != relativeLayoutBounds.f10397e || !IntOffset.b(this.f10396c, relativeLayoutBounds.f10396c) || !IntOffset.b(this.d, relativeLayoutBounds.d)) {
            return false;
        }
        float[] fArr = relativeLayoutBounds.f10398f;
        float[] fArr2 = this.f10398f;
        if (fArr2 == null) {
            if (fArr == null) {
                zC = true;
            } else {
                zC = false;
            }
        } else if (fArr == null) {
            zC = false;
        } else {
            int i2 = Matrix.f8900b;
            zC = Intrinsics.c(fArr2, fArr);
        }
        return zC && Intrinsics.c(this.g, relativeLayoutBounds.g);
    }

    public final int hashCode() {
        int iHashCode;
        int iA = fc.a(fc.a(Long.hashCode(this.f10394a) * 31, 31, this.f10395b), 31, this.f10397e);
        IntOffset.Companion companion = IntOffset.f11012b;
        int iA2 = fc.a(fc.a(iA, 31, this.f10396c), 31, this.d);
        float[] fArr = this.f10398f;
        if (fArr != null) {
            int i2 = Matrix.f8900b;
            iHashCode = Arrays.hashCode(fArr);
        } else {
            iHashCode = 0;
        }
        return this.g.hashCode() + ((iA2 + iHashCode) * 31);
    }
}
