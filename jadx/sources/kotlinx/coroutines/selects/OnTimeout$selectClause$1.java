package kotlinx.coroutines.selects;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
final /* synthetic */ class OnTimeout$selectClause$1 extends FunctionReferenceImpl implements Function3<OnTimeout, SelectInstance<?>, Object, Unit> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final OnTimeout$selectClause$1 f75178b = new OnTimeout$selectClause$1(3, OnTimeout.class, "register", "register(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        final OnTimeout onTimeout = (OnTimeout) obj;
        final SelectInstance selectInstance = (SelectInstance) obj2;
        long j2 = onTimeout.f75177a;
        if (j2 <= 0) {
            selectInstance.b(Unit.f71739a);
        } else {
            Runnable runnable = new Runnable() { // from class: kotlinx.coroutines.selects.a
                @Override // java.lang.Runnable
                public final void run() {
                    selectInstance.d(onTimeout, Unit.f71739a);
                }
            };
            selectInstance.getClass();
            SelectImplementation selectImplementation = (SelectImplementation) selectInstance;
            CoroutineContext coroutineContext = selectImplementation.f75186b;
            selectImplementation.d = DelayKt.d(coroutineContext).invokeOnTimeout(j2, runnable, coroutineContext);
        }
        return Unit.f71739a;
    }
}
