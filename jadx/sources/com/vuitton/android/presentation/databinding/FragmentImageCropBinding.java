package com.vuitton.android.presentation.databinding;

import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.viewbinding.ViewBinding;
import com.canhub.cropper.CropImageView;

/* JADX INFO: loaded from: classes4.dex */
public final class FragmentImageCropBinding implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f51260b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImageView f51261c;
    public final CropImageView d;

    public FragmentImageCropBinding(FrameLayout frameLayout, ImageView imageView, CropImageView cropImageView) {
        this.f51260b = frameLayout;
        this.f51261c = imageView;
        this.d = cropImageView;
    }
}
