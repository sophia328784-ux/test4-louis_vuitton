package androidx.compose.animation;

import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0081\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/animation/SharedBoundsNodeElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/animation/SharedBoundsNode;", "Landroidx/compose/animation/SharedElementEntry;", "sharedElementState", "<init>", "(Landroidx/compose/animation/SharedElementEntry;)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class SharedBoundsNodeElement extends ModifierNodeElement<SharedBoundsNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SharedElementEntry f3650b;

    public SharedBoundsNodeElement(SharedElementEntry sharedElementEntry) {
        this.f3650b = sharedElementEntry;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new SharedBoundsNode(this.f3650b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof SharedBoundsNodeElement) && Intrinsics.c(this.f3650b, ((SharedBoundsNodeElement) obj).f3650b);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        SharedBoundsNode sharedBoundsNode = (SharedBoundsNode) node;
        SharedElementEntry sharedElementEntry = sharedBoundsNode.r;
        SharedElementEntry sharedElementEntry2 = this.f3650b;
        if (Intrinsics.c(sharedElementEntry2, sharedElementEntry)) {
            return;
        }
        ((SnapshotMutableStateImpl) sharedBoundsNode.r.f3664b).setValue(Boolean.FALSE);
        sharedBoundsNode.r = sharedElementEntry2;
        boolean z = sharedBoundsNode.o;
        ((SnapshotMutableStateImpl) sharedElementEntry2.f3664b).setValue(Boolean.valueOf(z));
        if (sharedBoundsNode.o) {
            sharedBoundsNode.j2();
        }
    }

    public final int hashCode() {
        return this.f3650b.hashCode();
    }

    public final String toString() {
        return "SharedBoundsNodeElement(sharedElementState=" + this.f3650b + ')';
    }
}
