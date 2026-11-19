package com.vuitton.android.presentation.databinding;

import android.view.LayoutInflater;
import android.view.View;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.connectivity.views.ViewPagerIndicator;
import defpackage.r81;

/* JADX INFO: loaded from: classes4.dex */
public final class ViewViewPagerIndicatorBinding implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f51472b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f51473c;

    public ViewViewPagerIndicatorBinding(ViewPagerIndicator viewPagerIndicator, View view, View view2) {
        this.f51472b = view;
        this.f51473c = view2;
    }

    public static ViewViewPagerIndicatorBinding a(LayoutInflater layoutInflater, ViewPagerIndicator viewPagerIndicator) {
        layoutInflater.inflate(R.layout.view_view_pager_indicator, viewPagerIndicator);
        int i2 = R.id.indicator_background;
        View viewA = ViewBindings.a(R.id.indicator_background, viewPagerIndicator);
        if (viewA != null) {
            i2 = R.id.indicator_cursor;
            View viewA2 = ViewBindings.a(R.id.indicator_cursor, viewPagerIndicator);
            if (viewA2 != null) {
                return new ViewViewPagerIndicatorBinding(viewPagerIndicator, viewA, viewA2);
            }
        }
        r81.d("Missing required view with ID: ".concat(viewPagerIndicator.getResources().getResourceName(i2)));
        return null;
    }
}
