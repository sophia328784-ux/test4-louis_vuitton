package kotlinx.coroutines.internal;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.ThreadContextElement;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a implements Function2 {
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        ThreadState threadState = (ThreadState) obj;
        CoroutineContext.Element element = (CoroutineContext.Element) obj2;
        Symbol symbol = ThreadContextKt.f75141a;
        if (element instanceof ThreadContextElement) {
            ThreadContextElement threadContextElement = (ThreadContextElement) element;
            CoroutineContext coroutineContext = threadState.f75149a;
            Object objS = threadContextElement.s();
            Object[] objArr = threadState.f75150b;
            int i2 = threadState.d;
            objArr[i2] = objS;
            ThreadContextElement[] threadContextElementArr = threadState.f75151c;
            threadState.d = i2 + 1;
            threadContextElementArr[i2] = threadContextElement;
        }
        return threadState;
    }
}
