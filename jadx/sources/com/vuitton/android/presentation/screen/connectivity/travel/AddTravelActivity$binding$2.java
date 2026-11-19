package com.vuitton.android.presentation.screen.connectivity.travel;

import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.tabs.TabLayout;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.ActivityAddTravelBinding;
import com.vuitton.android.presentation.databinding.ProgressOverlayBinding;
import com.vuitton.android.presentation.databinding.ToolbarSimpleBinding;
import com.vuitton.android.presentation.databinding.TravelCreationConfirmationBinding;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final /* synthetic */ class AddTravelActivity$binding$2 extends FunctionReferenceImpl implements Function1<View, ActivityAddTravelBinding> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final AddTravelActivity$binding$2 f56319b = new AddTravelActivity$binding$2(1, ActivityAddTravelBinding.class, "bind", "bind(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/ActivityAddTravelBinding;", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        View view = (View) obj;
        view.getClass();
        int i2 = R.id.add_travel_container;
        ScrollView scrollView = (ScrollView) ViewBindings.a(R.id.add_travel_container, view);
        if (scrollView != null) {
            i2 = R.id.confirm_travel;
            Button button = (Button) ViewBindings.a(R.id.confirm_travel, view);
            if (button != null) {
                i2 = R.id.confirmation_email;
                TextView textView = (TextView) ViewBindings.a(R.id.confirmation_email, view);
                if (textView != null) {
                    i2 = R.id.confirmation_email_description;
                    if (((TextView) ViewBindings.a(R.id.confirmation_email_description, view)) != null) {
                        i2 = R.id.confirmation_view;
                        View viewA = ViewBindings.a(R.id.confirmation_view, view);
                        if (viewA != null) {
                            int i3 = R.id.confirmation_image;
                            if (((ImageView) ViewBindings.a(R.id.confirmation_image, viewA)) != null) {
                                i3 = R.id.confirmation_text;
                                if (((TextView) ViewBindings.a(R.id.confirmation_text, viewA)) != null) {
                                    i3 = R.id.confirmation_title;
                                    if (((TextView) ViewBindings.a(R.id.confirmation_title, viewA)) != null) {
                                        TravelCreationConfirmationBinding travelCreationConfirmationBinding = new TravelCreationConfirmationBinding((LinearLayout) viewA);
                                        i2 = R.id.layout_toolbar;
                                        View viewA2 = ViewBindings.a(R.id.layout_toolbar, view);
                                        if (viewA2 != null) {
                                            ToolbarSimpleBinding toolbarSimpleBindingA = ToolbarSimpleBinding.a(viewA2);
                                            i2 = R.id.or;
                                            if (((TextView) ViewBindings.a(R.id.or, view)) != null) {
                                                i2 = R.id.progress_overlay;
                                                View viewA3 = ViewBindings.a(R.id.progress_overlay, view);
                                                if (viewA3 != null) {
                                                    ProgressOverlayBinding progressOverlayBinding = new ProgressOverlayBinding((FrameLayout) viewA3);
                                                    i2 = R.id.travel_tab_layout;
                                                    TabLayout tabLayout = (TabLayout) ViewBindings.a(R.id.travel_tab_layout, view);
                                                    if (tabLayout != null) {
                                                        return new ActivityAddTravelBinding(scrollView, button, textView, travelCreationConfirmationBinding, toolbarSimpleBindingA, progressOverlayBinding, tabLayout);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            r81.d("Missing required view with ID: ".concat(viewA.getResources().getResourceName(i3)));
                            return null;
                        }
                    }
                }
            }
        }
        r81.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
