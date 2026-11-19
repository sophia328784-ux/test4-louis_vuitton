package com.vuitton.android.presentation.screen.connectivity.watch.detail;

import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentWatchDetailsBinding;
import com.vuitton.android.presentation.databinding.ToolbarSimpleBinding;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final /* synthetic */ class WatchDetailsFragment$binding$2 extends FunctionReferenceImpl implements Function1<View, FragmentWatchDetailsBinding> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final WatchDetailsFragment$binding$2 f56712b = new WatchDetailsFragment$binding$2(1, FragmentWatchDetailsBinding.class, "bind", "bind(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/FragmentWatchDetailsBinding;", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        View view = (View) obj;
        view.getClass();
        int i2 = R.id.flight_address;
        TextView textView = (TextView) ViewBindings.a(R.id.flight_address, view);
        if (textView != null) {
            i2 = R.id.flight_address_card;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.a(R.id.flight_address_card, view);
            if (constraintLayout != null) {
                i2 = R.id.flight_address_label;
                if (((TextView) ViewBindings.a(R.id.flight_address_label, view)) != null) {
                    i2 = R.id.layout_toolbar;
                    View viewA = ViewBindings.a(R.id.layout_toolbar, view);
                    if (viewA != null) {
                        ToolbarSimpleBinding toolbarSimpleBindingA = ToolbarSimpleBinding.a(viewA);
                        i2 = R.id.scroll;
                        if (((NestedScrollView) ViewBindings.a(R.id.scroll, view)) != null) {
                            i2 = R.id.serial_number;
                            TextView textView2 = (TextView) ViewBindings.a(R.id.serial_number, view);
                            if (textView2 != null) {
                                i2 = R.id.serial_number_label;
                                TextView textView3 = (TextView) ViewBindings.a(R.id.serial_number_label, view);
                                if (textView3 != null) {
                                    i2 = R.id.sku;
                                    TextView textView4 = (TextView) ViewBindings.a(R.id.sku, view);
                                    if (textView4 != null) {
                                        i2 = R.id.sku_label;
                                        TextView textView5 = (TextView) ViewBindings.a(R.id.sku_label, view);
                                        if (textView5 != null) {
                                            i2 = R.id.travel_recycler_view;
                                            RecyclerView recyclerView = (RecyclerView) ViewBindings.a(R.id.travel_recycler_view, view);
                                            if (recyclerView != null) {
                                                i2 = R.id.watch_details_see_all_travels;
                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(R.id.watch_details_see_all_travels, view);
                                                if (linearLayout != null) {
                                                    i2 = R.id.watch_details_see_all_watchfaces;
                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(R.id.watch_details_see_all_watchfaces, view);
                                                    if (linearLayout2 != null) {
                                                        i2 = R.id.watch_details_travels_add;
                                                        Button button = (Button) ViewBindings.a(R.id.watch_details_travels_add, view);
                                                        if (button != null) {
                                                            i2 = R.id.watch_details_travels_container;
                                                            if (((FrameLayout) ViewBindings.a(R.id.watch_details_travels_container, view)) != null) {
                                                                i2 = R.id.watch_details_travels_loader;
                                                                ProgressBar progressBar = (ProgressBar) ViewBindings.a(R.id.watch_details_travels_loader, view);
                                                                if (progressBar != null) {
                                                                    i2 = R.id.watch_details_travels_title;
                                                                    TextView textView6 = (TextView) ViewBindings.a(R.id.watch_details_travels_title, view);
                                                                    if (textView6 != null) {
                                                                        i2 = R.id.watch_details_watchface_loader;
                                                                        ProgressBar progressBar2 = (ProgressBar) ViewBindings.a(R.id.watch_details_watchface_loader, view);
                                                                        if (progressBar2 != null) {
                                                                            i2 = R.id.watch_details_watchface_title;
                                                                            TextView textView7 = (TextView) ViewBindings.a(R.id.watch_details_watchface_title, view);
                                                                            if (textView7 != null) {
                                                                                i2 = R.id.watch_image;
                                                                                ImageView imageView = (ImageView) ViewBindings.a(R.id.watch_image, view);
                                                                                if (imageView != null) {
                                                                                    i2 = R.id.watchface_recycler_view;
                                                                                    RecyclerView recyclerView2 = (RecyclerView) ViewBindings.a(R.id.watchface_recycler_view, view);
                                                                                    if (recyclerView2 != null) {
                                                                                        return new FragmentWatchDetailsBinding(textView, constraintLayout, toolbarSimpleBindingA, textView2, textView3, textView4, textView5, recyclerView, linearLayout, linearLayout2, button, progressBar, textView6, progressBar2, textView7, imageView, recyclerView2);
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
