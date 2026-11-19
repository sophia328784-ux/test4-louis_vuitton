package com.vuitton.android.presentation.screen.connectivity.watch.tutorial.detail;

import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentConnectivityTutorialBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.lifecycleaware.BottomBarHandling;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import com.vuitton.android.presentation.screen.connectivity.views.divider.SimpleHorizontalDivider;
import com.vuitton.android.presentation.screen.connectivity.watch.tutorial.categories.WatchTutorialCategoryUi;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.c61;
import defpackage.hv0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialDetailsFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class WatchTutorialDetailsFragment extends Hilt_WatchTutorialDetailsFragment {
    public final FragmentViewBindingDelegate F;
    public final Lazy G;
    public static final /* synthetic */ KProperty[] I = {Reflection.f71922a.h(new PropertyReference1Impl(WatchTutorialDetailsFragment.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentConnectivityTutorialBinding;", 0))};
    public static final Companion H = new Companion(null);
    public static final String J = "WatchTutorialDetailsFragment";

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialDetailsFragment$Companion;", "", "", "KEY_CATEGORY", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public WatchTutorialDetailsFragment() {
        super(R.layout.fragment_connectivity_tutorial);
        this.F = FragmentExtKt.d(this, WatchTutorialDetailsFragment$binding$2.f56807b);
        this.G = LazyKt.b(new hv0(this, 28));
    }

    public static WatchTutorialCategoryUi O(WatchTutorialDetailsFragment watchTutorialDetailsFragment) {
        Parcelable parcelable;
        Bundle arguments = watchTutorialDetailsFragment.getArguments();
        if (arguments == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 33) {
            parcelable = (Parcelable) arguments.getParcelable("CATEGORY", WatchTutorialCategoryUi.class);
        } else {
            Parcelable parcelable2 = arguments.getParcelable("CATEGORY");
            parcelable = (WatchTutorialCategoryUi) (parcelable2 instanceof WatchTutorialCategoryUi ? parcelable2 : null);
        }
        return (WatchTutorialCategoryUi) parcelable;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.watch.tutorial.detail.Hilt_WatchTutorialDetailsFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        new SystemBarsHandling(this, new SystemBarsHandling.SystemBarsConfig(false, false, false, false, 15, null));
        BottomBarHandling.BottomBarConfig.f51577h.getClass();
        new BottomBarHandling(this, BottomBarHandling.BottomBarConfig.f51579j);
        KProperty[] kPropertyArr = I;
        KProperty kProperty = kPropertyArr[0];
        FragmentViewBindingDelegate fragmentViewBindingDelegate = this.F;
        FragmentConnectivityTutorialBinding fragmentConnectivityTutorialBinding = (FragmentConnectivityTutorialBinding) fragmentViewBindingDelegate.c(this, kProperty);
        FragmentExtKt.a(this, fragmentConnectivityTutorialBinding.f51235b.f51464c.f51465b, null, 6);
        AppCompatTextView appCompatTextView = fragmentConnectivityTutorialBinding.f51235b.f51464c.f51466c;
        Lazy lazy = this.G;
        WatchTutorialCategoryUi watchTutorialCategoryUi = (WatchTutorialCategoryUi) lazy.getF71699b();
        appCompatTextView.setText(watchTutorialCategoryUi != null ? watchTutorialCategoryUi.f56800b : null);
        appCompatTextView.setAccessibilityHeading(true);
        RecyclerView recyclerView = fragmentConnectivityTutorialBinding.f51236c;
        recyclerView.setAdapter(new WatchTutorialAdapter(new c61(this, recyclerView, 3)));
        recyclerView.addItemDecoration(new SimpleHorizontalDivider(ContextCompat.getColor(requireContext(), R.color.westargrey70)));
        WatchTutorialCategoryUi watchTutorialCategoryUi2 = (WatchTutorialCategoryUi) lazy.getF71699b();
        if (watchTutorialCategoryUi2 != null) {
            RecyclerView.Adapter adapter = ((FragmentConnectivityTutorialBinding) fragmentViewBindingDelegate.c(this, kPropertyArr[0])).f51236c.getAdapter();
            WatchTutorialAdapter watchTutorialAdapter = adapter instanceof WatchTutorialAdapter ? (WatchTutorialAdapter) adapter : null;
            if (watchTutorialAdapter != null) {
                List list = watchTutorialCategoryUi2.f56802e;
                list.getClass();
                ArrayList arrayList = watchTutorialAdapter.f56804c;
                arrayList.clear();
                arrayList.addAll(list);
                watchTutorialAdapter.notifyDataSetChanged();
            }
        }
    }
}
