package com.vuitton.android.presentation;

import android.app.Activity;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.ComposeView;
import androidx.compose.ui.platform.ViewCompositionStrategy;
import androidx.hilt.work.HiltWorkerFactory;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ProcessLifecycleOwner;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.media3.database.StandaloneDatabaseProvider;
import androidx.media3.datasource.cache.LeastRecentlyUsedCacheEvictor;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.security.crypto.EncryptedSharedPreferences;
import androidx.work.Configuration;
import coil3.ComponentRegistry;
import coil3.ImageLoader;
import coil3.RealImageLoader;
import coil3.SingletonImageLoader;
import coil3.network.NetworkFetcher;
import com.appsflyer.AppsFlyerLib;
import com.batch.android.Batch;
import com.batch.android.BatchActionActivity;
import com.dynatrace.android.callback.Callback;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.security.ProviderInstaller;
import com.kakao.sdk.common.KakaoSdk;
import com.kakao.sdk.common.model.ApplicationContextInfo;
import com.kakao.sdk.common.model.ApprovalType;
import com.kakao.sdk.common.model.SdkIdentifier;
import com.kakao.sdk.common.model.ServerHosts;
import com.kakao.sdk.common.util.SdkLog;
import com.kakao.sdk.user.AppLifecycleObserver;
import com.linkplay.core.app.LPDeviceManager;
import com.sightcall.universal.permission.PermissionsActivity;
import com.vuitton.android.R;
import com.vuitton.android.data.database.room.LVAppDatabase;
import com.vuitton.android.data.di.DataModule;
import com.vuitton.android.data.di.sharedpreferences.SharedPreferencesFactory;
import com.vuitton.android.data.migration.SharedPreferencesMigrationHelper;
import com.vuitton.android.domain.provider.buildconfig.BuildConfigProvider;
import com.vuitton.android.domain.provider.environment.EnvironmentProvider;
import com.vuitton.android.domain.reporter.CrashReporter;
import com.vuitton.android.domain.repository.AppInitializationStateHolder;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.analytics.tools.appsflyer.SubscribeAppsFlyerDeepLinkUseCase;
import com.vuitton.android.domain.usecase.automatedtest.IsUiTestUseCase;
import com.vuitton.android.platform.activity.CurrentActivityTracker;
import com.vuitton.android.platform.activity.DefaultActivityLifecycleCallbacksAdapter;
import com.vuitton.android.platform.security.RootDetector;
import com.vuitton.android.presentation.di.AppModule;
import com.vuitton.android.presentation.extensions.ActivityViewTreeExtKt;
import com.vuitton.android.presentation.inappbanner.InAppBannerSupervisor;
import com.vuitton.android.presentation.redirectlink.DeepLink;
import com.vuitton.android.presentation.screen.aicompanion.AICompanionActivity;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.LVTrunkDeviceManager;
import com.vuitton.android.presentation.screen.deeplink.DeepLinkDispatcherActivity;
import com.vuitton.android.presentation.screen.forceupdate.ForceUpdateActivity;
import com.vuitton.android.presentation.screen.maintenance.CheckMaintenanceStatusService;
import com.vuitton.android.presentation.screen.maintenance.MaintenanceActivity;
import com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryActivity;
import com.vuitton.android.presentation.screen.splash.SplashScreenActivity;
import com.vuitton.android.presentation.screenshaker.ScreenShakerDebugActivity;
import com.vuitton.android.presentation.servicerecovery.RecoveryToolForService;
import com.vuitton.android.presentation.utils.RootTool;
import com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.authentication.LoginState;
import com.vuitton.foundation.secrets.SecretKey;
import com.vuitton.foundation.secrets.SecretsProvider;
import dagger.hilt.android.HiltAndroidApp;
import defpackage.fc;
import defpackage.gp0;
import defpackage.ss;
import defpackage.v40;
import defpackage.w20;
import defpackage.x20;
import defpackage.x60;
import java.io.File;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AdaptedFunctionReference;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Reflection;
import kotlin.sequences.Sequence;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobImpl;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0017\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005:\u0001\bB\u0007¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/LVApplication;", "Landroid/app/Application;", "Lkotlinx/coroutines/CoroutineScope;", "Lcoil3/SingletonImageLoader$Factory;", "Lcom/vuitton/android/domain/repository/AppInitializationStateHolder;", "Landroidx/work/Configuration$Provider;", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@HiltAndroidApp
public class LVApplication extends Hilt_LVApplication implements CoroutineScope, SingletonImageLoader.Factory, AppInitializationStateHolder, Configuration.Provider {
    public static final Companion t = new Companion(null);
    public static final String u = "LVApplication";
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CoroutineContext f50528e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ContextScope f50529f;
    public Logger g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public SecretsProvider f50530h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public RootDetector f50531i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CurrentActivityTracker f50532j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public InAppBannerSupervisor f50533k;
    public LVTrunkDeviceManager l;
    public BuildConfigProvider m;
    public IsUiTestUseCase n;
    public SubscribeAppsFlyerDeepLinkUseCase o;
    public EnvironmentProvider p;
    public HiltWorkerFactory q;
    public UserSessionService r;
    public final Lazy s;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/LVApplication$Companion;", "", "", "TAG", "Ljava/lang/String;", "KEY_TRACK_SHORTCUT", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f50534a;

