package androidx.compose.foundation.text;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\b¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;", "Landroidx/compose/ui/layout/LayoutModifier;", "Landroidx/compose/foundation/text/TextFieldScrollerPosition;", "scrollerPosition", "", "cursorOffset", "Landroidx/compose/ui/text/input/TransformedText;", "transformedText", "Lkotlin/Function0;", "Landroidx/compose/foundation/text/TextLayoutResultProxy;", "textLayoutResultProvider", "<init>", "(Landroidx/compose/foundation/text/TextFieldScrollerPosition;ILandroidx/compose/ui/text/input/TransformedText;Lkotlin/jvm/functions/Function0;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final /* data */ class HorizontalScrollLayoutModifier implements LayoutModifier {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextFieldScrollerPosition f5895b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f5896c;
    public final TransformedText d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Function0 f5897e;

    public HorizontalScrollLayoutModifier(TextFieldScrollerPosition textFieldScrollerPosition, int i2, TransformedText transformedText, Function0<TextLayoutResultProxy> function0) {
        this.f5895b = textFieldScrollerPosition;
        this.f5896c = i2;
        this.d = transformedText;
        this.f5897e = function0;
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public final MeasureResult e(final MeasureScope measureScope, Measurable measurable, long j2) {
        long j3;
        if (measurable.S(Constraints.g(j2)) < Constraints.h(j2)) {
            j3 = j2;
        } else {
            j3 = j2;
            j2 = Constraints.a(j3, 0, Integer.MAX_VALUE, 0, 0, 13);
        }
        final Placeable placeableT = measurable.T(j2);
        final int iMin = Math.min(placeableT.f9548b, Constraints.h(j3));
        return measureScope.V0(iMin, placeableT.f9549c, MapsKt.c(), new Function1() { // from class: androidx.compose.foundation.text.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                HorizontalScrollLayoutModifier horizontalScrollLayoutModifier = this.f6161b;
                int i2 = horizontalScrollLayoutModifier.f5896c;
                TextFieldScrollerPosition textFieldScrollerPosition = horizontalScrollLayoutModifier.f5895b;
                TransformedText transformedText = horizontalScrollLayoutModifier.d;
                TextLayoutResultProxy textLayoutResultProxy = (TextLayoutResultProxy) horizontalScrollLayoutModifier.f5897e.mo47invoke();
                TextLayoutResult textLayoutResult = textLayoutResultProxy != null ? textLayoutResultProxy.f6011a : null;
                boolean z = measureScope.getF9421c() == LayoutDirection.Rtl;
                Placeable placeable = placeableT;
                textFieldScrollerPosition.a(Orientation.Horizontal, TextFieldScrollKt.a(placementScope, i2, transformedText, textLayoutResult, z, placeable.f9548b), iMin, placeable.f9548b);
                Placeable.PlacementScope.y(placementScope, placeable, Math.round(-((SnapshotMutableFloatStateImpl) textFieldScrollerPosition.f6000a).a()), 0);
                return Unit.f71739a;
            }
        });
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HorizontalScrollLayoutModifier)) {
            return false;
        }
        HorizontalScrollLayoutModifier horizontalScrollLayoutModifier = (HorizontalScrollLayoutModifier) obj;
        return Intrinsics.c(this.f5895b, horizontalScrollLayoutModifier.f5895b) && this.f5896c == horizontalScrollLayoutModifier.f5896c && Intrinsics.c(this.d, horizontalScrollLayoutModifier.d) && Intrinsics.c(this.f5897e, horizontalScrollLayoutModifier.f5897e);
    }

    public final int hashCode() {
        return this.f5897e.hashCode() + ((this.d.hashCode() + tr.b(this.f5896c, this.f5895b.hashCode() * 31, 31)) * 31);
    }

    public final String toString() {
        return "HorizontalScrollLayoutModifier(scrollerPosition=" + this.f5895b + ", cursorOffset=" + this.f5896c + ", transformedText=" + this.d + ", textLayoutResultProvider=" + this.f5897e + ')';
    }
}
