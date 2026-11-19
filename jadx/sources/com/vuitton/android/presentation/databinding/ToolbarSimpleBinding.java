package com.vuitton.android.presentation.databinding;

import android.view.View;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.AppBarLayout;
import com.vuitton.android.R;
import defpackage.r81;

/* JADX INFO: loaded from: classes4.dex */
public final class ToolbarSimpleBinding implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppBarLayout f51463b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ToolbarTitleBinding f51464c;

    public ToolbarSimpleBinding(AppBarLayout appBarLayout, ToolbarTitleBinding toolbarTitleBinding) {
        this.f51463b = appBarLayout;
        this.f51464c = toolbarTitleBinding;
    }

    public static ToolbarSimpleBinding a(View view) {
        int i2 = R.id.app_bar;
        View viewA = ViewBindings.a(R.id.app_bar, view);
        if (viewA != null) {
            ToolbarTitleBinding toolbarTitleBindingA = ToolbarTitleBinding.a(viewA);
            if (ViewBindings.a(R.id.divider, view) != null) {
                return new ToolbarSimpleBinding((AppBarLayout) view, toolbarTitleBindingA);
            }
            i2 = R.id.divider;
        }
        r81.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
