package androidx.compose.ui;

import androidx.compose.ui.node.ModifierNodeElement;
import defpackage.a;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0081\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/ZIndexElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/ui/ZIndexNode;", "", "zIndex", "<init>", "(F)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class ZIndexElement extends ModifierNodeElement<ZIndexNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f8623b;

    public ZIndexElement(float f2) {
        this.f8623b = f2;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new ZIndexNode(this.f8623b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ZIndexElement) && Float.compare(this.f8623b, ((ZIndexElement) obj).f8623b) == 0;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        ((ZIndexNode) node).p = this.f8623b;
    }

    public final int hashCode() {
        return Float.hashCode(this.f8623b);
    }

    public final String toString() {
        return a.m(new StringBuilder("ZIndexElement(zIndex="), this.f8623b, ')');
    }
}
