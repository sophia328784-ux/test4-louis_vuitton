package androidx.compose.ui.window;

import android.graphics.Rect;
import android.view.View;
import android.view.WindowManager;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\ba\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/window/PopupLayoutHelper;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface PopupLayoutHelper {
    void a(View view, Rect rect);

    void b(PopupLayout popupLayout, int i2, int i3);

    void c(WindowManager windowManager, PopupLayout popupLayout, WindowManager.LayoutParams layoutParams);

    void d(View view, Rect rect);
}
