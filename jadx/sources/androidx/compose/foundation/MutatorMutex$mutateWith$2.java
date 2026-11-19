package androidx.compose.foundation;

import defpackage.md;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "R", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.MutatorMutex$mutateWith$2", f = "MutatorMutex.kt", l = {212, 167}, m = "invokeSuspend", v = 1)
final class MutatorMutex$mutateWith$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<Object>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Mutex f4273b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f4274c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public MutatorMutex f4275e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4276f;
    public /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ MutatePriority f4277h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ MutatorMutex f4278i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Function2 f4279j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f4280k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MutatorMutex$mutateWith$2(MutatePriority mutatePriority, MutatorMutex mutatorMutex, Function2 function2, Object obj, Continuation continuation) {
        super(2, continuation);
        this.f4277h = mutatePriority;
        this.f4278i = mutatorMutex;
        this.f4279j = function2;
        this.f4280k = obj;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        MutatorMutex$mutateWith$2 mutatorMutex$mutateWith$2 = new MutatorMutex$mutateWith$2(this.f4277h, this.f4278i, this.f4279j, this.f4280k, continuation);
        mutatorMutex$mutateWith$2.g = obj;
        return mutatorMutex$mutateWith$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MutatorMutex$mutateWith$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [int, kotlinx.coroutines.sync.Mutex] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MutatorMutex.Mutator mutator;
        MutatorMutex mutatorMutex;
        Mutex mutex;
        Function2 function2;
        Object obj2;
        MutatorMutex mutatorMutex2;
        Throwable th;
        MutatorMutex.Mutator mutator2;
        Mutex mutex2;
        AtomicReference atomicReference;
        AtomicReference atomicReference2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ?? r1 = this.f4276f;
        try {
            try {
                if (r1 == 0) {
                    ResultKt.b(obj);
                    CoroutineContext.Element element = ((CoroutineScope) this.g).getF8068c().get(Job.Key.f74677b);
                    element.getClass();
                    mutator = new MutatorMutex.Mutator(this.f4277h, (Job) element);
                    mutatorMutex = this.f4278i;
                    MutatorMutex.a(mutatorMutex, mutator);
                    mutex = mutatorMutex.f4264b;
                    this.g = mutator;
                    this.f4273b = mutex;
                    function2 = this.f4279j;
                    this.f4274c = function2;
                    Object obj3 = this.f4280k;
                    this.d = obj3;
                    this.f4275e = mutatorMutex;
                    this.f4276f = 1;
                    if (mutex.c(this) != coroutineSingletons) {
                        obj2 = obj3;
                    }
                    return coroutineSingletons;
                }
                if (r1 != 1) {
                    if (r1 != 2) {
                        md.k("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    mutatorMutex2 = (MutatorMutex) this.f4274c;
                    mutex2 = this.f4273b;
                    mutator2 = (MutatorMutex.Mutator) this.g;
                    try {
                        ResultKt.b(obj);
                        atomicReference2 = mutatorMutex2.f4263a;
                        while (!atomicReference2.compareAndSet(mutator2, null) && atomicReference2.get() == mutator2) {
                        }
                        mutex2.d(null);
                        return obj;
                    } catch (Throwable th2) {
                        th = th2;
                        atomicReference = mutatorMutex2.f4263a;
                        while (!atomicReference.compareAndSet(mutator2, null)) {
                        }
                        throw th;
                    }
                }
                MutatorMutex mutatorMutex3 = this.f4275e;
                obj2 = this.d;
                Function2 function3 = (Function2) this.f4274c;
                Mutex mutex3 = this.f4273b;
                MutatorMutex.Mutator mutator3 = (MutatorMutex.Mutator) this.g;
                ResultKt.b(obj);
                function2 = function3;
                mutex = mutex3;
                mutatorMutex = mutatorMutex3;
                mutator = mutator3;
                this.g = mutator;
                this.f4273b = mutex;
                this.f4274c = mutatorMutex;
                this.d = null;
                this.f4275e = null;
                this.f4276f = 2;
                Object objInvoke = function2.invoke(obj2, this);
                if (objInvoke != coroutineSingletons) {
                    mutatorMutex2 = mutatorMutex;
                    obj = objInvoke;
                    mutator2 = mutator;
                    mutex2 = mutex;
                    atomicReference2 = mutatorMutex2.f4263a;
                    while (!atomicReference2.compareAndSet(mutator2, null)) {
                    }
                    mutex2.d(null);
                    return obj;
                }
                return coroutineSingletons;
            } catch (Throwable th3) {
                mutatorMutex2 = mutatorMutex;
                th = th3;
                mutator2 = mutator;
                atomicReference = mutatorMutex2.f4263a;
                while (!atomicReference.compareAndSet(mutator2, null) && atomicReference.get() == mutator2) {
                }
                throw th;
            }
        } catch (Throwable th4) {
            r1.d(null);
            throw th4;
        }
    }
}
