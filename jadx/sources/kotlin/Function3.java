package kotlin;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$1;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$2;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: renamed from: kotlin.DeepRecursiveKt, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002*r\b\u0002\u0010\u0005\"5\b\u0001\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0000¢\u0006\u0002\b\u000425\b\u0001\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0000¢\u0006\u0002\b\u0004¨\u0006\u0006"}, d2 = {"Lkotlin/Function3;", "Lkotlin/DeepRecursiveScope;", "", "Lkotlin/coroutines/Continuation;", "Lkotlin/ExtensionFunctionType;", "DeepRecursiveFunctionBlock", "kotlin-stdlib"}, k = 2, mv = {2, 4, 0}, xi = 48)
public abstract class Function3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CoroutineSingletons f71695a;

    static {
        Result.Companion companion = Result.INSTANCE;
        f71695a = CoroutineSingletons.COROUTINE_SUSPENDED;
    }

    public static final Object a(DeepRecursiveFunction deepRecursiveFunction, Unit unit) {
        Object objA;
        DeepRecursiveScopeImpl deepRecursiveScopeImpl = new DeepRecursiveScopeImpl(deepRecursiveFunction.f71694a, unit);
        while (true) {
            Object obj = deepRecursiveScopeImpl.f71698e;
            Continuation continuation = deepRecursiveScopeImpl.d;
            if (continuation == null) {
                ResultKt.b(obj);
                return obj;
            }
            Result.Companion companion = Result.INSTANCE;
            CoroutineSingletons coroutineSingletons = f71695a;
            if (Intrinsics.c(coroutineSingletons, obj)) {
                try {
                    kotlin.jvm.functions.Function3 function3 = deepRecursiveScopeImpl.f71696b;
                    Object obj2 = deepRecursiveScopeImpl.f71697c;
                    if (function3 instanceof BaseContinuationImpl) {
                        TypeIntrinsics.e(3, function3);
                        objA = function3.A(deepRecursiveScopeImpl, obj2, continuation);
                    } else {
                        function3.getClass();
                        CoroutineContext context = continuation.getContext();
                        Object intrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$1 = context == EmptyCoroutineContext.f71840b ? new IntrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$1(continuation) : new IntrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$2(continuation, context);
                        TypeIntrinsics.e(3, function3);
                        objA = function3.A(deepRecursiveScopeImpl, obj2, intrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$1);
                    }
                    if (objA != CoroutineSingletons.COROUTINE_SUSPENDED) {
                        continuation.resumeWith(objA);
                    }
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    continuation.resumeWith(new Result.Failure(th));
                }
            } else {
                deepRecursiveScopeImpl.f71698e = coroutineSingletons;
                continuation.resumeWith(obj);
            }
        }
    }
}
