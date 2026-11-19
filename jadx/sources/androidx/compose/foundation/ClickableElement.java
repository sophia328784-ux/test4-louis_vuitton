package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.semantics.Role;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001BM\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Landroidx/compose/foundation/ClickableElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/ClickableNode;", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "interactionSource", "Landroidx/compose/foundation/IndicationNodeFactory;", "indicationNodeFactory", "", "useLocalIndication", "enabled", "", "onClickLabel", "Landroidx/compose/ui/semantics/Role;", "role", "Lkotlin/Function0;", "", "onClick", "<init>", "(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class ClickableElement extends ModifierNodeElement<ClickableNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableInteractionSource f4156b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final IndicationNodeFactory f4157c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f4158e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f4159f;
    public final Role g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Function0 f4160h;

    public ClickableElement(MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z, boolean z2, String str, Role role, Function0 function0, DefaultConstructorMarker defaultConstructorMarker) {
        this.f4156b = mutableInteractionSource;
        this.f4157c = indicationNodeFactory;
        this.d = z;
        this.f4158e = z2;
        this.f4159f = str;
        this.g = role;
        this.f4160h = function0;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new ClickableNode(this.f4156b, this.f4157c, this.d, this.f4158e, this.f4159f, this.g, this.f4160h, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ClickableElement.class != obj.getClass()) {
            return false;
        }
        ClickableElement clickableElement = (ClickableElement) obj;
        return Intrinsics.c(this.f4156b, clickableElement.f4156b) && Intrinsics.c(this.f4157c, clickableElement.f4157c) && this.d == clickableElement.d && this.f4158e == clickableElement.f4158e && Intrinsics.c(this.f4159f, clickableElement.f4159f) && Intrinsics.c(this.g, clickableElement.g) && this.f4160h == clickableElement.f4160h;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        ((ClickableNode) node).v2(this.f4156b, this.f4157c, this.d, this.f4158e, this.f4159f, this.g, this.f4160h);
    }

    public final int hashCode() {
        MutableInteractionSource mutableInteractionSource = this.f4156b;
        int iHashCode = (mutableInteractionSource != null ? mutableInteractionSource.hashCode() : 0) * 31;
        IndicationNodeFactory indicationNodeFactory = this.f4157c;
        int iB = o60.b(o60.b((iHashCode + (indicationNodeFactory != null ? indicationNodeFactory.hashCode() : 0)) * 31, 31, this.d), 31, this.f4158e);
        String str = this.f4159f;
        int iHashCode2 = (iB + (str != null ? str.hashCode() : 0)) * 31;
        Role role = this.g;
        return this.f4160h.hashCode() + ((iHashCode2 + (role != null ? Integer.hashCode(role.f10296a) : 0)) * 31);
    }
}
