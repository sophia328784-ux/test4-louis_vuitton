package com.vuitton.android.presentation.screen.connectivity.lightup.sneakers;

import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentSneakerScanTutorialStepBinding;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final /* synthetic */ class SneakerScanTutorialScreenFragment$binding$2 extends FunctionReferenceImpl implements Function1<View, FragmentSneakerScanTutorialStepBinding> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SneakerScanTutorialScreenFragment$binding$2 f56254b = new SneakerScanTutorialScreenFragment$binding$2(1, FragmentSneakerScanTutorialStepBinding.class, "bind", "bind(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/FragmentSneakerScanTutorialStepBinding;", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        View view = (View) obj;
        view.getClass();
        int i2 = R.id.button_back;
        Button button = (Button) ViewBindings.a(R.id.button_back, view);
        if (button != null) {
            i2 = R.id.button_next;
            Button button2 = (Button) ViewBindings.a(R.id.button_next, view);
            if (button2 != null) {
                i2 = R.id.image_visual;
                ImageView imageView = (ImageView) ViewBindings.a(R.id.image_visual, view);
                if (imageView != null) {
                    i2 = R.id.text_steps;
                    TextView textView = (TextView) ViewBindings.a(R.id.text_steps, view);
                    if (textView != null) {
                        i2 = R.id.text_subtitle;
                        TextView textView2 = (TextView) ViewBindings.a(R.id.text_subtitle, view);
                        if (textView2 != null) {
                            i2 = R.id.text_title;
                            TextView textView3 = (TextView) ViewBindings.a(R.id.text_title, view);
                            if (textView3 != null) {
                                return new FragmentSneakerScanTutorialStepBinding(button, button2, imageView, textView, textView2, textView3);
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
