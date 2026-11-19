package androidx.compose.foundation;

import androidx.compose.foundation.gestures.BringIntoViewSpec;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ScrollableAreaKt {
    public static final Modifier a(Modifier modifier, ScrollableState scrollableState, Orientation orientation, OverscrollEffect overscrollEffect, boolean z, boolean z2, FlingBehavior flingBehavior, MutableInteractionSource mutableInteractionSource, BringIntoViewSpec bringIntoViewSpec) {
        float f2 = ClipScrollableContainerKt.f4166a;
        Orientation orientation2 = Orientation.Vertical;
        Modifier.Companion companion = Modifier.Companion.f8607b;
        return modifier.o(orientation == orientation2 ? ClipKt.a(companion, VerticalScrollableClipShape.f4306a) : ClipKt.a(companion, HorizontalScrollableClipShape.f4219a)).o(new ScrollableAreaElement(scrollableState, orientation, z, z2, flingBehavior, mutableInteractionSource, bringIntoViewSpec, false, overscrollEffect));
    }
}
