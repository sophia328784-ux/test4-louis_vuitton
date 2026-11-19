package com.vuitton.android.presentation.screen.connectivity.lightup.common.pairing;

import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentLightUpScanBottomSheetBinding;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final /* synthetic */ class DeviceDetectedBottomSheet$binding$2 extends FunctionReferenceImpl implements Function1<View, FragmentLightUpScanBottomSheetBinding> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final DeviceDetectedBottomSheet$binding$2 f56173b = new DeviceDetectedBottomSheet$binding$2(1, FragmentLightUpScanBottomSheetBinding.class, "bind", "bind(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/FragmentLightUpScanBottomSheetBinding;", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        View view = (View) obj;
        view.getClass();
        int i2 = R.id.button_cancel_pairing;
        Button button = (Button) ViewBindings.a(R.id.button_cancel_pairing, view);
        if (button != null) {
            i2 = R.id.button_confirm_pairing;
            Button button2 = (Button) ViewBindings.a(R.id.button_confirm_pairing, view);
            if (button2 != null) {
                i2 = R.id.image_light_up_confirmation;
                ImageView imageView = (ImageView) ViewBindings.a(R.id.image_light_up_confirmation, view);
                if (imageView != null) {
                    i2 = R.id.text_device_found_title;
                    TextView textView = (TextView) ViewBindings.a(R.id.text_device_found_title, view);
                    if (textView != null) {
                        i2 = R.id.text_light_up_confirmation;
                        TextView textView2 = (TextView) ViewBindings.a(R.id.text_light_up_confirmation, view);
                        if (textView2 != null) {
                            return new FragmentLightUpScanBottomSheetBinding(button, button2, imageView, textView, textView2);
                        }
                    }
                }
            }
        }
        r81.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
