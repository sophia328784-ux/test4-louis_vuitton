package androidx.compose.material3;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/material3/ExposedDropdownMenuAnchorElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/material3/ExposedDropdownMenuAnchorNode;", "Lkotlin/Function0;", "", "updateStateOnAttach", "<init>", "(Lkotlin/jvm/functions/Function0;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class ExposedDropdownMenuAnchorElement extends ModifierNodeElement<ExposedDropdownMenuAnchorNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function0 f6912b;

    public ExposedDropdownMenuAnchorElement(Function0<Unit> function0) {
        this.f6912b = function0;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new ExposedDropdownMenuAnchorNode(this.f6912b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ExposedDropdownMenuAnchorElement) {
            return this.f6912b == ((ExposedDropdownMenuAnchorElement) obj).f6912b;
        }
        return false;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        ((ExposedDropdownMenuAnchorNode) node).p = this.f6912b;
    }

    public final int hashCode() {
        return this.f6912b.hashCode();
    }
}
