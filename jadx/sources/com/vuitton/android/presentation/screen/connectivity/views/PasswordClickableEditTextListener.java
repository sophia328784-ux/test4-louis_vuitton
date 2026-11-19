package com.vuitton.android.presentation.screen.connectivity.views;

import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.method.PasswordTransformationMethod;
import androidx.core.content.ContextCompat;
import com.vuitton.android.R;
import com.vuitton.android.presentation.extensions.ResourcesExtKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/views/PasswordClickableEditTextListener;", "Lcom/vuitton/android/presentation/screen/connectivity/views/ClickableEditText$ClickableEditTextListener;", "<init>", "()V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PasswordClickableEditTextListener implements ClickableEditText.ClickableEditTextListener {
    @Override // com.vuitton.android.presentation.screen.connectivity.views.ClickableEditText.ClickableEditTextListener
    public final void a(ClickableEditText clickableEditText) {
        int iA = ResourcesExtKt.a(12);
        if (clickableEditText.getTransformationMethod() == null) {
            clickableEditText.setTransformationMethod(new PasswordTransformationMethod());
            Drawable drawable = ContextCompat.getDrawable(clickableEditText.getContext(), R.drawable.ic_hide_password);
            if (drawable != null) {
                drawable.setBounds(0, 0, iA, iA);
            }
            clickableEditText.setCompoundDrawables(null, null, drawable, null);
        } else {
            clickableEditText.setTransformationMethod(null);
            Drawable drawable2 = ContextCompat.getDrawable(clickableEditText.getContext(), R.drawable.ic_show_password);
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, iA, iA);
            }
            clickableEditText.setCompoundDrawables(null, null, drawable2, null);
        }
        Editable text = clickableEditText.getText();
        text.getClass();
        clickableEditText.setSelection(text.length());
    }
}
