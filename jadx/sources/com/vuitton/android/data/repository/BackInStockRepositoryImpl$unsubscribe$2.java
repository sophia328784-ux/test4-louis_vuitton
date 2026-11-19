package com.vuitton.android.data.repository;

import com.vuitton.android.data.api.bff.user.BackInStockApi;
import com.vuitton.android.data.dto.product.availability.BackInStockUnsubscribeDto;
import com.vuitton.foundation.model.domain.model.product.availability.BackInStockUnsubscribeBody;
import defpackage.md;
import java.util.concurrent.CancellationException;
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
@DebugMetadata(c = "com.vuitton.android.data.repository.BackInStockRepositoryImpl$unsubscribe$2", f = "BackInStockRepositoryImpl.kt", l = {49}, m = "invokeSuspend", v = 2)
final class BackInStockRepositoryImpl$unsubscribe$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends Unit>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f47379b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BackInStockRepositoryImpl f47380c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BackInStockRepositoryImpl$unsubscribe$2(BackInStockRepositoryImpl backInStockRepositoryImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f47380c = backInStockRepositoryImpl;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BackInStockRepositoryImpl$unsubscribe$2(this.f47380c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BackInStockRepositoryImpl$unsubscribe$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object failure;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f47379b;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                BackInStockRepositoryImpl backInStockRepositoryImpl = this.f47380c;
                String str = this.d;
                Result.Companion companion = Result.INSTANCE;
                BackInStockApi backInStockApi = backInStockRepositoryImpl.f47372b;
                BackInStockUnsubscribeDto backInStockUnsubscribeDto = new BackInStockUnsubscribeDto(null, new BackInStockUnsubscribeBody(str).f67938a, 1, null);
                this.f47379b = 1;
                if (backInStockApi.unsubscribe(backInStockUnsubscribeDto, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            failure = new Result(Unit.f71739a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return new Result(((Result) failure).f71708b);
    }
}
