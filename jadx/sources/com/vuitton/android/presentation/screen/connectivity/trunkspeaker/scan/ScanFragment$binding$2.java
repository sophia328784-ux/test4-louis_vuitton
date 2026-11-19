package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan;

import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentTrunkSpeakerScanBinding;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final /* synthetic */ class ScanFragment$binding$2 extends FunctionReferenceImpl implements Function1<View, FragmentTrunkSpeakerScanBinding> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ScanFragment$binding$2 f56590b = new ScanFragment$binding$2(1, FragmentTrunkSpeakerScanBinding.class, "bind", "bind(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerScanBinding;", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        View view = (View) obj;
        view.getClass();
        int i2 = R.id.image_close_screen;
        ImageView imageView = (ImageView) ViewBindings.a(R.id.image_close_screen, view);
        if (imageView != null) {
            i2 = R.id.pairing_image;
            if (((ImageView) ViewBindings.a(R.id.pairing_image, view)) != null) {
                i2 = R.id.start_pairing_button;
                Button button = (Button) ViewBindings.a(R.id.start_pairing_button, view);
                if (button != null) {
                    return new FragmentTrunkSpeakerScanBinding(imageView, button);
                }
            }
        }
        r81.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
