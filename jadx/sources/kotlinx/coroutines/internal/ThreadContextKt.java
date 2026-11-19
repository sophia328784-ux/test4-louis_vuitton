package kotlinx.coroutines.internal;

import defpackage.e31;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.ThreadContextElement;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class ThreadContextKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Symbol f75141a = new Symbol("NO_THREAD_ELEMENTS");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final e31 f75142b = new e31(5);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final e31 f75143c = new e31(6);
    public static final a d = new a();

    public static final void a(CoroutineContext coroutineContext, Object obj) {
        if (obj == f75141a) {
            return;
        }
        if (!(obj instanceof ThreadState)) {
            Object objFold = coroutineContext.fold(null, f75143c);
            objFold.getClass();
            ((ThreadContextElement) objFold).o(obj);
            return;
        }
        ThreadState threadState = (ThreadState) obj;
        ThreadContextElement[] threadContextElementArr = threadState.f75151c;
        int length = threadContextElementArr.length - 1;
        if (length < 0) {
            return;
        }
        while (true) {
            int i2 = length - 1;
            ThreadContextElement threadContextElement = threadContextElementArr[length];
            threadContextElement.getClass();
            threadContextElement.o(threadState.f75150b[length]);
            if (i2 < 0) {
                return;
            } else {
                length = i2;
            }
        }
    }

    public static final Object b(CoroutineContext coroutineContext) {
        Object objFold = coroutineContext.fold(0, f75142b);
        objFold.getClass();
        return objFold;
    }

    public static final Object c(CoroutineContext coroutineContext, Object obj) {
        if (obj == null) {
            obj = b(coroutineContext);
        }
        if (obj == 0) {
            return f75141a;
        }
        return obj instanceof Integer ? coroutineContext.fold(new ThreadState(coroutineContext, ((Number) obj).intValue()), d) : ((ThreadContextElement) obj).s();
    }
}
