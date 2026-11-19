package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.compose.foundation.text.contextmenu.data.TextContextMenuComponent;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.TraversableNode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001b\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/foundation/text/contextmenu/modifier/FilterTextContextMenuDataComponentsNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/TraversableNode;", "Lkotlin/Function1;", "Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;", "", "filter", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class FilterTextContextMenuDataComponentsNode extends Modifier.Node implements TraversableNode {
    public final Function1 p;

    public FilterTextContextMenuDataComponentsNode(Function1<? super TextContextMenuComponent, Boolean> function1) {
        this.p = function1;
    }

    @Override // androidx.compose.ui.node.TraversableNode
    /* JADX INFO: renamed from: M */
    public final Object getR() {
        return TextContextMenuDataTraverseKey.f6125a;
    }
}
