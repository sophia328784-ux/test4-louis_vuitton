package androidx.compose.animation;

import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B#\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/animation/SkipToLookaheadSizeElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/animation/SkipToLookaheadSizeNode;", "Landroidx/compose/animation/ScaleToBoundsImpl;", "scaleToBounds", "Lkotlin/Function0;", "", "isEnabled", "<init>", "(Landroidx/compose/animation/ScaleToBoundsImpl;Lkotlin/jvm/functions/Function0;)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SkipToLookaheadSizeElement extends ModifierNodeElement<SkipToLookaheadSizeNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ScaleToBoundsImpl f3736b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function0 f3737c;

    public /* synthetic */ SkipToLookaheadSizeElement(ScaleToBoundsImpl scaleToBoundsImpl, Function0 function0, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : scaleToBoundsImpl, (i2 & 2) != 0 ? SkipToLookaheadSizeNodeKt.f3743a : function0);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new SkipToLookaheadSizeNode(this.f3736b, this.f3737c);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SkipToLookaheadSizeElement)) {
            return false;
        }
        SkipToLookaheadSizeElement skipToLookaheadSizeElement = (SkipToLookaheadSizeElement) obj;
        return skipToLookaheadSizeElement.f3737c == this.f3737c && Intrinsics.c(skipToLookaheadSizeElement.f3736b, this.f3736b);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        SkipToLookaheadSizeNode skipToLookaheadSizeNode = (SkipToLookaheadSizeNode) node;
        ((SnapshotMutableStateImpl) skipToLookaheadSizeNode.p).setValue(this.f3736b);
        ((SnapshotMutableStateImpl) skipToLookaheadSizeNode.q).setValue(this.f3737c);
    }

    public final int hashCode() {
        int iHashCode = this.f3737c.hashCode() * 31;
        ScaleToBoundsImpl scaleToBoundsImpl = this.f3736b;
        return iHashCode + (scaleToBoundsImpl != null ? scaleToBoundsImpl.hashCode() : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SkipToLookaheadSizeElement() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public SkipToLookaheadSizeElement(ScaleToBoundsImpl scaleToBoundsImpl, Function0<Boolean> function0) {
        this.f3736b = scaleToBoundsImpl;
        this.f3737c = function0;
    }
}
