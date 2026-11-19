package com.vuitton.android.presentation.screen.connectivity.lightup.common.scan;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.LinearInterpolator;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.lightup.sdk.device.devicemanagement.LightupDevice;
import com.lightup.sdk.device.enums.LightupDeviceType;
import com.lightup.sdk.device.helpers.LightupHelper;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.vuitton.android.R;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import com.vuitton.android.presentation.screen.connectivity.lightup.LightUpActivity;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.helper.LVLightUpHelper;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.helper.LVLightUpHelperInstance;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.interfaces.LightUpScanFragmentInterface;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.pairing.DeviceDetectedBottomSheet;
import com.vuitton.android.presentation.utils.PermissionUtils;
import com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.pc;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b'\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0011\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J!\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0011\u0010\u000f\u001a\u0004\u0018\u00010\bH\u0014¢\u0006\u0004\b\u000f\u0010\u0010J\u0011\u0010\u0011\u001a\u0004\u0018\u00010\bH\u0014¢\u0006\u0004\b\u0011\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\fH\u0014¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\fH&¢\u0006\u0004\b\u0014\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\fH&¢\u0006\u0004\b\u0015\u0010\u0013J\u000f\u0010\u0016\u001a\u00020\fH&¢\u0006\u0004\b\u0016\u0010\u0013J\u000f\u0010\u0017\u001a\u00020\fH&¢\u0006\u0004\b\u0017\u0010\u0013J\u000f\u0010\u0018\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0018\u0010\u0013J\u001f\u0010\u001d\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\fH\u0016¢\u0006\u0004\b\u001f\u0010\u0013J\u000f\u0010 \u001a\u00020\fH\u0016¢\u0006\u0004\b \u0010\u0013R\u0018\u0010#\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010%\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010\"R\u001a\u0010+\u001a\u00020&8\u0004X\u0084\u0004¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\u001b\u00101\u001a\u00020,8@X\u0080\u0084\u0002¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100¨\u00062"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;", "Landroidx/fragment/app/Fragment;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanView;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/interfaces/LightUpScanFragmentInterface;", "", "layoutId", "<init>", "(I)V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "S", "()Landroid/view/View;", "R", "O", "()V", "W", "U", "V", "P", "A", "Lcom/lightup/sdk/device/devicemanagement/LightupDevice;", "device", "Lcom/lightup/sdk/device/enums/LightupDeviceType;", "deviceType", NBSSpanMetricUnit.Hour, "(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;Lcom/lightup/sdk/device/enums/LightupDeviceType;)V", "onStop", "onDestroyView", "F", "Ljava/lang/Integer;", "initialCloseTopMargin", "G", "initialStartPairingBottomPadding", "Landroid/view/animation/AlphaAnimation;", "H", "Landroid/view/animation/AlphaAnimation;", "Q", "()Landroid/view/animation/AlphaAnimation;", "anim", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel;", "I", "Lkotlin/Lazy;", "T", "()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel;", "viewModel", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public abstract class BaseLightUpScanFragment extends Hilt_BaseLightUpScanFragment implements LightUpScanView, LightUpScanFragmentInterface {
    public static final int J = 8;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private Integer initialCloseTopMargin;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private Integer initialStartPairingBottomPadding;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final AlphaAnimation anim;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private final Lazy viewModel;

    public BaseLightUpScanFragment(int i2) {
        super(i2);
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.1f);
        alphaAnimation.setInterpolator(new LinearInterpolator());
        alphaAnimation.setRepeatCount(-1);
        alphaAnimation.setRepeatMode(2);
        alphaAnimation.setDuration(1000L);
        this.anim = alphaAnimation;
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.BaseLightUpScanFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this;
            }
        };
        final Lazy lazyA = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<ViewModelStoreOwner>() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.BaseLightUpScanFragment$special$$inlined$viewModels$default$2
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
        this.viewModel = new ViewModelLazy(Reflection.f71922a.b(LightUpScanViewModel.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.BaseLightUpScanFragment$special$$inlined$viewModels$default$3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return ((ViewModelStoreOwner) lazyA.getF71699b()).getF13587c();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.BaseLightUpScanFragment$special$$inlined$viewModels$default$5
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
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.BaseLightUpScanFragment$special$$inlined$viewModels$default$4
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

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.interfaces.LightUpScanFragmentInterface
    public void A() {
        FragmentManager supportFragmentManager;
        if (getContext() == null) {
            return;
        }
        U();
        P();
        GenericBottomSheet.Companion companion = GenericBottomSheet.R;
        String string = getString(R.string.light_up_pairing_long_message);
        string.getClass();
        String string2 = getString(R.string.light_up_detection_failed_negative_label);
        String string3 = getString(R.string.retrysynchro_btn_firstTime);
        String string4 = getString(R.string.light_up_detection_failed_title);
        companion.getClass();
        GenericBottomSheet genericBottomSheetA = GenericBottomSheet.Companion.a(string, string2, string3, string4);
        genericBottomSheetA.O = new GenericBottomSheet.OnPositiveClickListener() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.BaseLightUpScanFragment$showDetectionFailedBottomSheet$1
            @Override // com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet.OnPositiveClickListener
            public final void a() {
                FragmentActivity activity = this.f56189a.getActivity();
                LightUpActivity lightUpActivity = activity instanceof LightUpActivity ? (LightUpActivity) activity : null;
                if (lightUpActivity != null) {
                    lightUpActivity.H();
                }
            }
        };
        genericBottomSheetA.P = new GenericBottomSheet.OnNegativeClickListener() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.BaseLightUpScanFragment$showDetectionFailedBottomSheet$2
            @Override // com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet.OnNegativeClickListener
            public final void a() {
                BaseLightUpScanFragment baseLightUpScanFragment = this.f56190a;
                baseLightUpScanFragment.V();
                FragmentActivity activity = baseLightUpScanFragment.getActivity();
                if (activity != null) {
                    activity.finish();
                }
            }
        };
        FragmentActivity activity = getActivity();
        if (activity == null || (supportFragmentManager = activity.getSupportFragmentManager()) == null) {
            return;
        }
        genericBottomSheetA.show(supportFragmentManager, GenericBottomSheet.S);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x003f  */
    /* JADX WARN: Code duplicated, block: B:24:0x0043  */
    /* JADX WARN: Code duplicated, block: B:25:0x0048  */
    public void O() {
        Integer num;
        int iIntValue;
        int iIntValue2;
        ViewGroup.LayoutParams layoutParams;
        View viewS = S();
        View viewR = R();
        if (viewS == null && viewR == null) {
            return;
        }
        Integer numValueOf = null;
        if (viewS == null || (layoutParams = viewS.getLayoutParams()) == null) {
            num = this.initialCloseTopMargin;
            if (num != null) {
                iIntValue = num.intValue();
            } else {
                iIntValue = 0;
            }
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
            Integer numValueOf2 = marginLayoutParams != null ? Integer.valueOf(marginLayoutParams.topMargin) : null;
            if (numValueOf2 != null) {
                int iIntValue3 = numValueOf2.intValue();
                if (this.initialCloseTopMargin == null) {
                    this.initialCloseTopMargin = Integer.valueOf(iIntValue3);
                }
                iIntValue = numValueOf2.intValue();
            } else {
                num = this.initialCloseTopMargin;
                if (num != null) {
                    iIntValue = num.intValue();
                } else {
                    iIntValue = 0;
                }
            }
        }
        if (viewR != null) {
            ViewGroup.LayoutParams layoutParams2 = viewR.getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : null;
            Integer num2 = this.initialStartPairingBottomPadding;
            if (num2 != null) {
                iIntValue2 = num2.intValue();
            } else {
                iIntValue2 = marginLayoutParams2 != null ? marginLayoutParams2.bottomMargin : 0;
                this.initialStartPairingBottomPadding = Integer.valueOf(iIntValue2);
            }
            numValueOf = Integer.valueOf(iIntValue2);
        }
        View view = getView();
        if (view == null) {
            return;
        }
        ViewCompat.x(view, new pc(viewS, viewR, numValueOf, iIntValue));
        view.requestApplyInsets();
    }

    public abstract void P();

    /* JADX INFO: renamed from: Q, reason: from getter */
    public final AlphaAnimation getAnim() {
        return this.anim;
    }

    public View R() {
        return null;
    }

    public View S() {
        return null;
    }

    public final LightUpScanViewModel T() {
        return (LightUpScanViewModel) this.viewModel.getF71699b();
    }

    public abstract void U();

    public abstract void V();

    public abstract void W();

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.interfaces.LightUpScanFragmentInterface
    public void h(LightupDevice device, LightupDeviceType deviceType) {
        FragmentManager supportFragmentManager;
        device.getClass();
        deviceType.getClass();
        P();
        FragmentActivity activity = getActivity();
        if (activity == null || (supportFragmentManager = activity.getSupportFragmentManager()) == null) {
            return;
        }
        DeviceDetectedBottomSheet.Companion companion = DeviceDetectedBottomSheet.S;
        companion.getClass();
        deviceType.getClass();
        DeviceDetectedBottomSheet deviceDetectedBottomSheet = new DeviceDetectedBottomSheet();
        Bundle bundle = new Bundle();
        bundle.putSerializable("LIGHT_UP_DEVICE_TYPE", deviceType);
        deviceDetectedBottomSheet.setArguments(bundle);
        device.getClass();
        deviceDetectedBottomSheet.R = device;
        companion.getClass();
        deviceDetectedBottomSheet.show(supportFragmentManager, DeviceDetectedBottomSheet.V);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        LightUpScanViewModel lightUpScanViewModelT = T();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        viewLifecycleOwner.getClass();
        lightUpScanViewModelT.Ac(viewLifecycleOwner);
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            if (PermissionUtils.e(activity) && LVLightUpHelperInstance.f56155a != null) {
                LightupHelper lightupHelperA = LVLightUpHelperInstance.a();
                LightupDeviceType lightupDeviceType = LVLightUpHelper.f56151a;
                if (lightupDeviceType == null) {
                    Intrinsics.h("lightUpDeviceType");
                    throw null;
                }
                lightupHelperA.stopScan(lightupDeviceType);
            }
            P();
        }
        super.onStop();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.Hilt_BaseLightUpScanFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        new SystemBarsHandling(this, new SystemBarsHandling.SystemBarsConfig(false, false, false, false, 15, null));
        O();
        LightUpScanViewModel lightUpScanViewModelT = T();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        viewLifecycleOwner.getClass();
        lightUpScanViewModelT.yc(viewLifecycleOwner, this);
    }
}
