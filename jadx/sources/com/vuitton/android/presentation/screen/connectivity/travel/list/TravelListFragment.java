package com.vuitton.android.presentation.screen.connectivity.travel.list;

import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.recyclerview.widget.RecyclerView;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentTravelListBinding;
import com.vuitton.android.presentation.databinding.ToolbarTitleBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.lifecycleaware.BottomBarHandling;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import com.vuitton.android.presentation.screen.connectivity.watch.WatchActivityRouter;
import com.vuitton.foundation.model.domain.model.connectivity.travel.Travel;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.hi;
import defpackage.hv0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class TravelListFragment extends Hilt_TravelListFragment {
    public boolean F;
    public final FragmentViewBindingDelegate G;
    public final ViewModelLazy H;
    public WatchActivityRouter I;
    public final Lazy J;
    public boolean K;
    public static final /* synthetic */ KProperty[] M = {Reflection.f71922a.h(new PropertyReference1Impl(TravelListFragment.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentTravelListBinding;", 0))};
    public static final Companion L = new Companion(null);
    public static final String N = "TravelListFragment";

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListFragment$Companion;", "", "", "KEY_FROM_DEEPLINK", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.connectivity.travel.list.TravelListFragment$onViewCreated$3, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class AnonymousClass3 extends FunctionReferenceImpl implements Function1<List<? extends Travel>, Unit> {
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            List list = (List) obj;
            TravelListFragment travelListFragment = (TravelListFragment) this.receiver;
            if (!travelListFragment.K) {
                travelListFragment.K = true;
            }
            int i2 = 8;
            travelListFragment.O().d.f51459b.setVisibility(8);
            TravelListAdapter travelListAdapter = (TravelListAdapter) travelListFragment.J.getF71699b();
            ArrayList arrayList = travelListAdapter.d;
            arrayList.clear();
            if (list != null) {
                arrayList.addAll(list);
            }
            travelListAdapter.notifyDataSetChanged();
            travelListFragment.O().f51317f.setVisibility((list == null || list.isEmpty()) ? 0 : 8);
            RecyclerView recyclerView = travelListFragment.O().f51316e;
            if (list != null && !list.isEmpty()) {
                i2 = 0;
            }
            recyclerView.setVisibility(i2);
            if ((list == null || list.isEmpty()) && travelListFragment.F) {
                travelListFragment.F = false;
                FragmentActivity activity = travelListFragment.getActivity();
                AppCompatActivity appCompatActivity = activity instanceof AppCompatActivity ? (AppCompatActivity) activity : null;
                if (appCompatActivity != null) {
                    if (travelListFragment.I == null) {
                        Intrinsics.h("watchActivityRouter");
                        throw null;
                    }
                    WatchActivityRouter.a(appCompatActivity);
                }
            }
            return Unit.f71739a;
        }
    }

    public TravelListFragment() {
        super(R.layout.fragment_travel_list);
        this.G = FragmentExtKt.d(this, TravelListFragment$binding$2.f56437b);
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.vuitton.android.presentation.screen.connectivity.travel.list.TravelListFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this;
            }
        };
        final Lazy lazyA = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<ViewModelStoreOwner>() { // from class: com.vuitton.android.presentation.screen.connectivity.travel.list.TravelListFragment$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return (ViewModelStoreOwner) function0.mo47invoke();
            }
        });
        final Function0 function1 = null;
        this.H = new ViewModelLazy(Reflection.f71922a.b(TravelListViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.connectivity.travel.list.TravelListFragment$special$$inlined$viewModels$default$3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return ((ViewModelStoreOwner) lazyA.getF71699b()).getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.connectivity.travel.list.TravelListFragment$special$$inlined$viewModels$default$5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                ViewModelProvider.Factory defaultViewModelProviderFactory;
                ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) lazyA.getF71699b();
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner : null;
                return (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) ? this.getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory;
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.connectivity.travel.list.TravelListFragment$special$$inlined$viewModels$default$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function2 = function1;
                if (function2 != null && (creationExtras = (CreationExtras) function2.mo47invoke()) != null) {
                    return creationExtras;
                }
                ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) lazyA.getF71699b();
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c;
            }
        });
        this.J = LazyKt.b(new hv0(this, 20));
    }

    public final FragmentTravelListBinding O() {
        return (FragmentTravelListBinding) this.G.c(this, M[0]);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        O().f51316e.setAdapter(null);
        super.onDestroyView();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.travel.list.Hilt_TravelListFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        new SystemBarsHandling(this, new SystemBarsHandling.SystemBarsConfig(false, false, false, false, 15, null));
        BottomBarHandling.BottomBarConfig.f51577h.getClass();
        new BottomBarHandling(this, BottomBarHandling.BottomBarConfig.f51579j);
        ToolbarTitleBinding toolbarTitleBinding = O().f51315c.f51464c;
        FragmentExtKt.a(this, toolbarTitleBinding.f51465b, null, 6);
        AppCompatTextView appCompatTextView = toolbarTitleBinding.f51466c;
        appCompatTextView.setText(getString(R.string.my_travel));
        appCompatTextView.setAccessibilityHeading(true);
        O().f51314b.setOnClickListener(new hi(this, 6));
        O().f51316e.setAdapter((TravelListAdapter) this.J.getF71699b());
        Bundle arguments = getArguments();
        this.F = arguments != null && arguments.getBoolean("FROM_DEEPLINK");
        O().d.f51459b.setVisibility(0);
        ViewModelLazy viewModelLazy = this.H;
        ((TravelListViewModel) viewModelLazy.getF71699b()).p0();
        ((TravelListViewModel) viewModelLazy.getF71699b()).getF56446c().observe(getViewLifecycleOwner(), new TravelListFragment$sam$androidx_lifecycle_Observer$0(new AnonymousClass3(1, this, TravelListFragment.class, "handleTravelsResult", "handleTravelsResult(Ljava/util/List;)V", 0)));
    }
}
