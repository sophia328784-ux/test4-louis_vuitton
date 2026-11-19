package com.vuitton.android.presentation.screen.imagepicker;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.viewbinding.ViewBindings;
import com.canhub.cropper.CropImageView;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentImageCropBinding;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final /* synthetic */ class ImageCropFragment$binding$2 extends FunctionReferenceImpl implements Function1<View, FragmentImageCropBinding> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ImageCropFragment$binding$2 f58194b = new ImageCropFragment$binding$2(1, FragmentImageCropBinding.class, "bind", "bind(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/FragmentImageCropBinding;", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        View view = (View) obj;
        view.getClass();
        int i2 = R.id.bottom_buttons_container;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(R.id.bottom_buttons_container, view);
        if (frameLayout != null) {
            i2 = R.id.button_crop;
            ImageView imageView = (ImageView) ViewBindings.a(R.id.button_crop, view);
            if (imageView != null) {
                i2 = R.id.view_crop;
                CropImageView cropImageView = (CropImageView) ViewBindings.a(R.id.view_crop, view);
                if (cropImageView != null) {
                    return new FragmentImageCropBinding(frameLayout, imageView, cropImageView);
                }
            }
        }
        r81.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
