package com.vuitton.android.presentation.databinding;

import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import com.vuitton.android.presentation.screen.connectivity.views.FixedAspectRatioImageView;

/* JADX INFO: loaded from: classes4.dex */
public final class ItemConnectivityLightUpBinding implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CardView f51398b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FixedAspectRatioImageView f51399c;
    public final ImageView d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TextView f51400e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TextView f51401f;

    public ItemConnectivityLightUpBinding(ImageView imageView, TextView textView, TextView textView2, CardView cardView, FixedAspectRatioImageView fixedAspectRatioImageView) {
        this.f51398b = cardView;
        this.f51399c = fixedAspectRatioImageView;
        this.d = imageView;
        this.f51400e = textView;
        this.f51401f = textView2;
    }
}
