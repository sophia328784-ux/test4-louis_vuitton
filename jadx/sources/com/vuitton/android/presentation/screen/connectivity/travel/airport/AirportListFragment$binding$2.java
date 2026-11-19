package com.vuitton.android.presentation.screen.connectivity.travel.airport;

import android.view.View;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentHotspotListBinding;
import com.vuitton.android.presentation.databinding.ProgressOverlayBinding;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final /* synthetic */ class AirportListFragment$binding$2 extends FunctionReferenceImpl implements Function1<View, FragmentHotspotListBinding> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final AirportListFragment$binding$2 f56365b = new AirportListFragment$binding$2(1, FragmentHotspotListBinding.class, "bind", "bind(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/FragmentHotspotListBinding;", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        View view = (View) obj;
        view.getClass();
        int i2 = R.id.hotspot_recycler_view;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.a(R.id.hotspot_recycler_view, view);
        if (recyclerView != null) {
            i2 = R.id.letter_recycler_view;
            RecyclerView recyclerView2 = (RecyclerView) ViewBindings.a(R.id.letter_recycler_view, view);
            if (recyclerView2 != null) {
                i2 = R.id.progress;
                View viewA = ViewBindings.a(R.id.progress, view);
                if (viewA != null) {
                    return new FragmentHotspotListBinding(recyclerView, recyclerView2, new ProgressOverlayBinding((FrameLayout) viewA));
                }
            }
        }
        r81.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
