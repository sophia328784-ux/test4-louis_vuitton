package androidx.compose.foundation.selection;

import androidx.compose.foundation.IndicationNodeFactory;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.semantics.Role;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001BQ\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000e0\r¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Landroidx/compose/foundation/selection/ToggleableElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/selection/ToggleableNode;", "", "value", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "interactionSource", "Landroidx/compose/foundation/IndicationNodeFactory;", "indicationNodeFactory", "useLocalIndication", "enabled", "Landroidx/compose/ui/semantics/Role;", "role", "Lkotlin/Function1;", "", "onValueChange", "<init>", "(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class ToggleableElement extends ModifierNodeElement<ToggleableNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f5828b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableInteractionSource f5829c;
    public final IndicationNodeFactory d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f5830e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f5831f;
    public final Role g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Function1 f5832h;

    public ToggleableElement(boolean z, MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z2, boolean z3, Role role, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this.f5828b = z;
        this.f5829c = mutableInteractionSource;
        this.d = indicationNodeFactory;
        this.f5830e = z2;
        this.f5831f = z3;
        this.g = role;
        this.f5832h = function1;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new ToggleableNode(this.f5828b, this.f5829c, this.d, this.f5830e, this.f5831f, this.g, this.f5832h, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ToggleableElement.class != obj.getClass()) {
            return false;
        }
        ToggleableElement toggleableElement = (ToggleableElement) obj;
        return this.f5828b == toggleableElement.f5828b && Intrinsics.c(this.f5829c, toggleableElement.f5829c) && Intrinsics.c(this.d, toggleableElement.d) && this.f5830e == toggleableElement.f5830e && this.f5831f == toggleableElement.f5831f && Intrinsics.c(this.g, toggleableElement.g) && this.f5832h == toggleableElement.f5832h;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        ToggleableNode toggleableNode = (ToggleableNode) node;
        boolean z = toggleableNode.O;
        boolean z2 = this.f5828b;
        if (z != z2) {
            toggleableNode.O = z2;
            SemanticsModifierNodeKt.b(toggleableNode);
        }
        toggleableNode.P = this.f5832h;
        toggleableNode.v2(this.f5829c, this.d, this.f5830e, this.f5831f, null, this.g, toggleableNode.Q);
    }

    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.f5828b) * 31;
        MutableInteractionSource mutableInteractionSource = this.f5829c;
        int iHashCode2 = (iHashCode + (mutableInteractionSource != null ? mutableInteractionSource.hashCode() : 0)) * 31;
        IndicationNodeFactory indicationNodeFactory = this.d;
        int iB = o60.b(o60.b((iHashCode2 + (indicationNodeFactory != null ? indicationNodeFactory.hashCode() : 0)) * 31, 31, this.f5830e), 31, this.f5831f);
        Role role = this.g;
        return this.f5832h.hashCode() + ((iB + (role != null ? Integer.hashCode(role.f10296a) : 0)) * 31);
    }
}
