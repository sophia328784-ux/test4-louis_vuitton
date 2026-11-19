package com.vuitton.android.presentation.screen.connectivity.travel.list;

import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentTravelListBinding;
import com.vuitton.android.presentation.databinding.ProgressOverlayBinding;
import com.vuitton.android.presentation.databinding.ToolbarSimpleBinding;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final /* synthetic */ class TravelListFragment$binding$2 extends FunctionReferenceImpl implements Function1<View, FragmentTravelListBinding> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final TravelListFragment$binding$2 f56437b = new TravelListFragment$binding$2(1, FragmentTravelListBinding.class, "bind", "bind(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/FragmentTravelListBinding;", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        View view = (View) obj;
        view.getClass();
        int i2 = R.id.add_new_travel;
        Button button = (Button) ViewBindings.a(R.id.add_new_travel, view);
        if (button != null) {
            i2 = R.id.layout_toolbar;
            View viewA = ViewBindings.a(R.id.layout_toolbar, view);
            if (viewA != null) {
                ToolbarSimpleBinding toolbarSimpleBindingA = ToolbarSimpleBinding.a(viewA);
                i2 = R.id.progress;
                View viewA2 = ViewBindings.a(R.id.progress, view);
                if (viewA2 != null) {
                    ProgressOverlayBinding progressOverlayBinding = new ProgressOverlayBinding((FrameLayout) viewA2);
                    i2 = R.id.recycler_view;
                    RecyclerView recyclerView = (RecyclerView) ViewBindings.a(R.id.recycler_view, view);
                    if (recyclerView != null) {
                        i2 = R.id.travel_list_empty_state;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(R.id.travel_list_empty_state, view);
                        if (linearLayout != null) {
                            return new FragmentTravelListBinding(button, toolbarSimpleBindingA, progressOverlayBinding, recyclerView, linearLayout);
                        }
                    }
                }
            }
        }
        r81.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
