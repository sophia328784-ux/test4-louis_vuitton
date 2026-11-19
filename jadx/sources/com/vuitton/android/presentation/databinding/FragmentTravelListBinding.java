package com.vuitton.android.presentation.databinding;

import android.widget.Button;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;

/* JADX INFO: loaded from: classes4.dex */
public final class FragmentTravelListBinding implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Button f51314b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ToolbarSimpleBinding f51315c;
    public final ProgressOverlayBinding d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RecyclerView f51316e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LinearLayout f51317f;

    public FragmentTravelListBinding(Button button, ToolbarSimpleBinding toolbarSimpleBinding, ProgressOverlayBinding progressOverlayBinding, RecyclerView recyclerView, LinearLayout linearLayout) {
        this.f51314b = button;
        this.f51315c = toolbarSimpleBinding;
        this.d = progressOverlayBinding;
        this.f51316e = recyclerView;
        this.f51317f = linearLayout;
    }
}
