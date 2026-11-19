package com.vuitton.android.presentation.databinding;

import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import com.vuitton.android.presentation.screen.connectivity.views.FixedAspectRatioImageView;
import com.vuitton.android.presentation.screen.connectivity.views.TrunkBatteryLevelView;

/* JADX INFO: loaded from: classes4.dex */
public final class ItemTrunkSimpleRoomDetailBinding implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f51446b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImageView f51447c;
    public final FixedAspectRatioImageView d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CardView f51448e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TextView f51449f;
    public final TextView g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TrunkBatteryLevelView f51450h;

    public ItemTrunkSimpleRoomDetailBinding(FrameLayout frameLayout, ImageView imageView, FixedAspectRatioImageView fixedAspectRatioImageView, CardView cardView, TextView textView, TextView textView2, TrunkBatteryLevelView trunkBatteryLevelView) {
        this.f51446b = frameLayout;
        this.f51447c = imageView;
        this.d = fixedAspectRatioImageView;
        this.f51448e = cardView;
        this.f51449f = textView;
        this.g = textView2;
        this.f51450h = trunkBatteryLevelView;
    }
}
