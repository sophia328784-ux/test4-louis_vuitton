package androidx.work.impl.utils;

import android.content.Context;
import androidx.concurrent.futures.ListenableFutureKt;
import androidx.work.ForegroundInfo;
import androidx.work.ForegroundUpdater;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.impl.WorkerWrapperKt;
import androidx.work.impl.model.WorkSpec;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.md;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Ljava/lang/Void;", "kotlin.jvm.PlatformType", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.work.impl.utils.WorkForegroundKt$workForeground$2", f = "WorkForeground.kt", l = {EACTags.CURRENCY_CODE, 50}, m = "invokeSuspend")
final class WorkForegroundKt$workForeground$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Void>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f20558b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ListenableWorker f20559c;
    public final /* synthetic */ WorkSpec d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ForegroundUpdater f20560e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Context f20561f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WorkForegroundKt$workForeground$2(ListenableWorker listenableWorker, WorkSpec workSpec, ForegroundUpdater foregroundUpdater, Context context, Continuation continuation) {
        super(2, continuation);
        this.f20559c = listenableWorker;
        this.d = workSpec;
        this.f20560e = foregroundUpdater;
        this.f20561f = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new WorkForegroundKt$workForeground$2(this.f20559c, this.d, this.f20560e, this.f20561f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WorkForegroundKt$workForeground$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f20558b;
        ListenableWorker listenableWorker = this.f20559c;
        if (i2 == 0) {
            ResultKt.b(obj);
            ListenableFuture listenableFutureA = listenableWorker.a();
            this.f20558b = 1;
            obj = WorkerWrapperKt.a(listenableFutureA, listenableWorker, this);
            if (obj != coroutineSingletons) {
            }
        }
        if (i2 != 1) {
            if (i2 == 2) {
                ResultKt.b(obj);
                return obj;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        ForegroundInfo foregroundInfo = (ForegroundInfo) obj;
        WorkSpec workSpec = this.d;
        if (foregroundInfo == null) {
            md.k(n00.r(workSpec.f20512c, ") but did not provide ForegroundInfo", new StringBuilder("Worker was marked important (")));
            return null;
        }
        int i3 = WorkForegroundKt.f20557a;
        Logger loggerA = Logger.a();
        String str = workSpec.f20512c;
        loggerA.getClass();
        ListenableFuture listenableFutureA2 = this.f20560e.a(this.f20561f, listenableWorker.f20257b.f20288a, foregroundInfo);
        this.f20558b = 2;
        Object objA = ListenableFutureKt.a(this, listenableFutureA2);
        return objA == coroutineSingletons ? coroutineSingletons : objA;
    }
}
