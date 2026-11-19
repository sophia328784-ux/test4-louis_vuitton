package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.PopupWindow;
import androidx.appcompat.R$styleable;

/* JADX INFO: loaded from: classes.dex */
class AppCompatPopupWindow extends PopupWindow {
    public AppCompatPopupWindow(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a(context, attributeSet, i2, 0);
    }

    public final void a(Context context, AttributeSet attributeSet, int i2, int i3) {
        TintTypedArray tintTypedArrayE = TintTypedArray.e(i2, i3, context, attributeSet, R$styleable.t);
        TypedArray typedArray = tintTypedArrayE.f1313b;
        if (typedArray.hasValue(2)) {
            setOverlapAnchor(typedArray.getBoolean(2, false));
        }
        setBackgroundDrawable(tintTypedArrayE.b(0));
        tintTypedArrayE.g();
    }

    public AppCompatPopupWindow(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        a(context, attributeSet, i2, i3);
    }
}
