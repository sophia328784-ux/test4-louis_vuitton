package com.sightcall.mediacapture.presenter.views.camera;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.ViewGroup;
import androidx.camera.core.Camera;
import androidx.camera.core.CameraControl;
import androidx.camera.core.ZoomState;
import androidx.camera.lifecycle.ProcessCameraProvider;
import androidx.camera.view.PreviewView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.batch.android.s.b;
import com.dynatrace.android.callback.Callback;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.chip.Chip;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.sensorsdata.analytics.android.autotrack.aop.FragmentTrackHelper;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sightcall.mediacapture.R;
import com.sightcall.mediacapture.databinding.FragmentCameraBinding;
import com.sightcall.mediacapture.presenter.CameraAction;
import com.sightcall.mediacapture.presenter.CameraActionsState;
import com.sightcall.mediacapture.presenter.CameraState;
import com.sightcall.mediacapture.presenter.MediaCaptureViewModel;
import com.sightcall.mediacapture.presenter.views.camera.CameraFragment;
import com.sightcall.mediacapture.presenter.views.collimator.CollimatorView;
import com.sightcall.pratik.logs.Logger;
import defpackage.SCCollimator;
import defpackage.d5;
import defpackage.v40;
import defpackage.w1;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000¤\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\b\u0010.\u001a\u0004\u0018\u00010/2\b\u00100\u001a\u0004\u0018\u000101H\u0016J\u001a\u00102\u001a\u0002032\u0006\u00104\u001a\u00020+2\b\u00100\u001a\u0004\u0018\u000101H\u0017J\u0012\u00105\u001a\u0002032\b\u00106\u001a\u0004\u0018\u000107H\u0002J\b\u00108\u001a\u000203H\u0016J\b\u00109\u001a\u000203H\u0016J\u0010\u0010:\u001a\u0002032\u0006\u0010;\u001a\u00020<H\u0002J\b\u0010=\u001a\u000203H\u0002J\u0010\u0010>\u001a\u0002032\u0006\u0010;\u001a\u00020?H\u0003J\u0010\u0010@\u001a\u0002032\u0006\u0010\"\u001a\u00020#H\u0002J\u0010\u0010A\u001a\u0002032\u0006\u0010\"\u001a\u00020#H\u0002J\b\u0010B\u001a\u000203H\u0016J\u0010\u0010C\u001a\u0002032\u0006\u0010;\u001a\u00020DH\u0002J\u0012\u0010E\u001a\u0004\u0018\u00010F2\u0006\u0010G\u001a\u00020HH\u0002J\u0018\u0010I\u001a\n K*\u0004\u0018\u00010J0J2\u0006\u0010G\u001a\u00020HH\u0002R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u00020\r8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00118BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u00118BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0013R\u0014\u0010\u0016\u001a\u00020\u00118BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00118BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0013R\u0014\u0010\u001a\u001a\u00020\u001b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\u001f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b \u0010!R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010$\u001a\b\u0012\u0004\u0012\u00020&0%X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020(X\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u0004\u0018\u00010(X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006L"}, d2 = {"Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "viewModel", "Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;", "getViewModel", "()Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "binding", "Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;", "cameraPreview", "Landroidx/camera/view/PreviewView;", "getCameraPreview", "()Landroidx/camera/view/PreviewView;", "mainActionButton", "Lcom/google/android/material/button/MaterialButton;", "getMainActionButton", "()Lcom/google/android/material/button/MaterialButton;", "backButton", "getBackButton", "switchActionButton", "getSwitchActionButton", "flashlightButton", "getFlashlightButton", "circularProgressIndicator", "Lcom/google/android/material/progressindicator/CircularProgressIndicator;", "getCircularProgressIndicator", "()Lcom/google/android/material/progressindicator/CircularProgressIndicator;", "timer", "Lcom/google/android/material/chip/Chip;", "getTimer", "()Lcom/google/android/material/chip/Chip;", "camera", "Landroidx/camera/core/Camera;", "zoomStateObserver", "Landroidx/lifecycle/Observer;", "Landroidx/camera/core/ZoomState;", "mainAction", "Lcom/sightcall/mediacapture/presenter/CameraAction;", "sideAction", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", "view", "onFrameCapture", "collimator", "LSCCollimator;", "onResume", "onPause", "onStateChange", "state", "Lcom/sightcall/mediacapture/presenter/CameraState;", "onPendingState", "onReadyState", "Lcom/sightcall/mediacapture/presenter/CameraState$Ready;", "enableCameraZoom", "showHideFlashlightButton", "onStop", "onActionsStateChange", "Lcom/sightcall/mediacapture/presenter/CameraActionsState;", "getActionDrawable", "Landroid/graphics/drawable/Drawable;", b.a.f24015b, "", "getColorState", "Landroid/content/res/ColorStateList;", "kotlin.jvm.PlatformType", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CameraFragment extends Fragment {
    private FragmentCameraBinding binding;
    private Camera camera;
    private CameraAction mainAction;
    private CameraAction sideAction;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;
    private Observer<ZoomState> zoomStateObserver;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CameraAction.values().length];
            try {
                iArr[CameraAction.STOP_RECORDING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CameraAction.TAKE_PHOTO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CameraAction.RECORD_VIDEO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public CameraFragment() {
        final w1 w1Var = new w1(this, 14);
        final Lazy lazyA = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<ViewModelStoreOwner>() { // from class: com.sightcall.mediacapture.presenter.views.camera.CameraFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final ViewModelStoreOwner mo47invoke() {
                return (ViewModelStoreOwner) w1Var.mo47invoke();
            }
        });
        final Function0 function0 = null;
        this.viewModel = new ViewModelLazy(Reflection.f71922a.b(MediaCaptureViewModel.class), new Function0<ViewModelStore>() { // from class: com.sightcall.mediacapture.presenter.views.camera.CameraFragment$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final ViewModelStore mo47invoke() {
                return ((ViewModelStoreOwner) lazyA.getF71699b()).getF13587c();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.sightcall.mediacapture.presenter.views.camera.CameraFragment$special$$inlined$viewModels$default$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final ViewModelProvider.Factory mo47invoke() {
                ViewModelProvider.Factory f13588e;
                ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) lazyA.getF71699b();
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner : null;
                if (hasDefaultViewModelProviderFactory != null && (f13588e = hasDefaultViewModelProviderFactory.getF13588e()) != null) {
                    return f13588e;
                }
                ViewModelProvider.Factory f13588e2 = this.getF13588e();
                f13588e2.getClass();
                return f13588e2;
            }
        }, new Function0<CreationExtras>() { // from class: com.sightcall.mediacapture.presenter.views.camera.CameraFragment$special$$inlined$viewModels$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final CreationExtras mo47invoke() {
                CreationExtras creationExtras;
                Function0 function1 = function0;
                if (function1 != null && (creationExtras = (CreationExtras) function1.mo47invoke()) != null) {
                    return creationExtras;
                }
                ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) lazyA.getF71699b();
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c;
            }
        });
    }

    private final void enableCameraZoom(final Camera camera) {
        this.zoomStateObserver = new Observer() { // from class: wi
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                CameraFragment.enableCameraZoom$lambda$0$0(this.f80880b, camera, camera, (ZoomState) obj);
            }
        };
        LiveData liveDataW = camera.b().w();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Observer<ZoomState> observer = this.zoomStateObserver;
        if (observer != null) {
            liveDataW.observe(viewLifecycleOwner, observer);
        } else {
            Intrinsics.h("zoomStateObserver");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void enableCameraZoom$lambda$0$0(CameraFragment cameraFragment, Camera camera, Camera camera2, ZoomState zoomState) {
        zoomState.getClass();
        cameraFragment.getCameraPreview().setOnTouchListener(new d5(new ScaleGestureDetector(cameraFragment.requireContext(), new ZoomManager(camera, zoomState)), 1));
        LiveData liveDataW = camera2.b().w();
        Observer<ZoomState> observer = cameraFragment.zoomStateObserver;
        if (observer != null) {
            liveDataW.removeObserver(observer);
        } else {
            Intrinsics.h("zoomStateObserver");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean enableCameraZoom$lambda$0$0$0(ScaleGestureDetector scaleGestureDetector, View view, MotionEvent motionEvent) {
        scaleGestureDetector.onTouchEvent(motionEvent);
        view.performClick();
        return true;
    }

    private final Drawable getActionDrawable(int id) {
        return ContextCompat.getDrawable(requireContext(), id);
    }

    private final MaterialButton getBackButton() {
        FragmentCameraBinding fragmentCameraBinding = this.binding;
        if (fragmentCameraBinding == null) {
            Intrinsics.h("binding");
            throw null;
        }
        MaterialButton materialButton = fragmentCameraBinding.back;
        materialButton.getClass();
        return materialButton;
    }

    private final PreviewView getCameraPreview() {
        FragmentCameraBinding fragmentCameraBinding = this.binding;
        if (fragmentCameraBinding == null) {
            Intrinsics.h("binding");
            throw null;
        }
        PreviewView previewView = fragmentCameraBinding.cameraPreview;
        previewView.getClass();
        return previewView;
    }

    private final CircularProgressIndicator getCircularProgressIndicator() {
        FragmentCameraBinding fragmentCameraBinding = this.binding;
        if (fragmentCameraBinding == null) {
            Intrinsics.h("binding");
            throw null;
        }
        CircularProgressIndicator circularProgressIndicator = fragmentCameraBinding.circularProgressIndicator;
        circularProgressIndicator.getClass();
        return circularProgressIndicator;
    }

    private final ColorStateList getColorState(int id) {
        return ContextCompat.getColorStateList(requireContext(), id);
    }

    private final MaterialButton getFlashlightButton() {
        FragmentCameraBinding fragmentCameraBinding = this.binding;
        if (fragmentCameraBinding == null) {
            Intrinsics.h("binding");
            throw null;
        }
        MaterialButton materialButton = fragmentCameraBinding.flashlight;
        materialButton.getClass();
        return materialButton;
    }

    private final MaterialButton getMainActionButton() {
        FragmentCameraBinding fragmentCameraBinding = this.binding;
        if (fragmentCameraBinding == null) {
            Intrinsics.h("binding");
            throw null;
        }
        MaterialButton materialButton = fragmentCameraBinding.mainAction;
        materialButton.getClass();
        return materialButton;
    }

    private final MaterialButton getSwitchActionButton() {
        FragmentCameraBinding fragmentCameraBinding = this.binding;
        if (fragmentCameraBinding == null) {
            Intrinsics.h("binding");
            throw null;
        }
        MaterialButton materialButton = fragmentCameraBinding.switchCamera;
        materialButton.getClass();
        return materialButton;
    }

    private final Chip getTimer() {
        FragmentCameraBinding fragmentCameraBinding = this.binding;
        if (fragmentCameraBinding == null) {
            Intrinsics.h("binding");
            throw null;
        }
        Chip chip = fragmentCameraBinding.timer;
        chip.getClass();
        return chip;
    }

    private final MediaCaptureViewModel getViewModel() {
        return (MediaCaptureViewModel) this.viewModel.getF71699b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: instrumented$0$onViewCreated$-Landroid-view-View-Landroid-os-Bundle--V, reason: not valid java name */
    public static /* synthetic */ void m63xf64d23e6(CameraFragment cameraFragment, View view) {
        Callback.n(view);
        try {
            onViewCreated$lambda$0(cameraFragment, view);
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: instrumented$1$onViewCreated$-Landroid-view-View-Landroid-os-Bundle--V, reason: not valid java name */
    public static /* synthetic */ void m64x1be12ce7(CameraFragment cameraFragment, View view) {
        Callback.n(view);
        try {
            onViewCreated$lambda$1(cameraFragment, view);
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: instrumented$2$onViewCreated$-Landroid-view-View-Landroid-os-Bundle--V, reason: not valid java name */
    public static /* synthetic */ void m65x417535e8(CameraFragment cameraFragment, View view) {
        Callback.n(view);
        try {
            onViewCreated$lambda$2(cameraFragment, view);
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: instrumented$3$onViewCreated$-Landroid-view-View-Landroid-os-Bundle--V, reason: not valid java name */
    public static /* synthetic */ void m66x67093ee9(CameraFragment cameraFragment, View view) {
        Callback.n(view);
        try {
            onViewCreated$lambda$3(cameraFragment, view);
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onActionsStateChange(CameraActionsState state) {
        this.mainAction = state.getMainAction();
        this.sideAction = state.getSideAction();
        MaterialButton mainActionButton = getMainActionButton();
        mainActionButton.setVisibility(0);
        int i2 = WhenMappings.$EnumSwitchMapping$0[state.getMainAction().ordinal()];
        if (i2 == 1) {
            mainActionButton.setIcon(getActionDrawable(R.drawable.ic_stop_recording));
            mainActionButton.setBackgroundTintList(getColorState(R.color.button_background_recording));
            getSwitchActionButton().setVisibility(8);
            getBackButton().setVisibility(8);
            getCircularProgressIndicator().setVisibility(state.getIsMaxDuration() ? 0 : 8);
        } else if (i2 == 2) {
            mainActionButton.setIcon(getActionDrawable(R.drawable.ic_photo_camera));
            mainActionButton.setBackgroundTintList(getColorState(R.color.button_background_default));
            getSwitchActionButton().setVisibility(0);
            getBackButton().setVisibility(0);
            getCircularProgressIndicator().setVisibility(state.getIsMaxDuration() ? 0 : 8);
        } else {
            if (i2 != 3) {
                v40.g();
                return;
            }
            mainActionButton.setIcon(getActionDrawable(R.drawable.ic_video_camera));
            mainActionButton.setBackgroundTintList(getColorState(R.color.button_background_default));
            getSwitchActionButton().setVisibility(0);
            getBackButton().setVisibility(0);
            getCircularProgressIndicator().setVisibility(state.getIsMaxDuration() ? 0 : 8);
        }
        getTimer().setVisibility(state.getIsRecoding() ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onFrameCapture(SCCollimator collimator) {
        if (collimator != null) {
            FragmentCameraBinding fragmentCameraBinding = this.binding;
            if (fragmentCameraBinding == null) {
                Intrinsics.h("binding");
                throw null;
            }
            CollimatorView collimatorView = fragmentCameraBinding.collimatorView;
            if (collimatorView != null) {
                collimatorView.setCollimator(collimator);
            }
            FragmentCameraBinding fragmentCameraBinding2 = this.binding;
            if (fragmentCameraBinding2 == null) {
                Intrinsics.h("binding");
                throw null;
            }
            CollimatorView collimatorView2 = fragmentCameraBinding2.collimatorView;
            if (collimatorView2 != null) {
                collimatorView2.setVisibility(0);
            }
        }
    }

    private final void onPendingState() {
        getCameraPreview().setVisibility(8);
    }

    private final void onReadyState(CameraState.Ready state) {
        getCameraPreview().setVisibility(0);
        try {
            state.getPreview().F(getCameraPreview().getSurfaceProvider());
            state.getCameraProvider().f2706a.d();
            ProcessCameraProvider cameraProvider = state.getCameraProvider();
            LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
            viewLifecycleOwner.getClass();
            Camera cameraA = cameraProvider.a(viewLifecycleOwner, state.getCameraSelector(), state.getUseCaseGroup());
            enableCameraZoom(cameraA);
            showHideFlashlightButton(cameraA);
            this.camera = cameraA;
        } catch (Exception unused) {
            Logger.INSTANCE.getTag();
            getViewModel().onStartCameraError();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onStateChange(CameraState state) {
        if (Intrinsics.c(state, CameraState.Pending.INSTANCE)) {
            onPendingState();
        } else if (state instanceof CameraState.Ready) {
            onReadyState((CameraState.Ready) state);
        } else {
            v40.g();
        }
    }

    private static final void onViewCreated$lambda$0(CameraFragment cameraFragment, View view) {
        CameraAction cameraAction = cameraFragment.mainAction;
        if (cameraAction == null) {
            Intrinsics.h("mainAction");
            throw null;
        }
        int i2 = WhenMappings.$EnumSwitchMapping$0[cameraAction.ordinal()];
        if (i2 != 1) {
            if (i2 != 2 && i2 != 3) {
                v40.g();
                return;
            }
            cameraFragment.requireActivity().setRequestedOrientation(14);
        }
        FragmentCameraBinding fragmentCameraBinding = cameraFragment.binding;
        if (fragmentCameraBinding == null) {
            Intrinsics.h("binding");
            throw null;
        }
        CollimatorView collimatorView = fragmentCameraBinding.collimatorView;
        if (collimatorView != null) {
            cameraFragment.getViewModel().updateCollimatorView(collimatorView.getWidth(), collimatorView.getHeight());
        }
        MediaCaptureViewModel viewModel = cameraFragment.getViewModel();
        CameraAction cameraAction2 = cameraFragment.mainAction;
        if (cameraAction2 == null) {
            Intrinsics.h("mainAction");
            throw null;
        }
        Context contextRequireContext = cameraFragment.requireContext();
        contextRequireContext.getClass();
        viewModel.onCameraMainActionPressed(cameraAction2, contextRequireContext);
    }

    private static final void onViewCreated$lambda$1(CameraFragment cameraFragment, View view) {
        cameraFragment.getViewModel().onBackPressed();
    }

    private static final void onViewCreated$lambda$2(CameraFragment cameraFragment, View view) {
        Integer numB = cameraFragment.getViewModel().getCameraSelector().b();
        cameraFragment.getViewModel().switchCamera(numB != null && numB.intValue() == 0);
    }

    private static final void onViewCreated$lambda$3(CameraFragment cameraFragment, View view) {
        cameraFragment.getViewModel().toggleFlashlight();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onViewCreated$lambda$4(CameraFragment cameraFragment, String str) {
        cameraFragment.getTimer().setText(str);
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onViewCreated$lambda$5(CameraFragment cameraFragment, Integer num) {
        CircularProgressIndicator circularProgressIndicator = cameraFragment.getCircularProgressIndicator();
        num.getClass();
        circularProgressIndicator.setProgress(num.intValue());
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onViewCreated$lambda$6(CameraFragment cameraFragment, Boolean bool) {
        CameraControl cameraControlA;
        Camera camera = cameraFragment.camera;
        if (camera != null && (cameraControlA = camera.a()) != null) {
            bool.getClass();
            cameraControlA.d(bool.booleanValue());
        }
        if (bool.booleanValue()) {
            cameraFragment.getFlashlightButton().setIconResource(com.sightcall.graphik.R.drawable.flashlight_on);
        } else {
            cameraFragment.getFlashlightButton().setIconResource(com.sightcall.graphik.R.drawable.flashlight_off);
        }
        return Unit.f71739a;
    }

    private final void showHideFlashlightButton(Camera camera) {
        boolean zI = camera.b().i();
        getFlashlightButton().setEnabled(zI);
        getFlashlightButton().setAlpha(zI ? 1.0f : 0.3f);
        if (camera.b().i()) {
            return;
        }
        getViewModel().resetFlashlight();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        inflater.getClass();
        FragmentCameraBinding fragmentCameraBindingInflate = FragmentCameraBinding.inflate(inflater);
        fragmentCameraBindingInflate.getClass();
        this.binding = fragmentCameraBindingInflate;
        if (fragmentCameraBindingInflate == null) {
            Intrinsics.h("binding");
            throw null;
        }
        ConstraintLayout constraintLayoutM59getRoot = fragmentCameraBindingInflate.getRoot();
        constraintLayoutM59getRoot.getClass();
        return constraintLayoutM59getRoot;
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        FragmentTrackHelper.trackOnHiddenChanged(this, z);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        requireActivity().getWindow().clearFlags(128);
        super.onPause();
        FragmentTrackHelper.trackFragmentPause(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        requireActivity().getWindow().addFlags(128);
        FragmentTrackHelper.trackFragmentResume(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        requireActivity().setRequestedOrientation(1);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        final int i2 = 0;
        getMainActionButton().setOnClickListener(new View.OnClickListener(this) { // from class: xi

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ CameraFragment f81132c;

            {
                this.f81132c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i3 = i2;
                CameraFragment cameraFragment = this.f81132c;
                switch (i3) {
                    case 0:
                        CameraFragment.m63xf64d23e6(cameraFragment, view2);
                        break;
                    case 1:
                        CameraFragment.m64x1be12ce7(cameraFragment, view2);
                        break;
                    case 2:
                        CameraFragment.m65x417535e8(cameraFragment, view2);
                        break;
                    default:
                        CameraFragment.m66x67093ee9(cameraFragment, view2);
                        break;
                }
            }
        });
        final int i3 = 1;
        getBackButton().setOnClickListener(new View.OnClickListener(this) { // from class: xi

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ CameraFragment f81132c;

            {
                this.f81132c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i4 = i3;
                CameraFragment cameraFragment = this.f81132c;
                switch (i4) {
                    case 0:
                        CameraFragment.m63xf64d23e6(cameraFragment, view2);
                        break;
                    case 1:
                        CameraFragment.m64x1be12ce7(cameraFragment, view2);
                        break;
                    case 2:
                        CameraFragment.m65x417535e8(cameraFragment, view2);
                        break;
                    default:
                        CameraFragment.m66x67093ee9(cameraFragment, view2);
                        break;
                }
            }
        });
        final int i4 = 2;
        getSwitchActionButton().setOnClickListener(new View.OnClickListener(this) { // from class: xi

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ CameraFragment f81132c;

            {
                this.f81132c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i5 = i4;
                CameraFragment cameraFragment = this.f81132c;
                switch (i5) {
                    case 0:
                        CameraFragment.m63xf64d23e6(cameraFragment, view2);
                        break;
                    case 1:
                        CameraFragment.m64x1be12ce7(cameraFragment, view2);
                        break;
                    case 2:
                        CameraFragment.m65x417535e8(cameraFragment, view2);
                        break;
                    default:
                        CameraFragment.m66x67093ee9(cameraFragment, view2);
                        break;
                }
            }
        });
        final int i5 = 3;
        getFlashlightButton().setOnClickListener(new View.OnClickListener(this) { // from class: xi

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ CameraFragment f81132c;

            {
                this.f81132c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i6 = i5;
                CameraFragment cameraFragment = this.f81132c;
                switch (i6) {
                    case 0:
                        CameraFragment.m63xf64d23e6(cameraFragment, view2);
                        break;
                    case 1:
                        CameraFragment.m64x1be12ce7(cameraFragment, view2);
                        break;
                    case 2:
                        CameraFragment.m65x417535e8(cameraFragment, view2);
                        break;
                    default:
                        CameraFragment.m66x67093ee9(cameraFragment, view2);
                        break;
                }
            }
        });
        getViewModel().getCameraState().observe(getViewLifecycleOwner(), new CameraFragment$sam$androidx_lifecycle_Observer$0(new AnonymousClass5(this)));
        getViewModel().getCameraActionsState().observe(getViewLifecycleOwner(), new CameraFragment$sam$androidx_lifecycle_Observer$0(new AnonymousClass6(this)));
        getViewModel().getTimer().observe(getViewLifecycleOwner(), new CameraFragment$sam$androidx_lifecycle_Observer$0(new Function1(this) { // from class: yi

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ CameraFragment f81370c;

            {
                this.f81370c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i6 = i2;
                CameraFragment cameraFragment = this.f81370c;
                switch (i6) {
                    case 0:
                        return CameraFragment.onViewCreated$lambda$4(cameraFragment, (String) obj);
                    case 1:
                        return CameraFragment.onViewCreated$lambda$5(cameraFragment, (Integer) obj);
                    default:
                        return CameraFragment.onViewCreated$lambda$6(cameraFragment, (Boolean) obj);
                }
            }
        }));
        getViewModel().getCollimatorState().observe(getViewLifecycleOwner(), new CameraFragment$sam$androidx_lifecycle_Observer$0(new AnonymousClass8(this)));
        getViewModel().getProgressValue().observe(getViewLifecycleOwner(), new CameraFragment$sam$androidx_lifecycle_Observer$0(new Function1(this) { // from class: yi

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ CameraFragment f81370c;

            {
                this.f81370c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i6 = i3;
                CameraFragment cameraFragment = this.f81370c;
                switch (i6) {
                    case 0:
                        return CameraFragment.onViewCreated$lambda$4(cameraFragment, (String) obj);
                    case 1:
                        return CameraFragment.onViewCreated$lambda$5(cameraFragment, (Integer) obj);
                    default:
                        return CameraFragment.onViewCreated$lambda$6(cameraFragment, (Boolean) obj);
                }
            }
        }));
        getViewModel().isFlashlightOn().observe(getViewLifecycleOwner(), new CameraFragment$sam$androidx_lifecycle_Observer$0(new Function1(this) { // from class: yi

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ CameraFragment f81370c;

            {
                this.f81370c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i6 = i4;
                CameraFragment cameraFragment = this.f81370c;
                switch (i6) {
                    case 0:
                        return CameraFragment.onViewCreated$lambda$4(cameraFragment, (String) obj);
                    case 1:
                        return CameraFragment.onViewCreated$lambda$5(cameraFragment, (Integer) obj);
                    default:
                        return CameraFragment.onViewCreated$lambda$6(cameraFragment, (Boolean) obj);
                }
            }
        }));
        getViewModel().startCamera();
        FragmentTrackHelper.onFragmentViewCreated(this, view, savedInstanceState);
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        FragmentTrackHelper.trackFragmentSetUserVisibleHint(this, z);
    }

    /* JADX INFO: renamed from: com.sightcall.mediacapture.presenter.views.camera.CameraFragment$onViewCreated$8, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class AnonymousClass8 extends FunctionReferenceImpl implements Function1<SCCollimator, Unit> {
        public AnonymousClass8(Object obj) {
            super(1, obj, CameraFragment.class, "onFrameCapture", "onFrameCapture(LSCCollimator;)V", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((SCCollimator) obj);
            return Unit.f71739a;
        }

        public final void invoke(SCCollimator sCCollimator) {
            ((CameraFragment) this.receiver).onFrameCapture(sCCollimator);
        }
    }

    /* JADX INFO: renamed from: com.sightcall.mediacapture.presenter.views.camera.CameraFragment$onViewCreated$5, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class AnonymousClass5 extends FunctionReferenceImpl implements Function1<CameraState, Unit> {
        public AnonymousClass5(Object obj) {
            super(1, obj, CameraFragment.class, "onStateChange", "onStateChange(Lcom/sightcall/mediacapture/presenter/CameraState;)V", 0);
        }

        public final void invoke(CameraState cameraState) {
            cameraState.getClass();
            ((CameraFragment) this.receiver).onStateChange(cameraState);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((CameraState) obj);
            return Unit.f71739a;
        }
    }

    /* JADX INFO: renamed from: com.sightcall.mediacapture.presenter.views.camera.CameraFragment$onViewCreated$6, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class AnonymousClass6 extends FunctionReferenceImpl implements Function1<CameraActionsState, Unit> {
        public AnonymousClass6(Object obj) {
            super(1, obj, CameraFragment.class, "onActionsStateChange", "onActionsStateChange(Lcom/sightcall/mediacapture/presenter/CameraActionsState;)V", 0);
        }

        public final void invoke(CameraActionsState cameraActionsState) {
            cameraActionsState.getClass();
            ((CameraFragment) this.receiver).onActionsStateChange(cameraActionsState);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((CameraActionsState) obj);
            return Unit.f71739a;
        }
    }
}
