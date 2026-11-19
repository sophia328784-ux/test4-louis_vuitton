package com.vuitton.android.presentation.screen.feed.components;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Parcelable;
import androidx.activity.compose.ActivityResultRegistryKt;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.contract.ActivityResultContracts$RequestMultiplePermissions;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.core.content.ContextCompat;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.platform.extensions.IntentExtensionKt;
import com.vuitton.android.presentation.common.editorial.models.LiveFormatUiModel;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVFeedCompositionLocalProviderKt;
import com.vuitton.android.presentation.contact.compose.ContactUsBottomSheetKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.model.common.FeatureThemeUiModel;
import com.vuitton.android.presentation.model.common.VideoIdUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.notification.NotificationBuilderKt;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTracker;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTrackerEntryPointKt;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.social.components.SocialLoginBottomSheetKt;
import com.vuitton.android.presentation.screen.authentication.social.components.SocialLoginBottomSheetState;
import com.vuitton.android.presentation.screen.feed.FeedDestinations;
import com.vuitton.android.presentation.screen.feed.FeedDestinationsKt;
import com.vuitton.android.presentation.screen.feed.FeedViewModel;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import com.vuitton.android.presentation.screen.feed.models.FeedViewState;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTracker;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTrackerEntryPointKt;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTrackingUiModel;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTrackingUiModelKt;
import com.vuitton.android.presentation.screen.feed.models.uimodels.AudioGuideBannerUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import com.vuitton.android.presentation.screen.permissions.models.HandleNotificationsPermissionStateKt;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsBottomSheet;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsUiModel;
import com.vuitton.android.presentation.utils.PermissionUtils;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceAction;
import defpackage.d1;
import defpackage.dt;
import defpackage.ef;
import defpackage.ew;
import defpackage.g1;
import defpackage.g4;
import defpackage.gk;
import defpackage.gv;
import defpackage.gx;
import defpackage.hx;
import defpackage.iv;
import defpackage.jx;
import defpackage.lf;
import defpackage.n0;
import defpackage.qb0;
import defpackage.rs;
import defpackage.t8;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.flow.SharedFlow;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\b²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u00048\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0007\u001a\u00020\u00068\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;", "viewState", "Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;", "permissionViewState", "Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;", "currentTab", "", "bannerVisible", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FeedComposableKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f57807a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f57808b;

        static {
            int[] iArr = new int[CareServiceAction.values().length];
            try {
                iArr[CareServiceAction.ConfirmEstimate.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CareServiceAction.ConfirmAddress.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CareServiceAction.AwaitingPayment.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f57807a = iArr;
            int[] iArr2 = new int[FeatureThemeUiModel.values().length];
            try {
                iArr2[FeatureThemeUiModel.DARK.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[FeatureThemeUiModel.LIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            f57808b = iArr2;
        }
    }

    public static Unit a(Context context, ActivityResult activityResult) {
        Intent intent;
        Parcelable parcelable;
        activityResult.getClass();
        if (activityResult.f731b == -1 && (intent = activityResult.f732c) != null) {
            if (Build.VERSION.SDK_INT >= 33) {
                parcelable = (Parcelable) intent.getParcelableExtra("CUSTOMIZATION_ID", CustomizationIdUiModel.class);
            } else {
                Parcelable parcelableExtra = intent.getParcelableExtra("CUSTOMIZATION_ID");
                if (!(parcelableExtra instanceof CustomizationIdUiModel)) {
                    parcelableExtra = null;
                }
                parcelable = (CustomizationIdUiModel) parcelableExtra;
            }
            String stringExtra = intent.getStringExtra("SKU");
            if (parcelable != null && stringExtra != null) {
                CustomizationIdUiModel customizationIdUiModel = (CustomizationIdUiModel) parcelable;
                AppCompatActivity appCompatActivityB = ContextExtKt.b(context);
                if (appCompatActivityB != null) {
                    SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                    appCompatActivityB.startActivity(FeedDestinationsKt.a(new FeedDestinations.ToPdpPage(stringExtra, customizationIdUiModel, null), appCompatActivityB));
                }
            }
        }
        return Unit.f71739a;
    }

    public static final void b(final FeedViewModel feedViewModel, final PermissionsViewModel permissionsViewModel, final ContributionLinkNavigator contributionLinkNavigator, final SharedFlow sharedFlow, final Function1 function1, final Function1 function2, final qb0 qb0Var, final Function1 function3, final Function0 function0, final Function0 function4, final Function0 function5, Composer composer, int i2) {
        feedViewModel.getClass();
        permissionsViewModel.getClass();
        sharedFlow.getClass();
        function1.getClass();
        function3.getClass();
        function0.getClass();
        function4.getClass();
        function5.getClass();
        GapComposer gapComposerH = composer.h(1739108134);
        int i3 = i2 | (gapComposerH.K(feedViewModel) ? 4 : 2) | (gapComposerH.K(permissionsViewModel) ? 32 : 16) | (gapComposerH.y(contributionLinkNavigator) ? 256 : 128) | (gapComposerH.y(sharedFlow) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function2) ? 131072 : 65536) | (gapComposerH.y(qb0Var) ? 1048576 : 524288) | (gapComposerH.y(function3) ? 8388608 : 4194304) | (gapComposerH.y(function0) ? 67108864 : 33554432) | (gapComposerH.y(function4) ? PKIFailureInfo.duplicateCertReq : 268435456);
        if (gapComposerH.p(i3 & 1, ((306783379 & i3) == 306783378 && ((gapComposerH.y(function5) ? (char) 4 : (char) 2) & 3) == 2) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVFeedCompositionLocalProviderKt.b(ComposableLambdaKt.b(-982602945, new Function2() { // from class: com.vuitton.android.presentation.screen.feed.components.b
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Object feedComposableKt$FeedComposable$1$2$1;
                    final FeedViewModel feedViewModel2;
                    Unit unit;
                    FeedTracker feedTracker;
                    MutableState mutableState;
                    final int i4;
                    PermissionsViewModel permissionsViewModel2;
                    FeedViewModel feedViewModel3;
                    final FeedTracker feedTracker2;
                    SnackbarHostState snackbarHostState;
                    Object feedComposableKt$FeedComposable$1$6$1;
                    final FeedViewModel feedViewModel4;
                    PermissionsViewModel permissionsViewModel3;
                    ManagedActivityResultLauncher managedActivityResultLauncher;
                    PermissionsViewModel permissionsViewModel4;
                    MutableState mutableState2;
                    MutableState mutableState3;
                    boolean z;
                    Context context;
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Integer) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Context context2 = (Context) composer2.k(AndroidCompositionLocals_androidKt.f9936b);
                        FeedTracker feedTracker3 = (FeedTracker) composer2.k(FeedTrackerEntryPointKt.f57934a);
                        AICompanionTracker aICompanionTracker = (AICompanionTracker) composer2.k(AICompanionTrackerEntryPointKt.f52911a);
                        final SocialLoginBottomSheetState socialLoginBottomSheetStateB = SocialLoginBottomSheetKt.b(TrackingAuthOrigin.FEED, function5, function4, null, null, composer2, 6, 24);
                        FeedViewModel feedViewModel5 = feedViewModel;
                        MutableState mutableStateB = SnapshotStateKt.b(feedViewModel5.a(), composer2);
                        PermissionsViewModel permissionsViewModel5 = permissionsViewModel;
                        MutableState mutableStateB2 = SnapshotStateKt.b(permissionsViewModel5.getU(), composer2);
                        LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, composer2, null);
                        LVModalBottomSheetState lVModalBottomSheetStateF2 = LVModalBottomSheetKt.f(0, 7, composer2, null);
                        LVModalBottomSheetState lVModalBottomSheetStateF3 = LVModalBottomSheetKt.f(0, 7, composer2, null);
                        NotificationBuilder notificationBuilderA = NotificationBuilderKt.a(composer2);
                        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                        Object objX = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (objX == composer$Companion$Empty$1) {
                            composer2.q("");
                            objX = "";
                        }
                        ref$ObjectRef.f71921b = (String) objX;
                        Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
                        Object objX2 = composer2.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new ew(24);
                            composer2.q(objX2);
                        }
                        ref$ObjectRef2.f71921b = (Function0) objX2;
                        final Ref$ObjectRef ref$ObjectRef3 = new Ref$ObjectRef();
                        Object objX3 = composer2.x();
                        if (objX3 == composer$Companion$Empty$1) {
                            objX3 = new VideoIdUiModel("");
                            composer2.q(objX3);
                        }
                        ref$ObjectRef3.f71921b = ((VideoIdUiModel) objX3).f51799b;
                        Object objX4 = composer2.x();
                        if (objX4 == composer$Companion$Empty$1) {
                            objX4 = SnapshotStateKt.g(((FeedViewState) mutableStateB.getF10755b()).f57924b);
                            composer2.q(objX4);
                        }
                        MutableState mutableState4 = (MutableState) objX4;
                        FeedTab feedTab = ((FeedViewState) mutableStateB.getF10755b()).f57924b;
                        boolean zK = composer2.K(mutableStateB);
                        Object objX5 = composer2.x();
                        if (zK || objX5 == composer$Companion$Empty$1) {
                            objX5 = new FeedComposableKt$FeedComposable$1$1$1(mutableStateB, mutableState4, null);
                            composer2.q(objX5);
                        }
                        EffectsKt.e(composer2, feedTab, (Function2) objX5);
                        ActivityResultContracts$RequestMultiplePermissions activityResultContracts$RequestMultiplePermissions = new ActivityResultContracts$RequestMultiplePermissions();
                        g4 g4Var = new g4(feedTracker3, ref$ObjectRef, ref$ObjectRef2, lVModalBottomSheetStateF3, context2, mutableState4, 4);
                        Context context3 = context2;
                        ManagedActivityResultLauncher managedActivityResultLauncherA = ActivityResultRegistryKt.a(activityResultContracts$RequestMultiplePermissions, g4Var, composer2, 0);
                        Object objX6 = composer2.x();
                        if (objX6 == composer$Companion$Empty$1) {
                            objX6 = new SnackbarHostState();
                            composer2.q(objX6);
                        }
                        SnackbarHostState snackbarHostState2 = (SnackbarHostState) objX6;
                        Unit unit2 = Unit.f71739a;
                        boolean zY = composer2.y(feedViewModel5) | composer2.y(context3) | composer2.K(mutableStateB);
                        Object objX7 = composer2.x();
                        if (zY || objX7 == composer$Companion$Empty$1) {
                            feedViewModel2 = feedViewModel5;
                            unit = unit2;
                            feedTracker = feedTracker3;
                            feedComposableKt$FeedComposable$1$2$1 = new FeedComposableKt$FeedComposable$1$2$1(feedViewModel2, snackbarHostState2, context3, mutableStateB, null);
                            mutableState = mutableStateB;
                            composer2.q(feedComposableKt$FeedComposable$1$2$1);
                        } else {
                            mutableState = mutableStateB;
                            unit = unit2;
                            feedComposableKt$FeedComposable$1$2$1 = objX7;
                            feedTracker = feedTracker3;
                            feedViewModel2 = feedViewModel5;
                        }
                        EffectsKt.e(composer2, unit, (Function2) feedComposableKt$FeedComposable$1$2$1);
                        ActivityResultContracts$StartActivityForResult activityResultContracts$StartActivityForResult = new ActivityResultContracts$StartActivityForResult();
                        boolean zY2 = composer2.y(feedViewModel2);
                        Object objX8 = composer2.x();
                        if (zY2 || objX8 == composer$Companion$Empty$1) {
                            i4 = 0;
                            objX8 = new Function1() { // from class: fx
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj3) {
                                    int i5 = i4;
                                    FeedViewModel feedViewModel6 = feedViewModel2;
                                    switch (i5) {
                                        case 0:
                                            ((ActivityResult) obj3).getClass();
                                            feedViewModel6.Z3();
                                            break;
                                        case 1:
                                            ActivityResult activityResult = (ActivityResult) obj3;
                                            activityResult.getClass();
                                            Intent intent = activityResult.f732c;
                                            if (intent != null && intent.getBooleanExtra("EXTRA_RELOAD_ORDERS", false)) {
                                                feedViewModel6.la();
                                            }
                                            break;
                                        default:
                                            String str = (String) obj3;
                                            str.getClass();
                                            feedViewModel6.u0(str);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(objX8);
                        } else {
                            i4 = 0;
                        }
                        ManagedActivityResultLauncher managedActivityResultLauncherA2 = ActivityResultRegistryKt.a(activityResultContracts$StartActivityForResult, (Function1) objX8, composer2, i4);
                        ActivityResultContracts$StartActivityForResult activityResultContracts$StartActivityForResult2 = new ActivityResultContracts$StartActivityForResult();
                        boolean zY3 = composer2.y(feedViewModel2);
                        Object objX9 = composer2.x();
                        if (zY3 || objX9 == composer$Companion$Empty$1) {
                            final int i5 = 1;
                            objX9 = new Function1() { // from class: fx
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj3) {
                                    int i6 = i5;
                                    FeedViewModel feedViewModel6 = feedViewModel2;
                                    switch (i6) {
                                        case 0:
                                            ((ActivityResult) obj3).getClass();
                                            feedViewModel6.Z3();
                                            break;
                                        case 1:
                                            ActivityResult activityResult = (ActivityResult) obj3;
                                            activityResult.getClass();
                                            Intent intent = activityResult.f732c;
                                            if (intent != null && intent.getBooleanExtra("EXTRA_RELOAD_ORDERS", false)) {
                                                feedViewModel6.la();
                                            }
                                            break;
                                        default:
                                            String str = (String) obj3;
                                            str.getClass();
                                            feedViewModel6.u0(str);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(objX9);
                        }
                        ManagedActivityResultLauncher managedActivityResultLauncherA3 = ActivityResultRegistryKt.a(activityResultContracts$StartActivityForResult2, (Function1) objX9, composer2, 0);
                        final ManagedActivityResultLauncher managedActivityResultLauncherA4 = ActivityResultRegistryKt.a(new ActivityResultContracts$StartActivityForResult(), new gv(feedViewModel2, ref$ObjectRef3, 8), composer2, 0);
                        ActivityResultContracts$StartActivityForResult activityResultContracts$StartActivityForResult3 = new ActivityResultContracts$StartActivityForResult();
                        boolean zY4 = composer2.y(context3);
                        Object objX10 = composer2.x();
                        if (zY4 || objX10 == composer$Companion$Empty$1) {
                            objX10 = new ef(context3, 4);
                            composer2.q(objX10);
                        }
                        ManagedActivityResultLauncher managedActivityResultLauncherA5 = ActivityResultRegistryKt.a(activityResultContracts$StartActivityForResult3, (Function1) objX10, composer2, 0);
                        boolean zY5 = composer2.y(feedViewModel2);
                        Object objX11 = composer2.x();
                        if (zY5 || objX11 == composer$Companion$Empty$1) {
                            objX11 = new FeedComposableKt$FeedComposable$1$3$1(feedViewModel2, null);
                            composer2.q(objX11);
                        }
                        EffectsKt.e(composer2, unit, (Function2) objX11);
                        SharedFlow sharedFlow2 = sharedFlow;
                        boolean zY6 = composer2.y(sharedFlow2) | composer2.y(feedViewModel2);
                        Object objX12 = composer2.x();
                        if (zY6 || objX12 == composer$Companion$Empty$1) {
                            objX12 = new FeedComposableKt$FeedComposable$1$4$1(sharedFlow2, feedViewModel2, null);
                            composer2.q(objX12);
                        }
                        EffectsKt.e(composer2, unit, (Function2) objX12);
                        boolean zY7 = composer2.y(permissionsViewModel5) | composer2.y(feedTracker) | composer2.y(notificationBuilderA) | composer2.y(context3);
                        Object objX13 = composer2.x();
                        if (zY7 || objX13 == composer$Companion$Empty$1) {
                            FeedViewModel feedViewModel6 = feedViewModel2;
                            permissionsViewModel2 = permissionsViewModel5;
                            feedViewModel3 = feedViewModel6;
                            FeedTracker feedTracker4 = feedTracker;
                            FeedComposableKt$FeedComposable$1$5$1 feedComposableKt$FeedComposable$1$5$1 = new FeedComposableKt$FeedComposable$1$5$1(permissionsViewModel2, feedTracker4, snackbarHostState2, notificationBuilderA, context3, mutableState4, null);
                            feedTracker2 = feedTracker4;
                            snackbarHostState = snackbarHostState2;
                            context3 = context3;
                            composer2.q(feedComposableKt$FeedComposable$1$5$1);
                            objX13 = feedComposableKt$FeedComposable$1$5$1;
                        } else {
                            FeedViewModel feedViewModel7 = feedViewModel2;
                            permissionsViewModel2 = permissionsViewModel5;
                            feedViewModel3 = feedViewModel7;
                            feedTracker2 = feedTracker;
                            snackbarHostState = snackbarHostState2;
                        }
                        EffectsKt.e(composer2, unit, (Function2) objX13);
                        boolean zY8 = composer2.y(feedViewModel3);
                        ContributionLinkNavigator contributionLinkNavigator2 = contributionLinkNavigator;
                        boolean zY9 = zY8 | composer2.y(contributionLinkNavigator2) | composer2.y(context3) | composer2.y(managedActivityResultLauncherA5);
                        Object objX14 = composer2.x();
                        if (zY9 || objX14 == composer$Companion$Empty$1) {
                            PermissionsViewModel permissionsViewModel6 = permissionsViewModel2;
                            feedViewModel4 = feedViewModel3;
                            permissionsViewModel3 = permissionsViewModel6;
                            feedComposableKt$FeedComposable$1$6$1 = new FeedComposableKt$FeedComposable$1$6$1(feedViewModel4, contributionLinkNavigator2, context3, managedActivityResultLauncherA5, null);
                            managedActivityResultLauncher = managedActivityResultLauncherA5;
                            composer2.q(feedComposableKt$FeedComposable$1$6$1);
                        } else {
                            PermissionsViewModel permissionsViewModel7 = permissionsViewModel2;
                            feedViewModel4 = feedViewModel3;
                            permissionsViewModel3 = permissionsViewModel7;
                            feedComposableKt$FeedComposable$1$6$1 = objX14;
                            managedActivityResultLauncher = managedActivityResultLauncherA5;
                        }
                        EffectsKt.e(composer2, unit, (Function2) feedComposableKt$FeedComposable$1$6$1);
                        boolean zY10 = composer2.y(permissionsViewModel3);
                        Object objX15 = composer2.x();
                        if (zY10 || objX15 == composer$Companion$Empty$1) {
                            PermissionsViewModel permissionsViewModel8 = permissionsViewModel3;
                            objX15 = new FeedComposableKt$FeedComposable$1$7$1(0, permissionsViewModel8, PermissionsViewModel.class, "onNotificationPermissionGranted", "onNotificationPermissionGranted(Z)V", 0);
                            permissionsViewModel4 = permissionsViewModel8;
                            composer2.q(objX15);
                        } else {
                            permissionsViewModel4 = permissionsViewModel3;
                        }
                        HandleNotificationsPermissionStateKt.a(permissionsViewModel4, (Function0) objX15, composer2, 0);
                        FeedViewState feedViewState = (FeedViewState) mutableState.getF10755b();
                        FeedTab feedTab2 = (FeedTab) r18.getF10755b();
                        boolean z2 = ((PermissionsUiModel) mutableStateB2.getF10755b()).f62374c && ((PermissionsUiModel) mutableStateB2.getF10755b()).d;
                        boolean zY11 = composer2.y(feedTracker2);
                        boolean z3 = z2;
                        Object objX16 = composer2.x();
                        if (zY11 || objX16 == composer$Companion$Empty$1) {
                            objX16 = new gx(feedTracker2, 0);
                            composer2.q(objX16);
                        }
                        Function0 function6 = (Function0) objX16;
                        boolean zY12 = composer2.y(feedTracker2) | composer2.y(context3);
                        Object objX17 = composer2.x();
                        if (zY12 || objX17 == composer$Companion$Empty$1) {
                            objX17 = new dt(feedTracker2, context3, 13);
                            composer2.q(objX17);
                        }
                        Function0 function7 = (Function0) objX17;
                        boolean zY13 = composer2.y(feedViewModel4);
                        Object objX18 = composer2.x();
                        if (zY13 || objX18 == composer$Companion$Empty$1) {
                            objX18 = new hx(feedViewModel4, 0);
                            composer2.q(objX18);
                        }
                        Function0 function8 = (Function0) objX18;
                        boolean zY14 = composer2.y(feedViewModel4);
                        Object objX19 = composer2.x();
                        if (zY14 || objX19 == composer$Companion$Empty$1) {
                            objX19 = new hx(feedViewModel4, 1);
                            composer2.q(objX19);
                        }
                        Function0 function9 = (Function0) objX19;
                        boolean zY15 = composer2.y(feedTracker2) | composer2.K(socialLoginBottomSheetStateB);
                        Object objX20 = composer2.x();
                        if (zY15 || objX20 == composer$Companion$Empty$1) {
                            final int i6 = 0;
                            objX20 = new Function0() { // from class: ix
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i7 = i6;
                                    SocialLoginBottomSheetState socialLoginBottomSheetState = socialLoginBottomSheetStateB;
                                    FeedTracker feedTracker5 = feedTracker2;
                                    switch (i7) {
                                        case 0:
                                            feedTracker5.f57933a.a(FeedTrackingUiModelKt.a(FeedTrackingUiModel.OnHitLoginEvent.f57952a));
                                            socialLoginBottomSheetState.f54159i.mo47invoke();
                                            break;
                                        default:
                                            feedTracker5.f57933a.a(FeedTrackingUiModelKt.a(FeedTrackingUiModel.OnHitRegisterEvent.f57954a));
                                            socialLoginBottomSheetState.f54160j.mo47invoke();
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(objX20);
                        }
                        Function0 function10 = (Function0) objX20;
                        boolean zY16 = composer2.y(feedTracker2) | composer2.K(socialLoginBottomSheetStateB);
                        Object objX21 = composer2.x();
                        if (zY16 || objX21 == composer$Companion$Empty$1) {
                            final int i7 = 1;
                            objX21 = new Function0() { // from class: ix
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i8 = i7;
                                    SocialLoginBottomSheetState socialLoginBottomSheetState = socialLoginBottomSheetStateB;
                                    FeedTracker feedTracker5 = feedTracker2;
                                    switch (i8) {
                                        case 0:
                                            feedTracker5.f57933a.a(FeedTrackingUiModelKt.a(FeedTrackingUiModel.OnHitLoginEvent.f57952a));
                                            socialLoginBottomSheetState.f54159i.mo47invoke();
                                            break;
                                        default:
                                            feedTracker5.f57933a.a(FeedTrackingUiModelKt.a(FeedTrackingUiModel.OnHitRegisterEvent.f57954a));
                                            socialLoginBottomSheetState.f54160j.mo47invoke();
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(objX21);
                        }
                        Function0 function11 = (Function0) objX21;
                        boolean zY17 = composer2.y(feedViewModel4);
                        Object objX22 = composer2.x();
                        if (zY17 || objX22 == composer$Companion$Empty$1) {
                            final int i8 = 2;
                            objX22 = new Function1() { // from class: fx
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj3) {
                                    int i9 = i8;
                                    FeedViewModel feedViewModel8 = feedViewModel4;
                                    switch (i9) {
                                        case 0:
                                            ((ActivityResult) obj3).getClass();
                                            feedViewModel8.Z3();
                                            break;
                                        case 1:
                                            ActivityResult activityResult = (ActivityResult) obj3;
                                            activityResult.getClass();
                                            Intent intent = activityResult.f732c;
                                            if (intent != null && intent.getBooleanExtra("EXTRA_RELOAD_ORDERS", false)) {
                                                feedViewModel8.la();
                                            }
                                            break;
                                        default:
                                            String str = (String) obj3;
                                            str.getClass();
                                            feedViewModel8.u0(str);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(objX22);
                        }
                        Function1 function12 = (Function1) objX22;
                        boolean zK2 = composer2.K(mutableStateB2) | composer2.y(feedTracker2) | composer2.y(feedViewModel4) | composer2.y(permissionsViewModel4);
                        Object objX23 = composer2.x();
                        if (zK2 || objX23 == composer$Companion$Empty$1) {
                            objX23 = new d1(feedTracker2, feedViewModel4, permissionsViewModel4, mutableStateB2, r18, 5);
                            mutableState2 = mutableStateB2;
                            mutableState3 = r18;
                            composer2.q(objX23);
                        } else {
                            mutableState2 = mutableStateB2;
                            mutableState3 = mutableState4;
                        }
                        Function1 function13 = (Function1) objX23;
                        PermissionsViewModel permissionsViewModel9 = permissionsViewModel4;
                        final FeedViewModel feedViewModel8 = feedViewModel4;
                        d1 d1Var = new d1(ref$ObjectRef, feedViewModel8, context3, ref$ObjectRef2, managedActivityResultLauncherA, 6);
                        final Context context4 = context3;
                        Function2<VideoIdUiModel, LiveFormatUiModel, Unit> function14 = new Function2<VideoIdUiModel, LiveFormatUiModel, Unit>() { // from class: com.vuitton.android.presentation.screen.feed.components.FeedComposableKt$FeedComposable$1$17
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj3, Object obj4) {
                                String str = ((VideoIdUiModel) obj3).f51799b;
                                LiveFormatUiModel liveFormatUiModel = (LiveFormatUiModel) obj4;
                                str.getClass();
                                liveFormatUiModel.getClass();
                                ref$ObjectRef3.f71921b = str;
                                IntentExtensionKt.b(FeedDestinationsKt.a(new FeedDestinations.ToLiveVideoPage(str, liveFormatUiModel, null), context4), managedActivityResultLauncherA4);
                                return Unit.f71739a;
                            }
                        };
                        boolean zY18 = composer2.y(contributionLinkNavigator2) | composer2.y(context4) | composer2.y(managedActivityResultLauncher);
                        Object objX24 = composer2.x();
                        if (zY18 || objX24 == composer$Companion$Empty$1) {
                            objX24 = new jx(contributionLinkNavigator2, context4, managedActivityResultLauncher, 0);
                            composer2.q(objX24);
                        }
                        Function1 function15 = (Function1) objX24;
                        boolean zY19 = composer2.y(feedViewModel8) | composer2.y(context4);
                        Object objX25 = composer2.x();
                        if (zY19 || objX25 == composer$Companion$Empty$1) {
                            objX25 = new Function2<SkuIdUiModel, String, Unit>() { // from class: com.vuitton.android.presentation.screen.feed.components.FeedComposableKt$FeedComposable$1$19$1
                                /* JADX WARN: Multi-variable type inference failed */
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj3, Object obj4) {
                                    String str = ((SkuIdUiModel) obj3).f61764b;
                                    String str2 = (String) obj4;
                                    str.getClass();
                                    str2.getClass();
                                    feedViewModel8.t3(str, str2);
                                    AppCompatActivity appCompatActivityB = ContextExtKt.b(context4);
                                    if (appCompatActivityB != null) {
                                        appCompatActivityB.startActivity(FeedDestinationsKt.a(new FeedDestinations.ToPdpPage(str, null, 2, 0 == true ? 1 : 0), appCompatActivityB));
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(objX25);
                        }
                        Function2 function16 = (Function2) objX25;
                        boolean zY20 = composer2.y(lVModalBottomSheetStateF);
                        Object objX26 = composer2.x();
                        if (zY20 || objX26 == composer$Companion$Empty$1) {
                            objX26 = new t8(lVModalBottomSheetStateF, 7);
                            composer2.q(objX26);
                        }
                        Function0 function17 = (Function0) objX26;
                        boolean zY21 = composer2.y(feedViewModel8);
                        Object objX27 = composer2.x();
                        if (zY21 || objX27 == composer$Companion$Empty$1) {
                            objX27 = new gv(feedViewModel8, mutableState3, 6);
                            composer2.q(objX27);
                        }
                        Function1 function18 = (Function1) objX27;
                        boolean zY22 = composer2.y(feedViewModel8) | composer2.y(context4);
                        Object objX28 = composer2.x();
                        int i9 = 11;
                        if (zY22 || objX28 == composer$Companion$Empty$1) {
                            objX28 = new rs(feedViewModel8, context4, i9);
                            composer2.q(objX28);
                        }
                        Function2 function19 = (Function2) objX28;
                        boolean zY23 = composer2.y(feedTracker2) | composer2.y(context4) | composer2.y(managedActivityResultLauncherA3);
                        Object objX29 = composer2.x();
                        if (zY23 || objX29 == composer$Companion$Empty$1) {
                            objX29 = new n0(feedTracker2, context4, managedActivityResultLauncherA3, 29);
                            composer2.q(objX29);
                        }
                        Function1 function20 = (Function1) objX29;
                        boolean zY24 = composer2.y(aICompanionTracker) | composer2.y(context4);
                        Object objX30 = composer2.x();
                        if (zY24 || objX30 == composer$Companion$Empty$1) {
                            objX30 = new gv(aICompanionTracker, context4, 7);
                            composer2.q(objX30);
                        }
                        MutableState mutableState5 = mutableState3;
                        Function1 function21 = function1;
                        Function1 function22 = function2;
                        qb0 qb0Var2 = qb0Var;
                        Function1 function23 = function3;
                        FeedScreenKt.a(feedViewState, feedTab2, z3, snackbarHostState, function21, function6, function7, function8, function9, function10, function11, function22, qb0Var2, function12, function13, d1Var, function14, function15, function16, function23, function17, function18, function19, function20, (Function1) objX30, composer2, 3072);
                        Composer composer3 = composer2;
                        AudioGuideBannerUiModel audioGuideBannerUiModel = ((FeedViewState) mutableState.getF10755b()).p;
                        if (audioGuideBannerUiModel == null) {
                            composer3.L(1786559745);
                            composer3.F();
                            context = context4;
                            z = false;
                        } else {
                            composer3.L(1786559746);
                            Object objX31 = composer3.x();
                            if (objX31 == composer$Companion$Empty$1) {
                                objX31 = SnapshotStateKt.g(Boolean.FALSE);
                                composer3.q(objX31);
                            }
                            MutableState mutableState6 = (MutableState) objX31;
                            Object objX32 = composer3.x();
                            if (objX32 == composer$Companion$Empty$1) {
                                objX32 = new FeedComposableKt$FeedComposable$1$25$1$1(mutableState6, null);
                                composer3.q(objX32);
                            }
                            EffectsKt.e(composer3, audioGuideBannerUiModel, (Function2) objX32);
                            boolean zBooleanValue = ((Boolean) mutableState6.getF10755b()).booleanValue();
                            CubicBezierEasing cubicBezierEasing = EasingKt.f3862a;
                            z = false;
                            TweenSpec tweenSpecC = AnimationSpecKt.c(500, 0, cubicBezierEasing, 2);
                            Object objX33 = composer3.x();
                            if (objX33 == composer$Companion$Empty$1) {
                                objX33 = new iv(23);
                                composer3.q(objX33);
                            }
                            context = context4;
                            AnimatedVisibilityKt.e(zBooleanValue, null, EnterExitTransitionKt.q((Function1) objX33, tweenSpecC).b(EnterExitTransitionKt.f(AnimationSpecKt.c(500, 0, cubicBezierEasing, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, 2)), null, null, ComposableLambdaKt.b(1496730953, new g1(audioGuideBannerUiModel, context, managedActivityResultLauncherA2, 18), composer3), composer3, ImageMetadata.EDGE_MODE, 26);
                            composer3 = composer3;
                            composer3.F();
                        }
                        ContactUsUiModel contactUsUiModel = ((FeedViewState) mutableState.getF10755b()).f57929i;
                        boolean zY25 = composer3.y(feedViewModel8);
                        Function0 function24 = function0;
                        boolean zK3 = zY25 | composer3.K(function24);
                        Object objX34 = composer3.x();
                        if (zK3 || objX34 == composer$Companion$Empty$1) {
                            objX34 = new dt(feedViewModel8, function24, 11);
                            composer3.q(objX34);
                        }
                        int i10 = LVModalBottomSheetState.f48797e;
                        Composer composer4 = composer3;
                        ContactUsBottomSheetKt.a(contactUsUiModel, lVModalBottomSheetStateF, lVModalBottomSheetStateF2, function23, (Function0) objX34, composer4, (i10 << 3) | (i10 << 6));
                        Composer composer5 = composer4;
                        if (((FeedViewState) mutableState.getF10755b()).f57931k == null && Intrinsics.c(((PermissionsUiModel) mutableState2.getF10755b()).f62372a, PermissionsBottomSheet.None.f62367f)) {
                            composer5.L(1791542531);
                            composer5.F();
                        } else {
                            composer5.L(1789424177);
                            String strC = StringResources_androidKt.c(composer5, R.string.alt_close);
                            boolean zY26 = composer5.y(feedViewModel8) | composer5.y(permissionsViewModel9);
                            Object objX35 = composer5.x();
                            if (zY26 || objX35 == composer$Companion$Empty$1) {
                                objX35 = new dt(feedViewModel8, permissionsViewModel9, 12);
                                composer5.q(objX35);
                            }
                            LVModalBottomSheetKt.b(null, strC, (Function0) objX35, lVModalBottomSheetStateF3, null, 0L, false, null, ComposableLambdaKt.b(369277582, new lf(feedViewModel8, permissionsViewModel9, context, mutableState, mutableState5, ref$ObjectRef2, managedActivityResultLauncherA, mutableState2, 5), composer5), composer5, (i10 << 9) | 100663296, 241);
                            composer5 = composer5;
                            composer5.F();
                        }
                        SocialLoginBottomSheetKt.a(socialLoginBottomSheetStateB, composer5, z);
                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 6);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new gk(feedViewModel, permissionsViewModel, contributionLinkNavigator, sharedFlow, function1, function2, qb0Var, function3, function0, function4, function5, i2);
        }
    }

    public static final void c(Context context, Ref$ObjectRef ref$ObjectRef, ManagedActivityResultLauncher managedActivityResultLauncher, Function0 function0) {
        AppCompatActivity appCompatActivityB = ContextExtKt.b(context);
        String[] strArr = PermissionUtils.f65864c;
        if (appCompatActivityB != null) {
            for (int i2 = 0; i2 < 2; i2++) {
                if (ContextCompat.checkSelfPermission(appCompatActivityB, strArr[i2]) == 0) {
                }
            }
            function0.mo47invoke();
            return;
        }
        ref$ObjectRef.f71921b = function0;
        managedActivityResultLauncher.a(strArr);
    }
}
