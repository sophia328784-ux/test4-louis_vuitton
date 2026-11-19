package androidx.compose.material3.internal;

import androidx.compose.material3.MenuKt;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpOffset;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntRectKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;
import defpackage.rq;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0081\b\u0018\u00002\u00020\u0001B[\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u00128\b\u0002\u0010\u000f\u001a2\u0012\u0013\u0012\u00110\t¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0013\u0012\u00110\t¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\u000e0\b¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Landroidx/compose/material3/internal/DropdownMenuPositionProvider;", "Landroidx/compose/ui/window/PopupPositionProvider;", "Landroidx/compose/ui/unit/DpOffset;", "contentOffset", "Landroidx/compose/ui/unit/Density;", "density", "", "verticalMargin", "Lkotlin/Function2;", "Landroidx/compose/ui/unit/IntRect;", "Lkotlin/ParameterName;", "name", "anchorBounds", "menuBounds", "", "onPositionCalculated", "<init>", "(JLandroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class DropdownMenuPositionProvider implements PopupPositionProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f7607a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Density f7608b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f7609c;
    public final Function2 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AnchorAlignmentOffsetPosition$Horizontal f7610e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AnchorAlignmentOffsetPosition$Horizontal f7611f;
    public final WindowAlignmentMarginPosition$Horizontal g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final WindowAlignmentMarginPosition$Horizontal f7612h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AnchorAlignmentOffsetPosition$Vertical f7613i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AnchorAlignmentOffsetPosition$Vertical f7614j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AnchorAlignmentOffsetPosition$Vertical f7615k;
    public final WindowAlignmentMarginPosition$Vertical l;
    public final WindowAlignmentMarginPosition$Vertical m;

    public DropdownMenuPositionProvider(long j2, Density density, int i2, Function2 function2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f7607a = j2;
        this.f7608b = density;
        this.f7609c = i2;
        this.d = function2;
        int iB0 = density.B0(DpOffset.a(j2));
        Alignment.Companion companion = Alignment.f8582a;
        companion.getClass();
        BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
        this.f7610e = new AnchorAlignmentOffsetPosition$Horizontal(horizontal, horizontal, iB0);
        companion.getClass();
        BiasAlignment.Horizontal horizontal2 = Alignment.Companion.p;
        this.f7611f = new AnchorAlignmentOffsetPosition$Horizontal(horizontal2, horizontal2, iB0);
        this.g = new WindowAlignmentMarginPosition$Horizontal(AbsoluteAlignment.f8580c, 0);
        this.f7612h = new WindowAlignmentMarginPosition$Horizontal(AbsoluteAlignment.d, 0);
        int iB1 = density.B0(DpOffset.b(j2));
        companion.getClass();
        BiasAlignment.Vertical vertical = Alignment.Companion.f8591k;
        BiasAlignment.Vertical vertical2 = Alignment.Companion.m;
        this.f7613i = new AnchorAlignmentOffsetPosition$Vertical(vertical, vertical2, iB1);
        companion.getClass();
        this.f7614j = new AnchorAlignmentOffsetPosition$Vertical(vertical2, vertical, iB1);
        companion.getClass();
        this.f7615k = new AnchorAlignmentOffsetPosition$Vertical(Alignment.Companion.l, vertical, iB1);
        companion.getClass();
        this.l = new WindowAlignmentMarginPosition$Vertical(vertical, i2);
        companion.getClass();
        this.m = new WindowAlignmentMarginPosition$Vertical(vertical2, i2);
    }

    @Override // androidx.compose.ui.window.PopupPositionProvider
    public final long a(IntRect intRect, long j2, LayoutDirection layoutDirection, long j3) {
        IntRect intRect2;
        long j4;
        char c2;
        int iA;
        int i2;
        int i3;
        long jA = intRect.a();
        IntOffset.Companion companion = IntOffset.f11012b;
        char c3 = ' ';
        int i4 = (int) (j2 >> 32);
        boolean z = true;
        List listP = CollectionsKt.P(this.f7610e, this.f7611f, ((int) (jA >> 32)) < i4 / 2 ? this.g : this.f7612h);
        int size = listP.size();
        int i5 = 0;
        while (true) {
            if (i5 >= size) {
                intRect2 = intRect;
                j4 = j2;
                c2 = c3;
                iA = 0;
                break;
            }
            MenuPosition$Horizontal menuPosition$Horizontal = (MenuPosition$Horizontal) listP.get(i5);
            int i6 = (int) (j3 >> c3);
            int i7 = size;
            c2 = c3;
            j4 = j2;
            int i8 = i5;
            intRect2 = intRect;
            iA = menuPosition$Horizontal.a(intRect2, j4, i6, layoutDirection);
            if (i8 == listP.size() - 1 || (iA >= 0 && i6 + iA <= i4)) {
                break;
            }
            i5 = i8 + 1;
            size = i7;
            c3 = c2;
        }
        int iA2 = (int) (intRect2.a() & BodyPartID.bodyIdMax);
        int i9 = (int) (j4 & BodyPartID.bodyIdMax);
        List listP2 = CollectionsKt.P(this.f7613i, this.f7614j, this.f7615k, iA2 < i9 / 2 ? this.l : this.m);
        int size2 = listP2.size();
        int i10 = 0;
        while (i10 < size2) {
            MenuPosition$Vertical menuPosition$Vertical = (MenuPosition$Vertical) listP2.get(i10);
            boolean z2 = z;
            int i11 = (int) (j3 & BodyPartID.bodyIdMax);
            int iA3 = menuPosition$Vertical.a(intRect2, j4, i11);
            if (i10 == listP2.size() - 1 || (iA3 >= (i3 = this.f7609c) && i11 + iA3 <= i9 - i3)) {
                i2 = iA3;
                long j5 = (((long) iA) << c2) | (((long) i2) & BodyPartID.bodyIdMax);
                this.d.invoke(intRect2, IntRectKt.a(j5, j3));
                return j5;
            }
            i10++;
            z = z2;
        }
        i2 = 0;
        long j6 = (((long) iA) << c2) | (((long) i2) & BodyPartID.bodyIdMax);
        this.d.invoke(intRect2, IntRectKt.a(j6, j3));
        return j6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DropdownMenuPositionProvider) {
            DropdownMenuPositionProvider dropdownMenuPositionProvider = (DropdownMenuPositionProvider) obj;
            long j2 = dropdownMenuPositionProvider.f7607a;
            int i2 = DpOffset.f11007b;
            if (this.f7607a == j2 && Intrinsics.c(this.f7608b, dropdownMenuPositionProvider.f7608b) && this.f7609c == dropdownMenuPositionProvider.f7609c && Intrinsics.c(this.d, dropdownMenuPositionProvider.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i2 = DpOffset.f11007b;
        return this.d.hashCode() + tr.b(this.f7609c, (this.f7608b.hashCode() + (Long.hashCode(this.f7607a) * 31)) * 31, 31);
    }

    public final String toString() {
        return "DropdownMenuPositionProvider(contentOffset=" + ((Object) DpOffset.c(this.f7607a)) + ", density=" + this.f7608b + ", verticalMargin=" + this.f7609c + ", onPositionCalculated=" + this.d + ')';
    }

    public DropdownMenuPositionProvider(long j2, Density density, int i2, Function2 function2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(j2, density, (i3 & 4) != 0 ? density.B0(MenuKt.f7027a) : i2, (i3 & 8) != 0 ? new rq(6) : function2, null);
    }
}
