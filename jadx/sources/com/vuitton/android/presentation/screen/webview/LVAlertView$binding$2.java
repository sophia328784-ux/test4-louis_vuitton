package com.vuitton.android.presentation.screen.webview;

import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.AlertViewBinding;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final /* synthetic */ class LVAlertView$binding$2 extends FunctionReferenceImpl implements Function1<View, AlertViewBinding> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final LVAlertView$binding$2 f65453b = new LVAlertView$binding$2(1, AlertViewBinding.class, "bind", "bind(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/AlertViewBinding;", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        View view = (View) obj;
        view.getClass();
        int i2 = R.id.button_call;
        Button button = (Button) ViewBindings.a(R.id.button_call, view);
        if (button != null) {
            i2 = R.id.button_close;
            ImageButton imageButton = (ImageButton) ViewBindings.a(R.id.button_close, view);
            if (imageButton != null) {
                i2 = R.id.dismiss_control;
                Button button2 = (Button) ViewBindings.a(R.id.dismiss_control, view);
                if (button2 != null) {
                    i2 = R.id.textview_context;
                    if (((TextView) ViewBindings.a(R.id.textview_context, view)) != null) {
                        i2 = R.id.textview_title;
                        if (((TextView) ViewBindings.a(R.id.textview_title, view)) != null) {
                            i2 = R.id.textviex_remark;
                            if (((TextView) ViewBindings.a(R.id.textviex_remark, view)) != null) {
                                return new AlertViewBinding(button, imageButton, button2);
                            }
                        }
                    }
                }
            }
        }
        r81.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
