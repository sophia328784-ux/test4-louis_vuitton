package androidx.compose.ui.node;

import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.ApproachIntrinsicMeasureScope;
import androidx.compose.ui.layout.ApproachIntrinsicsMeasureScope;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntSize;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function1;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0007\bÁ\u0002\u0018\u00002\u00020\u0001:\u0006\u0002\u0003\u0004\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/node/NodeMeasuringIntrinsics;", "", "MeasureBlock", "ApproachMeasureBlock", "DefaultIntrinsicMeasurable", "EmptyPlaceable", "IntrinsicMinMax", "IntrinsicWidthHeight", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class NodeMeasuringIntrinsics {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bà\u0080\u0001\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/node/NodeMeasuringIntrinsics$ApproachMeasureBlock;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface ApproachMeasureBlock {
        MeasureResult a(ApproachIntrinsicsMeasureScope approachIntrinsicsMeasureScope, Measurable measurable, long j2);
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/ui/node/NodeMeasuringIntrinsics$DefaultIntrinsicMeasurable;", "Landroidx/compose/ui/layout/Measurable;", "Landroidx/compose/ui/layout/IntrinsicMeasurable;", "measurable", "Landroidx/compose/ui/node/NodeMeasuringIntrinsics$IntrinsicMinMax;", "minMax", "Landroidx/compose/ui/node/NodeMeasuringIntrinsics$IntrinsicWidthHeight;", "widthHeight", "<init>", "(Landroidx/compose/ui/layout/IntrinsicMeasurable;Landroidx/compose/ui/node/NodeMeasuringIntrinsics$IntrinsicMinMax;Landroidx/compose/ui/node/NodeMeasuringIntrinsics$IntrinsicWidthHeight;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class DefaultIntrinsicMeasurable implements Measurable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final IntrinsicMeasurable f9804b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final IntrinsicMinMax f9805c;
        public final IntrinsicWidthHeight d;

        public DefaultIntrinsicMeasurable(IntrinsicMeasurable intrinsicMeasurable, IntrinsicMinMax intrinsicMinMax, IntrinsicWidthHeight intrinsicWidthHeight) {
            this.f9804b = intrinsicMeasurable;
            this.f9805c = intrinsicMinMax;
            this.d = intrinsicWidthHeight;
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasurable
        public final int H(int i2) {
            return this.f9804b.H(i2);
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasurable
        public final int M(int i2) {
            return this.f9804b.M(i2);
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasurable
        public final int S(int i2) {
            return this.f9804b.S(i2);
        }

        @Override // androidx.compose.ui.layout.Measurable
        public final Placeable T(long j2) {
            IntrinsicWidthHeight intrinsicWidthHeight = IntrinsicWidthHeight.Width;
            IntrinsicMeasurable intrinsicMeasurable = this.f9804b;
            IntrinsicWidthHeight intrinsicWidthHeight2 = this.d;
            IntrinsicMinMax intrinsicMinMax = this.f9805c;
            if (intrinsicWidthHeight2 == intrinsicWidthHeight) {
                return new EmptyPlaceable(intrinsicMinMax == IntrinsicMinMax.Max ? intrinsicMeasurable.S(Constraints.g(j2)) : intrinsicMeasurable.M(Constraints.g(j2)), Constraints.c(j2) ? Constraints.g(j2) : 32767);
            }
            return new EmptyPlaceable(Constraints.d(j2) ? Constraints.h(j2) : 32767, intrinsicMinMax == IntrinsicMinMax.Max ? intrinsicMeasurable.l(Constraints.h(j2)) : intrinsicMeasurable.H(Constraints.h(j2)));
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasurable
        /* JADX INFO: renamed from: e */
        public final Object getT() {
            return this.f9804b.getT();
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasurable
        public final int l(int i2) {
            return this.f9804b.l(i2);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/node/NodeMeasuringIntrinsics$EmptyPlaceable;", "Landroidx/compose/ui/layout/Placeable;", "", "width", "height", "<init>", "(II)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class EmptyPlaceable extends Placeable {
        public EmptyPlaceable(int i2, int i3) {
            long j2 = (((long) i3) & BodyPartID.bodyIdMax) | (((long) i2) << 32);
            IntSize.Companion companion = IntSize.f11020b;
            q0(j2);
        }

        @Override // androidx.compose.ui.layout.Measured
        public final int W(AlignmentLine alignmentLine) {
            return Integer.MIN_VALUE;
        }

        @Override // androidx.compose.ui.layout.Placeable
        public final void p0(long j2, float f2, Function1 function1) {
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/node/NodeMeasuringIntrinsics$IntrinsicMinMax;", "", "Min", "Max", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class IntrinsicMinMax {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ IntrinsicMinMax[] $VALUES;
        public static final IntrinsicMinMax Max;
        public static final IntrinsicMinMax Min;

        static {
            IntrinsicMinMax intrinsicMinMax = new IntrinsicMinMax("Min", 0);
            Min = intrinsicMinMax;
            IntrinsicMinMax intrinsicMinMax2 = new IntrinsicMinMax("Max", 1);
            Max = intrinsicMinMax2;
            IntrinsicMinMax[] intrinsicMinMaxArr = {intrinsicMinMax, intrinsicMinMax2};
            $VALUES = intrinsicMinMaxArr;
            $ENTRIES = EnumEntriesKt.a(intrinsicMinMaxArr);
        }

        public static IntrinsicMinMax valueOf(String str) {
            return (IntrinsicMinMax) Enum.valueOf(IntrinsicMinMax.class, str);
        }

        public static IntrinsicMinMax[] values() {
            return (IntrinsicMinMax[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/node/NodeMeasuringIntrinsics$IntrinsicWidthHeight;", "", "Width", "Height", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class IntrinsicWidthHeight {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ IntrinsicWidthHeight[] $VALUES;
        public static final IntrinsicWidthHeight Height;
        public static final IntrinsicWidthHeight Width;

        static {
            IntrinsicWidthHeight intrinsicWidthHeight = new IntrinsicWidthHeight("Width", 0);
            Width = intrinsicWidthHeight;
            IntrinsicWidthHeight intrinsicWidthHeight2 = new IntrinsicWidthHeight("Height", 1);
            Height = intrinsicWidthHeight2;
            IntrinsicWidthHeight[] intrinsicWidthHeightArr = {intrinsicWidthHeight, intrinsicWidthHeight2};
            $VALUES = intrinsicWidthHeightArr;
            $ENTRIES = EnumEntriesKt.a(intrinsicWidthHeightArr);
        }

        public static IntrinsicWidthHeight valueOf(String str) {
            return (IntrinsicWidthHeight) Enum.valueOf(IntrinsicWidthHeight.class, str);
        }

        public static IntrinsicWidthHeight[] values() {
            return (IntrinsicWidthHeight[]) $VALUES.clone();
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bà\u0080\u0001\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/node/NodeMeasuringIntrinsics$MeasureBlock;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface MeasureBlock {
    }

    public static int a(ApproachMeasureBlock approachMeasureBlock, ApproachIntrinsicMeasureScope approachIntrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        return approachMeasureBlock.a(new ApproachIntrinsicsMeasureScope(approachIntrinsicMeasureScope, approachIntrinsicMeasureScope.getF9421c()), new DefaultIntrinsicMeasurable(intrinsicMeasurable, IntrinsicMinMax.Max, IntrinsicWidthHeight.Height), ConstraintsKt.b(0, i2, 0, 0, 13)).getF9727b();
    }

    public static int b(ApproachMeasureBlock approachMeasureBlock, ApproachIntrinsicMeasureScope approachIntrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        return approachMeasureBlock.a(new ApproachIntrinsicsMeasureScope(approachIntrinsicMeasureScope, approachIntrinsicMeasureScope.getF9421c()), new DefaultIntrinsicMeasurable(intrinsicMeasurable, IntrinsicMinMax.Max, IntrinsicWidthHeight.Width), ConstraintsKt.b(0, 0, 0, i2, 7)).getF9726a();
    }

    public static int c(ApproachMeasureBlock approachMeasureBlock, ApproachIntrinsicMeasureScope approachIntrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        return approachMeasureBlock.a(new ApproachIntrinsicsMeasureScope(approachIntrinsicMeasureScope, approachIntrinsicMeasureScope.getF9421c()), new DefaultIntrinsicMeasurable(intrinsicMeasurable, IntrinsicMinMax.Min, IntrinsicWidthHeight.Height), ConstraintsKt.b(0, i2, 0, 0, 13)).getF9727b();
    }

    public static int d(ApproachMeasureBlock approachMeasureBlock, ApproachIntrinsicMeasureScope approachIntrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        return approachMeasureBlock.a(new ApproachIntrinsicsMeasureScope(approachIntrinsicMeasureScope, approachIntrinsicMeasureScope.getF9421c()), new DefaultIntrinsicMeasurable(intrinsicMeasurable, IntrinsicMinMax.Min, IntrinsicWidthHeight.Width), ConstraintsKt.b(0, 0, 0, i2, 7)).getF9726a();
    }
}
