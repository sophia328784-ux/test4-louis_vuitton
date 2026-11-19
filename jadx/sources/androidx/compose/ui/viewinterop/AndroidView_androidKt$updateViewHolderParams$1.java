package androidx.compose.ui.viewinterop;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.LayoutNode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/node/LayoutNode;", "it", "Landroidx/compose/ui/Modifier;", "invoke"}, k = 3, mv = {2, 1, 0}, xi = 48)
final class AndroidView_androidKt$updateViewHolderParams$1 extends Lambda implements Function2<LayoutNode, Modifier, Unit> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AndroidView_androidKt$updateViewHolderParams$1 f11085c = new AndroidView_androidKt$updateViewHolderParams$1(2);

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        AndroidView_androidKt.c((LayoutNode) obj).setModifier((Modifier) obj2);
        return Unit.f71739a;
    }
}
