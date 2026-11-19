package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B5\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;", "Lkotlin/Function0;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;", "itemProviderLambda", "Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;", "state", "Landroidx/compose/foundation/gestures/Orientation;", "orientation", "", "userScrollEnabled", "reverseScrolling", "<init>", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;ZZ)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class LazyLayoutSemanticsModifier extends ModifierNodeElement<LazyLayoutSemanticsModifierNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function0 f5527b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LazyLayoutSemanticState f5528c;
    public final Orientation d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f5529e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f5530f;

    public LazyLayoutSemanticsModifier(Function0<? extends LazyLayoutItemProvider> function0, LazyLayoutSemanticState lazyLayoutSemanticState, Orientation orientation, boolean z, boolean z2) {
        this.f5527b = function0;
        this.f5528c = lazyLayoutSemanticState;
        this.d = orientation;
        this.f5529e = z;
        this.f5530f = z2;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new LazyLayoutSemanticsModifierNode(this.f5527b, this.f5528c, this.d, this.f5529e, this.f5530f);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LazyLayoutSemanticsModifier)) {
            return false;
        }
        LazyLayoutSemanticsModifier lazyLayoutSemanticsModifier = (LazyLayoutSemanticsModifier) obj;
        return this.f5527b == lazyLayoutSemanticsModifier.f5527b && Intrinsics.c(this.f5528c, lazyLayoutSemanticsModifier.f5528c) && this.d == lazyLayoutSemanticsModifier.d && this.f5529e == lazyLayoutSemanticsModifier.f5529e && this.f5530f == lazyLayoutSemanticsModifier.f5530f;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        LazyLayoutSemanticsModifierNode lazyLayoutSemanticsModifierNode = (LazyLayoutSemanticsModifierNode) node;
        lazyLayoutSemanticsModifierNode.p = this.f5527b;
        lazyLayoutSemanticsModifierNode.q = this.f5528c;
        Orientation orientation = lazyLayoutSemanticsModifierNode.r;
        Orientation orientation2 = this.d;
        if (orientation != orientation2) {
            lazyLayoutSemanticsModifierNode.r = orientation2;
            SemanticsModifierNodeKt.b(lazyLayoutSemanticsModifierNode);
        }
        boolean z = lazyLayoutSemanticsModifierNode.s;
        boolean z2 = this.f5529e;
        boolean z3 = this.f5530f;
        if (z == z2 && lazyLayoutSemanticsModifierNode.t == z3) {
            return;
        }
        lazyLayoutSemanticsModifierNode.s = z2;
        lazyLayoutSemanticsModifierNode.t = z3;
        lazyLayoutSemanticsModifierNode.h2();
        SemanticsModifierNodeKt.b(lazyLayoutSemanticsModifierNode);
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f5530f) + o60.b((this.d.hashCode() + ((this.f5528c.hashCode() + (this.f5527b.hashCode() * 31)) * 31)) * 31, 31, this.f5529e);
    }
}
