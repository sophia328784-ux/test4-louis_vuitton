package com.vuitton.android.presentation.screen.onboarding;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import androidx.activity.compose.ActivityResultRegistryKt;
import androidx.activity.compose.ComponentActivityKt;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.NavHostController;
import androidx.navigation.Navigator;
import androidx.navigation.compose.NavHostControllerKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.platform.extensions.IntentExtensionKt;
import com.vuitton.android.presentation.compose.components.EdgeToEdgeKt;
import com.vuitton.android.presentation.link.LinkHandler;
import com.vuitton.android.presentation.screen.onboarding.OnboardingActivity;
import com.vuitton.android.presentation.screen.onboarding.OnboardingDestinations;
import com.vuitton.android.presentation.screen.onboarding.OnboardingDestinationsKt;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingTrackingUiModel;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingViewState;
import com.vuitton.android.presentation.screen.privacy.PrivacyViewModelImpl;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.md;
import defpackage.t30;
import defpackage.v40;
import defpackage.vg0;
import defpackage.wg0;
import defpackage.xg0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;", "Lcom/vuitton/android/presentation/screen/base/BaseActivity;", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class OnboardingActivity extends Hilt_OnboardingActivity {
    public static final Companion t = new Companion(null);
    public final Lazy p = LazyKt.b(new wg0(this, 0));
    public final ViewModelLazy q;
    public final ViewModelLazy r;
    public LinkHandler s;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$Companion;", "", "", "KEY_ONBOARDING_START_SCREEN_ROUTE", "Ljava/lang/String;", "", "NOTIFICATION_REQUEST_CODE", "I", "LOCATION_REQUEST_CODE", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public OnboardingActivity() {
        Function0<ViewModelProvider.Factory> function0 = new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.onboarding.OnboardingActivity$special$$inlined$viewModels$default$1
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        };
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        final Function0 function1 = null;
        this.q = new ViewModelLazy(reflectionFactory.b(PrivacyViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.onboarding.OnboardingActivity$special$$inlined$viewModels$default$2
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, function0, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.onboarding.OnboardingActivity$special$$inlined$viewModels$default$3
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function2 = function1;
                return (function2 == null || (creationExtras = (CreationExtras) function2.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
        this.r = new ViewModelLazy(reflectionFactory.b(OnboardingViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.onboarding.OnboardingActivity$special$$inlined$viewModels$default$5
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.onboarding.OnboardingActivity$special$$inlined$viewModels$default$4
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.onboarding.OnboardingActivity$special$$inlined$viewModels$default$6
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function2 = function1;
                return (function2 == null || (creationExtras = (CreationExtras) function2.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
    }

    public static OnboardingRoutes H(OnboardingActivity onboardingActivity) {
        Object serializableExtra;
        Intent intent = onboardingActivity.getIntent();
        if (intent != null) {
            if (Build.VERSION.SDK_INT >= 33) {
                serializableExtra = intent.getSerializableExtra("ONBOARDING_START_SCREEN_ROUTE", OnboardingRoutesName.class);
            } else {
                Object serializableExtra2 = intent.getSerializableExtra("ONBOARDING_START_SCREEN_ROUTE");
                if (!(serializableExtra2 instanceof OnboardingRoutesName)) {
                    serializableExtra2 = null;
                }
                serializableExtra = (OnboardingRoutesName) serializableExtra2;
            }
            OnboardingRoutesName onboardingRoutesName = (OnboardingRoutesName) serializableExtra;
            if (onboardingRoutesName != null) {
                switch (OnboardingNavHostKt.WhenMappings.f59484a[onboardingRoutesName.ordinal()]) {
                    case 1:
                        return OnboardingRoutes.Login.INSTANCE;
                    case 2:
                        return OnboardingRoutes.PrivacyPreCompliance.INSTANCE;
                    case 3:
                        return OnboardingRoutes.PiplCbt.INSTANCE;
                    case 4:
                        return OnboardingRoutes.Privacy.INSTANCE;
                    case 5:
                        return OnboardingRoutes.StartNow.INSTANCE;
                    case 6:
                        return OnboardingRoutes.Notifications.INSTANCE;
                    case 7:
                        return OnboardingRoutes.Geolocation.INSTANCE;
                    case 8:
                        return OnboardingRoutes.Icons.INSTANCE;
                    case 9:
                        return OnboardingRoutes.Transition.INSTANCE;
                    case 10:
                        md.n("DONE is not a valid navigation route");
                        return null;
                    default:
                        v40.g();
                        return null;
                }
            }
        }
        return null;
    }

    public final void I(Composer composer, int i2) {
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(1756737189);
        int i3 = (gapComposerH.y(this) ? 4 : 2) | i2;
        final int i4 = 1;
        final int i5 = 0;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            NavHostController navHostControllerA = NavHostControllerKt.a(new Navigator[0], gapComposerH);
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            Unit unit = Unit.f71739a;
            boolean zY = gapComposerH.y(this) | gapComposerH.y(navHostControllerA);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new OnboardingActivity$OnboardingActivityComposable$1$1(this, navHostControllerA, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            ActivityResultContracts$StartActivityForResult activityResultContracts$StartActivityForResult = new ActivityResultContracts$StartActivityForResult();
            boolean zY2 = gapComposerH.y(this) | gapComposerH.y(navHostControllerA);
            Object objX2 = gapComposerH.x();
            if (zY2 || objX2 == composer$Companion$Empty$1) {
                objX2 = new xg0(this, navHostControllerA, i5);
                gapComposerH.q(objX2);
            }
            final ManagedActivityResultLauncher managedActivityResultLauncherA = ActivityResultRegistryKt.a(activityResultContracts$StartActivityForResult, (Function1) objX2, gapComposerH, 0);
            OnboardingRoutes onboardingRoutes = (OnboardingRoutes) this.p.getF71699b();
            if (onboardingRoutes == null) {
                onboardingRoutes = OnboardingRoutes.StartNow.INSTANCE;
            }
            OnboardingRoutes onboardingRoutes2 = onboardingRoutes;
            OnboardingViewModelImpl onboardingViewModelImplJ = J();
            PrivacyViewModelImpl privacyViewModelImpl = (PrivacyViewModelImpl) this.q.getF71699b();
            boolean zY3 = gapComposerH.y(this);
            Object objX3 = gapComposerH.x();
            if (zY3 || objX3 == composer$Companion$Empty$1) {
                OnboardingActivity$OnboardingActivityComposable$2$1 onboardingActivity$OnboardingActivityComposable$2$1 = new OnboardingActivity$OnboardingActivityComposable$2$1(1, this, OnboardingActivity.class, "openPiplDeeplink", "openPiplDeeplink(Ljava/lang/String;)V", 0);
                gapComposerH.q(onboardingActivity$OnboardingActivityComposable$2$1);
                objX3 = onboardingActivity$OnboardingActivityComposable$2$1;
            }
            KFunction kFunction = (KFunction) objX3;
            OnboardingViewModelImpl onboardingViewModelImplJ2 = J();
            boolean zY4 = gapComposerH.y(onboardingViewModelImplJ2);
            Object objX4 = gapComposerH.x();
            if (zY4 || objX4 == composer$Companion$Empty$1) {
                objX4 = new OnboardingActivity$OnboardingActivityComposable$3$1(1, onboardingViewModelImplJ2, OnboardingViewModelImpl.class, "setOnboardingState", "setOnboardingState(Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;)V", 0);
                gapComposerH.q(objX4);
            }
            KFunction kFunction2 = (KFunction) objX4;
            boolean zY5 = gapComposerH.y(this);
            Object objX5 = gapComposerH.x();
            if (zY5 || objX5 == composer$Companion$Empty$1) {
                OnboardingActivity$OnboardingActivityComposable$4$1 onboardingActivity$OnboardingActivityComposable$4$1 = new OnboardingActivity$OnboardingActivityComposable$4$1(0, this, OnboardingActivity.class, "onLocationAuthorisationClick", "onLocationAuthorisationClick()V", 0);
                gapComposerH.q(onboardingActivity$OnboardingActivityComposable$4$1);
                objX5 = onboardingActivity$OnboardingActivityComposable$4$1;
            }
            KFunction kFunction3 = (KFunction) objX5;
            boolean zY6 = gapComposerH.y(this);
            Object objX6 = gapComposerH.x();
            if (zY6 || objX6 == composer$Companion$Empty$1) {
                OnboardingActivity$OnboardingActivityComposable$5$1 onboardingActivity$OnboardingActivityComposable$5$1 = new OnboardingActivity$OnboardingActivityComposable$5$1(0, this, OnboardingActivity.class, "onNotificationAuthorisationClick", "onNotificationAuthorisationClick()V", 0);
                gapComposerH.q(onboardingActivity$OnboardingActivityComposable$5$1);
                objX6 = onboardingActivity$OnboardingActivityComposable$5$1;
            }
            KFunction kFunction4 = (KFunction) objX6;
            boolean zY7 = gapComposerH.y(this);
            Object objX7 = gapComposerH.x();
            if (zY7 || objX7 == composer$Companion$Empty$1) {
                OnboardingActivity$OnboardingActivityComposable$6$1 onboardingActivity$OnboardingActivityComposable$6$1 = new OnboardingActivity$OnboardingActivityComposable$6$1(0, this, OnboardingActivity.class, "getCurrentIcon", "getCurrentIcon()Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;", 0);
                gapComposerH.q(onboardingActivity$OnboardingActivityComposable$6$1);
                objX7 = onboardingActivity$OnboardingActivityComposable$6$1;
            }
            KFunction kFunction5 = (KFunction) objX7;
            boolean zY8 = gapComposerH.y(this);
            Object objX8 = gapComposerH.x();
            if (zY8 || objX8 == composer$Companion$Empty$1) {
                OnboardingActivity$OnboardingActivityComposable$7$1 onboardingActivity$OnboardingActivityComposable$7$1 = new OnboardingActivity$OnboardingActivityComposable$7$1(1, this, OnboardingActivity.class, "onUpdateLauncherIcon", "onUpdateLauncherIcon(Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;)V", 0);
                gapComposerH.q(onboardingActivity$OnboardingActivityComposable$7$1);
                objX8 = onboardingActivity$OnboardingActivityComposable$7$1;
            }
            KFunction kFunction6 = (KFunction) objX8;
            boolean zY9 = gapComposerH.y(this);
            Object objX9 = gapComposerH.x();
            if (zY9 || objX9 == composer$Companion$Empty$1) {
                OnboardingActivity$OnboardingActivityComposable$8$1 onboardingActivity$OnboardingActivityComposable$8$1 = new OnboardingActivity$OnboardingActivityComposable$8$1(0, this, OnboardingActivity.class, "finishOnboarding", "finishOnboarding()V", 0);
                gapComposerH.q(onboardingActivity$OnboardingActivityComposable$8$1);
                objX9 = onboardingActivity$OnboardingActivityComposable$8$1;
            }
            KFunction kFunction7 = (KFunction) objX9;
            boolean zY10 = gapComposerH.y(this);
            Object objX10 = gapComposerH.x();
            if (zY10 || objX10 == composer$Companion$Empty$1) {
                OnboardingActivity$OnboardingActivityComposable$9$1 onboardingActivity$OnboardingActivityComposable$9$1 = new OnboardingActivity$OnboardingActivityComposable$9$1(0, this, OnboardingActivity.class, "finish", "finish()V", 0);
                gapComposerH.q(onboardingActivity$OnboardingActivityComposable$9$1);
                objX10 = onboardingActivity$OnboardingActivityComposable$9$1;
            }
            KFunction kFunction8 = (KFunction) objX10;
            boolean zY11 = gapComposerH.y(this);
            Object objX11 = gapComposerH.x();
            if (zY11 || objX11 == composer$Companion$Empty$1) {
                OnboardingActivity$OnboardingActivityComposable$10$1 onboardingActivity$OnboardingActivityComposable$10$1 = new OnboardingActivity$OnboardingActivityComposable$10$1(2, this, EdgeToEdgeKt.class, "edgeToEdgeFullTransparency", "edgeToEdgeFullTransparency--UQiWvU(Landroidx/activity/ComponentActivity;ZZ)V", 1);
                gapComposerH.q(onboardingActivity$OnboardingActivityComposable$10$1);
                objX11 = onboardingActivity$OnboardingActivityComposable$10$1;
            }
            KFunction kFunction9 = (KFunction) objX11;
            boolean zY12 = gapComposerH.y(this);
            Object objX12 = gapComposerH.x();
            if (zY12 || objX12 == composer$Companion$Empty$1) {
                OnboardingActivity$OnboardingActivityComposable$11$1 onboardingActivity$OnboardingActivityComposable$11$1 = new OnboardingActivity$OnboardingActivityComposable$11$1(0, this, OnboardingActivity.class, "openAccessibilityStatement", "openAccessibilityStatement()V", 0);
                gapComposerH.q(onboardingActivity$OnboardingActivityComposable$11$1);
                objX12 = onboardingActivity$OnboardingActivityComposable$11$1;
            }
            KFunction kFunction10 = (KFunction) objX12;
            boolean zY13 = gapComposerH.y(this);
            Object objX13 = gapComposerH.x();
            if (zY13 || objX13 == composer$Companion$Empty$1) {
                objX13 = new wg0(this, 1);
                gapComposerH.q(objX13);
            }
            Function0 function0 = (Function0) objX13;
            boolean zY14 = gapComposerH.y(lVModalBottomSheetStateF) | gapComposerH.y(navHostControllerA);
            Object objX14 = gapComposerH.x();
            if (zY14 || objX14 == composer$Companion$Empty$1) {
                objX14 = new t30(lVModalBottomSheetStateF, navHostControllerA, 27);
                gapComposerH.q(objX14);
            }
            Function0 function1 = (Function0) objX14;
            Function1 function2 = (Function1) kFunction;
            Function0 function3 = (Function0) kFunction8;
            Function1 function4 = (Function1) kFunction2;
            boolean zY15 = gapComposerH.y(this) | gapComposerH.y(managedActivityResultLauncherA);
            Object objX15 = gapComposerH.x();
            if (zY15 || objX15 == composer$Companion$Empty$1) {
                objX15 = new Function0(this) { // from class: yg0

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ OnboardingActivity f81362c;

                    {
                        this.f81362c = this;
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        int i6 = i5;
                        ManagedActivityResultLauncher managedActivityResultLauncher = managedActivityResultLauncherA;
                        OnboardingActivity onboardingActivity = this.f81362c;
                        switch (i6) {
                            case 0:
                                OnboardingActivity.Companion companion = OnboardingActivity.t;
                                onboardingActivity.J().D4(OnboardingTrackingUiModel.LogInClickEvent.f59592a);
                                IntentExtensionKt.b(OnboardingDestinationsKt.a(OnboardingDestinations.ToLoginPage.f59472a, onboardingActivity), managedActivityResultLauncher);
                                break;
                            default:
                                OnboardingActivity.Companion companion2 = OnboardingActivity.t;
                                onboardingActivity.J().D4(OnboardingTrackingUiModel.SignUpClickEvent.f59597a);
                                IntentExtensionKt.b(OnboardingDestinationsKt.a(OnboardingDestinations.ToRegisterPage.f59473a, onboardingActivity), managedActivityResultLauncher);
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX15);
            }
            Function0 function5 = (Function0) objX15;
            boolean zY16 = gapComposerH.y(this) | gapComposerH.y(managedActivityResultLauncherA);
            Object objX16 = gapComposerH.x();
            if (zY16 || objX16 == composer$Companion$Empty$1) {
                objX16 = new Function0(this) { // from class: yg0

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ OnboardingActivity f81362c;

                    {
                        this.f81362c = this;
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        int i6 = i4;
                        ManagedActivityResultLauncher managedActivityResultLauncher = managedActivityResultLauncherA;
                        OnboardingActivity onboardingActivity = this.f81362c;
                        switch (i6) {
                            case 0:
                                OnboardingActivity.Companion companion = OnboardingActivity.t;
                                onboardingActivity.J().D4(OnboardingTrackingUiModel.LogInClickEvent.f59592a);
                                IntentExtensionKt.b(OnboardingDestinationsKt.a(OnboardingDestinations.ToLoginPage.f59472a, onboardingActivity), managedActivityResultLauncher);
                                break;
                            default:
                                OnboardingActivity.Companion companion2 = OnboardingActivity.t;
                                onboardingActivity.J().D4(OnboardingTrackingUiModel.SignUpClickEvent.f59597a);
                                IntentExtensionKt.b(OnboardingDestinationsKt.a(OnboardingDestinations.ToRegisterPage.f59473a, onboardingActivity), managedActivityResultLauncher);
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX16);
            }
            gapComposer = gapComposerH;
            OnboardingNavHostKt.b(navHostControllerA, lVModalBottomSheetStateF, onboardingViewModelImplJ, privacyViewModelImpl, onboardingRoutes2, function0, function1, function2, function3, function4, function5, (Function0) objX16, (Function0) kFunction3, (Function0) kFunction4, (Function0) kFunction5, (Function1) kFunction6, (Function0) kFunction7, (Function2) kFunction9, (Function0) kFunction10, gapComposer, LVModalBottomSheetState.f48797e << 3);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new vg0(this, i2);
        }
    }

    public final OnboardingViewModelImpl J() {
        return (OnboardingViewModelImpl) this.r.getF71699b();
    }

    public final void K() {
        if (((OnboardingViewState) J().p.getValue()).f59600a) {
            J().yc(OnboardingRoutes.Icons.INSTANCE);
        } else {
            J().yc(OnboardingRoutes.Transition.INSTANCE);
        }
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        EdgeToEdgeKt.b(this, false, false, 3);
        ComponentActivityKt.a(this, new ComposableLambdaImpl(1754171016, true, new vg0(this, 0, (byte) 0)));
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        strArr.getClass();
        iArr.getClass();
        super.onRequestPermissionsResult(i2, strArr, iArr);
        if (iArr.length == 0) {
            return;
        }
        if (i2 == 22) {
            if (iArr[0] == 0) {
                J().D4(OnboardingTrackingUiModel.GeolocationAllowedEvent.f59585a);
            } else {
                J().D4(OnboardingTrackingUiModel.GeolocationRefusedEvent.f59587a);
            }
            K();
            return;
        }
        if (i2 != 32) {
            return;
        }
        if (iArr[0] == 0) {
            J().D4(OnboardingTrackingUiModel.NotificationsAllowedEvent.f59594a);
        } else {
            J().D4(OnboardingTrackingUiModel.NotificationsRefusedEvent.f59596a);
        }
        J().yc(OnboardingRoutes.Geolocation.INSTANCE);
    }
}
