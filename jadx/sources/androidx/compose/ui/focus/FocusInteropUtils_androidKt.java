package androidx.compose.ui.focus;

import android.graphics.Rect;
import android.view.FocusFinder;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.ui.platform.AndroidComposeView;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class FocusInteropUtils_androidKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f8739a = new int[2];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Rect f8740b = new Rect();

    public static final androidx.compose.ui.geometry.Rect a(View view, View view2) {
        int[] iArr = f8739a;
        view.getLocationInWindow(iArr);
        int i2 = iArr[0];
        int i3 = iArr[1];
        view2.getLocationInWindow(iArr);
        int i4 = iArr[0];
        float f2 = i3 - iArr[1];
        Rect rect = f8740b;
        view.getFocusedRect(rect);
        float f3 = (i2 - i4) + rect.left;
        return new androidx.compose.ui.geometry.Rect(f3, rect.top + f2, rect.width() + f3, f2 + rect.top + rect.height());
    }

    public static final boolean b(View view, Integer num, Rect rect) {
        if (num == null) {
            return view.requestFocus();
        }
        if (!(view instanceof ViewGroup)) {
            return view.requestFocus(num.intValue(), rect);
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if (viewGroup.isFocused()) {
            return true;
        }
        if (viewGroup.isFocusable() && !viewGroup.hasFocus()) {
            return viewGroup.requestFocus(num.intValue(), rect);
        }
        if (view instanceof AndroidComposeView) {
            return ((AndroidComposeView) view).requestFocus(num.intValue(), rect);
        }
        if (rect != null) {
            View viewFindNextFocusFromRect = FocusFinder.getInstance().findNextFocusFromRect(viewGroup, rect, num.intValue());
            return viewFindNextFocusFromRect != null ? viewFindNextFocusFromRect.requestFocus(num.intValue(), rect) : viewGroup.requestFocus(num.intValue(), rect);
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(viewGroup, viewGroup.hasFocus() ? viewGroup.findFocus() : null, num.intValue());
        return viewFindNextFocus != null ? viewFindNextFocus.requestFocus(num.intValue()) : view.requestFocus(num.intValue());
    }

    public static final Integer c(int i2) {
        FocusDirection.Companion companion = FocusDirection.f8731b;
        companion.getClass();
        if (i2 == FocusDirection.g) {
            return 33;
        }
        companion.getClass();
        if (i2 == FocusDirection.f8735h) {
            return 130;
        }
        companion.getClass();
        if (i2 == FocusDirection.f8733e) {
            return 17;
        }
        companion.getClass();
        if (i2 == FocusDirection.f8734f) {
            return 66;
        }
        companion.getClass();
        if (i2 == FocusDirection.f8732c) {
            return 2;
        }
        companion.getClass();
        return i2 == FocusDirection.d ? 1 : null;
    }

    public static final FocusDirection d(int i2) {
        if (i2 == 1) {
            FocusDirection.f8731b.getClass();
            return new FocusDirection(FocusDirection.d);
        }
        if (i2 == 2) {
            FocusDirection.f8731b.getClass();
            return new FocusDirection(FocusDirection.f8732c);
        }
        if (i2 == 17) {
            FocusDirection.f8731b.getClass();
            return new FocusDirection(FocusDirection.f8733e);
        }
        if (i2 == 33) {
            FocusDirection.f8731b.getClass();
            return new FocusDirection(FocusDirection.g);
        }
        if (i2 == 66) {
            FocusDirection.f8731b.getClass();
            return new FocusDirection(FocusDirection.f8734f);
        }
        if (i2 != 130) {
            return null;
        }
        FocusDirection.f8731b.getClass();
        return new FocusDirection(FocusDirection.f8735h);
    }
}
