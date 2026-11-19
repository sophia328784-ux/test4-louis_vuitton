package androidx.compose.foundation.lazy;

import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B;\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/compose/foundation/lazy/ParentSizeElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/lazy/ParentSizeNode;", "", "fraction", "Landroidx/compose/runtime/State;", "", "widthState", "heightState", "", "inspectorName", "<init>", "(FLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Ljava/lang/String;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class ParentSizeElement extends ModifierNodeElement<ParentSizeNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f5257b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final State f5258c;
    public final State d;

    public /* synthetic */ ParentSizeElement(float f2, State state, State state2, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(f2, (i2 & 2) != 0 ? null : state, (i2 & 4) != 0 ? null : state2, str);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new ParentSizeNode(this.f5257b, this.f5258c, this.d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ParentSizeElement)) {
            return false;
        }
        ParentSizeElement parentSizeElement = (ParentSizeElement) obj;
        return this.f5257b == parentSizeElement.f5257b && Intrinsics.c(this.f5258c, parentSizeElement.f5258c) && Intrinsics.c(this.d, parentSizeElement.d);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        ParentSizeNode parentSizeNode = (ParentSizeNode) node;
        parentSizeNode.p = this.f5257b;
        parentSizeNode.q = this.f5258c;
        parentSizeNode.r = this.d;
    }

    public final int hashCode() {
        State state = this.f5258c;
        int iHashCode = (state != null ? state.hashCode() : 0) * 31;
        State state2 = this.d;
        return Float.hashCode(this.f5257b) + ((iHashCode + (state2 != null ? state2.hashCode() : 0)) * 31);
    }

    public ParentSizeElement(float f2, State<Integer> state, State<Integer> state2, String str) {
        this.f5257b = f2;
        this.f5258c = state;
        this.d = state2;
    }
}
