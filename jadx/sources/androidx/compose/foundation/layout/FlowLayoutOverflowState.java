package androidx.compose.foundation.layout;

import androidx.collection.IntIntPair;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import defpackage.tr;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0081\b\u0018\u00002\u00020\u0001B!\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/foundation/layout/FlowLayoutOverflowState;", "", "Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;", "type", "", "minLinesToShowCollapse", "minCrossAxisSizeToShowCollapse", "<init>", "(Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;II)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class FlowLayoutOverflowState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FlowLayoutOverflow.OverflowType f4984a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f4985b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f4986c;
    public Measurable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Placeable f4987e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Measurable f4988f;
    public Placeable g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public IntIntPair f4989h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public IntIntPair f4990i;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4991a;

        static {
            int[] iArr = new int[FlowLayoutOverflow.OverflowType.values().length];
            try {
                iArr[FlowLayoutOverflow.OverflowType.Visible.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FlowLayoutOverflow.OverflowType.Clip.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FlowLayoutOverflow.OverflowType.ExpandIndicator.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FlowLayoutOverflow.OverflowType.ExpandOrCollapseIndicator.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f4991a = iArr;
        }
    }

    public FlowLayoutOverflowState(FlowLayoutOverflow.OverflowType overflowType, int i2, int i3) {
        this.f4984a = overflowType;
        this.f4985b = i2;
        this.f4986c = i3;
    }

    public final IntIntPair a(int i2, int i3, boolean z) {
        int i4 = WhenMappings.f4991a[this.f4984a.ordinal()];
        if (i4 != 1 && i4 != 2) {
            if (i4 != 3) {
                if (i4 != 4) {
                    v40.g();
                    return null;
                }
                if (z) {
                    return this.f4989h;
                }
                if (i2 + 1 < this.f4985b || i3 < this.f4986c) {
                    return null;
                }
                return this.f4990i;
            }
            if (z) {
                return this.f4989h;
            }
        }
        return null;
    }

    public final void b(IntrinsicMeasurable intrinsicMeasurable, IntrinsicMeasurable intrinsicMeasurable2, boolean z, long j2) {
        long jA = OrientationIndependentConstraints.a(j2, z ? LayoutOrientation.Horizontal : LayoutOrientation.Vertical);
        if (intrinsicMeasurable != null) {
            int iG = Constraints.g(jA);
            int i2 = FlowLayoutKt.f4978a;
            int iM = z ? intrinsicMeasurable.M(iG) : intrinsicMeasurable.H(iG);
            this.f4989h = new IntIntPair(IntIntPair.a(iM, z ? intrinsicMeasurable.H(iM) : intrinsicMeasurable.M(iM)));
            this.d = intrinsicMeasurable instanceof Measurable ? (Measurable) intrinsicMeasurable : null;
            this.f4987e = null;
        }
        if (intrinsicMeasurable2 != null) {
            int iG2 = Constraints.g(jA);
            int i3 = FlowLayoutKt.f4978a;
            int iM2 = z ? intrinsicMeasurable2.M(iG2) : intrinsicMeasurable2.H(iG2);
            this.f4990i = new IntIntPair(IntIntPair.a(iM2, z ? intrinsicMeasurable2.H(iM2) : intrinsicMeasurable2.M(iM2)));
            this.f4988f = intrinsicMeasurable2 instanceof Measurable ? (Measurable) intrinsicMeasurable2 : null;
            this.g = null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FlowLayoutOverflowState)) {
            return false;
        }
        FlowLayoutOverflowState flowLayoutOverflowState = (FlowLayoutOverflowState) obj;
        return this.f4984a == flowLayoutOverflowState.f4984a && this.f4985b == flowLayoutOverflowState.f4985b && this.f4986c == flowLayoutOverflowState.f4986c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f4986c) + tr.b(this.f4985b, this.f4984a.hashCode() * 31, 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FlowLayoutOverflowState(type=");
        sb.append(this.f4984a);
        sb.append(", minLinesToShowCollapse=");
        sb.append(this.f4985b);
        sb.append(", minCrossAxisSizeToShowCollapse=");
        return tr.k(sb, this.f4986c, ')');
    }
}
