package com.vuitton.android.presentation.screen.connectivity.lightup.common.detail;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.widget.NestedScrollView;
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
import androidx.recyclerview.widget.RecyclerView;
import com.dynatrace.android.callback.Callback;
import com.google.android.material.appbar.AppBarLayout;
import com.lightup.sdk.animation.CreatorProject;
import com.lightup.sdk.device.ble.scanner.listeners.DataUploadListener;
import com.lightup.sdk.device.ble.scanner.listeners.OpenDeviceListener;
import com.lightup.sdk.device.devicemanagement.LightupDevice;
import com.lightup.sdk.device.enums.DataUploadError;
import com.lightup.sdk.device.enums.DeviceMode;
import com.lightup.sdk.device.enums.LightupDeviceType;
import com.lightup.sdk.device.enums.PairOrientation;
import com.lightup.sdk.device.enums.UpdateError;
import com.lightup.sdk.device.features.process.listener.ActionListener;
import com.lightup.sdk.device.helpers.LightupHelper;
import com.lightup.sdk.device.helpers.LightupHelperInterface;
import com.lightup.sdk.device.model.listeners.UpdateDeviceListener;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.DialogLightUpBinding;
import com.vuitton.android.presentation.databinding.FragmentLightUpProductDetailBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import com.vuitton.android.presentation.screen.connectivity.LightUpProductUiModel;
import com.vuitton.android.presentation.screen.connectivity.lightup.LightUpActivity;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.LightUpLoadingDialogFragment;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.helper.LVLightUpHelper;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.helper.LVLightUpHelper$stopCurrentAnimation$1;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.helper.LVLightUpHelperInstance;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.interfaces.LightUpDetailFragmentInterface;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.manager.KeepAllMonitoringManager;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.manager.LVLightUpMonitoringManager$WhenMappings;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.manager.LVLightUpMonitoringManagerKt;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.manager.SneakerMonitoringManager;
import com.vuitton.android.presentation.screen.connectivity.lightup.models.LVLightUpTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.lightup.models.LVLightUpTrackingUiModelKt;
import com.vuitton.android.presentation.screen.connectivity.views.ToastKt;
import com.vuitton.android.presentation.screen.connectivity.views.bottomsheets.BaseListBottomSheet;
import com.vuitton.android.presentation.utils.PermissionUtils;
import com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet;
import com.vuitton.foundation.model.domain.extensions.CollectionExtKt;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpDeviceType;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpPowerMode;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.cj;
import defpackage.fp;
import defpackage.hi;
import defpackage.mt;
import defpackage.q6;
import defpackage.r90;
import defpackage.t6;
import defpackage.v40;
import defpackage.v90;
import defpackage.w20;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\b'\u0018\u0000 ^2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001_B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H&¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH&¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH&¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u000bH&¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\bH&¢\u0006\u0004\b\u0014\u0010\u0005J\u000f\u0010\u0015\u001a\u00020\bH&¢\u0006\u0004\b\u0015\u0010\u0005J!\u0010\u001a\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u00162\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\bH\u0014¢\u0006\u0004\b\u001c\u0010\u0005J\u000f\u0010\u001d\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001d\u0010\u0005J\u000f\u0010\u001e\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001e\u0010\u0005J\u000f\u0010\u001f\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001f\u0010\u0005J\u000f\u0010 \u001a\u00020\bH\u0004¢\u0006\u0004\b \u0010\u0005J%\u0010#\u001a\u00020\b2\b\u0010!\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u000bH\u0004¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\bH\u0016¢\u0006\u0004\b%\u0010\u0005J\u001f\u0010(\u001a\u00020\b2\u0006\u0010&\u001a\u00020\u00062\b\u0010'\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b(\u0010)J\u000f\u0010*\u001a\u00020\bH\u0004¢\u0006\u0004\b*\u0010\u0005J\u000f\u0010+\u001a\u00020\bH\u0016¢\u0006\u0004\b+\u0010\u0005J\u0017\u0010-\u001a\u00020\b2\u0006\u0010,\u001a\u00020\u000bH\u0016¢\u0006\u0004\b-\u0010\u0013J\u000f\u0010.\u001a\u00020\bH\u0016¢\u0006\u0004\b.\u0010\u0005J\u000f\u0010/\u001a\u00020\bH\u0016¢\u0006\u0004\b/\u0010\u0005J\u000f\u00100\u001a\u00020\bH\u0016¢\u0006\u0004\b0\u0010\u0005J\u0017\u00102\u001a\u00020\b2\u0006\u00101\u001a\u00020\u000bH\u0004¢\u0006\u0004\b2\u0010\u0013J\u000f\u00103\u001a\u00020\bH\u0004¢\u0006\u0004\b3\u0010\u0005J\u000f\u00104\u001a\u00020\bH\u0016¢\u0006\u0004\b4\u0010\u0005J\u0017\u00107\u001a\u00020\b2\u0006\u00106\u001a\u000205H\u0016¢\u0006\u0004\b7\u00108J\u000f\u00109\u001a\u00020\bH\u0016¢\u0006\u0004\b9\u0010\u0005R\u0018\u0010=\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<R\u0018\u0010?\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010<R\u001b\u0010E\u001a\u00020@8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bA\u0010B\u001a\u0004\bC\u0010DR\u0018\u0010I\u001a\u0004\u0018\u00010F8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010HR\u0018\u0010M\u001a\u0004\u0018\u00010J8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u0016\u0010P\u001a\u00020N8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010 R$\u0010W\u001a\u0004\u0018\u00010\u00168\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\bQ\u0010R\u001a\u0004\bS\u0010T\"\u0004\bU\u0010VR\u001b\u0010]\u001a\u00020X8@X\u0080\u0084\u0002¢\u0006\f\n\u0004\bY\u0010Z\u001a\u0004\b[\u0010\\¨\u0006`"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;", "Landroidx/fragment/app/Fragment;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailView;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/interfaces/LightUpDetailFragmentInterface;", "<init>", "()V", "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;", "selectedMode", "", "q0", "(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;)V", "", "i0", "()Ljava/lang/String;", "Lcom/lightup/sdk/device/enums/LightupDeviceType;", "f0", "()Lcom/lightup/sdk/device/enums/LightupDeviceType;", "presetName", "C0", "(Ljava/lang/String;)V", "x0", "E0", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "a0", "t", "u", "k0", "Z", "powerMode", "customText", "v0", "(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;Ljava/lang/String;)V", "o0", "mode", "previousMode", "p0", "(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;)V", "t0", "D0", "notificationTitle", "A0", "y0", "b0", "l0", ConfigurationName.DOWNLOAD_PLUGIN_URL, "c0", "r0", "v", "", "error", "a", "(Ljava/lang/Throwable;)V", "onDestroyView", "", "F", "Ljava/lang/Integer;", "initialToolbarTopPadding", "G", "initialScrollBottomPadding", "Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;", "H", "Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;", "e0", "()Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;", "binding", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/LightUpLoadingDialogFragment;", "I", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/LightUpLoadingDialogFragment;", "progressDialog", "Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;", "J", "Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;", "lightUpProduct", "", "K", "isAnimationsUpdateRequired", "L", "Landroid/view/View;", "g0", "()Landroid/view/View;", "u0", "(Landroid/view/View;)V", "powerManagementLayout", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;", "M", "Lkotlin/Lazy;", "j0", "()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;", "viewModel", "N", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public abstract class LightUpDetailFragment extends Hilt_LightUpDetailFragment implements LightUpDetailView, LightUpDetailFragmentInterface {
    public static final String Q = "LIGHT_UP_PRODUCT";
    private static final int R = 100;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private Integer initialToolbarTopPadding;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private Integer initialScrollBottomPadding;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final FragmentViewBindingDelegate binding;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private LightUpLoadingDialogFragment progressDialog;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private LightUpProductUiModel lightUpProduct;

    /* JADX INFO: renamed from: K, reason: from kotlin metadata */
    private boolean isAnimationsUpdateRequired;

    /* JADX INFO: renamed from: L, reason: from kotlin metadata */
    private View powerManagementLayout;

    /* JADX INFO: renamed from: M, reason: from kotlin metadata */
    private final Lazy viewModel;
    static final /* synthetic */ KProperty<Object>[] O = {Reflection.f71922a.h(new PropertyReference1Impl(LightUpDetailFragment.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;", 0))};

    /* JADX INFO: renamed from: N, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int P = 8;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$Companion;", "", "", "KEY_LIGHT_UP_PRODUCT", "Ljava/lang/String;", "", "PERCENT_CONVERSION_FACTOR", "I", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f56112a;

        static {
            int[] iArr = new int[LVLightUpPowerMode.values().length];
            try {
                iArr[LVLightUpPowerMode.ECO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LVLightUpPowerMode.STANDARD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LVLightUpPowerMode.STANDBY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LVLightUpPowerMode.ALWAYS_ON.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[LVLightUpPowerMode.WALKING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[LVLightUpPowerMode.DISCREET.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            f56112a = iArr;
        }
    }

    public LightUpDetailFragment() {
        super(R.layout.fragment_light_up_product_detail);
        this.binding = FragmentExtKt.d(this, LightUpDetailFragment$binding$2.f56113b);
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this;
            }
        };
        final Lazy lazyA = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<ViewModelStoreOwner>() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment$special$$inlined$viewModels$default$2
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
        this.viewModel = new ViewModelLazy(Reflection.f71922a.b(LightUpDetailViewModel.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment$special$$inlined$viewModels$default$3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return ((ViewModelStoreOwner) lazyA.getF71699b()).getF13587c();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment$special$$inlined$viewModels$default$5
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
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment$special$$inlined$viewModels$default$4
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

    public static Unit O(LightUpDetailFragment lightUpDetailFragment, CreatorProject creatorProject, int i2) {
        creatorProject.getClass();
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter == null || !defaultAdapter.isEnabled()) {
            FragmentActivity activity = lightUpDetailFragment.getActivity();
            LightUpActivity lightUpActivity = activity instanceof LightUpActivity ? (LightUpActivity) activity : null;
            if (lightUpActivity != null) {
                ToastKt.a(lightUpActivity);
            }
        } else if (!LVLightUpHelper.c()) {
            lightUpDetailFragment.z0();
        } else if (!lightUpDetailFragment.m0()) {
            lightUpDetailFragment.requireActivity().runOnUiThread(new v90(lightUpDetailFragment, 0));
        } else if (lightUpDetailFragment.isAnimationsUpdateRequired) {
            String string = lightUpDetailFragment.getString(R.string.light_up_update_animations_required);
            string.getClass();
            lightUpDetailFragment.A0(string);
            lightUpDetailFragment.requireActivity().runOnUiThread(new v90(lightUpDetailFragment, 1));
        } else {
            String name = creatorProject.getName();
            name.getClass();
            lightUpDetailFragment.C0(name);
            lightUpDetailFragment.B0(creatorProject, i2);
        }
        return Unit.f71739a;
    }

    public static void P(LightUpDetailFragment lightUpDetailFragment, View view) {
        LVLightUpPowerMode lVLightUpPowerMode;
        Callback.n(view);
        try {
            if (LVLightUpHelper.c()) {
                LightUpProductUiModel lightUpProductUiModel = lightUpDetailFragment.lightUpProduct;
                if (lightUpProductUiModel == null || (lVLightUpPowerMode = lightUpProductUiModel.f55962e) == null) {
                    lVLightUpPowerMode = LVLightUpPowerMode.ECO;
                }
                lightUpDetailFragment.q0(lVLightUpPowerMode);
            } else {
                lightUpDetailFragment.z0();
            }
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    public static void Q(LightUpDetailFragment lightUpDetailFragment, int i2) {
        LightUpLoadingDialogFragment lightUpLoadingDialogFragment = lightUpDetailFragment.progressDialog;
        if (lightUpLoadingDialogFragment != null) {
            String strD = cj.d(i2, "%");
            TextView textView = ((DialogLightUpBinding) lightUpLoadingDialogFragment.F.c(lightUpLoadingDialogFragment, LightUpLoadingDialogFragment.H[0])).f51220c;
            textView.setVisibility(0);
            textView.setText(strD);
        }
    }

    public static void R(LightUpDetailFragment lightUpDetailFragment) {
        LightUpLoadingDialogFragment lightUpLoadingDialogFragment = lightUpDetailFragment.progressDialog;
        if (lightUpLoadingDialogFragment != null) {
            lightUpLoadingDialogFragment.dismissAllowingStateLoss();
        }
    }

    public static final void T(LightUpDetailFragment lightUpDetailFragment) {
        FragmentActivity activity;
        if (!lightUpDetailFragment.isAdded() || (activity = lightUpDetailFragment.getActivity()) == null) {
            return;
        }
        activity.runOnUiThread(new v90(lightUpDetailFragment, 2));
    }

    public static final void U(LightUpDetailFragment lightUpDetailFragment, CreatorProject creatorProject, int i2) {
        FragmentActivity activity = lightUpDetailFragment.getActivity();
        if (activity != null) {
            activity.runOnUiThread(new q6(lightUpDetailFragment, creatorProject, i2, 7));
        }
    }

    public static final void V(LightUpDetailFragment lightUpDetailFragment) {
        FragmentActivity activity;
        if (lightUpDetailFragment.isAdded() && (activity = lightUpDetailFragment.getActivity()) != null) {
            activity.runOnUiThread(new v90(lightUpDetailFragment, 2));
        }
        FragmentActivity activity2 = lightUpDetailFragment.getActivity();
        if (activity2 != null) {
            activity2.runOnUiThread(new v90(lightUpDetailFragment, 5));
        }
    }

    public static final void W(LightUpDetailFragment lightUpDetailFragment, int i2) {
        FragmentActivity activity = lightUpDetailFragment.getActivity();
        if (activity != null) {
            activity.runOnUiThread(new t6(lightUpDetailFragment, i2, 4));
        }
    }

    public static final void Y(LightUpDetailFragment lightUpDetailFragment) {
        FragmentActivity fragmentActivityRequireActivity = lightUpDetailFragment.requireActivity();
        if (!LVLightUpHelper.c()) {
            lightUpDetailFragment.requireActivity().runOnUiThread(new v90(lightUpDetailFragment, 6));
            return;
        }
        fragmentActivityRequireActivity.getClass();
        if (!PermissionUtils.e(fragmentActivityRequireActivity)) {
            ((LightUpActivity) fragmentActivityRequireActivity).H();
            return;
        }
        final LightUpDetailFragment$unPairProduct$1$1 lightUpDetailFragment$unPairProduct$1$1 = new LightUpDetailFragment$unPairProduct$1$1(lightUpDetailFragment);
        LightupHelper lightupHelperA = LVLightUpHelperInstance.a();
        LightupDeviceType lightupDeviceType = LVLightUpHelper.f56151a;
        if (lightupDeviceType == null) {
            Intrinsics.h("lightUpDeviceType");
            throw null;
        }
        LightupHelperInterface deviceHelper = lightupHelperA.getDeviceHelper(lightupDeviceType);
        if (deviceHelper != null) {
            deviceHelper.openDevice(new OpenDeviceListener() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.common.helper.LVLightUpHelper$makeDeviceAvailable$1
                @Override // com.lightup.sdk.device.features.process.ackable.listeners.DeviceErrorListener
                public final void onDeviceError(Enum r3) {
                    LightUpDetailFragment lightUpDetailFragment2 = lightUpDetailFragment$unPairProduct$1$1.f56126a;
                    lightUpDetailFragment2.requireActivity().runOnUiThread(new v90(lightUpDetailFragment2, 8));
                }

                @Override // com.lightup.sdk.device.features.process.ackable.listeners.DoneListener
                public final void onDone() {
                    lightUpDetailFragment$unPairProduct$1$1.a();
                }
            });
        }
    }

    public static /* synthetic */ void w0(LightUpDetailFragment lightUpDetailFragment, LVLightUpPowerMode lVLightUpPowerMode, String str, int i2, Object obj) {
        if (obj != null) {
            mt.i("Super calls with default arguments not supported in this target, function: setPowerModeLayoutTitle");
            return;
        }
        if ((i2 & 2) != 0) {
            str = null;
        }
        lightUpDetailFragment.v0(lVLightUpPowerMode, str);
    }

    public void A0(String notificationTitle) {
        notificationTitle.getClass();
        FragmentLightUpProductDetailBinding fragmentLightUpProductDetailBindingE0 = e0();
        fragmentLightUpProductDetailBindingE0.f51277i.f51396b.setVisibility(0);
        fragmentLightUpProductDetailBindingE0.f51277i.f51397c.setText(notificationTitle);
        fragmentLightUpProductDetailBindingE0.f51279k.f(33);
    }

    public final void B0(final CreatorProject creatorProject, final int i2) {
        ActionListener actionListener = new ActionListener() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment$startAnimationForPreset$1
            @Override // com.lightup.sdk.device.features.process.ackable.listeners.DeviceErrorListener
            public final void onDeviceError(Enum r3) {
                LightUpDetailFragment lightUpDetailFragment = this.f56123a;
                lightUpDetailFragment.requireActivity().runOnUiThread(new v90(lightUpDetailFragment, 7));
            }

            @Override // com.lightup.sdk.device.features.process.ackable.listeners.DoneListener
            public final void onDone() {
                LightUpDetailFragment.U(this.f56123a, creatorProject, i2);
            }
        };
        creatorProject.getClass();
        LightupHelper lightupHelperA = LVLightUpHelperInstance.a();
        LightupDeviceType lightupDeviceType = LVLightUpHelper.f56151a;
        if (lightupDeviceType == null) {
            Intrinsics.h("lightUpDeviceType");
            throw null;
        }
        LightupHelperInterface deviceHelper = lightupHelperA.getDeviceHelper(lightupDeviceType);
        if (deviceHelper != null) {
            String id = creatorProject.getId();
            id.getClass();
            deviceHelper.startAnimation(id, actionListener);
        }
    }

    public abstract void C0(String presetName);

    public void D0() {
        if (LVLightUpHelper.c()) {
            l0();
            d0();
            UpdateDeviceListener updateDeviceListener = new UpdateDeviceListener() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment$updateDevice$1
                @Override // com.lightup.sdk.device.features.process.ackable.listeners.DeviceErrorListener
                public final void onDeviceError(Enum r1) {
                    LightUpDetailFragment.T(this.f56128a);
                }

                @Override // com.lightup.sdk.device.features.process.ackable.listeners.DoneListener
                public final void onDone() {
                    LightUpDetailFragment.V(this.f56128a);
                }

                @Override // com.lightup.sdk.device.model.listeners.UpdateDeviceListener
                public final void onProgress(int i2, int i3, double d) {
                    LightUpDetailFragment.W(this.f56128a, (int) (d * 100.0d));
                }

                @Override // com.lightup.sdk.device.model.listeners.UpdateDeviceListener
                public final void onUpdateError(UpdateError updateError) {
                    updateError.getClass();
                    LightUpDetailFragment lightUpDetailFragment = this.f56128a;
                    LightUpDetailFragment.T(lightUpDetailFragment);
                    lightUpDetailFragment.requireActivity().runOnUiThread(new v90(lightUpDetailFragment, 9));
                }
            };
            LightupHelper lightupHelperA = LVLightUpHelperInstance.a();
            LightupDeviceType lightupDeviceType = LVLightUpHelper.f56151a;
            if (lightupDeviceType == null) {
                Intrinsics.h("lightUpDeviceType");
                throw null;
            }
            LightupHelperInterface deviceHelper = lightupHelperA.getDeviceHelper(lightupDeviceType);
            if (deviceHelper != null) {
                deviceHelper.updateDevice(updateDeviceListener);
            }
        }
    }

    public abstract void E0();

    public final void Z() {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.item_list_selectable_light_up, (ViewGroup) e0().f51276h, false);
        this.powerManagementLayout = viewInflate;
        TextView textView = (TextView) viewInflate;
        if (textView != null) {
            textView.setText(getString(R.string.light_up_power_management_title));
            textView.setOnClickListener(new hi(this, 3));
            e0().f51276h.addView(textView, 0);
        }
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailView
    public void a(Throwable error) {
        error.getClass();
        requireActivity().runOnUiThread(new v90(this, 3));
    }

    public void a0() {
        final int paddingTop;
        final int paddingBottom;
        final AppBarLayout appBarLayout = e0().f51275f.f51463b;
        final NestedScrollView nestedScrollView = e0().f51279k;
        Integer num = this.initialToolbarTopPadding;
        if (num != null) {
            paddingTop = num.intValue();
        } else {
            paddingTop = appBarLayout.getPaddingTop();
            this.initialToolbarTopPadding = Integer.valueOf(paddingTop);
        }
        Integer num2 = this.initialScrollBottomPadding;
        if (num2 != null) {
            paddingBottom = num2.intValue();
        } else {
            paddingBottom = nestedScrollView.getPaddingBottom();
            this.initialScrollBottomPadding = Integer.valueOf(paddingBottom);
        }
        ViewCompat.x(e0().f51272b, new OnApplyWindowInsetsListener() { // from class: t90
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                LightUpDetailFragment.Companion companion = LightUpDetailFragment.INSTANCE;
                view.getClass();
                Insets insetsE = windowInsetsCompat.e(519);
                insetsE.getClass();
                int i2 = paddingTop + insetsE.f12055b;
                AppBarLayout appBarLayout2 = appBarLayout;
                appBarLayout2.setPadding(appBarLayout2.getPaddingLeft(), i2, appBarLayout2.getPaddingRight(), appBarLayout2.getPaddingBottom());
                int i3 = paddingBottom + insetsE.d;
                NestedScrollView nestedScrollView2 = nestedScrollView;
                nestedScrollView2.setPadding(nestedScrollView2.getPaddingLeft(), nestedScrollView2.getPaddingTop(), nestedScrollView2.getPaddingRight(), i3);
                return windowInsetsCompat;
            }
        });
        e0().f51272b.requestApplyInsets();
    }

    public void b0() {
        FragmentLightUpProductDetailBinding fragmentLightUpProductDetailBindingE0 = e0();
        fragmentLightUpProductDetailBindingE0.f51279k.setVisibility(4);
        fragmentLightUpProductDetailBindingE0.f51274e.setVisibility(0);
    }

    public final void c0(String url) {
        url.getClass();
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268435456);
        intent.addFlags(1);
        intent.setDataAndType(Uri.parse(url), "application/pdf");
        startActivity(Intent.createChooser(intent, null));
    }

    public final void d0() {
        LightUpLoadingDialogFragment lightUpLoadingDialogFragment;
        FragmentManager supportFragmentManager = requireActivity().getSupportFragmentManager();
        if (this.progressDialog == null) {
            LightUpLoadingDialogFragment.Companion companion = LightUpLoadingDialogFragment.G;
            String strI0 = i0();
            companion.getClass();
            strI0.getClass();
            LightUpLoadingDialogFragment lightUpLoadingDialogFragment2 = new LightUpLoadingDialogFragment();
            Bundle bundle = new Bundle();
            bundle.putString("TITLE", strI0);
            lightUpLoadingDialogFragment2.setArguments(bundle);
            this.progressDialog = lightUpLoadingDialogFragment2;
        }
        LightUpLoadingDialogFragment lightUpLoadingDialogFragment3 = this.progressDialog;
        if (lightUpLoadingDialogFragment3 == null || lightUpLoadingDialogFragment3.isVisible() || (lightUpLoadingDialogFragment = this.progressDialog) == null) {
            return;
        }
        LightUpLoadingDialogFragment.G.getClass();
        lightUpLoadingDialogFragment.show(supportFragmentManager, LightUpLoadingDialogFragment.I);
    }

    public final FragmentLightUpProductDetailBinding e0() {
        return (FragmentLightUpProductDetailBinding) this.binding.c(this, O[0]);
    }

    public abstract LightupDeviceType f0();

    /* JADX INFO: renamed from: g0, reason: from getter */
    public final View getPowerManagementLayout() {
        return this.powerManagementLayout;
    }

    public final LightUpPresetAdapter h0() {
        RecyclerView.Adapter adapter = e0().f51278j.getAdapter();
        if (adapter instanceof LightUpPresetAdapter) {
            return (LightUpPresetAdapter) adapter;
        }
        return null;
    }

    public abstract String i0();

    public final LightUpDetailViewModel j0() {
        return (LightUpDetailViewModel) this.viewModel.getF71699b();
    }

    public void k0() {
        if (LVLightUpHelper.d()) {
            l0();
            LightUpProductUiModel lightUpProductUiModel = this.lightUpProduct;
            if (lightUpProductUiModel != null) {
                j0().Dc(lightUpProductUiModel);
                LightupHelper lightupHelperA = LVLightUpHelperInstance.a();
                LightupDeviceType lightupDeviceType = LVLightUpHelper.f56151a;
                Object obj = null;
                if (lightupDeviceType == null) {
                    Intrinsics.h("lightUpDeviceType");
                    throw null;
                }
                LightupHelperInterface deviceHelper = lightupHelperA.getDeviceHelper(lightupDeviceType);
                List<CreatorProject> deviceAnimations = deviceHelper != null ? deviceHelper.getDeviceAnimations() : null;
                l0();
                e0().g.setVisibility(CollectionExtKt.a(deviceAnimations) ? 0 : 8);
                View view = this.powerManagementLayout;
                if (view != null) {
                    view.setVisibility(CollectionExtKt.a(deviceAnimations) ? 0 : 8);
                }
                if (CollectionExtKt.a(deviceAnimations)) {
                    s0(lightUpProductUiModel.f55962e);
                    LightUpPresetAdapter lightUpPresetAdapterH0 = h0();
                    if (lightUpPresetAdapterH0 != null) {
                        ArrayList arrayList = lightUpPresetAdapterH0.f56143c;
                        if (deviceAnimations != null) {
                            arrayList.clear();
                            arrayList.addAll(deviceAnimations);
                            lightUpPresetAdapterH0.notifyDataSetChanged();
                        }
                        String str = lightUpProductUiModel.f55965i;
                        if (str != null) {
                            if (StringsKt.w(str)) {
                                str = null;
                            }
                            if (str != null) {
                                for (Object obj2 : arrayList) {
                                    if (Intrinsics.c(((CreatorProject) obj2).getId(), str)) {
                                        obj = obj2;
                                        break;
                                    }
                                }
                                CreatorProject creatorProject = (CreatorProject) obj;
                                if (creatorProject != null) {
                                    String id = creatorProject.getId();
                                    id.getClass();
                                    B0(creatorProject, lightUpPresetAdapterH0.a(id));
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public void l0() {
        FragmentLightUpProductDetailBinding fragmentLightUpProductDetailBindingE0 = e0();
        fragmentLightUpProductDetailBindingE0.f51274e.setVisibility(8);
        fragmentLightUpProductDetailBindingE0.f51279k.setVisibility(0);
    }

    public final boolean m0() {
        View view;
        View view2 = this.powerManagementLayout;
        return view2 != null && view2.getVisibility() == 0 && (view = this.powerManagementLayout) != null && view.isEnabled();
    }

    public final void n0(CreatorProject creatorProject) {
        LightUpProductUiModel lightUpProductUiModelA;
        if (!m0()) {
            r0();
            return;
        }
        if (creatorProject == null) {
            LightupHelper lightupHelperA = LVLightUpHelperInstance.a();
            LightupDeviceType lightupDeviceType = LVLightUpHelper.f56151a;
            if (lightupDeviceType == null) {
                Intrinsics.h("lightUpDeviceType");
                throw null;
            }
            LightupHelperInterface deviceHelper = lightupHelperA.getDeviceHelper(lightupDeviceType);
            if (deviceHelper != null) {
                deviceHelper.stopAnimation(new LVLightUpHelper$stopCurrentAnimation$1());
            }
        } else {
            LightUpProductUiModel lightUpProductUiModel = this.lightUpProduct;
            if (lightUpProductUiModel != null) {
                lightUpProductUiModelA = LightUpProductUiModel.a(lightUpProductUiModel, null, creatorProject.getName(), creatorProject.getImageUrl(), creatorProject.getId(), 31);
            } else {
                lightUpProductUiModelA = null;
            }
            this.lightUpProduct = lightUpProductUiModelA;
        }
        LightUpPresetAdapter lightUpPresetAdapterH0 = h0();
        if (lightUpPresetAdapterH0 != null) {
            lightUpPresetAdapterH0.d = creatorProject != null ? creatorProject.getId() : null;
            lightUpPresetAdapterH0.notifyDataSetChanged();
        }
        LightUpProductUiModel lightUpProductUiModel2 = this.lightUpProduct;
        if (lightUpProductUiModel2 != null) {
            j0().Dc(lightUpProductUiModel2);
        }
    }

    public void o0() {
        if (LVLightUpHelper.c() && LVLightUpHelper.d()) {
            requireActivity().runOnUiThread(new v90(this, 4));
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        LightUpDetailViewModel lightUpDetailViewModelJ0 = j0();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        viewLifecycleOwner.getClass();
        lightUpDetailViewModelJ0.Ac(viewLifecycleOwner);
        super.onDestroyView();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.Hilt_LightUpDetailFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) throws Exception {
        LightUpProductUiModel lightUpProductUiModel;
        Parcelable parcelable;
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        new SystemBarsHandling(this, new SystemBarsHandling.SystemBarsConfig(false, false, false, false, 15, null));
        a0();
        LightUpDetailViewModel lightUpDetailViewModelJ0 = j0();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        viewLifecycleOwner.getClass();
        lightUpDetailViewModelJ0.yc(viewLifecycleOwner, this);
        Bundle arguments = getArguments();
        if (arguments != null) {
            if (Build.VERSION.SDK_INT >= 33) {
                parcelable = (Parcelable) arguments.getParcelable(Q, LightUpProductUiModel.class);
            } else {
                Parcelable parcelable2 = arguments.getParcelable(Q);
                if (!(parcelable2 instanceof LightUpProductUiModel)) {
                    parcelable2 = null;
                }
                parcelable = (LightUpProductUiModel) parcelable2;
            }
            lightUpProductUiModel = (LightUpProductUiModel) parcelable;
        } else {
            lightUpProductUiModel = null;
        }
        this.lightUpProduct = lightUpProductUiModel;
        if (lightUpProductUiModel == null) {
            throw new Exception("Light up product should not be null");
        }
        FragmentLightUpProductDetailBinding fragmentLightUpProductDetailBindingE0 = e0();
        Toolbar toolbar = fragmentLightUpProductDetailBindingE0.f51275f.f51464c.f51465b;
        FragmentExtKt.a(this, toolbar, null, 6);
        final int i2 = 1;
        toolbar.setAccessibilityHeading(true);
        x0();
        final int i3 = 2;
        ViewExtKt.d(fragmentLightUpProductDetailBindingE0.f51273c, new Function1(this) { // from class: u90

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ LightUpDetailFragment f80268c;

            {
                this.f80268c = this;
            }

            /* JADX WARN: Code duplicated, block: B:89:0x019a  */
            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) throws Throwable {
                Throwable th;
                String strP;
                String str;
                String string;
                String boardVersion;
                String debugIdentifier;
                LightupDevice lightupDevice;
                int i4 = i3;
                final LightUpDetailFragment lightUpDetailFragment = this.f80268c;
                switch (i4) {
                    case 0:
                        LightUpDetailFragment.Companion companion = LightUpDetailFragment.INSTANCE;
                        ((View) obj).getClass();
                        if (LVLightUpHelper.c()) {
                            lightUpDetailFragment.e0().f51277i.f51396b.setVisibility(8);
                            lightUpDetailFragment.l0();
                            lightUpDetailFragment.d0();
                            DataUploadListener dataUploadListener = new DataUploadListener() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment$updateAnimations$1
                                @Override // com.lightup.sdk.device.ble.scanner.listeners.DataUploadListener
                                public final void onCompleted() {
                                    LightUpDetailFragment lightUpDetailFragment2 = lightUpDetailFragment;
                                    lightUpDetailFragment2.isAnimationsUpdateRequired = false;
                                    lightUpDetailFragment2.E0();
                                    LightUpDetailFragment.V(lightUpDetailFragment2);
                                }

                                @Override // com.lightup.sdk.device.ble.scanner.listeners.DataUploadListener
                                public final void onError(DataUploadError dataUploadError) {
                                    LightUpDetailFragment lightUpDetailFragment2 = lightUpDetailFragment;
                                    LightUpDetailFragment.T(lightUpDetailFragment2);
                                    FragmentActivity activity = lightUpDetailFragment2.getActivity();
                                    if (activity != null) {
                                        activity.runOnUiThread(new fp(activity, 3));
                                    }
                                }

                                @Override // com.lightup.sdk.device.ble.scanner.listeners.DataUploadListener
                                public final void onProgress(double d) {
                                    LightUpDetailFragment.W(lightUpDetailFragment, (int) d);
                                }
                            };
                            LightupHelper lightupHelperA = LVLightUpHelperInstance.a();
                            LightupDeviceType lightupDeviceType = LVLightUpHelper.f56151a;
                            if (lightupDeviceType == null) {
                                Intrinsics.h("lightUpDeviceType");
                                throw null;
                            }
                            LightupHelperInterface deviceHelper = lightupHelperA.getDeviceHelper(lightupDeviceType);
                            if (deviceHelper != null) {
                                deviceHelper.updateAnimations(true, dataUploadListener);
                            }
                        } else {
                            lightUpDetailFragment.z0();
                        }
                        return Unit.f71739a;
                    case 1:
                        LightUpDetailFragment.Companion companion2 = LightUpDetailFragment.INSTANCE;
                        ((View) obj).getClass();
                        if (LVLightUpHelper.c()) {
                            FragmentManager supportFragmentManager = lightUpDetailFragment.requireActivity().getSupportFragmentManager();
                            BaseListBottomSheet.Companion companion3 = BaseListBottomSheet.S;
                            Context context = lightUpDetailFragment.getContext();
                            LightupDeviceType lightupDeviceType2 = LVLightUpHelper.f56151a;
                            if (lightupDeviceType2 == null) {
                                Intrinsics.h("lightUpDeviceType");
                                throw null;
                            }
                            LightupDeviceType lightupDeviceType3 = LightupDeviceType.KEEPALL;
                            String strP2 = "";
                            if (lightupDeviceType2 == lightupDeviceType3) {
                                LightupHelper lightupHelperA2 = LVLightUpHelperInstance.a();
                                LightupDeviceType lightupDeviceType4 = LVLightUpHelper.f56151a;
                                if (lightupDeviceType4 == null) {
                                    Intrinsics.h("lightUpDeviceType");
                                    throw null;
                                }
                                LightupHelperInterface deviceHelper2 = lightupHelperA2.getDeviceHelper(lightupDeviceType4);
                                strP = deviceHelper2 != null ? deviceHelper2.getFirmwareVersion(PairOrientation.UNKNOWN) : null;
                                if (strP == null) {
                                    th = null;
                                    strP = "";
                                } else {
                                    th = null;
                                }
                            } else {
                                String string2 = context != null ? context.getString(R.string.light_up_sneaker_initial_left) : null;
                                LightupHelper lightupHelperA3 = LVLightUpHelperInstance.a();
                                th = null;
                                LightupDeviceType lightupDeviceType5 = LVLightUpHelper.f56151a;
                                if (lightupDeviceType5 == null) {
                                    Intrinsics.h("lightUpDeviceType");
                                    throw null;
                                }
                                LightupHelperInterface deviceHelper3 = lightupHelperA3.getDeviceHelper(lightupDeviceType5);
                                String firmwareVersion = deviceHelper3 != null ? deviceHelper3.getFirmwareVersion(PairOrientation.LEFT) : null;
                                String string3 = context != null ? context.getString(R.string.light_up_sneaker_initial_right) : null;
                                LightupHelper lightupHelperA4 = LVLightUpHelperInstance.a();
                                LightupDeviceType lightupDeviceType6 = LVLightUpHelper.f56151a;
                                if (lightupDeviceType6 == null) {
                                    Intrinsics.h("lightUpDeviceType");
                                    throw null;
                                }
                                LightupHelperInterface deviceHelper4 = lightupHelperA4.getDeviceHelper(lightupDeviceType6);
                                strP = d21.p(fc.s("[", string2, "] ", firmwareVersion, " ["), string3, "] ", deviceHelper4 != null ? deviceHelper4.getFirmwareVersion(PairOrientation.RIGHT) : null);
                            }
                            String strConcat = "Firmware: ".concat(strP);
                            Context context2 = lightUpDetailFragment.getContext();
                            LightupDeviceType lightupDeviceType7 = LVLightUpHelper.f56151a;
                            if (lightupDeviceType7 == null) {
                                Intrinsics.h("lightUpDeviceType");
                                throw th;
                            }
                            if (lightupDeviceType7 == lightupDeviceType3) {
                                LightupHelper lightupHelperA5 = LVLightUpHelperInstance.a();
                                LightupDeviceType lightupDeviceType8 = LVLightUpHelper.f56151a;
                                if (lightupDeviceType8 == null) {
                                    Intrinsics.h("lightUpDeviceType");
                                    throw th;
                                }
                                LightupHelperInterface deviceHelper5 = lightupHelperA5.getDeviceHelper(lightupDeviceType8);
                                Object boardVersion2 = deviceHelper5 != null ? deviceHelper5.getBoardVersion(PairOrientation.UNKNOWN) : th;
                                if (boardVersion2 != null) {
                                    strP2 = boardVersion2;
                                }
                            } else {
                                String string4 = context2 != null ? context2.getString(R.string.light_up_sneaker_initial_left) : th;
                                LightupHelper lightupHelperA6 = LVLightUpHelperInstance.a();
                                LightupDeviceType lightupDeviceType9 = LVLightUpHelper.f56151a;
                                if (lightupDeviceType9 == null) {
                                    Intrinsics.h("lightUpDeviceType");
                                    throw th;
                                }
                                LightupHelperInterface deviceHelper6 = lightupHelperA6.getDeviceHelper(lightupDeviceType9);
                                if (deviceHelper6 != null) {
                                    boardVersion = deviceHelper6.getBoardVersion(PairOrientation.LEFT);
                                } else {
                                    str = th;
                                }
                                if (context2 != null) {
                                    str = boardVersion;
                                    string = context2.getString(R.string.light_up_sneaker_initial_right);
                                } else {
                                    str = boardVersion;
                                    string = th;
                                }
                                LightupHelper lightupHelperA7 = LVLightUpHelperInstance.a();
                                LightupDeviceType lightupDeviceType10 = LVLightUpHelper.f56151a;
                                if (lightupDeviceType10 == null) {
                                    Intrinsics.h("lightUpDeviceType");
                                    throw th;
                                }
                                LightupHelperInterface deviceHelper7 = lightupHelperA7.getDeviceHelper(lightupDeviceType10);
                                strP2 = d21.p(fc.s("[", string4, "] ", str, " ["), string, "] ", deviceHelper7 != null ? deviceHelper7.getBoardVersion(PairOrientation.RIGHT) : th);
                            }
                            String strConcat2 = "Hardware: ".concat(strP2);
                            String strG = tr.g("SDK Version: ", LightupHelper.INSTANCE.getSdkVersion());
                            LightupDeviceType lightupDeviceType11 = LVLightUpHelper.f56151a;
                            if (lightupDeviceType11 == null) {
                                Intrinsics.h("lightUpDeviceType");
                                throw th;
                            }
                            LVLightUpDeviceType lVLightUpDeviceTypeA = LVLightUpMonitoringManagerKt.a(lightupDeviceType11);
                            int i5 = lVLightUpDeviceTypeA == null ? -1 : LVLightUpMonitoringManager$WhenMappings.f56161b[lVLightUpDeviceTypeA.ordinal()];
                            if (i5 == 1) {
                                LightupDevice lightupDevice2 = KeepAllMonitoringManager.f56158c;
                                if (lightupDevice2 != null) {
                                    debugIdentifier = lightupDevice2.getDebugIdentifier();
                                } else {
                                    debugIdentifier = th;
                                }
                            } else if (i5 == 2 && (lightupDevice = SneakerMonitoringManager.f56165c) != null) {
                                debugIdentifier = lightupDevice.getDebugIdentifier();
                            } else {
                                debugIdentifier = th;
                            }
                            List listP = CollectionsKt.P(strConcat, strConcat2, strG, tr.g("Identifier: ", debugIdentifier));
                            String string5 = lightUpDetailFragment.getString(R.string.version);
                            string5.getClass();
                            String string6 = lightUpDetailFragment.getString(R.string.version);
                            string6.getClass();
                            companion3.getClass();
                            BaseListBottomSheet.Companion.a(string5, string6, listP).show(supportFragmentManager, BaseListBottomSheet.V);
                        }
                        return Unit.f71739a;
                    default:
                        LightUpDetailFragment.Companion companion4 = LightUpDetailFragment.INSTANCE;
                        ((View) obj).getClass();
                        if (LVLightUpHelper.c()) {
                            GenericBottomSheet.Companion companion5 = GenericBottomSheet.R;
                            String string7 = lightUpDetailFragment.getString(R.string.lightup_unpair_popup_areyousure);
                            string7.getClass();
                            GenericBottomSheet genericBottomSheetB = GenericBottomSheet.Companion.b(companion5, string7, lightUpDetailFragment.getString(R.string.p12_lvpass_unpair_popup_areyousure_staypaired), lightUpDetailFragment.getString(R.string.p12_lvpass_unpair_popup_areyousure_yes), 16);
                            genericBottomSheetB.O = new GenericBottomSheet.OnPositiveClickListener() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment$showUnPairDialog$1
                                @Override // com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet.OnPositiveClickListener
                                public final void a() {
                                    LightUpDetailFragment.Y(lightUpDetailFragment);
                                }
                            };
                            genericBottomSheetB.show(lightUpDetailFragment.requireActivity().getSupportFragmentManager(), GenericBottomSheet.S);
                        } else {
                            lightUpDetailFragment.z0();
                        }
                        return Unit.f71739a;
                }
            }
        });
        final int i4 = 0;
        ViewExtKt.d(fragmentLightUpProductDetailBindingE0.f51277i.f51396b, new Function1(this) { // from class: u90

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ LightUpDetailFragment f80268c;

            {
                this.f80268c = this;
            }

            /* JADX WARN: Code duplicated, block: B:89:0x019a  */
            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) throws Throwable {
                Throwable th;
                String strP;
                String str;
                String string;
                String boardVersion;
                String debugIdentifier;
                LightupDevice lightupDevice;
                int i5 = i4;
                final LightUpDetailFragment lightUpDetailFragment = this.f80268c;
                switch (i5) {
                    case 0:
                        LightUpDetailFragment.Companion companion = LightUpDetailFragment.INSTANCE;
                        ((View) obj).getClass();
                        if (LVLightUpHelper.c()) {
                            lightUpDetailFragment.e0().f51277i.f51396b.setVisibility(8);
                            lightUpDetailFragment.l0();
                            lightUpDetailFragment.d0();
                            DataUploadListener dataUploadListener = new DataUploadListener() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment$updateAnimations$1
                                @Override // com.lightup.sdk.device.ble.scanner.listeners.DataUploadListener
                                public final void onCompleted() {
                                    LightUpDetailFragment lightUpDetailFragment2 = lightUpDetailFragment;
                                    lightUpDetailFragment2.isAnimationsUpdateRequired = false;
                                    lightUpDetailFragment2.E0();
                                    LightUpDetailFragment.V(lightUpDetailFragment2);
                                }

                                @Override // com.lightup.sdk.device.ble.scanner.listeners.DataUploadListener
                                public final void onError(DataUploadError dataUploadError) {
                                    LightUpDetailFragment lightUpDetailFragment2 = lightUpDetailFragment;
                                    LightUpDetailFragment.T(lightUpDetailFragment2);
                                    FragmentActivity activity = lightUpDetailFragment2.getActivity();
                                    if (activity != null) {
                                        activity.runOnUiThread(new fp(activity, 3));
                                    }
                                }

                                @Override // com.lightup.sdk.device.ble.scanner.listeners.DataUploadListener
                                public final void onProgress(double d) {
                                    LightUpDetailFragment.W(lightUpDetailFragment, (int) d);
                                }
                            };
                            LightupHelper lightupHelperA = LVLightUpHelperInstance.a();
                            LightupDeviceType lightupDeviceType = LVLightUpHelper.f56151a;
                            if (lightupDeviceType == null) {
                                Intrinsics.h("lightUpDeviceType");
                                throw null;
                            }
                            LightupHelperInterface deviceHelper = lightupHelperA.getDeviceHelper(lightupDeviceType);
                            if (deviceHelper != null) {
                                deviceHelper.updateAnimations(true, dataUploadListener);
                            }
                        } else {
                            lightUpDetailFragment.z0();
                        }
                        return Unit.f71739a;
                    case 1:
                        LightUpDetailFragment.Companion companion2 = LightUpDetailFragment.INSTANCE;
                        ((View) obj).getClass();
                        if (LVLightUpHelper.c()) {
                            FragmentManager supportFragmentManager = lightUpDetailFragment.requireActivity().getSupportFragmentManager();
                            BaseListBottomSheet.Companion companion3 = BaseListBottomSheet.S;
                            Context context = lightUpDetailFragment.getContext();
                            LightupDeviceType lightupDeviceType2 = LVLightUpHelper.f56151a;
                            if (lightupDeviceType2 == null) {
                                Intrinsics.h("lightUpDeviceType");
                                throw null;
                            }
                            LightupDeviceType lightupDeviceType3 = LightupDeviceType.KEEPALL;
                            String strP2 = "";
                            if (lightupDeviceType2 == lightupDeviceType3) {
                                LightupHelper lightupHelperA2 = LVLightUpHelperInstance.a();
                                LightupDeviceType lightupDeviceType4 = LVLightUpHelper.f56151a;
                                if (lightupDeviceType4 == null) {
                                    Intrinsics.h("lightUpDeviceType");
                                    throw null;
                                }
                                LightupHelperInterface deviceHelper2 = lightupHelperA2.getDeviceHelper(lightupDeviceType4);
                                strP = deviceHelper2 != null ? deviceHelper2.getFirmwareVersion(PairOrientation.UNKNOWN) : null;
                                if (strP == null) {
                                    th = null;
                                    strP = "";
                                } else {
                                    th = null;
                                }
                            } else {
                                String string2 = context != null ? context.getString(R.string.light_up_sneaker_initial_left) : null;
                                LightupHelper lightupHelperA3 = LVLightUpHelperInstance.a();
                                th = null;
                                LightupDeviceType lightupDeviceType5 = LVLightUpHelper.f56151a;
                                if (lightupDeviceType5 == null) {
                                    Intrinsics.h("lightUpDeviceType");
                                    throw null;
                                }
                                LightupHelperInterface deviceHelper3 = lightupHelperA3.getDeviceHelper(lightupDeviceType5);
                                String firmwareVersion = deviceHelper3 != null ? deviceHelper3.getFirmwareVersion(PairOrientation.LEFT) : null;
                                String string3 = context != null ? context.getString(R.string.light_up_sneaker_initial_right) : null;
                                LightupHelper lightupHelperA4 = LVLightUpHelperInstance.a();
                                LightupDeviceType lightupDeviceType6 = LVLightUpHelper.f56151a;
                                if (lightupDeviceType6 == null) {
                                    Intrinsics.h("lightUpDeviceType");
                                    throw null;
                                }
                                LightupHelperInterface deviceHelper4 = lightupHelperA4.getDeviceHelper(lightupDeviceType6);
                                strP = d21.p(fc.s("[", string2, "] ", firmwareVersion, " ["), string3, "] ", deviceHelper4 != null ? deviceHelper4.getFirmwareVersion(PairOrientation.RIGHT) : null);
                            }
                            String strConcat = "Firmware: ".concat(strP);
                            Context context2 = lightUpDetailFragment.getContext();
                            LightupDeviceType lightupDeviceType7 = LVLightUpHelper.f56151a;
                            if (lightupDeviceType7 == null) {
                                Intrinsics.h("lightUpDeviceType");
                                throw th;
                            }
                            if (lightupDeviceType7 == lightupDeviceType3) {
                                LightupHelper lightupHelperA5 = LVLightUpHelperInstance.a();
                                LightupDeviceType lightupDeviceType8 = LVLightUpHelper.f56151a;
                                if (lightupDeviceType8 == null) {
                                    Intrinsics.h("lightUpDeviceType");
                                    throw th;
                                }
                                LightupHelperInterface deviceHelper5 = lightupHelperA5.getDeviceHelper(lightupDeviceType8);
                                Object boardVersion2 = deviceHelper5 != null ? deviceHelper5.getBoardVersion(PairOrientation.UNKNOWN) : th;
                                if (boardVersion2 != null) {
                                    strP2 = boardVersion2;
                                }
                            } else {
                                String string4 = context2 != null ? context2.getString(R.string.light_up_sneaker_initial_left) : th;
                                LightupHelper lightupHelperA6 = LVLightUpHelperInstance.a();
                                LightupDeviceType lightupDeviceType9 = LVLightUpHelper.f56151a;
                                if (lightupDeviceType9 == null) {
                                    Intrinsics.h("lightUpDeviceType");
                                    throw th;
                                }
                                LightupHelperInterface deviceHelper6 = lightupHelperA6.getDeviceHelper(lightupDeviceType9);
                                if (deviceHelper6 != null) {
                                    boardVersion = deviceHelper6.getBoardVersion(PairOrientation.LEFT);
                                } else {
                                    str = th;
                                }
                                if (context2 != null) {
                                    str = boardVersion;
                                    string = context2.getString(R.string.light_up_sneaker_initial_right);
                                } else {
                                    str = boardVersion;
                                    string = th;
                                }
                                LightupHelper lightupHelperA7 = LVLightUpHelperInstance.a();
                                LightupDeviceType lightupDeviceType10 = LVLightUpHelper.f56151a;
                                if (lightupDeviceType10 == null) {
                                    Intrinsics.h("lightUpDeviceType");
                                    throw th;
                                }
                                LightupHelperInterface deviceHelper7 = lightupHelperA7.getDeviceHelper(lightupDeviceType10);
                                strP2 = d21.p(fc.s("[", string4, "] ", str, " ["), string, "] ", deviceHelper7 != null ? deviceHelper7.getBoardVersion(PairOrientation.RIGHT) : th);
                            }
                            String strConcat2 = "Hardware: ".concat(strP2);
                            String strG = tr.g("SDK Version: ", LightupHelper.INSTANCE.getSdkVersion());
                            LightupDeviceType lightupDeviceType11 = LVLightUpHelper.f56151a;
                            if (lightupDeviceType11 == null) {
                                Intrinsics.h("lightUpDeviceType");
                                throw th;
                            }
                            LVLightUpDeviceType lVLightUpDeviceTypeA = LVLightUpMonitoringManagerKt.a(lightupDeviceType11);
                            int i6 = lVLightUpDeviceTypeA == null ? -1 : LVLightUpMonitoringManager$WhenMappings.f56161b[lVLightUpDeviceTypeA.ordinal()];
                            if (i6 == 1) {
                                LightupDevice lightupDevice2 = KeepAllMonitoringManager.f56158c;
                                if (lightupDevice2 != null) {
                                    debugIdentifier = lightupDevice2.getDebugIdentifier();
                                } else {
                                    debugIdentifier = th;
                                }
                            } else if (i6 == 2 && (lightupDevice = SneakerMonitoringManager.f56165c) != null) {
                                debugIdentifier = lightupDevice.getDebugIdentifier();
                            } else {
                                debugIdentifier = th;
                            }
                            List listP = CollectionsKt.P(strConcat, strConcat2, strG, tr.g("Identifier: ", debugIdentifier));
                            String string5 = lightUpDetailFragment.getString(R.string.version);
                            string5.getClass();
                            String string6 = lightUpDetailFragment.getString(R.string.version);
                            string6.getClass();
                            companion3.getClass();
                            BaseListBottomSheet.Companion.a(string5, string6, listP).show(supportFragmentManager, BaseListBottomSheet.V);
                        }
                        return Unit.f71739a;
                    default:
                        LightUpDetailFragment.Companion companion4 = LightUpDetailFragment.INSTANCE;
                        ((View) obj).getClass();
                        if (LVLightUpHelper.c()) {
                            GenericBottomSheet.Companion companion5 = GenericBottomSheet.R;
                            String string7 = lightUpDetailFragment.getString(R.string.lightup_unpair_popup_areyousure);
                            string7.getClass();
                            GenericBottomSheet genericBottomSheetB = GenericBottomSheet.Companion.b(companion5, string7, lightUpDetailFragment.getString(R.string.p12_lvpass_unpair_popup_areyousure_staypaired), lightUpDetailFragment.getString(R.string.p12_lvpass_unpair_popup_areyousure_yes), 16);
                            genericBottomSheetB.O = new GenericBottomSheet.OnPositiveClickListener() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment$showUnPairDialog$1
                                @Override // com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet.OnPositiveClickListener
                                public final void a() {
                                    LightUpDetailFragment.Y(lightUpDetailFragment);
                                }
                            };
                            genericBottomSheetB.show(lightUpDetailFragment.requireActivity().getSupportFragmentManager(), GenericBottomSheet.S);
                        } else {
                            lightUpDetailFragment.z0();
                        }
                        return Unit.f71739a;
                }
            }
        });
        ViewExtKt.d(fragmentLightUpProductDetailBindingE0.l, new Function1(this) { // from class: u90

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ LightUpDetailFragment f80268c;

            {
                this.f80268c = this;
            }

            /* JADX WARN: Code duplicated, block: B:89:0x019a  */
            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) throws Throwable {
                Throwable th;
                String strP;
                String str;
                String string;
                String boardVersion;
                String debugIdentifier;
                LightupDevice lightupDevice;
                int i5 = i2;
                final LightUpDetailFragment lightUpDetailFragment = this.f80268c;
                switch (i5) {
                    case 0:
                        LightUpDetailFragment.Companion companion = LightUpDetailFragment.INSTANCE;
                        ((View) obj).getClass();
                        if (LVLightUpHelper.c()) {
                            lightUpDetailFragment.e0().f51277i.f51396b.setVisibility(8);
                            lightUpDetailFragment.l0();
                            lightUpDetailFragment.d0();
                            DataUploadListener dataUploadListener = new DataUploadListener() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment$updateAnimations$1
                                @Override // com.lightup.sdk.device.ble.scanner.listeners.DataUploadListener
                                public final void onCompleted() {
                                    LightUpDetailFragment lightUpDetailFragment2 = lightUpDetailFragment;
                                    lightUpDetailFragment2.isAnimationsUpdateRequired = false;
                                    lightUpDetailFragment2.E0();
                                    LightUpDetailFragment.V(lightUpDetailFragment2);
                                }

                                @Override // com.lightup.sdk.device.ble.scanner.listeners.DataUploadListener
                                public final void onError(DataUploadError dataUploadError) {
                                    LightUpDetailFragment lightUpDetailFragment2 = lightUpDetailFragment;
                                    LightUpDetailFragment.T(lightUpDetailFragment2);
                                    FragmentActivity activity = lightUpDetailFragment2.getActivity();
                                    if (activity != null) {
                                        activity.runOnUiThread(new fp(activity, 3));
                                    }
                                }

                                @Override // com.lightup.sdk.device.ble.scanner.listeners.DataUploadListener
                                public final void onProgress(double d) {
                                    LightUpDetailFragment.W(lightUpDetailFragment, (int) d);
                                }
                            };
                            LightupHelper lightupHelperA = LVLightUpHelperInstance.a();
                            LightupDeviceType lightupDeviceType = LVLightUpHelper.f56151a;
                            if (lightupDeviceType == null) {
                                Intrinsics.h("lightUpDeviceType");
                                throw null;
                            }
                            LightupHelperInterface deviceHelper = lightupHelperA.getDeviceHelper(lightupDeviceType);
                            if (deviceHelper != null) {
                                deviceHelper.updateAnimations(true, dataUploadListener);
                            }
                        } else {
                            lightUpDetailFragment.z0();
                        }
                        return Unit.f71739a;
                    case 1:
                        LightUpDetailFragment.Companion companion2 = LightUpDetailFragment.INSTANCE;
                        ((View) obj).getClass();
                        if (LVLightUpHelper.c()) {
                            FragmentManager supportFragmentManager = lightUpDetailFragment.requireActivity().getSupportFragmentManager();
                            BaseListBottomSheet.Companion companion3 = BaseListBottomSheet.S;
                            Context context = lightUpDetailFragment.getContext();
                            LightupDeviceType lightupDeviceType2 = LVLightUpHelper.f56151a;
                            if (lightupDeviceType2 == null) {
                                Intrinsics.h("lightUpDeviceType");
                                throw null;
                            }
                            LightupDeviceType lightupDeviceType3 = LightupDeviceType.KEEPALL;
                            String strP2 = "";
                            if (lightupDeviceType2 == lightupDeviceType3) {
                                LightupHelper lightupHelperA2 = LVLightUpHelperInstance.a();
                                LightupDeviceType lightupDeviceType4 = LVLightUpHelper.f56151a;
                                if (lightupDeviceType4 == null) {
                                    Intrinsics.h("lightUpDeviceType");
                                    throw null;
                                }
                                LightupHelperInterface deviceHelper2 = lightupHelperA2.getDeviceHelper(lightupDeviceType4);
                                strP = deviceHelper2 != null ? deviceHelper2.getFirmwareVersion(PairOrientation.UNKNOWN) : null;
                                if (strP == null) {
                                    th = null;
                                    strP = "";
                                } else {
                                    th = null;
                                }
                            } else {
                                String string2 = context != null ? context.getString(R.string.light_up_sneaker_initial_left) : null;
                                LightupHelper lightupHelperA3 = LVLightUpHelperInstance.a();
                                th = null;
                                LightupDeviceType lightupDeviceType5 = LVLightUpHelper.f56151a;
                                if (lightupDeviceType5 == null) {
                                    Intrinsics.h("lightUpDeviceType");
                                    throw null;
                                }
                                LightupHelperInterface deviceHelper3 = lightupHelperA3.getDeviceHelper(lightupDeviceType5);
                                String firmwareVersion = deviceHelper3 != null ? deviceHelper3.getFirmwareVersion(PairOrientation.LEFT) : null;
                                String string3 = context != null ? context.getString(R.string.light_up_sneaker_initial_right) : null;
                                LightupHelper lightupHelperA4 = LVLightUpHelperInstance.a();
                                LightupDeviceType lightupDeviceType6 = LVLightUpHelper.f56151a;
                                if (lightupDeviceType6 == null) {
                                    Intrinsics.h("lightUpDeviceType");
                                    throw null;
                                }
                                LightupHelperInterface deviceHelper4 = lightupHelperA4.getDeviceHelper(lightupDeviceType6);
                                strP = d21.p(fc.s("[", string2, "] ", firmwareVersion, " ["), string3, "] ", deviceHelper4 != null ? deviceHelper4.getFirmwareVersion(PairOrientation.RIGHT) : null);
                            }
                            String strConcat = "Firmware: ".concat(strP);
                            Context context2 = lightUpDetailFragment.getContext();
                            LightupDeviceType lightupDeviceType7 = LVLightUpHelper.f56151a;
                            if (lightupDeviceType7 == null) {
                                Intrinsics.h("lightUpDeviceType");
                                throw th;
                            }
                            if (lightupDeviceType7 == lightupDeviceType3) {
                                LightupHelper lightupHelperA5 = LVLightUpHelperInstance.a();
                                LightupDeviceType lightupDeviceType8 = LVLightUpHelper.f56151a;
                                if (lightupDeviceType8 == null) {
                                    Intrinsics.h("lightUpDeviceType");
                                    throw th;
                                }
                                LightupHelperInterface deviceHelper5 = lightupHelperA5.getDeviceHelper(lightupDeviceType8);
                                Object boardVersion2 = deviceHelper5 != null ? deviceHelper5.getBoardVersion(PairOrientation.UNKNOWN) : th;
                                if (boardVersion2 != null) {
                                    strP2 = boardVersion2;
                                }
                            } else {
                                String string4 = context2 != null ? context2.getString(R.string.light_up_sneaker_initial_left) : th;
                                LightupHelper lightupHelperA6 = LVLightUpHelperInstance.a();
                                LightupDeviceType lightupDeviceType9 = LVLightUpHelper.f56151a;
                                if (lightupDeviceType9 == null) {
                                    Intrinsics.h("lightUpDeviceType");
                                    throw th;
                                }
                                LightupHelperInterface deviceHelper6 = lightupHelperA6.getDeviceHelper(lightupDeviceType9);
                                if (deviceHelper6 != null) {
                                    boardVersion = deviceHelper6.getBoardVersion(PairOrientation.LEFT);
                                } else {
                                    str = th;
                                }
                                if (context2 != null) {
                                    str = boardVersion;
                                    string = context2.getString(R.string.light_up_sneaker_initial_right);
                                } else {
                                    str = boardVersion;
                                    string = th;
                                }
                                LightupHelper lightupHelperA7 = LVLightUpHelperInstance.a();
                                LightupDeviceType lightupDeviceType10 = LVLightUpHelper.f56151a;
                                if (lightupDeviceType10 == null) {
                                    Intrinsics.h("lightUpDeviceType");
                                    throw th;
                                }
                                LightupHelperInterface deviceHelper7 = lightupHelperA7.getDeviceHelper(lightupDeviceType10);
                                strP2 = d21.p(fc.s("[", string4, "] ", str, " ["), string, "] ", deviceHelper7 != null ? deviceHelper7.getBoardVersion(PairOrientation.RIGHT) : th);
                            }
                            String strConcat2 = "Hardware: ".concat(strP2);
                            String strG = tr.g("SDK Version: ", LightupHelper.INSTANCE.getSdkVersion());
                            LightupDeviceType lightupDeviceType11 = LVLightUpHelper.f56151a;
                            if (lightupDeviceType11 == null) {
                                Intrinsics.h("lightUpDeviceType");
                                throw th;
                            }
                            LVLightUpDeviceType lVLightUpDeviceTypeA = LVLightUpMonitoringManagerKt.a(lightupDeviceType11);
                            int i6 = lVLightUpDeviceTypeA == null ? -1 : LVLightUpMonitoringManager$WhenMappings.f56161b[lVLightUpDeviceTypeA.ordinal()];
                            if (i6 == 1) {
                                LightupDevice lightupDevice2 = KeepAllMonitoringManager.f56158c;
                                if (lightupDevice2 != null) {
                                    debugIdentifier = lightupDevice2.getDebugIdentifier();
                                } else {
                                    debugIdentifier = th;
                                }
                            } else if (i6 == 2 && (lightupDevice = SneakerMonitoringManager.f56165c) != null) {
                                debugIdentifier = lightupDevice.getDebugIdentifier();
                            } else {
                                debugIdentifier = th;
                            }
                            List listP = CollectionsKt.P(strConcat, strConcat2, strG, tr.g("Identifier: ", debugIdentifier));
                            String string5 = lightUpDetailFragment.getString(R.string.version);
                            string5.getClass();
                            String string6 = lightUpDetailFragment.getString(R.string.version);
                            string6.getClass();
                            companion3.getClass();
                            BaseListBottomSheet.Companion.a(string5, string6, listP).show(supportFragmentManager, BaseListBottomSheet.V);
                        }
                        return Unit.f71739a;
                    default:
                        LightUpDetailFragment.Companion companion4 = LightUpDetailFragment.INSTANCE;
                        ((View) obj).getClass();
                        if (LVLightUpHelper.c()) {
                            GenericBottomSheet.Companion companion5 = GenericBottomSheet.R;
                            String string7 = lightUpDetailFragment.getString(R.string.lightup_unpair_popup_areyousure);
                            string7.getClass();
                            GenericBottomSheet genericBottomSheetB = GenericBottomSheet.Companion.b(companion5, string7, lightUpDetailFragment.getString(R.string.p12_lvpass_unpair_popup_areyousure_staypaired), lightUpDetailFragment.getString(R.string.p12_lvpass_unpair_popup_areyousure_yes), 16);
                            genericBottomSheetB.O = new GenericBottomSheet.OnPositiveClickListener() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment$showUnPairDialog$1
                                @Override // com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet.OnPositiveClickListener
                                public final void a() {
                                    LightUpDetailFragment.Y(lightUpDetailFragment);
                                }
                            };
                            genericBottomSheetB.show(lightUpDetailFragment.requireActivity().getSupportFragmentManager(), GenericBottomSheet.S);
                        } else {
                            lightUpDetailFragment.z0();
                        }
                        return Unit.f71739a;
                }
            }
        });
        LightUpPresetAdapter lightUpPresetAdapterH0 = h0();
        if (lightUpPresetAdapterH0 != null) {
            lightUpPresetAdapterH0.setHasStableIds(true);
        }
        RecyclerView recyclerView = fragmentLightUpProductDetailBindingE0.f51278j;
        recyclerView.setAdapter(new LightUpPresetAdapter(new w20(this, 7)));
        recyclerView.setItemAnimator(null);
    }

    public final void p0(LVLightUpPowerMode mode, LVLightUpPowerMode previousMode) {
        LightUpPresetAdapter lightUpPresetAdapterH0;
        mode.getClass();
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter == null || !defaultAdapter.isEnabled()) {
            FragmentActivity activity = getActivity();
            LightUpActivity lightUpActivity = activity instanceof LightUpActivity ? (LightUpActivity) activity : null;
            if (lightUpActivity != null) {
                ToastKt.a(lightUpActivity);
                return;
            }
            return;
        }
        if (!LVLightUpHelper.c()) {
            z0();
            return;
        }
        s0(mode);
        CreatorProject creatorProjectB = LVLightUpHelper.b();
        if (LVLightUpPowerMode.STANDBY != previousMode || creatorProjectB == null || (lightUpPresetAdapterH0 = h0()) == null) {
            return;
        }
        String id = creatorProjectB.getId();
        id.getClass();
        B0(creatorProjectB, lightUpPresetAdapterH0.a(id));
    }

    public abstract void q0(LVLightUpPowerMode selectedMode);

    public final void r0() {
        LightUpPresetAdapter lightUpPresetAdapterH0 = h0();
        if (lightUpPresetAdapterH0 != null) {
            lightUpPresetAdapterH0.d = null;
            lightUpPresetAdapterH0.notifyDataSetChanged();
        }
    }

    public final void s0(LVLightUpPowerMode lVLightUpPowerMode) {
        if (m0()) {
            w0(this, lVLightUpPowerMode, null, 2, null);
            switch (WhenMappings.f56112a[lVLightUpPowerMode.ordinal()]) {
                case 1:
                    LVLightUpHelper.e(DeviceMode.ECO);
                    LightUpProductUiModel lightUpProductUiModel = this.lightUpProduct;
                    if (lightUpProductUiModel != null) {
                        j0().Dc(LightUpProductUiModel.a(lightUpProductUiModel, LVLightUpPowerMode.ECO, null, null, null, 247));
                    }
                    break;
                case 2:
                    LVLightUpHelper.e(DeviceMode.STANDARD);
                    LightUpProductUiModel lightUpProductUiModel2 = this.lightUpProduct;
                    if (lightUpProductUiModel2 != null) {
                        j0().Dc(LightUpProductUiModel.a(lightUpProductUiModel2, LVLightUpPowerMode.STANDARD, null, null, null, 247));
                    }
                    break;
                case 3:
                    n0(null);
                    LightUpProductUiModel lightUpProductUiModel3 = this.lightUpProduct;
                    if (lightUpProductUiModel3 != null) {
                        j0().Dc(LightUpProductUiModel.a(lightUpProductUiModel3, LVLightUpPowerMode.STANDBY, null, null, null, 23));
                    }
                    break;
                case 4:
                    LVLightUpHelper.e(DeviceMode.ALWAYS_ON);
                    LightUpProductUiModel lightUpProductUiModel4 = this.lightUpProduct;
                    if (lightUpProductUiModel4 != null) {
                        j0().Dc(LightUpProductUiModel.a(lightUpProductUiModel4, LVLightUpPowerMode.ALWAYS_ON, null, null, null, 247));
                    }
                    break;
                case 5:
                    LVLightUpHelper.e(DeviceMode.WALKING);
                    LightUpProductUiModel lightUpProductUiModel5 = this.lightUpProduct;
                    if (lightUpProductUiModel5 != null) {
                        j0().Dc(LightUpProductUiModel.a(lightUpProductUiModel5, LVLightUpPowerMode.WALKING, null, null, null, 247));
                    }
                    break;
                case 6:
                    LVLightUpHelper.e(DeviceMode.DISCREET);
                    LightUpProductUiModel lightUpProductUiModel6 = this.lightUpProduct;
                    if (lightUpProductUiModel6 != null) {
                        j0().Dc(LightUpProductUiModel.a(lightUpProductUiModel6, LVLightUpPowerMode.DISCREET, null, null, null, 247));
                    }
                    break;
                default:
                    v40.g();
                    return;
            }
            LightUpProductUiModel lightUpProductUiModel7 = this.lightUpProduct;
            if (lightUpProductUiModel7 != null) {
                lightUpProductUiModel7.f55962e = lVLightUpPowerMode;
            }
        }
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.interfaces.LightUpFragmentInterface
    public void t() {
        LightupDevice lightupDevice;
        LightupDevice lightupDevice2;
        LightUpProductUiModel lightUpProductUiModel = this.lightUpProduct;
        LightupDevice lightupDevice3 = lightUpProductUiModel != null ? new LightupDevice(lightUpProductUiModel.f55963f) : null;
        if (LVLightUpHelper.c() && (((lightupDevice = KeepAllMonitoringManager.f56158c) != null && lightupDevice3 != null && String.valueOf(lightupDevice).equals(lightupDevice3.toString())) || ((lightupDevice2 = SneakerMonitoringManager.f56165c) != null && lightupDevice3 != null && String.valueOf(lightupDevice2).equals(lightupDevice3.toString())))) {
            k0();
            return;
        }
        if (LVLightUpHelper.c()) {
            LVLightUpHelper.a();
        }
        if (lightupDevice3 != null) {
            FragmentActivity activity = getActivity();
            LightUpActivity lightUpActivity = activity instanceof LightUpActivity ? (LightUpActivity) activity : null;
            if (lightUpActivity != null) {
                lightUpActivity.runOnUiThread(new r90(lightUpActivity, 8));
                LightupDeviceType type = lightupDevice3.getType();
                int i2 = type == null ? -1 : LVLightUpMonitoringManager$WhenMappings.f56160a[type.ordinal()];
                if (i2 == 1) {
                    KeepAllMonitoringManager.f56157b = lightUpActivity;
                    LVLightUpHelperInstance.a().connect(lightupDevice3, lightUpActivity, KeepAllMonitoringManager.f56156a);
                } else {
                    if (i2 != 2) {
                        return;
                    }
                    SneakerMonitoringManager.f56164b = lightUpActivity;
                    LVLightUpHelperInstance.a().connect(lightupDevice3, lightUpActivity, SneakerMonitoringManager.f56163a);
                }
            }
        }
    }

    public final void t0() {
        LVLightUpPowerMode lVLightUpPowerMode;
        LightUpProductUiModel lightUpProductUiModel = this.lightUpProduct;
        if (lightUpProductUiModel == null || (lVLightUpPowerMode = lightUpProductUiModel.f55962e) == null) {
            s0(LVLightUpPowerMode.ECO);
        } else {
            s0(lVLightUpPowerMode);
        }
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.interfaces.LightUpDetailFragmentInterface
    public void u() {
        GenericBottomSheet.Companion companion = GenericBottomSheet.R;
        String string = getString(R.string.light_up_pairing_long_message);
        string.getClass();
        String string2 = getString(R.string.light_up_detection_failed_negative_label);
        String string3 = getString(R.string.retrysynchro_btn_firstTime);
        String string4 = getString(R.string.light_up_detection_failed_title);
        companion.getClass();
        GenericBottomSheet genericBottomSheetA = GenericBottomSheet.Companion.a(string, string2, string3, string4);
        genericBottomSheetA.O = new GenericBottomSheet.OnPositiveClickListener() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment$showNoDeviceFoundBottomSheet$1
            @Override // com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet.OnPositiveClickListener
            public final void a() {
                FragmentActivity activity = this.f56114a.getActivity();
                LightUpActivity lightUpActivity = activity instanceof LightUpActivity ? (LightUpActivity) activity : null;
                if (lightUpActivity != null) {
                    lightUpActivity.H();
                }
            }
        };
        genericBottomSheetA.P = new GenericBottomSheet.OnNegativeClickListener() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment$showNoDeviceFoundBottomSheet$2
            @Override // com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet.OnNegativeClickListener
            public final void a() {
                LVLightUpDeviceType lVLightUpDeviceType;
                LightUpDetailFragment lightUpDetailFragment = this.f56115a;
                LightUpProductUiModel lightUpProductUiModel = lightUpDetailFragment.lightUpProduct;
                if (lightUpProductUiModel != null && (lVLightUpDeviceType = lightUpProductUiModel.f55961c) != null) {
                    lightUpDetailFragment.j0().f56133f.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.PairNoDeviceFoundCancelButtonClickEvent(lVLightUpDeviceType)));
                }
                lightUpDetailFragment.requireActivity().finish();
            }
        };
        genericBottomSheetA.show(requireActivity().getSupportFragmentManager(), GenericBottomSheet.S);
    }

    public final void u0(View view) {
        this.powerManagementLayout = view;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailView
    public void v() {
        LVLightUpDeviceType lVLightUpDeviceType;
        LightUpProductUiModel lightUpProductUiModel = this.lightUpProduct;
        if (lightUpProductUiModel != null && (lVLightUpDeviceType = lightUpProductUiModel.f55961c) != null) {
            int i2 = LVLightUpMonitoringManager$WhenMappings.f56161b[lVLightUpDeviceType.ordinal()];
            if (i2 == 1) {
                KeepAllMonitoringManager.f56158c = null;
                KeepAllMonitoringManager.f56157b = null;
                KeepAllMonitoringManager.d = null;
                KeepAllMonitoringManager.f56159e = null;
            } else {
                if (i2 != 2) {
                    v40.g();
                    return;
                }
                SneakerMonitoringManager.f56165c = null;
                SneakerMonitoringManager.f56164b = null;
                SneakerMonitoringManager.d = null;
                SneakerMonitoringManager.f56166e = null;
                SneakerMonitoringManager.f56167f = null;
                SneakerMonitoringManager.g = null;
                SneakerMonitoringManager.f56168h = null;
            }
        }
        this.lightUpProduct = null;
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    public final void v0(LVLightUpPowerMode powerMode, String customText) {
        Context context = getContext();
        if (context != null) {
            if (customText == null) {
                customText = powerMode != null ? LightUpDetailFragmentKt.a(powerMode, context) : "None";
            }
            TextView textView = (TextView) this.powerManagementLayout;
            if (textView != null) {
                textView.setText(String.format(Locale.getDefault(), "%s: %s", Arrays.copyOf(new Object[]{getString(R.string.light_up_power_management_title), customText}, 2)));
            }
        }
    }

    public abstract void x0();

    public void y0() {
        this.isAnimationsUpdateRequired = true;
        String string = getString(R.string.light_up_update_animations_required);
        string.getClass();
        A0(string);
    }

    public final void z0() {
        if (this.lightUpProduct != null) {
            GenericBottomSheet.Companion companion = GenericBottomSheet.R;
            String string = getString(R.string.lightup_device_shut_down);
            string.getClass();
            GenericBottomSheet genericBottomSheetB = GenericBottomSheet.Companion.b(companion, string, getString(R.string.btn_close), getString(R.string.button_try_again), 16);
            genericBottomSheetB.O = new GenericBottomSheet.OnPositiveClickListener() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment$showSwitchedOffDialog$1
                @Override // com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet.OnPositiveClickListener
                public final void a() {
                    LightUpDetailFragment lightUpDetailFragment = this.f56116a;
                    lightUpDetailFragment.b0();
                    FragmentActivity activity = lightUpDetailFragment.getActivity();
                    LightUpActivity lightUpActivity = activity instanceof LightUpActivity ? (LightUpActivity) activity : null;
                    if (lightUpActivity != null) {
                        lightUpActivity.H();
                    }
                }
            };
            genericBottomSheetB.show(requireActivity().getSupportFragmentManager(), GenericBottomSheet.S);
        }
    }
}
