package androidx.compose.material3;

import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/material3/TooltipPositionProviderImpl;", "Landroidx/compose/ui/window/PopupPositionProvider;", "Landroidx/compose/material3/TooltipAnchorPosition;", "type", "", "tooltipAnchorSpacing", "<init>", "(IILkotlin/jvm/internal/DefaultConstructorMarker;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class TooltipPositionProviderImpl implements PopupPositionProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f7414a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f7415b;

    public TooltipPositionProviderImpl(int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this.f7414a = i2;
        this.f7415b = i3;
    }

    @Override // androidx.compose.ui.window.PopupPositionProvider
    public final long a(IntRect intRect, long j2, LayoutDirection layoutDirection, long j3) {
        TooltipAnchorPosition.Companion companion = TooltipAnchorPosition.f7394a;
        companion.getClass();
        int i2 = TooltipAnchorPosition.d;
        int i3 = this.f7414a;
        if (i3 == i2) {
            return c(intRect, j3);
        }
        companion.getClass();
        if (i3 == TooltipAnchorPosition.f7397e) {
            return d(intRect, j3, j2);
        }
        companion.getClass();
        if (i3 == TooltipAnchorPosition.f7395b) {
            return b(intRect, j3, j2);
        }
        companion.getClass();
        if (i3 != TooltipAnchorPosition.f7396c) {
            companion.getClass();
            if (i3 == TooltipAnchorPosition.f7398f) {
                return layoutDirection == LayoutDirection.Ltr ? c(intRect, j3) : d(intRect, j3, j2);
            }
            companion.getClass();
            if (i3 == TooltipAnchorPosition.g) {
                return layoutDirection == LayoutDirection.Ltr ? d(intRect, j3, j2) : c(intRect, j3);
            }
            return b(intRect, j3, j2);
        }
        int i4 = (int) (j3 >> 32);
        int iA = defpackage.a.a(intRect.d(), i4, 2, intRect.f11017a);
        if (iA < 0) {
            iA = intRect.f11017a;
        } else if (iA + i4 > ((int) (j2 >> 32))) {
            iA = intRect.f11019c - i4;
        }
        int i5 = intRect.d;
        int i6 = this.f7415b;
        int i7 = i5 + i6;
        int i8 = (int) (j3 & BodyPartID.bodyIdMax);
        if (i7 + i8 > ((int) (j2 & BodyPartID.bodyIdMax))) {
            i7 = (intRect.f11018b - i8) - i6;
        }
        long j4 = (((long) iA) << 32) | (((long) i7) & BodyPartID.bodyIdMax);
        IntOffset.Companion companion2 = IntOffset.f11012b;
        return j4;
    }

    public final long b(IntRect intRect, long j2, long j3) {
        int i2 = (int) (j2 >> 32);
        int iA = defpackage.a.a(intRect.d(), i2, 2, intRect.f11017a);
        if (iA < 0) {
            iA = intRect.f11017a;
        } else if (iA + i2 > ((int) (j3 >> 32))) {
            iA = intRect.f11019c - i2;
        }
        int i3 = intRect.f11018b - ((int) (j2 & BodyPartID.bodyIdMax));
        int i4 = this.f7415b;
        int i5 = i3 - i4;
        if (i5 < 0) {
            i5 = intRect.d + i4;
        }
        long j4 = (((long) iA) << 32) | (((long) i5) & BodyPartID.bodyIdMax);
        IntOffset.Companion companion = IntOffset.f11012b;
        return j4;
    }

    public final long c(IntRect intRect, long j2) {
        int i2 = intRect.f11017a;
        int i3 = this.f7415b;
        int i4 = i2 - (((int) (j2 >> 32)) + i3);
        if (i4 < 0) {
            i4 = intRect.f11019c + i3;
        }
        long j3 = (((long) i4) << 32) | (((long) (((intRect.f11018b + intRect.d) - ((int) (j2 & BodyPartID.bodyIdMax))) / 2)) & BodyPartID.bodyIdMax);
        IntOffset.Companion companion = IntOffset.f11012b;
        return j3;
    }

    public final long d(IntRect intRect, long j2, long j3) {
        int i2 = intRect.f11019c;
        int i3 = this.f7415b;
        int i4 = i2 + i3;
        int i5 = (int) (j2 >> 32);
        if (i4 + i5 > ((int) (j3 >> 32))) {
            i4 = intRect.f11017a - (i5 + i3);
        }
        long j4 = (((long) i4) << 32) | (((long) (((intRect.f11018b + intRect.d) - ((int) (j2 & BodyPartID.bodyIdMax))) / 2)) & BodyPartID.bodyIdMax);
        IntOffset.Companion companion = IntOffset.f11012b;
        return j4;
    }
}
