package com.vuitton.foundation.model.domain.model.common;

import defpackage.md;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\bf\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002¨\u0006\u0003À\u0006\u0003"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;", "T", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ResultStrategy<T> {
    /* JADX WARN: Code duplicated, block: B:32:0x006d  */
    /* JADX WARN: Code duplicated, block: B:34:0x0070  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    static Object e(ResultStrategy resultStrategy, ContinuationImpl continuationImpl) {
        ResultStrategy$newest$1 resultStrategy$newest$1;
        Object objB;
        Throwable th;
        Result result;
        if (continuationImpl instanceof ResultStrategy$newest$1) {
            resultStrategy$newest$1 = (ResultStrategy$newest$1) continuationImpl;
            int i2 = resultStrategy$newest$1.f67132f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                resultStrategy$newest$1.f67132f = i2 - Integer.MIN_VALUE;
            } else {
                resultStrategy$newest$1 = new ResultStrategy$newest$1(resultStrategy, continuationImpl);
            }
        } else {
            resultStrategy$newest$1 = new ResultStrategy$newest$1(resultStrategy, continuationImpl);
        }
        Object objG = resultStrategy$newest$1.d;
        Object obj = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = resultStrategy$newest$1.f67132f;
        Result result2 = null;
        if (i3 == 0) {
            ResultKt.b(objG);
            resultStrategy$newest$1.f67129b = resultStrategy;
            resultStrategy$newest$1.f67132f = 1;
            objB = resultStrategy.b(resultStrategy$newest$1);
            if (objB != obj) {
            }
            return obj;
        }
        if (i3 == 1) {
            resultStrategy = resultStrategy$newest$1.f67129b;
            ResultKt.b(objG);
            objB = ((Result) objG).f71708b;
        } else {
            if (i3 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            th = resultStrategy$newest$1.f67130c;
            ResultKt.b(objG);
        }
        result = (Result) objG;
        if (result != null && !(result.f71708b instanceof Result.Failure)) {
            result2 = result;
        }
        if (result2 != null) {
            return result2.f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        return ResultKt.a(th);
        Throwable thA = Result.a(objB);
        if (thA == null) {
            return objB;
        }
        resultStrategy$newest$1.f67129b = null;
        resultStrategy$newest$1.f67130c = thA;
        resultStrategy$newest$1.f67132f = 2;
        objG = resultStrategy.g(resultStrategy$newest$1);
        if (objG != obj) {
            th = thA;
            result = (Result) objG;
            if (result != null) {
                result2 = result;
            }
            if (result2 != null) {
                return result2.f71708b;
            }
            Result.Companion companion2 = Result.INSTANCE;
            return ResultKt.a(th);
        }
        return obj;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    static Object f(ResultStrategy resultStrategy, ContinuationImpl continuationImpl) {
        ResultStrategy$hasCachedValue$1 resultStrategy$hasCachedValue$1;
        if (continuationImpl instanceof ResultStrategy$hasCachedValue$1) {
            resultStrategy$hasCachedValue$1 = (ResultStrategy$hasCachedValue$1) continuationImpl;
            int i2 = resultStrategy$hasCachedValue$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                resultStrategy$hasCachedValue$1.d = i2 - Integer.MIN_VALUE;
            } else {
                resultStrategy$hasCachedValue$1 = new ResultStrategy$hasCachedValue$1(resultStrategy, continuationImpl);
            }
        } else {
            resultStrategy$hasCachedValue$1 = new ResultStrategy$hasCachedValue$1(resultStrategy, continuationImpl);
        }
        Object objG = resultStrategy$hasCachedValue$1.f67127b;
        Object obj = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = resultStrategy$hasCachedValue$1.d;
        if (i3 == 0) {
            ResultKt.b(objG);
            resultStrategy$hasCachedValue$1.d = 1;
            objG = resultStrategy.g(resultStrategy$hasCachedValue$1);
            if (objG == obj) {
                return obj;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objG);
        }
        Result result = (Result) objG;
        return Boolean.valueOf(result != null && ((result.f71708b instanceof Result.Failure) ^ true));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    static Object i(ResultStrategy resultStrategy, Continuation continuation) {
        ResultStrategy$fastest$1 resultStrategy$fastest$1;
        if (continuation instanceof ResultStrategy$fastest$1) {
            resultStrategy$fastest$1 = (ResultStrategy$fastest$1) continuation;
            int i2 = resultStrategy$fastest$1.f67126e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                resultStrategy$fastest$1.f67126e = i2 - Integer.MIN_VALUE;
            } else {
                resultStrategy$fastest$1 = new ResultStrategy$fastest$1(resultStrategy, continuation);
            }
        } else {
            resultStrategy$fastest$1 = new ResultStrategy$fastest$1(resultStrategy, continuation);
        }
        Object objG = resultStrategy$fastest$1.f67125c;
        Object obj = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = resultStrategy$fastest$1.f67126e;
        if (i3 == 0) {
            ResultKt.b(objG);
            resultStrategy$fastest$1.f67124b = resultStrategy;
            resultStrategy$fastest$1.f67126e = 1;
            objG = resultStrategy.g(resultStrategy$fastest$1);
            if (objG != obj) {
            }
        }
        if (i3 != 1) {
            if (i3 == 2) {
                ResultKt.b(objG);
                return ((Result) objG).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        resultStrategy = resultStrategy$fastest$1.f67124b;
        ResultKt.b(objG);
        Result result = (Result) objG;
        if (result == null || (result.f71708b instanceof Result.Failure)) {
            result = null;
        }
        if (result != null) {
            return result.f71708b;
        }
        resultStrategy$fastest$1.f67124b = null;
        resultStrategy$fastest$1.f67126e = 2;
        Object objB = resultStrategy.b(resultStrategy$fastest$1);
        return objB == obj ? obj : objB;
    }

    default Object a(ContinuationImpl continuationImpl) {
        return e(this, continuationImpl);
    }

    Object b(ContinuationImpl continuationImpl);

    default Object c(Continuation continuation) {
        return i(this, continuation);
    }

    default Flow d() {
        return FlowKt.t(new ResultStrategy$fastThenNew$1(this, null));
    }

    Serializable g(ContinuationImpl continuationImpl);

    default Object h(ContinuationImpl continuationImpl) {
        return f(this, continuationImpl);
    }
}
