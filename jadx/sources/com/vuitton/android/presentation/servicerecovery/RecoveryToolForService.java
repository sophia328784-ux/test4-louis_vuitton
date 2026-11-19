package com.vuitton.android.presentation.servicerecovery;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.android.presentation.screen.maintenance.CheckMaintenanceStatusService;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.xn0;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/servicerecovery/RecoveryToolForService;", "Landroid/app/Service;", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class RecoveryToolForService extends Hilt_RecoveryToolForService {
    public static final Companion g = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CoroutineDispatchers f65804e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Lazy f65805f = LazyKt.b(new xn0(this, 9));

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/servicerecovery/RecoveryToolForService$Companion;", "", "", "TAG", "Ljava/lang/String;", "EXTRA_IS_APP_COMING_FROM_BACKGROUND", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.servicerecovery.RecoveryToolForService$onStartCommand$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.servicerecovery.RecoveryToolForService$onStartCommand$1", f = "RecoveryToolForService.kt", l = {}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ boolean f65807c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(boolean z, Continuation continuation) {
            super(2, continuation);
            this.f65807c = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return RecoveryToolForService.this.new AnonymousClass1(this.f65807c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object failure;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            RecoveryToolForService recoveryToolForService = RecoveryToolForService.this;
            Context applicationContext = recoveryToolForService.getApplicationContext();
            applicationContext.getClass();
            try {
                Result.Companion companion = Result.INSTANCE;
                Object systemService = applicationContext.getSystemService(ActionFloatingViewItem.f37018a);
                systemService.getClass();
                List<ActivityManager.RunningServiceInfo> runningServices = ((ActivityManager) systemService).getRunningServices(Integer.MAX_VALUE);
                runningServices.getClass();
                List<ActivityManager.RunningServiceInfo> list = runningServices;
                boolean z = false;
                if (!(list instanceof Collection) || !list.isEmpty()) {
                    Iterator<T> it = list.iterator();
                    while (it.hasNext()) {
                        ComponentName componentName = ((ActivityManager.RunningServiceInfo) it.next()).service;
                        if (Intrinsics.c(componentName != null ? componentName.getClassName() : null, CheckMaintenanceStatusService.class.getName())) {
                            z = true;
                            break;
                        }
                    }
                }
                failure = Boolean.valueOf(z);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                failure = new Result.Failure(th);
            }
            Object obj2 = Boolean.FALSE;
            Result.Companion companion3 = Result.INSTANCE;
            if (failure instanceof Result.Failure) {
                failure = obj2;
            }
            if (!((Boolean) failure).booleanValue()) {
                CheckMaintenanceStatusService.Companion companion4 = CheckMaintenanceStatusService.f59189i;
                Context applicationContext2 = recoveryToolForService.getApplicationContext();
                applicationContext2.getClass();
                companion4.getClass();
                CheckMaintenanceStatusService.Companion.a(applicationContext2, this.f65807c);
            }
            return Unit.f71739a;
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        CoroutineScopeKt.c((CoroutineScope) this.f65805f.getF71699b(), null);
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i2, int i3) {
        BuildersKt.c((CoroutineScope) this.f65805f.getF71699b(), null, null, new AnonymousClass1(intent != null ? intent.getBooleanExtra("EXTRA_IS_APP_COMING_FROM_BACKGROUND", false) : false, null), 3);
        return 2;
    }
}
