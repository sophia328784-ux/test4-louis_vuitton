package com.vuitton.android.data.repository;

import ZjTIAZ.DbkYmF;
import android.app.Application;
import com.akamai.botman.CYFMonitor;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.BotProtectionRepositoryImpl$initialize$2", f = "BotProtectionRepositoryImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class BotProtectionRepositoryImpl$initialize$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends Unit>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47425b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BotProtectionRepositoryImpl f47426c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BotProtectionRepositoryImpl$initialize$2(BotProtectionRepositoryImpl botProtectionRepositoryImpl, Continuation continuation) {
        super(2, continuation);
        this.f47426c = botProtectionRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        BotProtectionRepositoryImpl$initialize$2 botProtectionRepositoryImpl$initialize$2 = new BotProtectionRepositoryImpl$initialize$2(this.f47426c, continuation);
        botProtectionRepositoryImpl$initialize$2.f47425b = obj;
        return botProtectionRepositoryImpl$initialize$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BotProtectionRepositoryImpl$initialize$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object failure;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        BotProtectionRepositoryImpl botProtectionRepositoryImpl = this.f47426c;
        try {
            Result.Companion companion = Result.INSTANCE;
            String strR = botProtectionRepositoryImpl.f47421b.r();
            botProtectionRepositoryImpl.f47422c.getClass();
            synchronized (CYFMonitor.class) {
                int i2 = com.cyberfend.cyfsecurity.CYFMonitor.f25345a;
                synchronized (com.cyberfend.cyfsecurity.CYFMonitor.class) {
                    com.cyberfend.cyfsecurity.CYFMonitor.f25346b.getClass();
                    DbkYmF.f155e = true;
                }
            }
            Application application = botProtectionRepositoryImpl.f47420a;
            synchronized (CYFMonitor.class) {
                synchronized (com.cyberfend.cyfsecurity.CYFMonitor.class) {
                    com.cyberfend.cyfsecurity.CYFMonitor.h(application, strR);
                }
            }
            botProtectionRepositoryImpl.f47422c.getClass();
            failure = Unit.f71739a;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        BotProtectionRepositoryImpl botProtectionRepositoryImpl2 = this.f47426c;
        if (Result.a(failure) != null) {
            botProtectionRepositoryImpl2.f47422c.getClass();
        }
        return new Result(failure);
    }
}
