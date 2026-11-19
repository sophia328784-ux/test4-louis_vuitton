package com.vuitton.android.presentation.databinding;

import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import com.vuitton.android.presentation.screen.connectivity.views.FixedAspectRatioImageView;
import com.vuitton.android.presentation.screen.connectivity.views.TrunkBatteryLevelView;

/* JADX INFO: loaded from: classes4.dex */
public final class ItemConnectivityTrunkSpeakerBinding implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CardView f51402b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FixedAspectRatioImageView f51403c;
    public final TextView d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TextView f51404e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TrunkBatteryLevelView f51405f;

    public ItemConnectivityTrunkSpeakerBinding(CardView cardView, FixedAspectRatioImageView fixedAspectRatioImageView, TextView textView, TextView textView2, TrunkBatteryLevelView trunkBatteryLevelView) {
        this.f51402b = cardView;
        this.f51403c = fixedAspectRatioImageView;
        this.d = textView;
        this.f51404e = textView2;
        this.f51405f = trunkBatteryLevelView;
    }
}
