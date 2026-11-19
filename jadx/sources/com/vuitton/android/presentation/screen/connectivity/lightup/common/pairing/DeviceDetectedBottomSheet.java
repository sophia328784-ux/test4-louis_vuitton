package com.vuitton.android.presentation.screen.connectivity.lightup.common.pairing;

import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.lightup.sdk.animation.CreatorProject;
import com.lightup.sdk.device.devicemanagement.LightupDevice;
import com.lightup.sdk.device.enums.DeviceMode;
import com.lightup.sdk.device.enums.LightupDeviceType;
import com.lightup.sdk.device.helpers.LightupHelper;
import com.lightup.sdk.device.helpers.LightupHelperInterface;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentLightUpScanBottomSheetBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.screen.connectivity.LVViewModel;
import com.vuitton.android.presentation.screen.connectivity.LightUpProductUiModel;
import com.vuitton.android.presentation.screen.connectivity.lightup.LightUpActivity;
import com.vuitton.android.presentation.screen.connectivity.lightup.LightUpRouter;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragmentKt;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.helper.LVLightUpHelper;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.helper.LVLightUpHelperInstance;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.manager.KeepAllMonitoringManager;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.manager.LVLightUpMonitoringManager$WhenMappings;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.manager.LVLightUpMonitoringManagerKt;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.manager.SneakerMonitoringManager;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.pairing.DeviceDetectedBottomSheet;
import com.vuitton.android.presentation.screen.connectivity.lightup.models.LVLightUpTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.lightup.models.LVLightUpTrackingUiModelKt;
import com.vuitton.foundation.model.domain.model.connectivity.LightUpProduct;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpDeviceType;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpPowerMode;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.ss;
import defpackage.v40;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;", "Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseBottomSheet;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class DeviceDetectedBottomSheet extends Hilt_DeviceDetectedBottomSheet {
    public final FragmentViewBindingDelegate O;
    public final Lazy P;
    public final ViewModelLazy Q;
    public LightupDevice R;
    public static final /* synthetic */ KProperty[] T = {Reflection.f71922a.h(new PropertyReference1Impl(DeviceDetectedBottomSheet.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentLightUpScanBottomSheetBinding;", 0))};
    public static final Companion S = new Companion(null);
    public static final String V = "DeviceDetectedBottomSheet";

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet$Companion;", "", "", "KEY_LIGHT_UP_DEVICE_TYPE", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f56172a;

        static {
            int[] iArr = new int[LightupDeviceType.values().length];
            try {
                iArr[LightupDeviceType.KEEPALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LightupDeviceType.X408PAIR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f56172a = iArr;
        }
    }

    public DeviceDetectedBottomSheet() {
        super(R.layout.fragment_light_up_scan_bottom_sheet);
        this.O = FragmentExtKt.d(this, DeviceDetectedBottomSheet$binding$2.f56173b);
        this.P = LazyKt.b(new ss(this, 2));
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.common.pairing.DeviceDetectedBottomSheet$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this;
            }
        };
        final Lazy lazyA = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<ViewModelStoreOwner>() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.common.pairing.DeviceDetectedBottomSheet$special$$inlined$viewModels$default$2
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
        this.Q = new ViewModelLazy(Reflection.f71922a.b(DeviceDetectedViewModel.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.common.pairing.DeviceDetectedBottomSheet$special$$inlined$viewModels$default$3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return ((ViewModelStoreOwner) lazyA.getF71699b()).getF13587c();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.common.pairing.DeviceDetectedBottomSheet$special$$inlined$viewModels$default$5
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
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.common.pairing.DeviceDetectedBottomSheet$special$$inlined$viewModels$default$4
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

    public static LightupDeviceType V(DeviceDetectedBottomSheet deviceDetectedBottomSheet) {
        Object serializable;
        Bundle arguments = deviceDetectedBottomSheet.getArguments();
        if (arguments == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 33) {
            serializable = arguments.getSerializable("LIGHT_UP_DEVICE_TYPE", LightupDeviceType.class);
        } else {
            Object serializable2 = arguments.getSerializable("LIGHT_UP_DEVICE_TYPE");
            serializable = (LightupDeviceType) (serializable2 instanceof LightupDeviceType ? serializable2 : null);
        }
        return (LightupDeviceType) serializable;
    }

    public final DeviceDetectedViewModel W() {
        return (DeviceDetectedViewModel) this.Q.getF71699b();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        LVLightUpDeviceType lVLightUpDeviceTypeA;
        super.onCreate(bundle);
        LightupDeviceType lightupDeviceType = (LightupDeviceType) this.P.getF71699b();
        if (lightupDeviceType == null || (lVLightUpDeviceTypeA = LVLightUpMonitoringManagerKt.a(lightupDeviceType)) == null) {
            return;
        }
        W().d.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.ResultScreen(lVLightUpDeviceTypeA)));
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.views.bottomsheets.Hilt_BaseBottomSheet, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        String string;
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        final int i2 = 1;
        W().f56181e.observe(getViewLifecycleOwner(), new DeviceDetectedBottomSheet$sam$androidx_lifecycle_Observer$0(new Function1(this) { // from class: nt

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ DeviceDetectedBottomSheet f76611c;

            {
                this.f76611c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LightupDeviceType type;
                LVLightUpDeviceType lVLightUpDeviceTypeA;
                int i3 = i2;
                DeviceDetectedBottomSheet deviceDetectedBottomSheet = this.f76611c;
                switch (i3) {
                    case 0:
                        DeviceDetectedBottomSheet.Companion companion = DeviceDetectedBottomSheet.S;
                        ((View) obj).getClass();
                        LightupDevice lightupDevice = deviceDetectedBottomSheet.R;
                        if (lightupDevice != null && (type = lightupDevice.getType()) != null && (lVLightUpDeviceTypeA = LVLightUpMonitoringManagerKt.a(type)) != null) {
                            deviceDetectedBottomSheet.W().d.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.CancelPairingWhenDeviceFoundButtonClickEvent(lVLightUpDeviceTypeA)));
                        }
                        deviceDetectedBottomSheet.dismiss();
                        return Unit.f71739a;
                    case 1:
                        LightUpProduct lightUpProduct = (LightUpProduct) obj;
                        DeviceDetectedBottomSheet.Companion companion2 = DeviceDetectedBottomSheet.S;
                        LightupDevice lightupDevice2 = new LightupDevice(lightUpProduct.f67297e);
                        LVLightUpDeviceType lVLightUpDeviceType = lightUpProduct.f67295b;
                        lVLightUpDeviceType.getClass();
                        int i4 = LVLightUpMonitoringManager$WhenMappings.f56161b[lVLightUpDeviceType.ordinal()];
                        if (i4 == 1) {
                            if (LVLightUpHelper.c()) {
                                LVLightUpHelper.a();
                            }
                            KeepAllMonitoringManager.f56157b = null;
                            KeepAllMonitoringManager.d = null;
                            KeepAllMonitoringManager.f56159e = null;
                            KeepAllMonitoringManager.f56158c = lightupDevice2;
                        } else {
                            if (i4 != 2) {
                                v40.g();
                                return null;
                            }
                            if (LVLightUpHelper.c()) {
                                LVLightUpHelper.a();
                            }
                            SneakerMonitoringManager.f56164b = null;
                            SneakerMonitoringManager.d = null;
                            SneakerMonitoringManager.f56166e = null;
                            SneakerMonitoringManager.f56167f = null;
                            SneakerMonitoringManager.g = null;
                            SneakerMonitoringManager.f56168h = null;
                            SneakerMonitoringManager.f56165c = lightupDevice2;
                        }
                        deviceDetectedBottomSheet.dismissAllowingStateLoss();
                        FragmentActivity fragmentActivityRequireActivity = deviceDetectedBottomSheet.requireActivity();
                        LightUpActivity lightUpActivity = fragmentActivityRequireActivity instanceof LightUpActivity ? (LightUpActivity) fragmentActivityRequireActivity : null;
                        if (lightUpActivity != null) {
                            lightUpActivity.setResult(-1);
                            int iJ = lightUpActivity.getSupportFragmentManager().J() + 1;
                            for (int i5 = 0; i5 < iJ; i5++) {
                                lightUpActivity.getSupportFragmentManager().V();
                            }
                            if (lightUpActivity.q == null) {
                                Intrinsics.h("lightUpRouter");
                                throw null;
                            }
                            LightUpRouter.a(lightUpActivity, new LightUpProductUiModel(lightUpProduct.f67294a, lightUpProduct.f67295b, lightUpProduct.f67296c, lightUpProduct.d, lightUpProduct.f67297e, lightUpProduct.f67298f, lightUpProduct.g, lightUpProduct.f67299h));
                        }
                        return Unit.f71739a;
                    default:
                        DeviceDetectedBottomSheet.Companion companion3 = DeviceDetectedBottomSheet.S;
                        deviceDetectedBottomSheet.requireActivity().runOnUiThread(new et(deviceDetectedBottomSheet, 4));
                        return Unit.f71739a;
                }
            }
        }));
        final int i3 = 2;
        W().f56182f.observe(getViewLifecycleOwner(), new DeviceDetectedBottomSheet$sam$androidx_lifecycle_Observer$0(new Function1(this) { // from class: nt

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ DeviceDetectedBottomSheet f76611c;

            {
                this.f76611c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LightupDeviceType type;
                LVLightUpDeviceType lVLightUpDeviceTypeA;
                int i4 = i3;
                DeviceDetectedBottomSheet deviceDetectedBottomSheet = this.f76611c;
                switch (i4) {
                    case 0:
                        DeviceDetectedBottomSheet.Companion companion = DeviceDetectedBottomSheet.S;
                        ((View) obj).getClass();
                        LightupDevice lightupDevice = deviceDetectedBottomSheet.R;
                        if (lightupDevice != null && (type = lightupDevice.getType()) != null && (lVLightUpDeviceTypeA = LVLightUpMonitoringManagerKt.a(type)) != null) {
                            deviceDetectedBottomSheet.W().d.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.CancelPairingWhenDeviceFoundButtonClickEvent(lVLightUpDeviceTypeA)));
                        }
                        deviceDetectedBottomSheet.dismiss();
                        return Unit.f71739a;
                    case 1:
                        LightUpProduct lightUpProduct = (LightUpProduct) obj;
                        DeviceDetectedBottomSheet.Companion companion2 = DeviceDetectedBottomSheet.S;
                        LightupDevice lightupDevice2 = new LightupDevice(lightUpProduct.f67297e);
                        LVLightUpDeviceType lVLightUpDeviceType = lightUpProduct.f67295b;
                        lVLightUpDeviceType.getClass();
                        int i5 = LVLightUpMonitoringManager$WhenMappings.f56161b[lVLightUpDeviceType.ordinal()];
                        if (i5 == 1) {
                            if (LVLightUpHelper.c()) {
                                LVLightUpHelper.a();
                            }
                            KeepAllMonitoringManager.f56157b = null;
                            KeepAllMonitoringManager.d = null;
                            KeepAllMonitoringManager.f56159e = null;
                            KeepAllMonitoringManager.f56158c = lightupDevice2;
                        } else {
                            if (i5 != 2) {
                                v40.g();
                                return null;
                            }
                            if (LVLightUpHelper.c()) {
                                LVLightUpHelper.a();
                            }
                            SneakerMonitoringManager.f56164b = null;
                            SneakerMonitoringManager.d = null;
                            SneakerMonitoringManager.f56166e = null;
                            SneakerMonitoringManager.f56167f = null;
                            SneakerMonitoringManager.g = null;
                            SneakerMonitoringManager.f56168h = null;
                            SneakerMonitoringManager.f56165c = lightupDevice2;
                        }
                        deviceDetectedBottomSheet.dismissAllowingStateLoss();
                        FragmentActivity fragmentActivityRequireActivity = deviceDetectedBottomSheet.requireActivity();
                        LightUpActivity lightUpActivity = fragmentActivityRequireActivity instanceof LightUpActivity ? (LightUpActivity) fragmentActivityRequireActivity : null;
                        if (lightUpActivity != null) {
                            lightUpActivity.setResult(-1);
                            int iJ = lightUpActivity.getSupportFragmentManager().J() + 1;
                            for (int i6 = 0; i6 < iJ; i6++) {
                                lightUpActivity.getSupportFragmentManager().V();
                            }
                            if (lightUpActivity.q == null) {
                                Intrinsics.h("lightUpRouter");
                                throw null;
                            }
                            LightUpRouter.a(lightUpActivity, new LightUpProductUiModel(lightUpProduct.f67294a, lightUpProduct.f67295b, lightUpProduct.f67296c, lightUpProduct.d, lightUpProduct.f67297e, lightUpProduct.f67298f, lightUpProduct.g, lightUpProduct.f67299h));
                        }
                        return Unit.f71739a;
                    default:
                        DeviceDetectedBottomSheet.Companion companion3 = DeviceDetectedBottomSheet.S;
                        deviceDetectedBottomSheet.requireActivity().runOnUiThread(new et(deviceDetectedBottomSheet, 4));
                        return Unit.f71739a;
                }
            }
        }));
        final int i4 = 0;
        FragmentLightUpScanBottomSheetBinding fragmentLightUpScanBottomSheetBinding = (FragmentLightUpScanBottomSheetBinding) this.O.c(this, T[0]);
        TextView textView = fragmentLightUpScanBottomSheetBinding.f51283f;
        TextView textView2 = fragmentLightUpScanBottomSheetBinding.f51282e;
        textView.setText(getString(R.string.aura_scan_result_ask_confirm));
        LightupDeviceType lightupDeviceType = (LightupDeviceType) this.P.getF71699b();
        if (lightupDeviceType != null) {
            ImageView imageView = fragmentLightUpScanBottomSheetBinding.d;
            int[] iArr = WhenMappings.f56172a;
            int i5 = iArr[lightupDeviceType.ordinal()];
            int i6 = R.drawable.image_light_up_keep_all_detected;
            if (i5 != 1 && i5 == 2) {
                i6 = 2131231389;
            }
            imageView.setImageResource(i6);
            int i7 = iArr[lightupDeviceType.ordinal()];
            if (i7 != 1) {
                string = i7 != 2 ? null : getString(R.string.light_up_new_trainers_detected);
            } else {
                string = getString(R.string.light_up_new_keepall_detected);
            }
            textView2.setText(string);
            textView2.setContentDescription(string);
        }
        ViewExtKt.d(fragmentLightUpScanBottomSheetBinding.f51281c, new Function1() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.common.pairing.a
            /* JADX WARN: Code duplicated, block: B:29:0x006e  */
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LVLightUpDeviceType lVLightUpDeviceTypeA;
                LVLightUpPowerMode lVLightUpPowerMode;
                DeviceDetectedBottomSheet.Companion companion = DeviceDetectedBottomSheet.S;
                ((View) obj).getClass();
                DeviceDetectedBottomSheet deviceDetectedBottomSheet = this.f56188b;
                LightupDevice lightupDevice = deviceDetectedBottomSheet.R;
                if (lightupDevice != null) {
                    CreatorProject creatorProjectB = LVLightUpHelper.b();
                    LightupDeviceType type = lightupDevice.getType();
                    if (type != null && (lVLightUpDeviceTypeA = LVLightUpMonitoringManagerKt.a(type)) != null) {
                        deviceDetectedBottomSheet.W().d.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.ConfirmPairingButtonClickEvent(lVLightUpDeviceTypeA)));
                        LightupHelper lightupHelperA = LVLightUpHelperInstance.a();
                        LightupDeviceType lightupDeviceType2 = LVLightUpHelper.f56151a;
                        if (lightupDeviceType2 == null) {
                            Intrinsics.h("lightUpDeviceType");
                            throw null;
                        }
                        LightupHelperInterface deviceHelper = lightupHelperA.getDeviceHelper(lightupDeviceType2);
                        DeviceMode mode = deviceHelper != null ? deviceHelper.getMode() : null;
                        if (mode != null) {
                            switch (LightUpDetailFragmentKt.WhenMappings.f56130b[mode.ordinal()]) {
                                case 1:
                                    lVLightUpPowerMode = LVLightUpPowerMode.STANDARD;
                                    break;
                                case 2:
                                    lVLightUpPowerMode = LVLightUpPowerMode.ECO;
                                    break;
                                case 3:
                                    lVLightUpPowerMode = LVLightUpPowerMode.ECO;
                                    break;
                                case 4:
                                    lVLightUpPowerMode = LVLightUpPowerMode.ALWAYS_ON;
                                    break;
                                case 5:
                                    lVLightUpPowerMode = LVLightUpPowerMode.WALKING;
                                    break;
                                case 6:
                                    lVLightUpPowerMode = LVLightUpPowerMode.ECO;
                                    break;
                                case 7:
                                    lVLightUpPowerMode = LVLightUpPowerMode.DISCREET;
                                    break;
                                default:
                                    v40.g();
                                    return null;
                            }
                            if (lVLightUpPowerMode == null) {
                                lVLightUpPowerMode = LVLightUpPowerMode.ECO;
                            }
                        } else {
                            lVLightUpPowerMode = LVLightUpPowerMode.ECO;
                        }
                        LVLightUpPowerMode lVLightUpPowerMode2 = lVLightUpPowerMode;
                        String string2 = lightupDevice.getUniqueId().toString();
                        string2.getClass();
                        LightUpProduct lightUpProduct = new LightUpProduct(string2, lVLightUpDeviceTypeA, lightupDevice.getName(), lVLightUpPowerMode2, lightupDevice.toString(), creatorProjectB != null ? creatorProjectB.getName() : null, creatorProjectB != null ? creatorProjectB.getImageUrl() : null, creatorProjectB != null ? creatorProjectB.getId() : null);
                        DeviceDetectedViewModel deviceDetectedViewModelW = deviceDetectedBottomSheet.W();
                        LVViewModel.Bc(deviceDetectedViewModelW, new DeviceDetectedViewModel$insertLightUpProduct$1(deviceDetectedViewModelW, null), new DeviceDetectedViewModel$insertLightUpProduct$2(deviceDetectedViewModelW, lightUpProduct, null), 2);
                    }
                }
                return Unit.f71739a;
            }
        });
        ViewExtKt.d(fragmentLightUpScanBottomSheetBinding.f51280b, new Function1(this) { // from class: nt

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ DeviceDetectedBottomSheet f76611c;

            {
                this.f76611c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LightupDeviceType type;
                LVLightUpDeviceType lVLightUpDeviceTypeA;
                int i8 = i4;
                DeviceDetectedBottomSheet deviceDetectedBottomSheet = this.f76611c;
                switch (i8) {
                    case 0:
                        DeviceDetectedBottomSheet.Companion companion = DeviceDetectedBottomSheet.S;
                        ((View) obj).getClass();
                        LightupDevice lightupDevice = deviceDetectedBottomSheet.R;
                        if (lightupDevice != null && (type = lightupDevice.getType()) != null && (lVLightUpDeviceTypeA = LVLightUpMonitoringManagerKt.a(type)) != null) {
                            deviceDetectedBottomSheet.W().d.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.CancelPairingWhenDeviceFoundButtonClickEvent(lVLightUpDeviceTypeA)));
                        }
                        deviceDetectedBottomSheet.dismiss();
                        return Unit.f71739a;
                    case 1:
                        LightUpProduct lightUpProduct = (LightUpProduct) obj;
                        DeviceDetectedBottomSheet.Companion companion2 = DeviceDetectedBottomSheet.S;
                        LightupDevice lightupDevice2 = new LightupDevice(lightUpProduct.f67297e);
                        LVLightUpDeviceType lVLightUpDeviceType = lightUpProduct.f67295b;
                        lVLightUpDeviceType.getClass();
                        int i9 = LVLightUpMonitoringManager$WhenMappings.f56161b[lVLightUpDeviceType.ordinal()];
                        if (i9 == 1) {
                            if (LVLightUpHelper.c()) {
                                LVLightUpHelper.a();
                            }
                            KeepAllMonitoringManager.f56157b = null;
                            KeepAllMonitoringManager.d = null;
                            KeepAllMonitoringManager.f56159e = null;
                            KeepAllMonitoringManager.f56158c = lightupDevice2;
                        } else {
                            if (i9 != 2) {
                                v40.g();
                                return null;
                            }
                            if (LVLightUpHelper.c()) {
                                LVLightUpHelper.a();
                            }
                            SneakerMonitoringManager.f56164b = null;
                            SneakerMonitoringManager.d = null;
                            SneakerMonitoringManager.f56166e = null;
                            SneakerMonitoringManager.f56167f = null;
                            SneakerMonitoringManager.g = null;
                            SneakerMonitoringManager.f56168h = null;
                            SneakerMonitoringManager.f56165c = lightupDevice2;
                        }
                        deviceDetectedBottomSheet.dismissAllowingStateLoss();
                        FragmentActivity fragmentActivityRequireActivity = deviceDetectedBottomSheet.requireActivity();
                        LightUpActivity lightUpActivity = fragmentActivityRequireActivity instanceof LightUpActivity ? (LightUpActivity) fragmentActivityRequireActivity : null;
                        if (lightUpActivity != null) {
                            lightUpActivity.setResult(-1);
                            int iJ = lightUpActivity.getSupportFragmentManager().J() + 1;
                            for (int i10 = 0; i10 < iJ; i10++) {
                                lightUpActivity.getSupportFragmentManager().V();
                            }
                            if (lightUpActivity.q == null) {
                                Intrinsics.h("lightUpRouter");
                                throw null;
                            }
                            LightUpRouter.a(lightUpActivity, new LightUpProductUiModel(lightUpProduct.f67294a, lightUpProduct.f67295b, lightUpProduct.f67296c, lightUpProduct.d, lightUpProduct.f67297e, lightUpProduct.f67298f, lightUpProduct.g, lightUpProduct.f67299h));
                        }
                        return Unit.f71739a;
                    default:
                        DeviceDetectedBottomSheet.Companion companion3 = DeviceDetectedBottomSheet.S;
                        deviceDetectedBottomSheet.requireActivity().runOnUiThread(new et(deviceDetectedBottomSheet, 4));
                        return Unit.f71739a;
                }
            }
        });
    }
}
