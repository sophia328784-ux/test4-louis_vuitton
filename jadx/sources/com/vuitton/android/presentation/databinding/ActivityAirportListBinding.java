package com.vuitton.android.presentation.databinding;

import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.tabs.TabLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityAirportListBinding implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ViewPager f51194b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImageButton f51195c;
    public final EditText d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ToolbarTitleBinding f51196e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TabLayout f51197f;

    public ActivityAirportListBinding(LinearLayout linearLayout, ViewPager viewPager, ImageButton imageButton, EditText editText, ToolbarTitleBinding toolbarTitleBinding, TabLayout tabLayout) {
        this.f51194b = viewPager;
        this.f51195c = imageButton;
        this.d = editText;
        this.f51196e = toolbarTitleBinding;
        this.f51197f = tabLayout;
    }
}
