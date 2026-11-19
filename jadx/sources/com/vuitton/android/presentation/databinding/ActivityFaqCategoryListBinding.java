package com.vuitton.android.presentation.databinding;

import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.vuitton.android.presentation.screen.connectivity.views.FixedAspectRatioImageView;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityFaqCategoryListBinding implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinearLayout f51200b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FixedAspectRatioImageView f51201c;
    public final LinearLayout d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ToolbarSimpleBinding f51202e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RecyclerView f51203f;
    public final TextView g;

    public ActivityFaqCategoryListBinding(LinearLayout linearLayout, FixedAspectRatioImageView fixedAspectRatioImageView, LinearLayout linearLayout2, ToolbarSimpleBinding toolbarSimpleBinding, RecyclerView recyclerView, TextView textView) {
        this.f51200b = linearLayout;
        this.f51201c = fixedAspectRatioImageView;
        this.d = linearLayout2;
        this.f51202e = toolbarSimpleBinding;
        this.f51203f = recyclerView;
        this.g = textView;
    }
}
