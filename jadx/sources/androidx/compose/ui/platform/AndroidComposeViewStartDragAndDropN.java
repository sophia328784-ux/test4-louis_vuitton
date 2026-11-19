package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.ui.draganddrop.ComposeDragShadowBuilder;
import androidx.compose.ui.draganddrop.DragAndDropTransferData;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\bÃ\u0002\u0018\u00002\u00020\u0001J'\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/ui/platform/AndroidComposeViewStartDragAndDropN;", "", "Landroid/view/View;", "view", "Landroidx/compose/ui/draganddrop/DragAndDropTransferData;", "transferData", "Landroidx/compose/ui/draganddrop/ComposeDragShadowBuilder;", "dragShadowBuilder", "", "a", "(Landroid/view/View;Landroidx/compose/ui/draganddrop/DragAndDropTransferData;Landroidx/compose/ui/draganddrop/ComposeDragShadowBuilder;)Z", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class AndroidComposeViewStartDragAndDropN {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AndroidComposeViewStartDragAndDropN f9928a = new AndroidComposeViewStartDragAndDropN();

    public final boolean a(View view, DragAndDropTransferData transferData, ComposeDragShadowBuilder dragShadowBuilder) {
        return view.startDragAndDrop(transferData.f8696a, dragShadowBuilder, transferData.f8697b, transferData.f8698c);
    }
}
