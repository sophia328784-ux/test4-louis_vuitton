package com.vuitton.android.presentation.screen.connectivity.watchface;

import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentWatchfacePresentationBinding;
import com.vuitton.android.presentation.databinding.ToolbarSimpleBinding;
import com.vuitton.android.presentation.screen.connectivity.views.ViewPagerIndicator;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final /* synthetic */ class WatchfacePresentationFragment$binding$2 extends FunctionReferenceImpl implements Function1<View, FragmentWatchfacePresentationBinding> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final WatchfacePresentationFragment$binding$2 f56828b = new WatchfacePresentationFragment$binding$2(1, FragmentWatchfacePresentationBinding.class, "bind", "bind(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        View view = (View) obj;
        view.getClass();
        int i2 = R.id.layout_toolbar;
        View viewA = ViewBindings.a(R.id.layout_toolbar, view);
        if (viewA != null) {
            ToolbarSimpleBinding toolbarSimpleBindingA = ToolbarSimpleBinding.a(viewA);
            i2 = R.id.watch_strap;
            ImageView imageView = (ImageView) ViewBindings.a(R.id.watch_strap, view);
            if (imageView != null) {
                i2 = R.id.watchface_presentation_asset_bottom_pager;
                ViewPager2 viewPager2 = (ViewPager2) ViewBindings.a(R.id.watchface_presentation_asset_bottom_pager, view);
                if (viewPager2 != null) {
                    i2 = R.id.watchface_presentation_asset_top_pager;
                    ViewPager2 viewPager3 = (ViewPager2) ViewBindings.a(R.id.watchface_presentation_asset_top_pager, view);
                    if (viewPager3 != null) {
                        i2 = R.id.watchface_presentation_button;
                        Button button = (Button) ViewBindings.a(R.id.watchface_presentation_button, view);
                        if (button != null) {
                            i2 = R.id.watchface_presentation_indicator_bottom;
                            ViewPagerIndicator viewPagerIndicator = (ViewPagerIndicator) ViewBindings.a(R.id.watchface_presentation_indicator_bottom, view);
                            if (viewPagerIndicator != null) {
                                i2 = R.id.watchface_presentation_indicator_top;
                                ViewPagerIndicator viewPagerIndicator2 = (ViewPagerIndicator) ViewBindings.a(R.id.watchface_presentation_indicator_top, view);
                                if (viewPagerIndicator2 != null) {
                                    i2 = R.id.watchface_presentation_play_icon;
                                    if (((ImageView) ViewBindings.a(R.id.watchface_presentation_play_icon, view)) != null) {
                                        i2 = R.id.watchface_presentation_scroll;
                                        ScrollView scrollView = (ScrollView) ViewBindings.a(R.id.watchface_presentation_scroll, view);
                                        if (scrollView != null) {
                                            i2 = R.id.watchface_presentation_text;
                                            TextView textView = (TextView) ViewBindings.a(R.id.watchface_presentation_text, view);
                                            if (textView != null) {
                                                i2 = R.id.watchface_presentation_video;
                                                ImageView imageView2 = (ImageView) ViewBindings.a(R.id.watchface_presentation_video, view);
                                                if (imageView2 != null) {
                                                    i2 = R.id.watchface_presentation_video_container;
                                                    FrameLayout frameLayout = (FrameLayout) ViewBindings.a(R.id.watchface_presentation_video_container, view);
                                                    if (frameLayout != null) {
                                                        return new FragmentWatchfacePresentationBinding(toolbarSimpleBindingA, imageView, viewPager2, viewPager3, button, viewPagerIndicator, viewPagerIndicator2, scrollView, textView, imageView2, frameLayout);
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
            }
        }
        r81.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
