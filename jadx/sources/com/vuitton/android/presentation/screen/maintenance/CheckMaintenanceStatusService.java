package com.vuitton.android.presentation.screen.maintenance;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.vuitton.android.core.coroutine.operator.RetryMechanism;
import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.android.domain.usecase.config.AreConfigsInCacheUseCase;
import com.vuitton.android.domain.usecase.maintenance.IsAppInMaintenanceUseCase;
import com.vuitton.foundation.logger.LegacyLogger;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.md;
import defpackage.w1;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;", "Landroid/app/Service;", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class CheckMaintenanceStatusService extends Hilt_CheckMaintenanceStatusService {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Companion f59189i = new Companion(null);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final RetryMechanism f59190j = RetryMechanism.EXPONENTIAL_BACKOFF;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public AreConfigsInCacheUseCase f59191e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public IsAppInMaintenanceUseCase f59192f;
    public CoroutineDispatchers g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Lazy f59193h = LazyKt.b(new w1(this, 23));

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\bR\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\bR\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$Companion;", "", "", "TAG", "Ljava/lang/String;", "EXTRA_SKIP_INITIAL_DELAY", "", "INITIAL_DELAY_IN_MS", "J", "REPEAT_INTERVAL_MS", "Lcom/vuitton/android/core/coroutine/operator/RetryMechanism;", "RETRY_MECHANISM", "Lcom/vuitton/android/core/coroutine/operator/RetryMechanism;", "MIN_BACKOFF_IN_MS", "", "MAX_RETRIES", "I", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static void a(Context context, boolean z) {
            Object failure;
            context.getClass();
            try {
                Result.Companion companion = Result.INSTANCE;
                context.stopService(new Intent(context, (Class<?>) CheckMaintenanceStatusService.class));
                Intent intent = new Intent(context, (Class<?>) CheckMaintenanceStatusService.class);
                intent.putExtra("EXTRA_SKIP_INITIAL_DELAY", z);
                failure = context.startService(intent);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                failure = new Result.Failure(th);
            }
            Throwable thA = Result.a(failure);
            if (thA != null) {
                LegacyLogger.f66205a.c("CheckMaintenanceStatusService", "Failed to start service used for maintenance check", thA);
            }
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.maintenance.CheckMaintenanceStatusService$onStartCommand$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.maintenance.CheckMaintenanceStatusService$onStartCommand$1", f = "CheckMaintenanceStatusService.kt", l = {143, 149, 154, 169}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f59194b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public /* synthetic */ Object f59195c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ boolean f59196e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(boolean z, Continuation continuation) {
            super(2, continuation);
            this.f59196e = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = CheckMaintenanceStatusService.this.new AnonymousClass1(this.f59196e, continuation);
            anonymousClass1.f59195c = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code duplicated, block: B:26:0x005f  */
        /* JADX WARN: Code duplicated, block: B:28:0x006f  */
        /* JADX WARN: Code duplicated, block: B:31:0x0085 A[PHI: r0
          0x0085: PHI (r0v17 java.lang.Object) = (r0v16 java.lang.Object), (r0v33 java.lang.Object) binds: [B:29:0x0082, B:11:0x0024] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:35:0x00a5  */
        /* JADX WARN: Code duplicated, block: B:36:0x00a6 A[Catch: all -> 0x00b5, TRY_LEAVE, TryCatch #1 {all -> 0x00b5, blocks: (B:33:0x008f, B:36:0x00a6), top: B:55:0x008f }] */
        /* JADX WARN: Code duplicated, block: B:40:0x00be  */
        /* JADX WARN: Code duplicated, block: B:42:0x00c6  */
        /* JADX WARN: Code duplicated, block: B:53:0x00d3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:55:0x008f A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x00f2 -> B:26:0x005f). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r15) {
            /*
                Method dump skipped, instruction units count: 248
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.maintenance.CheckMaintenanceStatusService.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object e(CheckMaintenanceStatusService checkMaintenanceStatusService, ContinuationImpl continuationImpl) {
        CheckMaintenanceStatusService$shouldStopService$1 checkMaintenanceStatusService$shouldStopService$1;
        if (continuationImpl instanceof CheckMaintenanceStatusService$shouldStopService$1) {
            checkMaintenanceStatusService$shouldStopService$1 = (CheckMaintenanceStatusService$shouldStopService$1) continuationImpl;
            int i2 = checkMaintenanceStatusService$shouldStopService$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                checkMaintenanceStatusService$shouldStopService$1.d = i2 - Integer.MIN_VALUE;
            } else {
                checkMaintenanceStatusService$shouldStopService$1 = new CheckMaintenanceStatusService$shouldStopService$1(checkMaintenanceStatusService, continuationImpl);
            }
        } else {
            checkMaintenanceStatusService$shouldStopService$1 = new CheckMaintenanceStatusService$shouldStopService$1(checkMaintenanceStatusService, continuationImpl);
        }
        Object objA = checkMaintenanceStatusService$shouldStopService$1.f59199b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = checkMaintenanceStatusService$shouldStopService$1.d;
        if (i3 == 0) {
            ResultKt.b(objA);
            AreConfigsInCacheUseCase areConfigsInCacheUseCase = checkMaintenanceStatusService.f59191e;
            if (areConfigsInCacheUseCase == null) {
                Intrinsics.h("areConfigsInCacheUseCase");
                throw null;
            }
            checkMaintenanceStatusService$shouldStopService$1.d = 1;
            objA = areConfigsInCacheUseCase.a(checkMaintenanceStatusService$shouldStopService$1);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objA);
        }
        return Boolean.valueOf(!((Boolean) objA).booleanValue());
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        CoroutineScopeKt.c((CoroutineScope) this.f59193h.getF71699b(), null);
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i2, int i3) {
        BuildersKt.c((CoroutineScope) this.f59193h.getF71699b(), null, null, new AnonymousClass1(intent != null ? intent.getBooleanExtra("EXTRA_SKIP_INITIAL_DELAY", false) : false, null), 3);
        return 2;
    }
}
