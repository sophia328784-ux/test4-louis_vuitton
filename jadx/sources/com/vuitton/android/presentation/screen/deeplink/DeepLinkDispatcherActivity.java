package com.vuitton.android.presentation.screen.deeplink;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.appsflyer.AppsFlyerLib;
import com.vuitton.android.domain.repository.AppInitializationStateHolder;
import com.vuitton.android.presentation.link.navigation.LinkNavigator;
import com.vuitton.android.presentation.link.parsing.LinkParser;
import com.vuitton.android.presentation.link.parsing.WarmStartLinkExclusionPolicy;
import com.vuitton.android.presentation.screen.main.MainActivity;
import com.vuitton.android.presentation.screen.splash.SplashScreenActivity;
import com.vuitton.foundation.logger.Logger;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.w1;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class DeepLinkDispatcherActivity extends Hilt_DeepLinkDispatcherActivity {
    public static final /* synthetic */ int q = 0;
    public LinkParser l;
    public LinkNavigator m;
    public WarmStartLinkExclusionPolicy n;
    public Logger o;
    public final ViewModelLazy p;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity$Companion;", "", "", "TAG", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public DeepLinkDispatcherActivity() {
        final Function0 function0 = null;
        this.p = new ViewModelLazy(Reflection.f71922a.b(DeepLinkDispatcherViewModel.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.deeplink.DeepLinkDispatcherActivity$special$$inlined$viewModels$default$2
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.deeplink.DeepLinkDispatcherActivity$special$$inlined$viewModels$default$1
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.deeplink.DeepLinkDispatcherActivity$special$$inlined$viewModels$default$3
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function1 = function0;
                return (function1 == null || (creationExtras = (CreationExtras) function1.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
    }

    public final Intent B(Class cls) {
        Intent intent = new Intent(this, (Class<?>) cls);
        intent.setData(getIntent().getData());
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            intent.putExtras(extras);
        }
        intent.addFlags(268435456);
        return intent;
    }

    public final Logger D() {
        Logger logger = this.o;
        if (logger != null) {
            return logger;
        }
        Intrinsics.h("logger");
        throw null;
    }

    public final void E() {
        Object failure;
        boolean zBooleanValue;
        ComponentName componentName;
        String className;
        boolean z;
        String string;
        D();
        Objects.toString(getIntent());
        AppsFlyerLib.getInstance().sendPushNotificationData(this);
        w1 w1Var = new w1(this, 29);
        ActivityManager activityManager = (ActivityManager) getSystemService(ActivityManager.class);
        if (activityManager == null) {
            zBooleanValue = false;
        } else {
            try {
                Result.Companion companion = Result.INSTANCE;
                List<ActivityManager.AppTask> appTasks = activityManager.getAppTasks();
                appTasks.getClass();
                List<ActivityManager.AppTask> list = appTasks;
                if (!(list instanceof Collection) || !list.isEmpty()) {
                    Iterator<T> it = list.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            z = false;
                            break;
                        }
                        ActivityManager.RecentTaskInfo taskInfo = ((ActivityManager.AppTask) it.next()).getTaskInfo();
                        if (taskInfo != null && (componentName = taskInfo.baseActivity) != null && (className = componentName.getClassName()) != null && !className.equals(DeepLinkDispatcherActivity.class.getName())) {
                            z = true;
                            break;
                        }
                    }
                } else {
                    z = false;
                    break;
                }
                failure = Boolean.valueOf(z);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                failure = new Result.Failure(th);
            }
            Object obj = Boolean.FALSE;
            Result.Companion companion3 = Result.INSTANCE;
            if (failure instanceof Result.Failure) {
                failure = obj;
            }
            zBooleanValue = ((Boolean) failure).booleanValue();
        }
        if (zBooleanValue) {
            Object applicationContext = getApplicationContext();
            AppInitializationStateHolder appInitializationStateHolder = applicationContext instanceof AppInitializationStateHolder ? (AppInitializationStateHolder) applicationContext : null;
            if (appInitializationStateHolder == null) {
                D().d("DeepLinkDispatcherActivity", "Application does not implement AppInitializationStateHolder, defaulting to cold start.", null);
            }
            if (appInitializationStateHolder != null ? appInitializationStateHolder.getD() : false) {
                Uri data = getIntent().getData();
                if (data != null && (string = data.toString()) != null) {
                    D();
                    BuildersKt.c(LifecycleOwnerKt.a(this), null, null, new DeepLinkDispatcherActivity$handleWarmStart$1(this, string, w1Var, null), 3);
                    return;
                } else {
                    D();
                    startActivity(B(MainActivity.class));
                    w1Var.mo47invoke();
                    return;
                }
            }
        }
        D();
        startActivity(B(SplashScreenActivity.class));
        w1Var.mo47invoke();
    }

    @Override // com.vuitton.android.presentation.screen.deeplink.Hilt_DeepLinkDispatcherActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        E();
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) {
        intent.getClass();
        super.onNewIntent(intent);
        setIntent(intent);
        E();
    }
}
