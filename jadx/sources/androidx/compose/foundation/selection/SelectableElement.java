package androidx.compose.foundation.selection;

import androidx.compose.foundation.IndicationNodeFactory;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.semantics.Role;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001BK\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Landroidx/compose/foundation/selection/SelectableElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/selection/SelectableNode;", "", "selected", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "interactionSource", "Landroidx/compose/foundation/IndicationNodeFactory;", "indicationNodeFactory", "useLocalIndication", "enabled", "Landroidx/compose/ui/semantics/Role;", "role", "Lkotlin/Function0;", "", "onClick", "<init>", "(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class SelectableElement extends ModifierNodeElement<SelectableNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f5819b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableInteractionSource f5820c;
    public final IndicationNodeFactory d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f5821e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f5822f;
    public final Role g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Function0 f5823h;

    public SelectableElement(boolean z, MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z2, boolean z3, Role role, Function0 function0, DefaultConstructorMarker defaultConstructorMarker) {
        this.f5819b = z;
        this.f5820c = mutableInteractionSource;
        this.d = indicationNodeFactory;
        this.f5821e = z2;
        this.f5822f = z3;
        this.g = role;
        this.f5823h = function0;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new SelectableNode(this.f5819b, this.f5820c, this.d, this.f5821e, this.f5822f, this.g, this.f5823h, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || SelectableElement.class != obj.getClass()) {
            return false;
        }
        SelectableElement selectableElement = (SelectableElement) obj;
        return this.f5819b == selectableElement.f5819b && Intrinsics.c(this.f5820c, selectableElement.f5820c) && Intrinsics.c(this.d, selectableElement.d) && this.f5821e == selectableElement.f5821e && this.f5822f == selectableElement.f5822f && Intrinsics.c(this.g, selectableElement.g) && this.f5823h == selectableElement.f5823h;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        SelectableNode selectableNode = (SelectableNode) node;
        boolean z = selectableNode.O;
        boolean z2 = this.f5819b;
        if (z != z2) {
            selectableNode.O = z2;
            SemanticsModifierNodeKt.b(selectableNode);
        }
        selectableNode.v2(this.f5820c, this.d, this.f5821e, this.f5822f, null, this.g, this.f5823h);
    }

    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.f5819b) * 31;
        MutableInteractionSource mutableInteractionSource = this.f5820c;
        int iHashCode2 = (iHashCode + (mutableInteractionSource != null ? mutableInteractionSource.hashCode() : 0)) * 31;
        IndicationNodeFactory indicationNodeFactory = this.d;
        int iB = o60.b(o60.b((iHashCode2 + (indicationNodeFactory != null ? indicationNodeFactory.hashCode() : 0)) * 31, 31, this.f5821e), 31, this.f5822f);
        Role role = this.g;
        return this.f5823h.hashCode() + ((iB + (role != null ? Integer.hashCode(role.f10296a) : 0)) * 31);
    }
}
