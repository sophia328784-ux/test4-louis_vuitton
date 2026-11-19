package com.vuitton.android.presentation.screen.splash;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import androidx.activity.compose.ComponentActivityKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.batch.android.BatchPushPayload;
import com.vuitton.android.R;
import com.vuitton.android.core.type.SystemIcons;
import com.vuitton.android.presentation.LVApplication;
import com.vuitton.android.presentation.compose.components.EdgeToEdgeKt;
import com.vuitton.android.presentation.extensions.ActivityExtKt;
import com.vuitton.android.presentation.extensions.ActivityViewTreeExtKt;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent;
import com.vuitton.android.presentation.screen.forceupdate.ForceUpdateActivity;
import com.vuitton.android.presentation.screen.forceupdate.ForceUpdateType;
import com.vuitton.android.presentation.screen.main.MainActivity;
import com.vuitton.android.presentation.screen.maintenance.MaintenanceActivity;
import com.vuitton.android.presentation.screen.onboarding.OnboardingActivity;
import com.vuitton.android.presentation.screen.onboarding.OnboardingRoutesName;
import com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryActivity;
import com.vuitton.android.presentation.screen.privacy.PrivacyActivity;
import com.vuitton.android.presentation.screenshaker.ScreenShakerSensorManager;
import com.vuitton.android.presentation.screenshaker.ShakeListener;
import com.vuitton.android.presentation.tracking.AppsFlyerUiTracker;
import com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet;
import com.vuitton.foundation.logger.Logger;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.md;
import defpackage.n01;
import defpackage.v40;
import java.time.LocalDate;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0005B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\f²\u0006\f\u0010\u0007\u001a\u00020\u00068\nX\u008a\u0084\u0002²\u0006\u000e\u0010\t\u001a\u0004\u0018\u00010\b8\nX\u008a\u0084\u0002²\u0006\f\u0010\u000b\u001a\u00020\n8\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Lcom/vuitton/android/presentation/screenshaker/ShakeListener;", "<init>", "()V", "OverrideActivityTransition", "", "isAnimationFinished", "Lcom/airbnb/lottie/LottieComposition;", "loaderComposition", "", "progress", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class SplashScreenActivity extends Hilt_SplashScreenActivity implements ShakeListener {
    public static final /* synthetic */ int q = 0;
    public Logger l;
    public AutomatedTestConfigParserProdImpl m;
    public final ViewModelLazy n;
    public ScreenShakerSensorManager o;
    public AppsFlyerUiTracker p;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$OverrideActivityTransition;", "", "NO_ANIMATION", "FADE_ANIMATION", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class OverrideActivityTransition {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ OverrideActivityTransition[] $VALUES;
        public static final OverrideActivityTransition FADE_ANIMATION;
        public static final OverrideActivityTransition NO_ANIMATION;

        static {
            OverrideActivityTransition overrideActivityTransition = new OverrideActivityTransition("NO_ANIMATION", 0);
            NO_ANIMATION = overrideActivityTransition;
            OverrideActivityTransition overrideActivityTransition2 = new OverrideActivityTransition("FADE_ANIMATION", 1);
            FADE_ANIMATION = overrideActivityTransition2;
            OverrideActivityTransition[] overrideActivityTransitionArr = {overrideActivityTransition, overrideActivityTransition2};
            $VALUES = overrideActivityTransitionArr;
            $ENTRIES = EnumEntriesKt.a(overrideActivityTransitionArr);
        }

        public static OverrideActivityTransition valueOf(String str) {
            return (OverrideActivityTransition) Enum.valueOf(OverrideActivityTransition.class, str);
        }

        public static OverrideActivityTransition[] values() {
            return (OverrideActivityTransition[]) $VALUES.clone();
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f64433a;

        static {
            int[] iArr = new int[OverrideActivityTransition.values().length];
            try {
                iArr[OverrideActivityTransition.NO_ANIMATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[OverrideActivityTransition.FADE_ANIMATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f64433a = iArr;
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.splash.SplashScreenActivity$onCreate$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlin/Pair;", "Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;", "", "action", "isAnimationFinished"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.splash.SplashScreenActivity$onCreate$2", f = "SplashScreenActivity.kt", l = {}, m = "invokeSuspend", v = 2)
    final class AnonymousClass2 extends SuspendLambda implements Function3<SplashScreenAction, Boolean, Continuation<? super Pair<? extends SplashScreenAction, ? extends Boolean>>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ SplashScreenAction f64438b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public /* synthetic */ boolean f64439c;

        @Override // kotlin.jvm.functions.Function3
        public final Object A(Object obj, Object obj2, Object obj3) {
            boolean zBooleanValue = ((Boolean) obj2).booleanValue();
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(3, (Continuation) obj3);
            anonymousClass2.f64438b = (SplashScreenAction) obj;
            anonymousClass2.f64439c = zBooleanValue;
            return anonymousClass2.invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            SplashScreenAction splashScreenAction = this.f64438b;
            boolean z = this.f64439c;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            return new Pair(splashScreenAction, Boolean.valueOf(z));
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.splash.SplashScreenActivity$onCreate$4, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\n"}, d2 = {"<anonymous>", "", "<destruct>", "Lkotlin/Pair;", "Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;", ""}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.splash.SplashScreenActivity$onCreate$4", f = "SplashScreenActivity.kt", l = {}, m = "invokeSuspend", v = 2)
    final class AnonymousClass4 extends SuspendLambda implements Function2<Pair<? extends SplashScreenAction, ? extends Boolean>, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f64440b;

        public AnonymousClass4(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass4 anonymousClass4 = SplashScreenActivity.this.new AnonymousClass4(continuation);
            anonymousClass4.f64440b = obj;
            return anonymousClass4;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass4) create((Pair) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Pair pair = (Pair) this.f64440b;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            SplashScreenAction splashScreenAction = (SplashScreenAction) pair.f71705b;
            int i2 = SplashScreenActivity.q;
            boolean zC = Intrinsics.c(splashScreenAction, SplashScreenAction.ForceUpdateAppVersion.f64424a);
            final SplashScreenActivity splashScreenActivity = SplashScreenActivity.this;
            if (zC) {
                ForceUpdateActivity.Companion companion = ForceUpdateActivity.q;
                ForceUpdateType forceUpdateType = ForceUpdateType.APP_VERSION;
                companion.getClass();
                forceUpdateType.getClass();
                Intent intentPutExtra = new Intent(splashScreenActivity, (Class<?>) ForceUpdateActivity.class).putExtra("FORCE_UPDATE_TYPE", forceUpdateType);
                intentPutExtra.getClass();
                splashScreenActivity.startActivity(intentPutExtra);
                splashScreenActivity.finish();
                splashScreenActivity.E(OverrideActivityTransition.NO_ANIMATION);
            } else if (Intrinsics.c(splashScreenAction, SplashScreenAction.ForceUpdateOsVersion.f64425a)) {
                ForceUpdateActivity.Companion companion2 = ForceUpdateActivity.q;
                ForceUpdateType forceUpdateType2 = ForceUpdateType.OS_VERSION;
                companion2.getClass();
                forceUpdateType2.getClass();
                Intent intentPutExtra2 = new Intent(splashScreenActivity, (Class<?>) ForceUpdateActivity.class).putExtra("FORCE_UPDATE_TYPE", forceUpdateType2);
                intentPutExtra2.getClass();
                splashScreenActivity.startActivity(intentPutExtra2);
                splashScreenActivity.finish();
                splashScreenActivity.E(OverrideActivityTransition.NO_ANIMATION);
            } else {
                if (Intrinsics.c(splashScreenAction, SplashScreenAction.RetryPopup.f64431a)) {
                    if (!splashScreenActivity.getSupportFragmentManager().S()) {
                        GenericBottomSheet.Companion companion3 = GenericBottomSheet.R;
                        String string = splashScreenActivity.getString(R.string.dispatch_country_no_internet_message);
                        string.getClass();
                        String string2 = splashScreenActivity.getString(R.string.btn_close);
                        String string3 = splashScreenActivity.getString(R.string.retrysynchro_btn_firstTime);
                        companion3.getClass();
                        GenericBottomSheet genericBottomSheetA = GenericBottomSheet.Companion.a(string, string2, string3, null);
                        genericBottomSheetA.O = new GenericBottomSheet.OnPositiveClickListener() { // from class: com.vuitton.android.presentation.screen.splash.SplashScreenActivity$showRetryPopup$1
                            @Override // com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet.OnPositiveClickListener
                            public final void a() {
                                int i3 = SplashScreenActivity.q;
                                splashScreenActivity.B().eb(null, null);
                            }
                        };
                        genericBottomSheetA.P = new GenericBottomSheet.OnNegativeClickListener() { // from class: com.vuitton.android.presentation.screen.splash.SplashScreenActivity$showRetryPopup$2
                            @Override // com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet.OnNegativeClickListener
                            public final void a() {
                                splashScreenActivity.finish();
                            }
                        };
                        SplashScreenActivity$showRetryPopup$3 splashScreenActivity$showRetryPopup$3 = new SplashScreenActivity$showRetryPopup$3(0, splashScreenActivity, SplashScreenActivity.class, "finish", "finish()V", 0);
                        splashScreenActivity = splashScreenActivity;
                        genericBottomSheetA.Q = splashScreenActivity$showRetryPopup$3;
                        genericBottomSheetA.show(splashScreenActivity.getSupportFragmentManager(), GenericBottomSheet.S);
                    }
                    splashScreenActivity.E(OverrideActivityTransition.NO_ANIMATION);
                } else if (Intrinsics.c(splashScreenAction, SplashScreenAction.DispatchPage.f64423a)) {
                    DispatchCountryActivity.q.getClass();
                    splashScreenActivity.startActivity(new Intent(splashScreenActivity, (Class<?>) DispatchCountryActivity.class));
                    splashScreenActivity.finish();
                    splashScreenActivity.E(OverrideActivityTransition.NO_ANIMATION);
                } else if (splashScreenAction instanceof SplashScreenAction.GoMain) {
                    Intent intentA = MainActivity.Companion.a(MainActivity.L, splashScreenActivity, null, null, null, null, 30);
                    String str = ((SplashScreenAction.GoMain) splashScreenAction).f64426a;
                    ActivityExtKt.b(intentA, str != null ? Uri.parse(str) : null, splashScreenActivity.getIntent().getExtras());
                    splashScreenActivity.startActivity(intentA);
                    splashScreenActivity.finish();
                    splashScreenActivity.E(OverrideActivityTransition.NO_ANIMATION);
                } else if (splashScreenAction instanceof SplashScreenAction.GoPrivacyPolicy) {
                    PrivacyActivity.Companion companion4 = PrivacyActivity.s;
                    Intent intentA2 = MainActivity.Companion.a(MainActivity.L, splashScreenActivity, null, null, null, null, 30);
                    companion4.getClass();
                    Intent intentA3 = PrivacyActivity.Companion.a(splashScreenActivity, intentA2, true);
                    String str2 = ((SplashScreenAction.GoPrivacyPolicy) splashScreenAction).f64428a;
                    ActivityExtKt.b(intentA3, str2 != null ? Uri.parse(str2) : null, splashScreenActivity.getIntent().getExtras());
                    splashScreenActivity.startActivity(intentA3);
                    splashScreenActivity.finish();
                    splashScreenActivity.E(OverrideActivityTransition.FADE_ANIMATION);
                } else if (splashScreenAction instanceof SplashScreenAction.GoOnboarding) {
                    OnboardingActivity.Companion companion5 = OnboardingActivity.t;
                    OnboardingRoutesName onboardingRoutesName = (OnboardingRoutesName) splashScreenActivity.B().K5().getValue();
                    companion5.getClass();
                    onboardingRoutesName.getClass();
                    Intent intentPutExtra3 = new Intent(splashScreenActivity, (Class<?>) OnboardingActivity.class).putExtra("ONBOARDING_START_SCREEN_ROUTE", onboardingRoutesName);
                    intentPutExtra3.getClass();
                    String str3 = ((SplashScreenAction.GoOnboarding) splashScreenAction).f64427a;
                    ActivityExtKt.b(intentPutExtra3, str3 != null ? Uri.parse(str3) : null, splashScreenActivity.getIntent().getExtras());
                    splashScreenActivity.startActivity(intentPutExtra3);
                    splashScreenActivity.finish();
                    splashScreenActivity.E(OverrideActivityTransition.FADE_ANIMATION);
                } else if (Intrinsics.c(splashScreenAction, SplashScreenAction.AppInMaintenance.f64422a)) {
                    MaintenanceActivity.q.getClass();
                    if (!ContextExtKt.e(splashScreenActivity)) {
                        Intent intent = new Intent(splashScreenActivity, (Class<?>) MaintenanceActivity.class);
                        intent.addFlags(268468224);
                        splashScreenActivity.startActivity(intent);
                    }
                    splashScreenActivity.finish();
                } else if (Intrinsics.c(splashScreenAction, SplashScreenAction.RestartApp.f64430a)) {
                    Context applicationContext = splashScreenActivity.getApplicationContext();
                    applicationContext.getClass();
                    ((LVApplication) applicationContext).h();
                } else if (!Intrinsics.c(splashScreenAction, SplashScreenAction.Idle.f64429a) && !Intrinsics.c(splashScreenAction, SplashScreenAction.ShowSecurityDialog.f64432a)) {
                    v40.g();
                    return null;
                }
            }
            return Unit.f71739a;
        }
    }

    public SplashScreenActivity() {
        final Function0 function0 = null;
        this.n = new ViewModelLazy(Reflection.f71922a.b(SplashScreenViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.splash.SplashScreenActivity$special$$inlined$viewModels$default$2
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.splash.SplashScreenActivity$special$$inlined$viewModels$default$1
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.splash.SplashScreenActivity$special$$inlined$viewModels$default$3
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function1 = function0;
                return (function1 == null || (creationExtras = (CreationExtras) function1.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
    }

    public final SplashScreenViewModel B() {
        return (SplashScreenViewModel) this.n.getF71699b();
    }

    public final void D(Intent intent) throws Throwable {
        Uri data;
        String deeplink;
        SplashScreenViewModel splashScreenViewModelB = B();
        Intent intent2 = getIntent();
        BatchPushPayload batchPushPayloadC = ActivityExtKt.c(intent2);
        if (batchPushPayloadC == null || (deeplink = batchPushPayloadC.getDeeplink()) == null || (data = Uri.parse(deeplink)) == null) {
            data = intent2 != null ? intent2.getData() : null;
        }
        String string = data != null ? data.toString() : null;
        if (this.m == null) {
            Intrinsics.h("automatedTestConfigParser");
            throw null;
        }
        intent.getClass();
        splashScreenViewModelB.eb(string, null);
        if (ActivityExtKt.c(intent) != null) {
            AppsFlyerUiTracker appsFlyerUiTracker = this.p;
            if (appsFlyerUiTracker != null) {
                appsFlyerUiTracker.a(AppsFlyerEvent.OpenFromPushNotification.f52954c);
            } else {
                Intrinsics.h("appsFlyerUiTracker");
                throw null;
            }
        }
    }

    public final void E(OverrideActivityTransition overrideActivityTransition) {
        if (Build.VERSION.SDK_INT < 34) {
            int i2 = WhenMappings.f64433a[overrideActivityTransition.ordinal()];
            if (i2 == 1) {
                overridePendingTransition(R.anim.no_animation, R.anim.no_animation);
                return;
            } else if (i2 == 2) {
                overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                return;
            } else {
                v40.g();
                return;
            }
        }
        int i3 = WhenMappings.f64433a[overrideActivityTransition.ordinal()];
        if (i3 == 1) {
            overrideActivityTransition(1, R.anim.no_animation, R.anim.no_animation, 0);
        } else if (i3 == 2) {
            overrideActivityTransition(1, R.anim.fade_in, R.anim.fade_out, 0);
        } else {
            v40.g();
        }
    }

    @Override // com.vuitton.android.presentation.screen.splash.Hilt_SplashScreenActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) throws Throwable {
        super.onCreate(bundle);
        SystemIcons.f43533b.getClass();
        boolean z = SystemIcons.f43534c;
        EdgeToEdgeKt.a(this, z, z);
        if (this.o == null) {
            Intrinsics.h("shakeSensorManager");
            throw null;
        }
        LocalDate localDateNow = LocalDate.now();
        ComponentActivityKt.a(this, new ComposableLambdaImpl(-1783520068, true, new n01((localDateNow.isBefore(SplashScreenActivityKt.f64448a) || localDateNow.isAfter(SplashScreenActivityKt.f64449b)) ? R.raw.splash_monogram : R.raw.splash_holiday, this, 0)));
        ActivityViewTreeExtKt.a(this);
        final FlowKt__ZipKt$combine$$inlined$unsafeFlow$1 flowKt__ZipKt$combine$$inlined$unsafeFlow$1 = new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(B().getH(), B().getJ(), new AnonymousClass2(3, null));
        FlowKt.u(new FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1(new Flow<Pair<? extends SplashScreenAction, ? extends Boolean>>() { // from class: com.vuitton.android.presentation.screen.splash.SplashScreenActivity$onCreate$$inlined$filter$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.splash.SplashScreenActivity$onCreate$$inlined$filter$1$2, reason: invalid class name */
            @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
            public final class AnonymousClass2<T> implements FlowCollector {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ FlowCollector f64435b;

                /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.splash.SplashScreenActivity$onCreate$$inlined$filter$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                @DebugMetadata(c = "com.vuitton.android.presentation.screen.splash.SplashScreenActivity$onCreate$$inlined$filter$1$2", f = "SplashScreenActivity.kt", l = {217}, m = "emit", v = 2)
                public final class AnonymousClass1 extends ContinuationImpl {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public /* synthetic */ Object f64436b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public int f64437c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.f64436b = obj;
                        this.f64437c |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.f64435b = flowCollector;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i2 = anonymousClass1.f64437c;
                        if ((i2 & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.f64437c = i2 - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(continuation);
                    }
                    Object obj2 = anonymousClass1.f64436b;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i3 = anonymousClass1.f64437c;
                    if (i3 == 0) {
                        ResultKt.b(obj2);
                        Pair pair = (Pair) obj;
                        SplashScreenAction splashScreenAction = (SplashScreenAction) pair.f71705b;
                        if (((Boolean) pair.f71706c).booleanValue() && !Intrinsics.c(splashScreenAction, SplashScreenAction.Idle.f64429a)) {
                            anonymousClass1.f64437c = 1;
                            if (this.f64435b.emit(obj, anonymousClass1) == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                        }
                    } else {
                        if (i3 != 1) {
                            md.k("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        ResultKt.b(obj2);
                    }
                    return Unit.f71739a;
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object f(FlowCollector flowCollector, Continuation continuation) {
                Object objF = flowKt__ZipKt$combine$$inlined$unsafeFlow$1.f(new AnonymousClass2(flowCollector), continuation);
                return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
            }
        }, new AnonymousClass4(null)), LifecycleOwnerKt.a(this));
        Intent intent = getIntent();
        intent.getClass();
        D(intent);
    }

    @Override // com.vuitton.android.presentation.screen.splash.Hilt_SplashScreenActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        if (this.o != null) {
            return;
        }
        Intrinsics.h("shakeSensorManager");
        throw null;
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) throws Throwable {
        intent.getClass();
        super.onNewIntent(intent);
        setIntent(intent);
        D(intent);
    }
}
