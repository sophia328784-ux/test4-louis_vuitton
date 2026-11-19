package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B'\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;", "state", "Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;", "beyondBoundsInfo", "", "reverseLayout", "Landroidx/compose/foundation/gestures/Orientation;", "orientation", "<init>", "(Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;ZLandroidx/compose/foundation/gestures/Orientation;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class LazyLayoutBeyondBoundsModifierElement extends ModifierNodeElement<LazyLayoutBeyondBoundsProviderModifierNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LazyLayoutBeyondBoundsState f5415b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LazyLayoutBeyondBoundsInfo f5416c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Orientation f5417e;

    public LazyLayoutBeyondBoundsModifierElement(LazyLayoutBeyondBoundsState lazyLayoutBeyondBoundsState, LazyLayoutBeyondBoundsInfo lazyLayoutBeyondBoundsInfo, boolean z, Orientation orientation) {
        this.f5415b = lazyLayoutBeyondBoundsState;
        this.f5416c = lazyLayoutBeyondBoundsInfo;
        this.d = z;
        this.f5417e = orientation;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new LazyLayoutBeyondBoundsProviderModifierNode(this.f5415b, this.f5416c, this.d, this.f5417e);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LazyLayoutBeyondBoundsModifierElement)) {
            return false;
        }
        LazyLayoutBeyondBoundsModifierElement lazyLayoutBeyondBoundsModifierElement = (LazyLayoutBeyondBoundsModifierElement) obj;
        return Intrinsics.c(this.f5415b, lazyLayoutBeyondBoundsModifierElement.f5415b) && Intrinsics.c(this.f5416c, lazyLayoutBeyondBoundsModifierElement.f5416c) && this.d == lazyLayoutBeyondBoundsModifierElement.d && this.f5417e == lazyLayoutBeyondBoundsModifierElement.f5417e;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        LazyLayoutBeyondBoundsProviderModifierNode lazyLayoutBeyondBoundsProviderModifierNode = (LazyLayoutBeyondBoundsProviderModifierNode) node;
        lazyLayoutBeyondBoundsProviderModifierNode.p = this.f5415b;
        lazyLayoutBeyondBoundsProviderModifierNode.q = this.f5416c;
        lazyLayoutBeyondBoundsProviderModifierNode.r = this.d;
        lazyLayoutBeyondBoundsProviderModifierNode.s = this.f5417e;
    }

    public final int hashCode() {
        return this.f5417e.hashCode() + o60.b((this.f5416c.hashCode() + (this.f5415b.hashCode() * 31)) * 31, 31, this.d);
    }
}
