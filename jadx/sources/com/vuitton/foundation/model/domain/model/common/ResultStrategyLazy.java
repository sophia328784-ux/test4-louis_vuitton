package com.vuitton.foundation.model.domain.model.common;

import defpackage.md;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002BQ\u0012\"\u0010\u0007\u001a\u001e\b\u0001\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00050\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003\u0012$\u0010\b\u001a \b\u0001\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00050\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;", "T", "Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "Lkotlin/Result;", "", "getRemote", "getCache", "<init>", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ResultStrategyLazy<T> implements ResultStrategy<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function1 f67133a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function1 f67134b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Result f67135c;
    public Result d;

    public ResultStrategyLazy(Function1<? super Continuation<? super Result<? extends T>>, ? extends Object> function1, Function1<? super Continuation<? super Result<? extends T>>, ? extends Object> function2) {
        function1.getClass();
        function2.getClass();
        this.f67133a = function1;
        this.f67134b = function2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.foundation.model.domain.model.common.ResultStrategy
    public final Object b(ContinuationImpl continuationImpl) {
        ResultStrategyLazy$remote$1 resultStrategyLazy$remote$1;
        if (continuationImpl instanceof ResultStrategyLazy$remote$1) {
            resultStrategyLazy$remote$1 = (ResultStrategyLazy$remote$1) continuationImpl;
            int i2 = resultStrategyLazy$remote$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                resultStrategyLazy$remote$1.d = i2 - Integer.MIN_VALUE;
            } else {
                resultStrategyLazy$remote$1 = new ResultStrategyLazy$remote$1(this, continuationImpl);
            }
        } else {
            resultStrategyLazy$remote$1 = new ResultStrategyLazy$remote$1(this, continuationImpl);
        }
        Object objInvoke = resultStrategyLazy$remote$1.f67138b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = resultStrategyLazy$remote$1.d;
        if (i3 == 0) {
            ResultKt.b(objInvoke);
            Result result = this.d;
            if (result != null) {
                return result.f71708b;
            }
            resultStrategyLazy$remote$1.d = 1;
            objInvoke = this.f67133a.invoke(resultStrategyLazy$remote$1);
            if (objInvoke == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objInvoke);
        }
        Result result2 = (Result) objInvoke;
        this.d = new Result(result2.f71708b);
        return result2.f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.foundation.model.domain.model.common.ResultStrategy
    public final Serializable g(ContinuationImpl continuationImpl) {
        ResultStrategyLazy$cache$1 resultStrategyLazy$cache$1;
        if (continuationImpl instanceof ResultStrategyLazy$cache$1) {
            resultStrategyLazy$cache$1 = (ResultStrategyLazy$cache$1) continuationImpl;
            int i2 = resultStrategyLazy$cache$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                resultStrategyLazy$cache$1.d = i2 - Integer.MIN_VALUE;
            } else {
                resultStrategyLazy$cache$1 = new ResultStrategyLazy$cache$1(this, continuationImpl);
            }
        } else {
            resultStrategyLazy$cache$1 = new ResultStrategyLazy$cache$1(this, continuationImpl);
        }
        Object objInvoke = resultStrategyLazy$cache$1.f67136b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = resultStrategyLazy$cache$1.d;
        if (i3 == 0) {
            ResultKt.b(objInvoke);
            Result result = this.f67135c;
            if (result != null) {
                return result;
            }
            resultStrategyLazy$cache$1.d = 1;
            objInvoke = this.f67134b.invoke(resultStrategyLazy$cache$1);
            if (objInvoke == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objInvoke);
        }
        Result result2 = (Result) objInvoke;
        if (result2 == null) {
            return null;
        }
        this.f67135c = new Result(result2.f71708b);
        return result2;
    }
}
