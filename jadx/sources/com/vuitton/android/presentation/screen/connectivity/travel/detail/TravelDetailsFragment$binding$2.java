package com.vuitton.android.presentation.screen.connectivity.travel.detail;

import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentTravelDetailsBinding;
import com.vuitton.android.presentation.databinding.ProgressOverlayBinding;
import com.vuitton.android.presentation.databinding.ToolbarSimpleBinding;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final /* synthetic */ class TravelDetailsFragment$binding$2 extends FunctionReferenceImpl implements Function1<View, FragmentTravelDetailsBinding> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final TravelDetailsFragment$binding$2 f56403b = new TravelDetailsFragment$binding$2(1, FragmentTravelDetailsBinding.class, "bind", "bind(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        View view = (View) obj;
        view.getClass();
        int i2 = R.id.delete_travel_btn;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(R.id.delete_travel_btn, view);
        if (linearLayout != null) {
            i2 = R.id.edit_travel_btn;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(R.id.edit_travel_btn, view);
            if (linearLayout2 != null) {
                i2 = R.id.layout_toolbar;
                View viewA = ViewBindings.a(R.id.layout_toolbar, view);
                if (viewA != null) {
                    ToolbarSimpleBinding toolbarSimpleBindingA = ToolbarSimpleBinding.a(viewA);
                    i2 = R.id.progress_overlay;
                    View viewA2 = ViewBindings.a(R.id.progress_overlay, view);
                    if (viewA2 != null) {
                        ProgressOverlayBinding progressOverlayBinding = new ProgressOverlayBinding((FrameLayout) viewA2);
                        i2 = R.id.share_travel_btn;
                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(R.id.share_travel_btn, view);
                        if (linearLayout3 != null) {
                            i2 = R.id.travel_details_container;
                            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(R.id.travel_details_container, view);
                            if (frameLayout != null) {
                                i2 = R.id.travel_details_name;
                                TextView textView = (TextView) ViewBindings.a(R.id.travel_details_name, view);
                                if (textView != null) {
                                    i2 = R.id.travel_details_type;
                                    ImageView imageView = (ImageView) ViewBindings.a(R.id.travel_details_type, view);
                                    if (imageView != null) {
                                        i2 = R.id.validate_edit_btn;
                                        Button button = (Button) ViewBindings.a(R.id.validate_edit_btn, view);
                                        if (button != null) {
                                            return new FragmentTravelDetailsBinding(linearLayout, linearLayout2, toolbarSimpleBindingA, progressOverlayBinding, linearLayout3, frameLayout, textView, imageView, button);
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