        static {
            int[] iArr = new int[LoginState.values().length];
            try {
                iArr[LoginState.LOGGED_IN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LoginState.LOGGED_OUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f50534a = iArr;
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.LVApplication$onCreate$1, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    final /* synthetic */ class AnonymousClass1 extends AdaptedFunctionReference implements Function2<LoginState, Continuation<? super Unit>, Object>, SuspendFunction {
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            LVApplication lVApplication = (LVApplication) this.receiver;
            Companion companion = LVApplication.t;
            lVApplication.getClass();
            Lazy lazy = lVApplication.s;
            int i2 = WhenMappings.f50534a[((LoginState) obj).ordinal()];
            if (i2 == 1) {
                ShortcutInfo shortcutInfoBuild = new ShortcutInfo.Builder(lVApplication, "myOrders").setShortLabel(lVApplication.getString(R.string.my_orders_home_long_press_access)).setIcon(Icon.createWithResource(lVApplication, R.drawable.ic_lv_package)).setIntent(new Intent("android.intent.action.VIEW", Uri.parse(((String) lazy.getF71699b()) + DeepLink.MY_ORDERS.getHost())).putExtra("TRACK_SHORTCUT", true)).build();
                shortcutInfoBuild.getClass();
                ShortcutManager shortcutManager = (ShortcutManager) lVApplication.getSystemService(ShortcutManager.class);
                if (shortcutManager != null) {
                    shortcutManager.setDynamicShortcuts(CollectionsKt.l(shortcutInfoBuild));
                }
            } else {
                if (i2 != 2) {
                    v40.g();
                    return null;
                }
                ShortcutInfo shortcutInfoBuild2 = new ShortcutInfo.Builder(lVApplication, "myOrders").setShortLabel(lVApplication.getString(R.string.my_orders_home_long_press_access)).setIcon(Icon.createWithResource(lVApplication, R.drawable.ic_lv_package)).setIntent(new Intent("android.intent.action.VIEW", Uri.parse(((String) lazy.getF71699b()) + DeepLink.MY_ORDERS.getHost())).putExtra("TRACK_SHORTCUT", true)).build();
                shortcutInfoBuild2.getClass();
                ShortcutManager shortcutManager2 = (ShortcutManager) lVApplication.getSystemService(ShortcutManager.class);
                if (shortcutManager2 != null) {
                    shortcutManager2.setDynamicShortcuts(CollectionsKt.l(shortcutInfoBuild2));
                }
            }
            return Unit.f71739a;
        }
    }

    public LVApplication() {
        JobImpl jobImplA = JobKt.a();
        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
        this.f50528e = jobImplA.plus(DefaultIoScheduler.f75161b);
        this.f50529f = CoroutineScopeKt.a(SupervisorKt.b().plus(MainDispatcherLoader.f75131a));
        this.s = LazyKt.b(new ss(this, 26));
    }

    @Override // com.vuitton.android.domain.repository.AppInitializationStateHolder
    public final void a() {
        this.d = true;
    }

    @Override // coil3.SingletonImageLoader.Factory
    public final RealImageLoader b(Context context) {
        context.getClass();
        Context applicationContext = getApplicationContext();
        applicationContext.getClass();
        ImageLoader.Builder builder = new ImageLoader.Builder(applicationContext);
        ComponentRegistry.Builder builder2 = new ComponentRegistry.Builder();
        builder2.a(new NetworkFetcher.Factory(new x60(new gp0(this), 17), null, null, null, 14, null), Reflection.f71922a.b(coil3.Uri.class));
        builder.g = builder2.c();
        return builder.a();
    }

    @Override // androidx.work.Configuration.Provider
    public final Configuration c() {
        Configuration.Builder builder = new Configuration.Builder();
        HiltWorkerFactory hiltWorkerFactory = this.q;
        if (hiltWorkerFactory != null) {
            builder.f20215b = hiltWorkerFactory;
            return new Configuration(builder);
        }
        Intrinsics.h("workerFactory");
        throw null;
    }

    @Override // com.vuitton.android.domain.repository.AppInitializationStateHolder
    /* JADX INFO: renamed from: d, reason: from getter */
    public final boolean getD() {
        return this.d;
    }

    @Override // kotlinx.coroutines.CoroutineScope
    /* JADX INFO: renamed from: getCoroutineContext, reason: from getter */
    public final CoroutineContext getF8068c() {
        return this.f50528e;
    }

    public final void h() {
        Intent launchIntentForPackage = getBaseContext().getPackageManager().getLaunchIntentForPackage(getBaseContext().getPackageName());
        launchIntentForPackage.getClass();
        startActivity(Intent.makeRestartActivityTask(launchIntentForPackage.getComponent()));
        Runtime.getRuntime().exit(0);
    }

    @Override // com.vuitton.android.presentation.Hilt_LVApplication, android.app.Application
    public final void onCreate() {
        Object failure;
        Callback.p(this);
        super.onCreate();
        t.getClass();
        if (this.n == null) {
            Intrinsics.h("isUiTestUseCase");
            throw null;
        }
        if (this.m == null) {
            Intrinsics.h("buildConfigProvider");
            throw null;
        }
        Context applicationContext = getApplicationContext();
        applicationContext.getClass();
        LVAppDatabase.n.getClass();
        LVAppDatabase lVAppDatabase = LVAppDatabase.o;
        if (lVAppDatabase == null) {
            Context applicationContext2 = applicationContext.getApplicationContext();
            applicationContext2.getClass();
            RoomDatabase.Builder builderA = Room.a(applicationContext2, LVAppDatabase.class, "LVAppDatabase");
            builderA.a(LVAppDatabase.p);
            builderA.a(LVAppDatabase.q);
            lVAppDatabase = (LVAppDatabase) builderA.b();
            LVAppDatabase.o = lVAppDatabase;
        }
        DataModule.f44283a = lVAppDatabase.y();
        Context applicationContext3 = getApplicationContext();
        applicationContext3.getClass();
        LeastRecentlyUsedCacheEvictor leastRecentlyUsedCacheEvictor = new LeastRecentlyUsedCacheEvictor(104857600L);
        StandaloneDatabaseProvider standaloneDatabaseProvider = new StandaloneDatabaseProvider(applicationContext3);
        if (AppModule.f51474a == null) {
            File cacheDir = applicationContext3.getCacheDir();
            cacheDir.getClass();
            AppModule.f51474a = new CacheFactory(cacheDir, leastRecentlyUsedCacheEvictor, standaloneDatabaseProvider);
        }
        EnvironmentProvider environmentProvider = this.p;
        if (environmentProvider == null) {
            Intrinsics.h("environmentProvider");
            throw null;
        }
        String strK = environmentProvider.k();
        strK.getClass();
        String strConcat = "kakao".concat(strK);
        ServerHosts serverHosts = new ServerHosts();
        ApprovalType approvalType = new ApprovalType();
        KakaoSdk.Type type = KakaoSdk.Type.KOTLIN;
        SdkIdentifier sdkIdentifier = new SdkIdentifier(null, 1, null);
        type.getClass();
        KakaoSdk.f35868b = serverHosts;
        KakaoSdk.f35869c = false;
        KakaoSdk.d = approvalType;
        KakaoSdk.f35867a = new ApplicationContextInfo(this, strK, strConcat, type, sdkIdentifier);
        try {
            AppLifecycleObserver.Companion companion = AppLifecycleObserver.INSTANCE;
            Object objInvoke = AppLifecycleObserver.class.getDeclaredMethod("getInstance", null).invoke(AppLifecycleObserver.class, null);
            objInvoke.getClass();
            ProcessLifecycleOwner.f13468i.getClass();
            ProcessLifecycleOwner.f13469j.g.a((LifecycleEventObserver) objInvoke);
        } catch (Exception e2) {
            SdkLog.d.getClass();
            SdkLog.Companion.a("Failed to register AppLifecycleObserver " + e2);
        }
        EnvironmentProvider environmentProvider2 = this.p;
        if (environmentProvider2 == null) {
            Intrinsics.h("environmentProvider");
            throw null;
        }
        Batch.start(environmentProvider2.f());
        Context applicationContext4 = getApplicationContext();
        applicationContext4.getClass();
        if (!SharedPreferencesMigrationHelper.f46970a) {
            SharedPreferences sharedPreferences = applicationContext4.getSharedPreferences("SP_MYLV", 0);
            sharedPreferences.getClass();
            EncryptedSharedPreferences encryptedSharedPreferencesA = SharedPreferencesFactory.a(applicationContext4, "SP_MYLV_ENC");
            Map<String, ?> all = sharedPreferences.getAll();
            all.getClass();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry<String, ?> entry : all.entrySet()) {
                if (!Intrinsics.c(entry.getKey(), "dispatch_country_model")) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            if (!linkedHashMap.isEmpty() && ((HashMap) encryptedSharedPreferencesA.getAll()).isEmpty()) {
                for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                    Object key = entry2.getKey();
                    key.getClass();
                    String str = (String) key;
                    Object value = entry2.getValue();
                    if (value instanceof String) {
                        SharedPreferences.Editor editorEdit = encryptedSharedPreferencesA.edit();
                        editorEdit.putString(str, (String) value);
                        editorEdit.commit();
                    } else if (value instanceof Boolean) {
                        SharedPreferences.Editor editorEdit2 = encryptedSharedPreferencesA.edit();
                        editorEdit2.putBoolean(str, ((Boolean) value).booleanValue());
                        editorEdit2.commit();
                    } else if (value instanceof Integer) {
                        SharedPreferences.Editor editorEdit3 = encryptedSharedPreferencesA.edit();
                        editorEdit3.putInt(str, ((Number) value).intValue());
                        editorEdit3.commit();
                    } else if (value instanceof Long) {
                        SharedPreferences.Editor editorEdit4 = encryptedSharedPreferencesA.edit();
                        editorEdit4.putLong(str, ((Number) value).longValue());
                        editorEdit4.commit();
                    } else if (value instanceof Float) {
                        SharedPreferences.Editor editorEdit5 = encryptedSharedPreferencesA.edit();
                        editorEdit5.putFloat(str, ((Number) value).floatValue());
                        editorEdit5.commit();
                    } else if (value instanceof Set) {
                        Set<String> set = (Set) value;
                        if (!set.isEmpty()) {
                            Set<String> set2 = set;
                            if (!(set2 instanceof Collection) || !set2.isEmpty()) {
                                Iterator<T> it = set2.iterator();
                                while (it.hasNext()) {
                                    if (!(it.next() instanceof String)) {
                                        set = null;
                                        break;
                                    }
                                }
                            }
                        }
                        if (set != null) {
                            SharedPreferences.Editor editorEdit6 = encryptedSharedPreferencesA.edit();
                            editorEdit6.putStringSet(str, set);
                            editorEdit6.commit();
                        }
                    }
                    SharedPreferences.Editor editorEdit7 = sharedPreferences.edit();
                    editorEdit7.remove(str);
                    editorEdit7.commit();
                }
            }
            SharedPreferencesMigrationHelper.f46970a = true;
        }
        if (this.g == null) {
            Intrinsics.h("logger");
            throw null;
        }
        AppsFlyerLib appsFlyerLib = AppsFlyerLib.getInstance();
        SecretsProvider secretsProvider = this.f50530h;
        if (secretsProvider == null) {
            Intrinsics.h("secretsProvider");
            throw null;
        }
        appsFlyerLib.init(secretsProvider.a(SecretKey.APPSFLYER_KEY), null, this);
        AppsFlyerLib.getInstance().setMinTimeBetweenSessions(20000);
        SubscribeAppsFlyerDeepLinkUseCase subscribeAppsFlyerDeepLinkUseCase = this.o;
        if (subscribeAppsFlyerDeepLinkUseCase == null) {
            Intrinsics.h("subscribeAppsFlyerDeepLinkUseCase");
            throw null;
        }
        subscribeAppsFlyerDeepLinkUseCase.f49229a.e();
        try {
            Result.Companion companion2 = Result.INSTANCE;
            ProviderInstaller.a(this);
            failure = Unit.f71739a;
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof GooglePlayServicesRepairableException) {
                GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.f28961e;
                int i2 = ((GooglePlayServicesRepairableException) thA).f28965b;
                Intent intentA = googleApiAvailability.a(this, i2, "n");
                googleApiAvailability.f(this, i2, intentA == null ? null : PendingIntent.getActivity(this, 0, intentA, 201326592));
            } else {
                Logger logger = this.g;
                if (logger == null) {
                    Intrinsics.h("logger");
                    throw null;
                }
                logger.c(u, "checkTlsVersion()", thA);
            }
        }
        NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
        String string = getString(R.string.app_name);
        string.getClass();
        NotificationChannel notificationChannel = new NotificationChannel("CHANNEL_SYNC", string, 2);
        NotificationChannel notificationChannel2 = new NotificationChannel("CHANNEL_PUSH", string, 3);
        if (notificationManager != null) {
            notificationManager.createNotificationChannel(notificationChannel);
        }
        if (notificationManager != null) {
            notificationManager.createNotificationChannel(notificationChannel2);
        }
        final InAppBannerSupervisor inAppBannerSupervisor = this.f50533k;
        if (inAppBannerSupervisor == null) {
            Intrinsics.h("inAppBannerSupervisor");
            throw null;
        }
        if (!inAppBannerSupervisor.d) {
            inAppBannerSupervisor.d = true;
            registerActivityLifecycleCallbacks(new DefaultActivityLifecycleCallbacksAdapter() { // from class: com.vuitton.android.presentation.inappbanner.InAppBannerSupervisor$init$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // android.app.Application.ActivityLifecycleCallbacks
                public final void onActivityPostCreated(Activity activity, Bundle bundle) {
                    View decorView;
                    activity.getClass();
                    super.onActivityPostCreated(activity, bundle);
                    if ((activity instanceof PermissionsActivity) || (activity instanceof DeepLinkDispatcherActivity) || (activity instanceof AICompanionActivity)) {
                        return;
                    }
                    InAppBannerSupervisor inAppBannerSupervisor2 = inAppBannerSupervisor;
                    if (inAppBannerSupervisor2.f51570c.a(new x20(9))) {
                        return;
                    }
                    FrameLayout frameLayout = (FrameLayout) activity.findViewById(android.R.id.content);
                    if (((ComposeView) frameLayout.findViewWithTag("in_app_banner_container_view")) != null) {
                        return;
                    }
                    LifecycleOwner lifecycleOwner = activity instanceof LifecycleOwner ? (LifecycleOwner) activity : null;
                    if (lifecycleOwner == null) {
                        return;
                    }
                    SavedStateRegistryOwner savedStateRegistryOwner = activity instanceof SavedStateRegistryOwner ? (SavedStateRegistryOwner) activity : null;
                    if (savedStateRegistryOwner == null) {
                        return;
                    }
                    CrashReporter crashReporter = inAppBannerSupervisor2.f51569b;
                    Window window = activity.getWindow();
                    if (window == null || (decorView = window.getDecorView()) == null) {
                        return;
                    }
                    if (ViewTreeLifecycleOwner.a(decorView) == null) {
                        ActivityViewTreeExtKt.a(activity);
                        if (ViewTreeLifecycleOwner.a(decorView) == null) {
                            String strB = Reflection.f71922a.b(activity.getClass()).B();
                            if (strB == null) {
                                strB = "";
                            }
                            String str2 = Build.MANUFACTURER;
                            String str3 = Build.MODEL;
                            int i3 = Build.VERSION.SDK_INT;
                            StringBuilder sbS = fc.s("[ViewTreeLifecycleOwner ComposeView crash fix] Skipping InAppBanner for ", strB, ": DecorView still has no ViewTreeLifecycleOwner after repair. Device: ", str2, " ");
                            sbS.append(str3);
                            sbS.append(", API: ");
                            sbS.append(i3);
                            String string2 = sbS.toString();
                            if (crashReporter.isReady()) {
                                crashReporter.a("W/InAppBannerSupervisor: ".concat(string2));
                                if (InAppBannerSupervisor.f51567e.add(strB)) {
                                    crashReporter.b(new InAppBannerSkippedMissingViewTreeOwner(string2));
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                    }
                    ComposeView composeView = new ComposeView(activity, null, 0, 6, null);
                    composeView.setTag("in_app_banner_container_view");
                    composeView.setViewCompositionStrategy(ViewCompositionStrategy.DisposeOnViewTreeLifecycleDestroyed.f10159a);
                    composeView.setTag(R.id.view_tree_lifecycle_owner, lifecycleOwner);
                    composeView.setTag(R.id.view_tree_saved_state_registry_owner, savedStateRegistryOwner);
                    composeView.setContent(new ComposableLambdaImpl(19956830, true, new w20(inAppBannerSupervisor2, 1)));
                    frameLayout.addView(composeView, new FrameLayout.LayoutParams(-2, -2));
                }
            });
        }
        UserSessionService userSessionService = this.r;
        if (userSessionService == null) {
            Intrinsics.h("userSessionService");
            throw null;
        }
        FlowKt.u(new FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1(userSessionService.g, new AnonymousClass1(2, this, LVApplication.class, "initShortcut", "initShortcut(Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;)V", 4)), this);
        CurrentActivityTracker currentActivityTracker = this.f50532j;
        if (currentActivityTracker == null) {
            Intrinsics.h("currentActivityTracker");
            throw null;
        }
        registerActivityLifecycleCallbacks(currentActivityTracker);
        final Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        ProcessLifecycleOwner.f13468i.getClass();
        ProcessLifecycleOwner.f13469j.g.a(new DefaultLifecycleObserver(this) { // from class: com.vuitton.android.presentation.LVApplication$registerLifecycleCallbacks$1

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ LVApplication f50536c;

            {
                this.f50536c = this;
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public final void onStart(LifecycleOwner lifecycleOwner) {
                ref$BooleanRef.f71917b = true;
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public final void onStop(LifecycleOwner lifecycleOwner) {
                CheckMaintenanceStatusService.Companion companion4 = CheckMaintenanceStatusService.f59189i;
                Context applicationContext5 = this.f50536c.getApplicationContext();
                applicationContext5.getClass();
                companion4.getClass();
                applicationContext5.stopService(new Intent(applicationContext5, (Class<?>) CheckMaintenanceStatusService.class));
            }
        });
        registerActivityLifecycleCallbacks(new DefaultActivityLifecycleCallbacksAdapter() { // from class: com.vuitton.android.presentation.LVApplication$registerLifecycleCallbacks$2
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityPreCreated(Activity activity, Bundle bundle) {
                activity.getClass();
                LVApplication.Companion companion4 = LVApplication.t;
                String localClassName = activity.getLocalClassName();
                localClassName.getClass();
                if (StringsKt.k(localClassName, "com.chuckerteam.chucker", false) || (activity instanceof SplashScreenActivity) || (activity instanceof DeepLinkDispatcherActivity) || (activity instanceof MaintenanceActivity) || (activity instanceof DispatchCountryActivity) || (activity instanceof ForceUpdateActivity) || (activity instanceof BatchActionActivity) || (activity instanceof ScreenShakerDebugActivity)) {
                    return;
                }
                LVApplication lVApplication = this.f50537b;
                if (lVApplication.d) {
                    return;
                }
                Logger logger2 = lVApplication.g;
                if (logger2 == null) {
                    Intrinsics.h("logger");
                    throw null;
                }
                logger2.c(LVApplication.u, "Missing app initialization, " + activity + " can not be started. App will restart.", null);
                lVApplication.h();
            }

            @Override // com.vuitton.android.platform.activity.DefaultActivityLifecycleCallbacksAdapter, android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityResumed(Activity activity) {
                Object failure2;
                activity.getClass();
                boolean z = activity instanceof SplashScreenActivity;
                Ref$BooleanRef ref$BooleanRef2 = ref$BooleanRef;
                LVApplication lVApplication = this.f50537b;
                if (!z) {
                    if (ref$BooleanRef2.f71917b) {
                        CheckMaintenanceStatusService.Companion companion4 = CheckMaintenanceStatusService.f59189i;
                        Context applicationContext5 = lVApplication.getApplicationContext();
                        applicationContext5.getClass();
                        companion4.getClass();
                        CheckMaintenanceStatusService.Companion.a(applicationContext5, true);
                    }
                    RecoveryToolForService.Companion companion5 = RecoveryToolForService.g;
                    Logger logger2 = lVApplication.g;
                    if (logger2 == null) {
                        Intrinsics.h("logger");
                        throw null;
                    }
                    boolean z2 = ref$BooleanRef2.f71917b;
                    companion5.getClass();
                    try {
                        Result.Companion companion6 = Result.INSTANCE;
                        lVApplication.stopService(new Intent(lVApplication, (Class<?>) RecoveryToolForService.class));
                        Intent intent = new Intent(lVApplication, (Class<?>) RecoveryToolForService.class);
                        intent.putExtra("EXTRA_IS_APP_COMING_FROM_BACKGROUND", z2);
                        failure2 = lVApplication.startService(intent);
                    } catch (Throwable th2) {
                        Result.Companion companion7 = Result.INSTANCE;
                        failure2 = new Result.Failure(th2);
                    }
                    Throwable thA2 = Result.a(failure2);
                    if (thA2 != null) {
                        logger2.c("RecoveryToolForService", "Failed to start service", thA2);
                    }
                }
                RootDetector rootDetector = lVApplication.f50531i;
                if (rootDetector == null) {
                    Intrinsics.h("rootDetector");
                    throw null;
                }
                if (!RootTool.a(rootDetector)) {
                    final AppCompatActivity appCompatActivity = activity instanceof AppCompatActivity ? (AppCompatActivity) activity : null;
                    if (appCompatActivity != null) {
                        GenericBottomSheet.Companion companion8 = GenericBottomSheet.R;
                        String string2 = appCompatActivity.getString(R.string.alert_rooted_device_text);
                        string2.getClass();
                        String string3 = appCompatActivity.getString(R.string.ok);
                        String string4 = appCompatActivity.getString(R.string.alert_rooted_device_title);
                        companion8.getClass();
                        GenericBottomSheet genericBottomSheetA = GenericBottomSheet.Companion.a(string2, null, string3, string4);
                        genericBottomSheetA.O = new GenericBottomSheet.OnPositiveClickListener() { // from class: com.vuitton.android.presentation.utils.RootTool$displayUnSecureDialog$1$1
                            @Override // com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet.OnPositiveClickListener
                            public final void a() {
                                appCompatActivity.finishAffinity();
                                System.exit(0);
                                throw new RuntimeException("System.exit returned normally, while it was supposed to halt JVM.");
                            }
                        };
                        genericBottomSheetA.show(appCompatActivity.getSupportFragmentManager(), GenericBottomSheet.S);
                    }
                }
                ref$BooleanRef2.f71917b = false;
            }
        });
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public final void onLowMemory() {
        Sequence children;
        super.onLowMemory();
        Job job = (Job) this.f50529f.f75106b.get(Job.Key.f74677b);
        if (job == null || (children = job.getChildren()) == null) {
            return;
        }
        Iterator it = children.getF74480a();
        while (it.hasNext()) {
            ((Job) it.next()).cancel(null);
        }
    }

    @Override // android.app.Application
    public final void onTerminate() {
        NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
        if (notificationManager != null) {
            notificationManager.cancel(5453);
        }
        if (this.l == null) {
            Intrinsics.h("trunkDeviceManager");
            throw null;
        }
        LPDeviceManager.getInstance().stop();
        LPDeviceManager.getInstance().removeObserver();
        super.onTerminate();
    }
}
