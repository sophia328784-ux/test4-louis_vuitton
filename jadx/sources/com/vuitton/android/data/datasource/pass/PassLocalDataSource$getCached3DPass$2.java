package com.vuitton.android.data.datasource.pass;

import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.foundation.model.domain.model.pass.Pass;
import defpackage.md;
import java.io.File;
import java.io.FileInputStream;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/pass/Pass$Speedy;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.pass.PassLocalDataSource$getCached3DPass$2", f = "PassLocalDataSource.kt", l = {64, 64}, m = "invokeSuspend", v = 2)
final class PassLocalDataSource$getCached3DPass$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends Pass.Speedy>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f44191b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f44192c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f44193e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f44194f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public /* synthetic */ Object f44195h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ PassLocalDataSource f44196i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PassLocalDataSource$getCached3DPass$2(PassLocalDataSource passLocalDataSource, Continuation continuation) {
        super(2, continuation);
        this.f44196i = passLocalDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        PassLocalDataSource$getCached3DPass$2 passLocalDataSource$getCached3DPass$2 = new PassLocalDataSource$getCached3DPass$2(this.f44196i, continuation);
        passLocalDataSource$getCached3DPass$2.f44195h = obj;
        return passLocalDataSource$getCached3DPass$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PassLocalDataSource$getCached3DPass$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0099  */
    /* JADX WARN: Code duplicated, block: B:32:0x009d  */
    /* JADX WARN: Code duplicated, block: B:41:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:42:0x00b0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object failure;
        Throwable thA;
        Object failure2;
        int i2;
        Deferred deferred;
        int i3;
        int i4;
        Object obj2;
        CoroutineScope coroutineScope = (CoroutineScope) this.f44195h;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i5 = this.g;
        try {
            if (i5 == 0) {
                ResultKt.b(obj);
                PassLocalDataSource passLocalDataSource = this.f44196i;
                CoroutineDispatchers coroutineDispatchers = passLocalDataSource.f44184c;
                Result.Companion companion = Result.INSTANCE;
                Deferred deferredA = BuildersKt.a(coroutineScope, coroutineDispatchers.getF43530b(), new PassLocalDataSource$getCached3DPass$2$1$card3dRectoNormalFileDeferred$1(passLocalDataSource, null), 2);
                Deferred deferredA2 = BuildersKt.a(coroutineScope, coroutineDispatchers.getF43530b(), new PassLocalDataSource$getCached3DPass$2$1$card3dRectoDiffuseDeferred$1(passLocalDataSource, null), 2);
                this.f44195h = null;
                this.f44191b = deferredA2;
                i2 = 0;
                this.d = 0;
                this.f44193e = 0;
                this.f44194f = 0;
                this.g = 1;
                Object objK = deferredA.k(this);
                if (objK != coroutineSingletons) {
                    deferred = deferredA2;
                    i3 = 0;
                    obj = objK;
                    i4 = 0;
                }
                return coroutineSingletons;
            }
            if (i5 == 1) {
                i2 = this.f44194f;
                i4 = this.f44193e;
                i3 = this.d;
                deferred = (Deferred) this.f44191b;
                ResultKt.b(obj);
            } else {
                if (i5 != 2) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                obj2 = this.f44192c;
                ResultKt.b(obj);
            }
            failure = new Result(new Pair(obj2, obj));
            thA = Result.a(failure);
            if (thA != null) {
                if (!(thA instanceof CancellationException)) {
                    throw thA;
                }
                failure = new Result(new Result.Failure(thA));
            }
            failure2 = ((Result) failure).f71708b;
            if (!(failure2 instanceof Result.Failure)) {
                try {
                    Pair pair = (Pair) failure2;
                    Object obj3 = ((Result) pair.f71705b).f71708b;
                    Object obj4 = ((Result) pair.f71706c).f71708b;
                    ResultKt.b(obj3);
                    FileInputStream fileInputStream = new FileInputStream((File) obj3);
                    ResultKt.b(obj4);
                    failure2 = new Pass.Speedy(fileInputStream, new FileInputStream((File) obj4));
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    failure2 = new Result.Failure(th);
                }
            }
            return new Result(failure2);
            this.f44195h = null;
            this.f44191b = null;
            this.f44192c = obj;
            this.d = i3;
            this.f44193e = i4;
            this.f44194f = i2;
            this.g = 2;
            Object objK2 = deferred.k(this);
            if (objK2 != coroutineSingletons) {
                Object obj5 = obj;
                obj = objK2;
                obj2 = obj5;
                failure = new Result(new Pair(obj2, obj));
                thA = Result.a(failure);
                if (thA != null) {
                    if (!(thA instanceof CancellationException)) {
                        throw thA;
                    }
                    failure = new Result(new Result.Failure(thA));
                }
                failure2 = ((Result) failure).f71708b;
                if (!(failure2 instanceof Result.Failure)) {
                    Pair pair2 = (Pair) failure2;
                    Object obj6 = ((Result) pair2.f71705b).f71708b;
                    Object obj7 = ((Result) pair2.f71706c).f71708b;
                    ResultKt.b(obj6);
                    FileInputStream fileInputStream2 = new FileInputStream((File) obj6);
                    ResultKt.b(obj7);
                    failure2 = new Pass.Speedy(fileInputStream2, new FileInputStream((File) obj7));
                }
                return new Result(failure2);
            }
            return coroutineSingletons;
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            failure = new Result.Failure(th2);
        }
    }
}
