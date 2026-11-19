package androidx.compose.ui.layout;

import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.unit.ConstraintsKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class PlaceableKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Function1 f9553a = PlaceableKt$DefaultLayerBlock$1.f9555c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final long f9554b = ConstraintsKt.b(0, 0, 0, 0, 15);

    public static final Placeable.PlacementScope a(LookaheadCapablePlaceable lookaheadCapablePlaceable) {
        return new LookaheadCapablePlacementScope(lookaheadCapablePlaceable);
    }

    public static final Placeable.PlacementScope b(Owner owner) {
        return new OuterPlacementScope(owner);
    }
}
