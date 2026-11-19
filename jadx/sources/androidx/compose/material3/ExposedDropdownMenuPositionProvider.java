package androidx.compose.material3;

import androidx.compose.material3.internal.AnchorAlignmentOffsetPosition$Horizontal;
import androidx.compose.material3.internal.AnchorAlignmentOffsetPosition$Vertical;
import androidx.compose.material3.internal.MenuPosition$Horizontal;
import androidx.compose.material3.internal.MenuPosition$Vertical;
import androidx.compose.material3.internal.WindowAlignmentMarginPosition$Horizontal;
import androidx.compose.material3.internal.WindowAlignmentMarginPosition$Vertical;
import androidx.compose.runtime.State;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntRectKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;
import defpackage.rq;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0001\u0018\u00002\u00020\u0001Bm\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004\u00128\b\u0002\u0010\u0010\u001a2\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00070\n¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Landroidx/compose/material3/ExposedDropdownMenuPositionProvider;", "Landroidx/compose/ui/window/PopupPositionProvider;", "Landroidx/compose/ui/unit/Density;", "density", "", "topWindowInsets", "Landroidx/compose/runtime/State;", "", "keyboardSignalState", "verticalMargin", "Lkotlin/Function2;", "Landroidx/compose/ui/unit/IntRect;", "Lkotlin/ParameterName;", "name", "anchorBounds", "menuBounds", "onPositionCalculated", "<init>", "(Landroidx/compose/ui/unit/Density;ILandroidx/compose/runtime/State;ILkotlin/jvm/functions/Function2;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ExposedDropdownMenuPositionProvider implements PopupPositionProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Density f6943a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f6944b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final State f6945c;
    public final Function2 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AnchorAlignmentOffsetPosition$Horizontal f6946e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AnchorAlignmentOffsetPosition$Horizontal f6947f;
    public final WindowAlignmentMarginPosition$Horizontal g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final WindowAlignmentMarginPosition$Horizontal f6948h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AnchorAlignmentOffsetPosition$Vertical f6949i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AnchorAlignmentOffsetPosition$Vertical f6950j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final WindowAlignmentMarginPosition$Vertical f6951k;
    public final WindowAlignmentMarginPosition$Vertical l;

    public ExposedDropdownMenuPositionProvider(Density density, int i2, State<Unit> state, int i3, Function2<? super IntRect, ? super IntRect, Unit> function2) {
        this.f6943a = density;
        this.f6944b = i2;
        this.f6945c = state;
        this.d = function2;
        Alignment.Companion companion = Alignment.f8582a;
        companion.getClass();
        BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
        this.f6946e = new AnchorAlignmentOffsetPosition$Horizontal(horizontal, horizontal, 0);
        companion.getClass();
        BiasAlignment.Horizontal horizontal2 = Alignment.Companion.p;
        this.f6947f = new AnchorAlignmentOffsetPosition$Horizontal(horizontal2, horizontal2, 0);
        this.g = new WindowAlignmentMarginPosition$Horizontal(AbsoluteAlignment.f8580c, 0);
        this.f6948h = new WindowAlignmentMarginPosition$Horizontal(AbsoluteAlignment.d, 0);
        companion.getClass();
        BiasAlignment.Vertical vertical = Alignment.Companion.f8591k;
        BiasAlignment.Vertical vertical2 = Alignment.Companion.m;
        this.f6949i = new AnchorAlignmentOffsetPosition$Vertical(vertical, vertical2, 0);
        companion.getClass();
        this.f6950j = new AnchorAlignmentOffsetPosition$Vertical(vertical2, vertical, 0);
        companion.getClass();
        this.f6951k = new WindowAlignmentMarginPosition$Vertical(vertical, i3);
        companion.getClass();
        this.l = new WindowAlignmentMarginPosition$Vertical(vertical2, i3);
    }

    @Override // androidx.compose.ui.window.PopupPositionProvider
    public final long a(IntRect intRect, long j2, LayoutDirection layoutDirection, long j3) {
        IntRect intRect2;
        char c2;
        long j4;
        int iA;
        State state = this.f6945c;
        if (state != null) {
            state.getF10755b();
        }
        char c3 = ' ';
        long j5 = BodyPartID.bodyIdMax;
        long j6 = (((long) ((int) (j2 >> 32))) << 32) | (((long) (((int) (j2 & BodyPartID.bodyIdMax)) + this.f6944b)) & BodyPartID.bodyIdMax);
        IntSize.Companion companion = IntSize.f11020b;
        long jA = intRect.a();
        IntOffset.Companion companion2 = IntOffset.f11012b;
        int i2 = (int) (j6 >> 32);
        int i3 = 0;
        List listP = CollectionsKt.P(this.f6946e, this.f6947f, ((int) (jA >> 32)) < i2 / 2 ? this.g : this.f6948h);
        int size = listP.size();
        int i4 = 0;
        while (true) {
            if (i4 >= size) {
                intRect2 = intRect;
                c2 = c3;
                j4 = j5;
                iA = 0;
                break;
            }
            c2 = c3;
            j4 = j5;
            int i5 = (int) (j3 >> c2);
            int i6 = size;
            int i7 = i4;
            intRect2 = intRect;
            List list = listP;
            iA = ((MenuPosition$Horizontal) listP.get(i4)).a(intRect2, j6, i5, layoutDirection);
            if (i7 == list.size() - 1 || (iA >= 0 && i5 + iA <= i2)) {
                break;
            }
            i4 = i7 + 1;
            listP = list;
            size = i6;
            c3 = c2;
            j5 = j4;
        }
        int i8 = (int) (j6 & j4);
        List listP2 = CollectionsKt.P(this.f6949i, this.f6950j, ((int) (intRect2.a() & j4)) < i8 / 2 ? this.f6951k : this.l);
        int size2 = listP2.size();
        for (int i9 = 0; i9 < size2; i9++) {
            int i10 = (int) (j3 & j4);
            int iA2 = ((MenuPosition$Vertical) listP2.get(i9)).a(intRect2, j6, i10);
            if (i9 == listP2.size() - 1 || (iA2 >= 0 && i10 + iA2 <= i8)) {
                i3 = iA2;
                break;
            }
        }
        long j7 = (((long) iA) << c2) | (((long) i3) & j4);
        this.d.invoke(intRect2, IntRectKt.a(j7, j3));
        return j7;
    }

    public ExposedDropdownMenuPositionProvider(Density density, int i2, State state, int i3, Function2 function2, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(density, i2, (i4 & 4) != 0 ? null : state, (i4 & 8) != 0 ? density.B0(MenuKt.f7027a) : i3, (i4 & 16) != 0 ? new rq(17) : function2);
    }
}
