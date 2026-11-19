package androidx.compose.ui.window;

import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0012\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/window/PopupLayoutHelperImpl;", "Landroidx/compose/ui/window/PopupLayoutHelper;", "<init>", "()V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
class PopupLayoutHelperImpl implements PopupLayoutHelper {
    @Override // androidx.compose.ui.window.PopupLayoutHelper
    public final void a(View view, Rect rect) {
        view.getWindowVisibleDisplayFrame(rect);
    }

    @Override // androidx.compose.ui.window.PopupLayoutHelper
    public void b(PopupLayout popupLayout, int i2, int i3) {
    }

    @Override // androidx.compose.ui.window.PopupLayoutHelper
    public final void c(WindowManager windowManager, PopupLayout popupLayout, WindowManager.LayoutParams layoutParams) {
        windowManager.updateViewLayout(popupLayout, layoutParams);
    }

    @Override // androidx.compose.ui.window.PopupLayoutHelper
    public void d(View view, Rect rect) {
        DisplayMetrics displayMetrics = view.getResources().getDisplayMetrics();
        rect.set(0, 0, displayMetrics.widthPixels, displayMetrics.heightPixels);
    }
}
