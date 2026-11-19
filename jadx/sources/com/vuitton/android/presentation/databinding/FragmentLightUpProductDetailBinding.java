package com.vuitton.android.presentation.databinding;

import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.connectivity.views.FixedAspectRatioImageView;
import defpackage.r81;

/* JADX INFO: loaded from: classes4.dex */
public final class FragmentLightUpProductDetailBinding implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RelativeLayout f51272b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Button f51273c;
    public final FixedAspectRatioImageView d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RelativeLayout f51274e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ToolbarSimpleBinding f51275f;
    public final LinearLayout g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final LinearLayout f51276h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final InAppNotificationBinding f51277i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final RecyclerView f51278j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final NestedScrollView f51279k;
    public final TextView l;

    public FragmentLightUpProductDetailBinding(RelativeLayout relativeLayout, Button button, FixedAspectRatioImageView fixedAspectRatioImageView, RelativeLayout relativeLayout2, ToolbarSimpleBinding toolbarSimpleBinding, LinearLayout linearLayout, LinearLayout linearLayout2, InAppNotificationBinding inAppNotificationBinding, RecyclerView recyclerView, NestedScrollView nestedScrollView, TextView textView) {
        this.f51272b = relativeLayout;
        this.f51273c = button;
        this.d = fixedAspectRatioImageView;
        this.f51274e = relativeLayout2;
        this.f51275f = toolbarSimpleBinding;
        this.g = linearLayout;
        this.f51276h = linearLayout2;
        this.f51277i = inAppNotificationBinding;
        this.f51278j = recyclerView;
        this.f51279k = nestedScrollView;
        this.l = textView;
    }

    public static FragmentLightUpProductDetailBinding a(View view) {
        int i2 = R.id.button_unpair;
        Button button = (Button) ViewBindings.a(R.id.button_unpair, view);
        if (button != null) {
            i2 = R.id.image_product;
            FixedAspectRatioImageView fixedAspectRatioImageView = (FixedAspectRatioImageView) ViewBindings.a(R.id.image_product, view);
            if (fixedAspectRatioImageView != null) {
                i2 = R.id.layout_connection_in_progress;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(R.id.layout_connection_in_progress, view);
                if (relativeLayout != null) {
                    i2 = R.id.layout_light_up_toolbar;
                    View viewA = ViewBindings.a(R.id.layout_light_up_toolbar, view);
                    if (viewA != null) {
                        ToolbarSimpleBinding toolbarSimpleBindingA = ToolbarSimpleBinding.a(viewA);
                        i2 = R.id.layout_presets;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(R.id.layout_presets, view);
                        if (linearLayout != null) {
                            i2 = R.id.layout_subsection;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(R.id.layout_subsection, view);
                            if (linearLayout2 != null) {
                                i2 = R.id.layout_update_section;
                                View viewA2 = ViewBindings.a(R.id.layout_update_section, view);
                                if (viewA2 != null) {
                                    int i3 = R.id.notification_image;
                                    if (((ImageView) ViewBindings.a(R.id.notification_image, viewA2)) != null) {
                                        i3 = R.id.notification_title;
                                        TextView textView = (TextView) ViewBindings.a(R.id.notification_title, viewA2);
                                        if (textView != null) {
                                            InAppNotificationBinding inAppNotificationBinding = new InAppNotificationBinding((CardView) viewA2, textView);
                                            i2 = R.id.progress;
                                            if (((ProgressBar) ViewBindings.a(R.id.progress, view)) != null) {
                                                i2 = R.id.recycler_presets;
                                                RecyclerView recyclerView = (RecyclerView) ViewBindings.a(R.id.recycler_presets, view);
                                                if (recyclerView != null) {
                                                    i2 = R.id.scroll_view_wrapper;
                                                    NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.a(R.id.scroll_view_wrapper, view);
                                                    if (nestedScrollView != null) {
                                                        i2 = R.id.text_connection_subtitle;
                                                        if (((TextView) ViewBindings.a(R.id.text_connection_subtitle, view)) != null) {
                                                            i2 = R.id.text_connection_title;
                                                            if (((TextView) ViewBindings.a(R.id.text_connection_title, view)) != null) {
                                                                i2 = R.id.text_information_title;
                                                                if (((TextView) ViewBindings.a(R.id.text_information_title, view)) != null) {
                                                                    i2 = R.id.text_presets_title;
                                                                    if (((TextView) ViewBindings.a(R.id.text_presets_title, view)) != null) {
                                                                        i2 = R.id.text_product_title;
                                                                        TextView textView2 = (TextView) ViewBindings.a(R.id.text_product_title, view);
                                                                        if (textView2 != null) {
                                                                            return new FragmentLightUpProductDetailBinding((RelativeLayout) view, button, fixedAspectRatioImageView, relativeLayout, toolbarSimpleBindingA, linearLayout, linearLayout2, inAppNotificationBinding, recyclerView, nestedScrollView, textView2);
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    r81.d("Missing required view with ID: ".concat(viewA2.getResources().getResourceName(i3)));
                                    return null;
                                }
                            }
                        }
                    }
                }
            }
        }
        r81.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
