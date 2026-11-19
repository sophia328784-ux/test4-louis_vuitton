package com.vuitton.android.presentation.screen.connectivity.lightup.sneakers;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
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
import androidx.viewbinding.ViewBindings;
import com.lightup.sdk.device.enums.LightupDeviceType;
import com.lightup.sdk.device.enums.PairOrientation;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentLightUpProductDetailBinding;
import com.vuitton.android.presentation.databinding.ItemLightUpBatteryBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.screen.connectivity.LVViewModel;
import com.vuitton.android.presentation.screen.connectivity.lightup.LightUpActivity;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.PowerManagementBottomSheet;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.helper.LVLightUpHelper;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.manager.SneakerMonitoringManager;
import com.vuitton.android.presentation.screen.connectivity.lightup.models.LVLightUpTrackingUiModel;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpDeviceType;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpPowerMode;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.ll0;
import defpackage.r81;
import defpackage.v40;
import defpackage.xo0;
import java.util.ArrayList;
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
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerDetailFragment;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class SneakerDetailFragment extends Hilt_SneakerDetailFragment {
    public final FragmentViewBindingDelegate W = FragmentExtKt.d(this, SneakerDetailFragment$binding$2.f56241b);
    public ItemLightUpBatteryBinding X;
    public final ViewModelLazy Y;
    public static final /* synthetic */ KProperty[] h0 = {Reflection.f71922a.h(new PropertyReference1Impl(SneakerDetailFragment.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;", 0))};
    public static final Companion Z = new Companion(null);
    public static final String t0 = "SneakerDetailFragment";

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerDetailFragment$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f56240a;

        static {
            int[] iArr = new int[PairOrientation.values().length];
            try {
                iArr[PairOrientation.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PairOrientation.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PairOrientation.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f56240a = iArr;
        }
    }

    public SneakerDetailFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.sneakers.SneakerDetailFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this;
            }
        };
        final Lazy lazyA = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<ViewModelStoreOwner>() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.sneakers.SneakerDetailFragment$special$$inlined$viewModels$default$2
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
        this.Y = new ViewModelLazy(Reflection.f71922a.b(SneakerDetailViewModel.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.sneakers.SneakerDetailFragment$special$$inlined$viewModels$default$3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return ((ViewModelStoreOwner) lazyA.getF71699b()).getF13587c();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.sneakers.SneakerDetailFragment$special$$inlined$viewModels$default$5
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
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.sneakers.SneakerDetailFragment$special$$inlined$viewModels$default$4
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

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment
    public final void C0(String str) {
        str.getClass();
        j0().Cc(new LVLightUpTrackingUiModel.SetPresetEvent(str, LVLightUpDeviceType.X408PAIR));
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment
    public final void E0() {
        Boolean bool = Boolean.FALSE;
        SneakerMonitoringManager.f56166e = bool;
        SneakerMonitoringManager.d = bool;
    }

    public final void F0(String str, View.OnClickListener onClickListener) {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.item_list_selectable_light_up, (ViewGroup) G0().f51276h, false);
        viewInflate.getClass();
        TextView textView = (TextView) viewInflate;
        textView.setText(str);
        textView.setOnClickListener(onClickListener);
        G0().f51276h.addView(viewInflate);
    }

    public final FragmentLightUpProductDetailBinding G0() {
        return (FragmentLightUpProductDetailBinding) this.W.c(this, h0[0]);
    }

    public final void H0(PairOrientation pairOrientation) {
        pairOrientation.getClass();
        ItemLightUpBatteryBinding itemLightUpBatteryBinding = this.X;
        if (itemLightUpBatteryBinding == null) {
            Intrinsics.h("batteryLayoutBinding");
            throw null;
        }
        LinearLayout linearLayout = itemLightUpBatteryBinding.f51419b;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        int i2 = WhenMappings.f56240a[pairOrientation.ordinal()];
        int i3 = R.drawable.ic_battery_20_new;
        if (i2 == 1) {
            ImageView imageView = itemLightUpBatteryBinding.f51420c;
            int i4 = SneakerMonitoringManager.f56169i;
            if (i4 != 25) {
                if (i4 != 50) {
                    i3 = i4 != 75 ? R.drawable.ic_battery_100_new : R.drawable.ic_battery_70_new;
                } else {
                    i3 = R.drawable.ic_battery_50_new;
                }
            }
            imageView.setImageResource(i3);
            return;
        }
        if (i2 != 2) {
            if (i2 == 3) {
                return;
            }
            v40.g();
            return;
        }
        ImageView imageView2 = itemLightUpBatteryBinding.d;
        int i5 = SneakerMonitoringManager.f56170j;
        if (i5 != 25) {
            if (i5 != 50) {
                i3 = i5 != 75 ? R.drawable.ic_battery_100_new : R.drawable.ic_battery_70_new;
            } else {
                i3 = R.drawable.ic_battery_50_new;
            }
        }
        imageView2.setImageResource(i3);
    }

    public final void I0(boolean z) {
        if (z) {
            v0(null, getString(R.string.light_up_object_plugged_in_label));
            View powerManagementLayout = getPowerManagementLayout();
            if (powerManagementLayout != null) {
                powerManagementLayout.setEnabled(false);
            }
            View powerManagementLayout2 = getPowerManagementLayout();
            if (powerManagementLayout2 != null) {
                powerManagementLayout2.setClickable(false);
            }
            TextView textView = (TextView) getPowerManagementLayout();
            if (textView != null) {
                textView.setCompoundDrawablesRelativeWithIntrinsicBounds(0, 0, 0, 0);
            }
            r0();
            return;
        }
        if (LVLightUpHelper.c() && LVLightUpHelper.d()) {
            t0();
        }
        View powerManagementLayout3 = getPowerManagementLayout();
        if (powerManagementLayout3 != null) {
            powerManagementLayout3.setEnabled(true);
        }
        View powerManagementLayout4 = getPowerManagementLayout();
        if (powerManagementLayout4 != null) {
            powerManagementLayout4.setClickable(true);
        }
        TextView textView2 = (TextView) getPowerManagementLayout();
        if (textView2 != null) {
            textView2.setCompoundDrawablesRelativeWithIntrinsicBounds(0, 0, R.drawable.ic_arrow_right_12dp, 0);
        }
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment
    public final LightupDeviceType f0() {
        return LightupDeviceType.X408PAIR;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment
    public final String i0() {
        String string = getString(R.string.light_up_update_your_trainers);
        string.getClass();
        return string;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        j0().Cc(new LVLightUpTrackingUiModel.ProductPageScreen(LVLightUpDeviceType.X408PAIR));
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment, com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.Hilt_LightUpDetailFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) throws Exception {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        ViewModelLazy viewModelLazy = this.Y;
        ((SneakerDetailViewModel) viewModelLazy.getF71699b()).d.observe(getViewLifecycleOwner(), new SneakerDetailFragment$sam$androidx_lifecycle_Observer$0(new xo0(this, 27)));
        Z();
        View viewInflate = getLayoutInflater().inflate(R.layout.item_light_up_battery, (ViewGroup) null, false);
        int i2 = R.id.image_battery_level_left;
        ImageView imageView = (ImageView) ViewBindings.a(R.id.image_battery_level_left, viewInflate);
        if (imageView != null) {
            i2 = R.id.image_battery_level_right;
            ImageView imageView2 = (ImageView) ViewBindings.a(R.id.image_battery_level_right, viewInflate);
            if (imageView2 != null) {
                i2 = R.id.text_battery_left;
                if (((TextView) ViewBindings.a(R.id.text_battery_left, viewInflate)) != null) {
                    i2 = R.id.text_battery_right;
                    if (((TextView) ViewBindings.a(R.id.text_battery_right, viewInflate)) != null) {
                        i2 = R.id.text_item_title;
                        if (((TextView) ViewBindings.a(R.id.text_item_title, viewInflate)) != null) {
                            this.X = new ItemLightUpBatteryBinding((LinearLayout) viewInflate, imageView, imageView2);
                            LinearLayout linearLayout = G0().f51276h;
                            ItemLightUpBatteryBinding itemLightUpBatteryBinding = this.X;
                            if (itemLightUpBatteryBinding == null) {
                                Intrinsics.h("batteryLayoutBinding");
                                throw null;
                            }
                            linearLayout.addView(itemLightUpBatteryBinding.f51419b, 0);
                            FragmentActivity fragmentActivityRequireActivity = requireActivity();
                            fragmentActivityRequireActivity.getClass();
                            ((LightUpActivity) fragmentActivityRequireActivity).H();
                            SneakerDetailViewModel sneakerDetailViewModel = (SneakerDetailViewModel) viewModelLazy.getF71699b();
                            LVViewModel.Bc(sneakerDetailViewModel, null, new SneakerDetailViewModel$getDocumentationDetails$1(sneakerDetailViewModel, null), 3);
                            Boolean bool = SneakerMonitoringManager.f56166e;
                            Boolean bool2 = Boolean.TRUE;
                            if (Intrinsics.c(bool, bool2)) {
                                y0();
                            } else if (Intrinsics.c(SneakerMonitoringManager.d, bool2)) {
                                String string = getString(R.string.light_up_new_presets_available);
                                string.getClass();
                                A0(string);
                            }
                            H0(PairOrientation.LEFT);
                            H0(PairOrientation.RIGHT);
                            Boolean bool3 = SneakerMonitoringManager.f56168h;
                            if (bool3 != null) {
                                I0(bool3.booleanValue());
                                return;
                            }
                            return;
                        }
                    }
                }
            }
        }
        r81.d("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i2)));
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment
    public final void q0(LVLightUpPowerMode lVLightUpPowerMode) {
        lVLightUpPowerMode.getClass();
        FragmentManager supportFragmentManager = requireActivity().getSupportFragmentManager();
        ArrayList arrayListL = CollectionsKt.l(LVLightUpPowerMode.STANDARD, LVLightUpPowerMode.ALWAYS_ON, LVLightUpPowerMode.ECO, LVLightUpPowerMode.WALKING, LVLightUpPowerMode.DISCREET);
        PowerManagementBottomSheet.Companion companion = PowerManagementBottomSheet.S;
        ll0 ll0Var = new ll0(this, 18);
        companion.getClass();
        PowerManagementBottomSheet.Companion.a(arrayListL, lVLightUpPowerMode, ll0Var).show(supportFragmentManager, PowerManagementBottomSheet.V);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment
    public final void x0() {
        FragmentLightUpProductDetailBinding fragmentLightUpProductDetailBindingG0 = G0();
        fragmentLightUpProductDetailBindingG0.f51275f.f51464c.f51466c.setText(getString(R.string.light_up_trainers_name));
        fragmentLightUpProductDetailBindingG0.d.setImageResource(2131231610);
        fragmentLightUpProductDetailBindingG0.l.setText(getString(R.string.light_up_objects_trainers));
    }
}
