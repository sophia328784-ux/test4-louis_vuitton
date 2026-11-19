package com.vuitton.android.presentation.screen.connectivity.lightup.keepall;

import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentLightUpKeepAllScanBinding;
import com.vuitton.android.presentation.screen.connectivity.views.FixedAspectRatioImageView;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final /* synthetic */ class KeepAllScanFragment$binding$2 extends FunctionReferenceImpl implements Function1<View, FragmentLightUpKeepAllScanBinding> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final KeepAllScanFragment$binding$2 f56214b = new KeepAllScanFragment$binding$2(1, FragmentLightUpKeepAllScanBinding.class, "bind", "bind(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/FragmentLightUpKeepAllScanBinding;", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        View view = (View) obj;
        view.getClass();
        int i2 = R.id.button_start_pairing;
        Button button = (Button) ViewBindings.a(R.id.button_start_pairing, view);
        if (button != null) {
            i2 = R.id.image_close_screen;
            ImageView imageView = (ImageView) ViewBindings.a(R.id.image_close_screen, view);
            if (imageView != null) {
                i2 = R.id.image_pairing_visual;
                FixedAspectRatioImageView fixedAspectRatioImageView = (FixedAspectRatioImageView) ViewBindings.a(R.id.image_pairing_visual, view);
                if (fixedAspectRatioImageView != null) {
                    i2 = R.id.text_pairing_title;
                    TextView textView = (TextView) ViewBindings.a(R.id.text_pairing_title, view);
                    if (textView != null) {
                        return new FragmentLightUpKeepAllScanBinding(button, imageView, fixedAspectRatioImageView, textView);
                    }
                }
            }
        }
        r81.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
