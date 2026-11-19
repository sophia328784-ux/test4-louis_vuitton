package com.vuitton.android.presentation.screen.connectivity.lightup.keepall;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.lightup.sdk.device.enums.LightupDeviceType;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentLightUpProductDetailBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.screen.connectivity.LVViewModel;
import com.vuitton.android.presentation.screen.connectivity.faq.FaqActivity;
import com.vuitton.android.presentation.screen.connectivity.faq.FaqItemUiModel;
import com.vuitton.android.presentation.screen.connectivity.lightup.LightUpActivity;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.PowerManagementBottomSheet;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.manager.KeepAllMonitoringManager;
import com.vuitton.android.presentation.screen.connectivity.lightup.models.LVLightUpTrackingUiModel;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqCategory;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqItem;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqType;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpDeviceType;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpPowerMode;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.l00;
import defpackage.w20;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllDetailFragment;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class KeepAllDetailFragment extends Hilt_KeepAllDetailFragment {
    public final FragmentViewBindingDelegate W = FragmentExtKt.d(this, KeepAllDetailFragment$binding$2.f56202b);
    public final ViewModelLazy X;
    public static final /* synthetic */ KProperty[] Z = {Reflection.f71922a.h(new PropertyReference1Impl(KeepAllDetailFragment.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;", 0))};
    public static final Companion Y = new Companion(null);
    public static final String h0 = "KeepAllDetailFragment";

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllDetailFragment$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public KeepAllDetailFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.keepall.KeepAllDetailFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this;
            }
        };
        final Lazy lazyA = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<ViewModelStoreOwner>() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.keepall.KeepAllDetailFragment$special$$inlined$viewModels$default$2
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
        this.X = new ViewModelLazy(Reflection.f71922a.b(KeepAllDetailViewModel.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.keepall.KeepAllDetailFragment$special$$inlined$viewModels$default$3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return ((ViewModelStoreOwner) lazyA.getF71699b()).getF13587c();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.keepall.KeepAllDetailFragment$special$$inlined$viewModels$default$5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                ViewModelProvider.Factory f13588e;
                ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) lazyA.getF71699b();
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner : null;
                return (hasDefaultViewModelProviderFactory == null || (f13588e = hasDefaultViewModelProviderFactory.getF13588e()) == null) ? this.getF13588e() : f13588e;
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.keepall.KeepAllDetailFragment$special$$inlined$viewModels$default$4
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
    }

    public static final void G0(KeepAllDetailFragment keepAllDetailFragment, FaqCategory faqCategory) {
        Context contextRequireContext = keepAllDetailFragment.requireContext();
        FaqActivity.Companion companion = FaqActivity.t;
        contextRequireContext.getClass();
        List<FaqItem> list = faqCategory.d;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (FaqItem faqItem : list) {
            faqItem.getClass();
            arrayList.add(new FaqItemUiModel(faqItem.f67311a, faqItem.f67312b));
        }
        String str = faqCategory.f67307a;
        FaqType faqType = FaqType.LIGHT_UP_KEEP_ALL;
        companion.getClass();
        contextRequireContext.startActivity(FaqActivity.Companion.b(contextRequireContext, arrayList, str, faqType));
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment
    public final void C0(String str) {
        str.getClass();
        j0().Cc(new LVLightUpTrackingUiModel.SetPresetEvent(str, LVLightUpDeviceType.KEEPALL));
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment
    public final void E0() {
        Boolean bool = Boolean.FALSE;
        KeepAllMonitoringManager.f56159e = bool;
        KeepAllMonitoringManager.d = bool;
    }

    public final void F0(String str, View.OnClickListener onClickListener) {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(requireContext());
        KProperty[] kPropertyArr = Z;
        KProperty kProperty = kPropertyArr[0];
        FragmentViewBindingDelegate fragmentViewBindingDelegate = this.W;
        View viewInflate = layoutInflaterFrom.inflate(R.layout.item_list_selectable_light_up, (ViewGroup) ((FragmentLightUpProductDetailBinding) fragmentViewBindingDelegate.c(this, kProperty)).f51276h, false);
        viewInflate.getClass();
        TextView textView = (TextView) viewInflate;
        textView.setText(str);
        textView.setOnClickListener(onClickListener);
        ((FragmentLightUpProductDetailBinding) fragmentViewBindingDelegate.c(this, kPropertyArr[0])).f51276h.addView(viewInflate);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment
    public final LightupDeviceType f0() {
        return LightupDeviceType.KEEPALL;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment
    public final String i0() {
        String string = getString(R.string.light_up_update_your_keepall);
        string.getClass();
        return string;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        j0().Cc(new LVLightUpTrackingUiModel.ProductPageScreen(LVLightUpDeviceType.KEEPALL));
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment, com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.Hilt_LightUpDetailFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) throws Exception {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        ViewModelLazy viewModelLazy = this.X;
        ((KeepAllDetailViewModel) viewModelLazy.getF71699b()).d.observe(getViewLifecycleOwner(), new KeepAllDetailFragment$sam$androidx_lifecycle_Observer$0(new l00(this, 10)));
        Z();
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        fragmentActivityRequireActivity.getClass();
        ((LightUpActivity) fragmentActivityRequireActivity).H();
        KeepAllDetailViewModel keepAllDetailViewModel = (KeepAllDetailViewModel) viewModelLazy.getF71699b();
        LVViewModel.Bc(keepAllDetailViewModel, null, new KeepAllDetailViewModel$getDocumentationDetails$1(keepAllDetailViewModel, null), 3);
        Boolean bool = KeepAllMonitoringManager.f56159e;
        Boolean bool2 = Boolean.TRUE;
        if (Intrinsics.c(bool, bool2)) {
            y0();
        } else if (Intrinsics.c(KeepAllMonitoringManager.d, bool2)) {
            String string = getString(R.string.light_up_new_presets_available);
            string.getClass();
            A0(string);
        }
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment
    public final void q0(LVLightUpPowerMode lVLightUpPowerMode) {
        lVLightUpPowerMode.getClass();
        FragmentManager supportFragmentManager = requireActivity().getSupportFragmentManager();
        ArrayList arrayListL = CollectionsKt.l(LVLightUpPowerMode.STANDARD, LVLightUpPowerMode.ECO, LVLightUpPowerMode.STANDBY, LVLightUpPowerMode.WALKING);
        PowerManagementBottomSheet.Companion companion = PowerManagementBottomSheet.S;
        w20 w20Var = new w20(this, 4);
        companion.getClass();
        PowerManagementBottomSheet.Companion.a(arrayListL, lVLightUpPowerMode, w20Var).show(supportFragmentManager, PowerManagementBottomSheet.V);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment
    public final void x0() {
        FragmentLightUpProductDetailBinding fragmentLightUpProductDetailBinding = (FragmentLightUpProductDetailBinding) this.W.c(this, Z[0]);
        fragmentLightUpProductDetailBinding.f51275f.f51464c.f51466c.setText(getString(R.string.light_up_keepall_name));
        fragmentLightUpProductDetailBinding.d.setImageResource(2131231396);
        fragmentLightUpProductDetailBinding.l.setText(getString(R.string.light_up_objects_keepall));
    }
}
