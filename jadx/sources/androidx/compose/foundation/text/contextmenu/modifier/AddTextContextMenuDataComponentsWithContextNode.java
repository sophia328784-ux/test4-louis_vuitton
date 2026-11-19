package androidx.compose.foundation.text.contextmenu.modifier;

import android.content.Context;
import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B&\u0012\u001d\u0010\b\u001a\u0019\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0003¢\u0006\u0002\b\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/foundation/text/contextmenu/modifier/AddTextContextMenuDataComponentsWithContextNode;", "Landroidx/compose/ui/node/DelegatingNode;", "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;", "Lkotlin/Function2;", "Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;", "Landroid/content/Context;", "", "Lkotlin/ExtensionFunctionType;", "builder", "<init>", "(Lkotlin/jvm/functions/Function2;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class AddTextContextMenuDataComponentsWithContextNode extends DelegatingNode implements CompositionLocalConsumerModifierNode {
    public Function2 r;

    public AddTextContextMenuDataComponentsWithContextNode(Function2<? super TextContextMenuBuilderScope, ? super Context, Unit> function2) {
        this.r = function2;
        h2(new AddTextContextMenuDataComponentsNode(new Function1() { // from class: androidx.compose.foundation.text.contextmenu.modifier.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                AddTextContextMenuDataComponentsWithContextNode addTextContextMenuDataComponentsWithContextNode = this.f6142b;
                addTextContextMenuDataComponentsWithContextNode.r.invoke((TextContextMenuBuilderScope) obj, CompositionLocalConsumerModifierNodeKt.a(addTextContextMenuDataComponentsWithContextNode, AndroidCompositionLocals_androidKt.f9936b));
                return Unit.f71739a;
            }
        }));
    }
}
