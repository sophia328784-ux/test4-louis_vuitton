package androidx.compose.ui.layout;

import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntSize;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"androidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable", "Landroidx/compose/ui/layout/Measurable;", "Landroidx/compose/ui/layout/IntrinsicMeasurable;", "measurable", "Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;", "minMax", "Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;", "widthHeight", "<init>", "(Landroidx/compose/ui/layout/IntrinsicMeasurable;Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class MeasuringIntrinsics$DefaultIntrinsicMeasurable implements Measurable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final IntrinsicMeasurable f9535b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MeasuringIntrinsics$IntrinsicMinMax f9536c;
    public final MeasuringIntrinsics$IntrinsicWidthHeight d;

    public MeasuringIntrinsics$DefaultIntrinsicMeasurable(IntrinsicMeasurable intrinsicMeasurable, MeasuringIntrinsics$IntrinsicMinMax measuringIntrinsics$IntrinsicMinMax, MeasuringIntrinsics$IntrinsicWidthHeight measuringIntrinsics$IntrinsicWidthHeight) {
        this.f9535b = intrinsicMeasurable;
        this.f9536c = measuringIntrinsics$IntrinsicMinMax;
        this.d = measuringIntrinsics$IntrinsicWidthHeight;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int H(int i2) {
        return this.f9535b.H(i2);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int M(int i2) {
        return this.f9535b.M(i2);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int S(int i2) {
        return this.f9535b.S(i2);
    }

    @Override // androidx.compose.ui.layout.Measurable
    public final Placeable T(long j2) {
        final int iH;
        MeasuringIntrinsics$IntrinsicWidthHeight measuringIntrinsics$IntrinsicWidthHeight = MeasuringIntrinsics$IntrinsicWidthHeight.Width;
        IntrinsicMeasurable intrinsicMeasurable = this.f9535b;
        MeasuringIntrinsics$IntrinsicWidthHeight measuringIntrinsics$IntrinsicWidthHeight2 = this.d;
        MeasuringIntrinsics$IntrinsicMinMax measuringIntrinsics$IntrinsicMinMax = this.f9536c;
        if (measuringIntrinsics$IntrinsicWidthHeight2 == measuringIntrinsics$IntrinsicWidthHeight) {
            final int iS = measuringIntrinsics$IntrinsicMinMax == MeasuringIntrinsics$IntrinsicMinMax.Max ? intrinsicMeasurable.S(Constraints.g(j2)) : intrinsicMeasurable.M(Constraints.g(j2));
            iH = Constraints.c(j2) ? Constraints.g(j2) : 32767;
            return new Placeable(iS, iH) { // from class: androidx.compose.ui.layout.MeasuringIntrinsics$EmptyPlaceable
                {
                    long j3 = (((long) iH) & BodyPartID.bodyIdMax) | (((long) iS) << 32);
                    IntSize.Companion companion = IntSize.f11020b;
                    q0(j3);
                }

                @Override // androidx.compose.ui.layout.Measured
                public final int W(AlignmentLine alignmentLine) {
                    return Integer.MIN_VALUE;
                }

                @Override // androidx.compose.ui.layout.Placeable
                public final void p0(long j3, float f2, Function1 function1) {
                }
            };
        }
        final int iL = measuringIntrinsics$IntrinsicMinMax == MeasuringIntrinsics$IntrinsicMinMax.Max ? intrinsicMeasurable.l(Constraints.h(j2)) : intrinsicMeasurable.H(Constraints.h(j2));
        iH = Constraints.d(j2) ? Constraints.h(j2) : 32767;
        return new Placeable(iH, iL) { // from class: androidx.compose.ui.layout.MeasuringIntrinsics$EmptyPlaceable
            {
                long j3 = (((long) iL) & BodyPartID.bodyIdMax) | (((long) iH) << 32);
                IntSize.Companion companion = IntSize.f11020b;
                q0(j3);
            }

            @Override // androidx.compose.ui.layout.Measured
            public final int W(AlignmentLine alignmentLine) {
                return Integer.MIN_VALUE;
            }

            @Override // androidx.compose.ui.layout.Placeable
            public final void p0(long j3, float f2, Function1 function1) {
            }
        };
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    /* JADX INFO: renamed from: e */
    public final Object getT() {
        return this.f9535b.getT();
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int l(int i2) {
        return this.f9535b.l(i2);
    }
}
