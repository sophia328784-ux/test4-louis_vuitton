package com.vuitton.android.presentation.databinding;

import android.widget.Button;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.google.android.material.tabs.TabLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityAddTravelBinding implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ScrollView f51189b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Button f51190c;
    public final TextView d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TravelCreationConfirmationBinding f51191e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ToolbarSimpleBinding f51192f;
    public final ProgressOverlayBinding g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TabLayout f51193h;

    public ActivityAddTravelBinding(ScrollView scrollView, Button button, TextView textView, TravelCreationConfirmationBinding travelCreationConfirmationBinding, ToolbarSimpleBinding toolbarSimpleBinding, ProgressOverlayBinding progressOverlayBinding, TabLayout tabLayout) {
        this.f51189b = scrollView;
        this.f51190c = button;
        this.d = textView;
        this.f51191e = travelCreationConfirmationBinding;
        this.f51192f = toolbarSimpleBinding;
        this.g = progressOverlayBinding;
        this.f51193h = tabLayout;
    }
}
