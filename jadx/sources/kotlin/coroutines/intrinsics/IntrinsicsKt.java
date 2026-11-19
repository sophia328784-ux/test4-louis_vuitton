package kotlin.coroutines.intrinsics;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.RestrictedContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"kotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt", "kotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt"}, k = 4, mv = {2, 4, 0}, xi = 49)
public abstract class IntrinsicsKt extends IntrinsicsKt__IntrinsicsKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static Continuation a(final Continuation continuation, final Function2 function2, final Object obj) {
        function2.getClass();
        if (function2 instanceof BaseContinuationImpl) {
            return ((BaseContinuationImpl) function2).create(obj, continuation);
        }
        final CoroutineContext f75096c = continuation.getContext();
        return f75096c == EmptyCoroutineContext.f71840b ? new RestrictedContinuationImpl(continuation, function2, obj) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f71844b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ Function2 f71845c;
            public final /* synthetic */ Object d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(continuation);
                this.f71845c = function2;
                this.d = obj;
                continuation.getClass();
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj2) {
                int i2 = this.f71844b;
                if (i2 != 0) {
                    if (i2 != 1) {
                        md.k("This coroutine had already completed");
                        return null;
                    }
                    this.f71844b = 2;
                    ResultKt.b(obj2);
                    return obj2;
                }
                this.f71844b = 1;
                ResultKt.b(obj2);
                Function2 function3 = this.f71845c;
                function3.getClass();
                TypeIntrinsics.e(2, function3);
                return function3.invoke(this.d, this);
            }
        } : new ContinuationImpl(continuation, f75096c, function2, obj) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f71846b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ Function2 f71847c;
            public final /* synthetic */ Object d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(continuation, f75096c);
                this.f71847c = function2;
                this.d = obj;
                continuation.getClass();
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj2) {
                int i2 = this.f71846b;
                if (i2 != 0) {
                    if (i2 != 1) {
                        md.k("This coroutine had already completed");
                        return null;
                    }
                    this.f71846b = 2;
                    ResultKt.b(obj2);
                    return obj2;
                }
                this.f71846b = 1;
                ResultKt.b(obj2);
                Function2 function3 = this.f71847c;
                function3.getClass();
                TypeIntrinsics.e(2, function3);
                return function3.invoke(this.d, this);
            }
        };
    }

    public static Continuation b(Continuation continuation) {
        Continuation<Object> continuationIntercepted;
        continuation.getClass();
        ContinuationImpl continuationImpl = continuation instanceof ContinuationImpl ? (ContinuationImpl) continuation : null;
        return (continuationImpl == null || (continuationIntercepted = continuationImpl.intercepted()) == null) ? continuation : continuationIntercepted;
    }

    public static Object c(Continuation continuation, Function2 function2, Object obj) {
        function2.getClass();
        CoroutineContext f75096c = continuation.getContext();
        Object intrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$1 = f75096c == EmptyCoroutineContext.f71840b ? new IntrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$1(continuation) : new IntrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$2(continuation, f75096c);
        TypeIntrinsics.e(2, function2);
        return function2.invoke(obj, intrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$1);
    }
}
