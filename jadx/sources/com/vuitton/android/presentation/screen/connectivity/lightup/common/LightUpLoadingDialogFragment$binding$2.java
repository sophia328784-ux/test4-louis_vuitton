package com.vuitton.android.presentation.screen.connectivity.lightup.common;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.DialogLightUpBinding;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final /* synthetic */ class LightUpLoadingDialogFragment$binding$2 extends FunctionReferenceImpl implements Function1<View, DialogLightUpBinding> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final LightUpLoadingDialogFragment$binding$2 f56111b = new LightUpLoadingDialogFragment$binding$2(1, DialogLightUpBinding.class, "bind", "bind(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/DialogLightUpBinding;", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        View view = (View) obj;
        view.getClass();
        int i2 = R.id.progress;
        if (((FrameLayout) ViewBindings.a(R.id.progress, view)) != null) {
            i2 = R.id.progress_update_device;
            if (((ProgressBar) ViewBindings.a(R.id.progress_update_device, view)) != null) {
                i2 = R.id.text_progress_info;
                TextView textView = (TextView) ViewBindings.a(R.id.text_progress_info, view);
                if (textView != null) {
                    i2 = R.id.text_progress_percentage;
                    TextView textView2 = (TextView) ViewBindings.a(R.id.text_progress_percentage, view);
                    if (textView2 != null) {
                        i2 = R.id.text_update_subtitle;
                        if (((TextView) ViewBindings.a(R.id.text_update_subtitle, view)) != null) {
                            return new DialogLightUpBinding(textView, textView2);
                        }
                    }
                }
            }
        }
        r81.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
