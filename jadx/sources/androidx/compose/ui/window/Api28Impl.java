package androidx.compose.ui.window;

import android.view.WindowManager;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bÃ\u0002\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/window/Api28Impl;", "", "Landroid/view/WindowManager$LayoutParams;", "attrs", "", "a", "(Landroid/view/WindowManager$LayoutParams;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class Api28Impl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Api28Impl f11155a = new Api28Impl();

    public final void a(WindowManager.LayoutParams attrs) {
        attrs.layoutInDisplayCutoutMode = 3;
    }
}
