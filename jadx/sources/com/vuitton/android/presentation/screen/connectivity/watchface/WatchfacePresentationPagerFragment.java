package com.vuitton.android.presentation.screen.connectivity.watchface;

import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
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
import com.vuitton.android.presentation.databinding.FragmentWatchfacePresentationPagerBinding;
import com.vuitton.android.presentation.databinding.ToolbarTitleBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.lifecycleaware.BottomBarHandling;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import com.vuitton.android.presentation.screen.connectivity.views.divider.SimpleVerticalDivider;
import com.vuitton.android.presentation.screen.connectivity.watch.models.WatchTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.watchface.WatchfacePresentationFragment;
import com.vuitton.android.presentation.screen.connectivity.watchface.WatchfacePresentationPagerFragment;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.f31;
import defpackage.p11;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Result;
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
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class WatchfacePresentationPagerFragment extends Hilt_WatchfacePresentationPagerFragment {
    public final FragmentViewBindingDelegate F;
    public WatchfacePresentationAdapter G;
    public final Lazy H;
    public final ViewModelLazy I;
    public final Lazy J;
    public static final /* synthetic */ KProperty[] L = {Reflection.f71922a.h(new PropertyReference1Impl(WatchfacePresentationPagerFragment.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationPagerBinding;", 0))};
    public static final Companion K = new Companion(null);
    public static final String M = "WatchfacePresentationPagerFragment";

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment$Companion;", "", "", "EXTRA_WATCHFACE_ID", "Ljava/lang/String;", "KEY_CURRENT_WATCH_VERSION", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.connectivity.watchface.WatchfacePresentationPagerFragment$onViewCreated$2, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class AnonymousClass2 extends FunctionReferenceImpl implements Function1<Result<? extends List<? extends WatchFacePresentationUiModel>>, Unit> {
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            Object obj2 = ((Result) obj).f71708b;
            WatchfacePresentationPagerFragment watchfacePresentationPagerFragment = (WatchfacePresentationPagerFragment) this.receiver;
            Companion companion = WatchfacePresentationPagerFragment.K;
            watchfacePresentationPagerFragment.getClass();
            Result.Companion companion2 = Result.INSTANCE;
            boolean z = obj2 instanceof Result.Failure;
            if (z) {
                FragmentActivity activity = watchfacePresentationPagerFragment.getActivity();
                if (activity != null) {
                    activity.runOnUiThread(new f31(watchfacePresentationPagerFragment, 8));
                }
            } else {
                if (z) {
                    obj2 = null;
                }
                List list = (List) obj2;
                if (list != null) {
                    WatchfacePresentationAdapter watchfacePresentationAdapter = watchfacePresentationPagerFragment.G;
                    if (watchfacePresentationAdapter == null) {
                        Intrinsics.h("watchfaceAdapter");
                        throw null;
                    }
                    ArrayList arrayList = watchfacePresentationAdapter.f56825c;
                    arrayList.clear();
                    arrayList.addAll(list);
                    watchfacePresentationAdapter.d = 0;
                    watchfacePresentationAdapter.notifyDataSetChanged();
                    watchfacePresentationPagerFragment.P((WatchFacePresentationUiModel) list.get(0));
                }
            }
            return Unit.f71739a;
        }
    }

    public WatchfacePresentationPagerFragment() {
        super(R.layout.fragment_watchface_presentation_pager);
        this.F = FragmentExtKt.d(this, WatchfacePresentationPagerFragment$binding$2.f56829b);
        final int i2 = 0;
        this.H = LazyKt.b(new Function0(this) { // from class: h61

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ WatchfacePresentationPagerFragment f69625c;

            {
                this.f69625c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i3 = i2;
                WatchfacePresentationPagerFragment watchfacePresentationPagerFragment = this.f69625c;
                switch (i3) {
                    case 0:
                        WatchfacePresentationPagerFragment.Companion companion = WatchfacePresentationPagerFragment.K;
                        Fragment fragmentF = watchfacePresentationPagerFragment.getChildFragmentManager().F(R.id.watchface_presentation_fragment);
                        fragmentF.getClass();
                        return (WatchfacePresentationFragment) fragmentF;
                    default:
                        WatchfacePresentationPagerFragment.Companion companion2 = WatchfacePresentationPagerFragment.K;
                        Bundle arguments = watchfacePresentationPagerFragment.getArguments();
                        if (arguments != null) {
                            return Integer.valueOf(arguments.getInt("CURRENT_WATCH_VERSION"));
                        }
                        return null;
                }
            }
        });
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.vuitton.android.presentation.screen.connectivity.watchface.WatchfacePresentationPagerFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this;
            }
        };
        final Lazy lazyA = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<ViewModelStoreOwner>() { // from class: com.vuitton.android.presentation.screen.connectivity.watchface.WatchfacePresentationPagerFragment$special$$inlined$viewModels$default$2
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
        this.I = new ViewModelLazy(Reflection.f71922a.b(WatchfacePresentationViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.connectivity.watchface.WatchfacePresentationPagerFragment$special$$inlined$viewModels$default$3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return ((ViewModelStoreOwner) lazyA.getF71699b()).getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.connectivity.watchface.WatchfacePresentationPagerFragment$special$$inlined$viewModels$default$5
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
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.connectivity.watchface.WatchfacePresentationPagerFragment$special$$inlined$viewModels$default$4
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
        final int i3 = 1;
        this.J = LazyKt.b(new Function0(this) { // from class: h61

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ WatchfacePresentationPagerFragment f69625c;

            {
                this.f69625c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i4 = i3;
                WatchfacePresentationPagerFragment watchfacePresentationPagerFragment = this.f69625c;
                switch (i4) {
                    case 0:
                        WatchfacePresentationPagerFragment.Companion companion = WatchfacePresentationPagerFragment.K;
                        Fragment fragmentF = watchfacePresentationPagerFragment.getChildFragmentManager().F(R.id.watchface_presentation_fragment);
                        fragmentF.getClass();
                        return (WatchfacePresentationFragment) fragmentF;
                    default:
                        WatchfacePresentationPagerFragment.Companion companion2 = WatchfacePresentationPagerFragment.K;
                        Bundle arguments = watchfacePresentationPagerFragment.getArguments();
                        if (arguments != null) {
                            return Integer.valueOf(arguments.getInt("CURRENT_WATCH_VERSION"));
                        }
                        return null;
                }
            }
        });
    }

    public final FragmentWatchfacePresentationPagerBinding O() {
        return (FragmentWatchfacePresentationPagerBinding) this.F.c(this, L[0]);
    }

    public final void P(WatchFacePresentationUiModel watchFacePresentationUiModel) {
        Integer num;
        ((WatchfacePresentationViewModel) this.I.getF71699b()).D(new WatchTrackingUiModel.WatchfaceSelectedEvent(watchFacePresentationUiModel.f56811c));
        WatchfacePresentationFragment watchfacePresentationFragment = (WatchfacePresentationFragment) this.H.getF71699b();
        Lazy lazy = this.J;
        watchfacePresentationFragment.R(watchFacePresentationUiModel, ((Integer) lazy.getF71699b()) == null || ((num = (Integer) lazy.getF71699b()) != null && num.intValue() == 2));
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ((WatchfacePresentationViewModel) this.I.getF71699b()).D(WatchTrackingUiModel.WatchfacePagerPageScreen.f56753a);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        O().d.setAdapter(null);
        super.onDestroyView();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.watchface.Hilt_WatchfacePresentationPagerFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        new SystemBarsHandling(this, new SystemBarsHandling.SystemBarsConfig(false, false, false, false, 15, null));
        BottomBarHandling.BottomBarConfig.f51577h.getClass();
        new BottomBarHandling(this, BottomBarHandling.BottomBarConfig.f51579j);
        LinearLayout linearLayout = O().f51389b;
        linearLayout.getClass();
        ViewExtKt.b(2, linearLayout);
        ViewExtKt.b(1, O().f51390c.f51463b);
        FragmentWatchfacePresentationPagerBinding fragmentWatchfacePresentationPagerBindingO = O();
        ToolbarTitleBinding toolbarTitleBinding = fragmentWatchfacePresentationPagerBindingO.f51390c.f51464c;
        FragmentExtKt.a(this, toolbarTitleBinding.f51465b, null, 6);
        AppCompatTextView appCompatTextView = toolbarTitleBinding.f51466c;
        appCompatTextView.setText(R.string.p12_watchfacepresentation_title);
        appCompatTextView.setAccessibilityHeading(true);
        WatchfacePresentationAdapter watchfacePresentationAdapter = new WatchfacePresentationAdapter(new p11(this, 18));
        this.G = watchfacePresentationAdapter;
        RecyclerView recyclerView = fragmentWatchfacePresentationPagerBindingO.d;
        recyclerView.setAdapter(watchfacePresentationAdapter);
        recyclerView.addItemDecoration(new SimpleVerticalDivider(ContextCompat.getColor(requireContext(), R.color.westargrey70)));
        ViewModelLazy viewModelLazy = this.I;
        ((WatchfacePresentationViewModel) viewModelLazy.getF71699b()).getF56839e().observe(getViewLifecycleOwner(), new WatchfacePresentationPagerFragment$sam$androidx_lifecycle_Observer$0(new AnonymousClass2(1, this, WatchfacePresentationPagerFragment.class, "handleWatchfacePresentationResult", "handleWatchfacePresentationResult(Ljava/lang/Object;)V", 0)));
        Integer num = (Integer) this.J.getF71699b();
        if (num == null) {
            ((WatchfacePresentationViewModel) viewModelLazy.getF71699b()).Qb();
        } else {
            ((WatchfacePresentationViewModel) viewModelLazy.getF71699b()).t2(num.intValue());
        }
    }
}
