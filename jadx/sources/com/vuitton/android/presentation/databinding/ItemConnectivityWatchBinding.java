package com.vuitton.android.presentation.databinding;

import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import com.vuitton.android.presentation.screen.connectivity.views.FixedAspectRatioImageView;

/* JADX INFO: loaded from: classes4.dex */
public final class ItemConnectivityWatchBinding implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CardView f51406b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImageView f51407c;
    public final FixedAspectRatioImageView d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TextView f51408e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TextView f51409f;

    public ItemConnectivityWatchBinding(ImageView imageView, TextView textView, TextView textView2, CardView cardView, FixedAspectRatioImageView fixedAspectRatioImageView) {
        this.f51406b = cardView;
        this.f51407c = imageView;
        this.d = fixedAspectRatioImageView;
        this.f51408e = textView;
        this.f51409f = textView2;
    }
}
