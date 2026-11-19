package androidx.compose.foundation;

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
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\b\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u007f\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\n\u0012\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\u0006\u0010\u0014\u001a\u00020\u0007¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Landroidx/compose/foundation/CombinedClickableElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/CombinedClickableNode;", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "interactionSource", "Landroidx/compose/foundation/IndicationNodeFactory;", "indicationNodeFactory", "", "useLocalIndication", "enabled", "", "onClickLabel", "Landroidx/compose/ui/semantics/Role;", "role", "Lkotlin/Function0;", "", "onClick", "onLongClickLabel", "onLongClick", "onDoubleClick", "hapticFeedbackEnabled", "<init>", "(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class CombinedClickableElement extends ModifierNodeElement<CombinedClickableNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableInteractionSource f4167b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final IndicationNodeFactory f4168c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f4169e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f4170f;
    public final Role g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Function0 f4171h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f4172i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Function0 f4173j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Function0 f4174k;
    public final boolean l;

    public CombinedClickableElement(MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z, boolean z2, String str, Role role, Function0 function0, String str2, Function0 function1, Function0 function2, boolean z3, DefaultConstructorMarker defaultConstructorMarker) {
        this.f4167b = mutableInteractionSource;
        this.f4168c = indicationNodeFactory;
        this.d = z;
        this.f4169e = z2;
        this.f4170f = str;
        this.g = role;
        this.f4171h = function0;
        this.f4172i = str2;
        this.f4173j = function1;
        this.f4174k = function2;
        this.l = z3;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new CombinedClickableNode(this.f4171h, this.f4172i, this.f4173j, this.f4174k, this.l, this.f4167b, this.f4168c, this.d, this.f4169e, this.f4170f, this.g, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || CombinedClickableElement.class != obj.getClass()) {
            return false;
        }
        CombinedClickableElement combinedClickableElement = (CombinedClickableElement) obj;
        return Intrinsics.c(this.f4167b, combinedClickableElement.f4167b) && Intrinsics.c(this.f4168c, combinedClickableElement.f4168c) && this.d == combinedClickableElement.d && this.f4169e == combinedClickableElement.f4169e && Intrinsics.c(this.f4170f, combinedClickableElement.f4170f) && Intrinsics.c(this.g, combinedClickableElement.g) && this.f4171h == combinedClickableElement.f4171h && Intrinsics.c(this.f4172i, combinedClickableElement.f4172i) && this.f4173j == combinedClickableElement.f4173j && this.f4174k == combinedClickableElement.f4174k && this.l == combinedClickableElement.l;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        boolean z;
        CombinedClickableNode combinedClickableNode = (CombinedClickableNode) node;
        combinedClickableNode.P = this.l;
        String str = combinedClickableNode.M;
        String str2 = this.f4172i;
        if (!Intrinsics.c(str, str2)) {
            combinedClickableNode.M = str2;
            SemanticsModifierNodeKt.b(combinedClickableNode);
        }
        boolean z2 = combinedClickableNode.N == null;
        Function0 function0 = this.f4173j;
        if (z2 != (function0 == null)) {
            combinedClickableNode.l2();
            SemanticsModifierNodeKt.b(combinedClickableNode);
            z = true;
        } else {
            z = false;
        }
        combinedClickableNode.N = function0;
        boolean z3 = combinedClickableNode.O == null;
        Function0 function1 = this.f4174k;
        if (z3 != (function1 == null)) {
            z = true;
        }
        combinedClickableNode.O = function1;
        boolean z4 = combinedClickableNode.w;
        boolean z5 = this.f4169e;
        if (z4 != z5) {
            z = true;
        }
        combinedClickableNode.v2(this.f4167b, this.f4168c, this.d, z5, this.f4170f, this.g, this.f4171h);
        if (z) {
            combinedClickableNode.w2(false);
            combinedClickableNode.w2(true);
        }
    }

    public final int hashCode() {
        MutableInteractionSource mutableInteractionSource = this.f4167b;
        int iHashCode = (mutableInteractionSource != null ? mutableInteractionSource.hashCode() : 0) * 31;
        IndicationNodeFactory indicationNodeFactory = this.f4168c;
        int iB = o60.b(o60.b((iHashCode + (indicationNodeFactory != null ? indicationNodeFactory.hashCode() : 0)) * 31, 31, this.d), 31, this.f4169e);
        String str = this.f4170f;
        int iHashCode2 = (iB + (str != null ? str.hashCode() : 0)) * 31;
        Role role = this.g;
        int iHashCode3 = (this.f4171h.hashCode() + ((iHashCode2 + (role != null ? Integer.hashCode(role.f10296a) : 0)) * 31)) * 31;
        String str2 = this.f4172i;
        int iHashCode4 = (iHashCode3 + (str2 != null ? str2.hashCode() : 0)) * 31;
        Function0 function0 = this.f4173j;
        int iHashCode5 = (iHashCode4 + (function0 != null ? function0.hashCode() : 0)) * 31;
        Function0 function1 = this.f4174k;
        return Boolean.hashCode(this.l) + ((iHashCode5 + (function1 != null ? function1.hashCode() : 0)) * 31);
    }
}
