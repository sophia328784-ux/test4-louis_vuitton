package androidx.compose.animation.core;

import defpackage.md;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "R", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.animation.core.MutatorMutex$mutate$2", f = "InternalMutatorMutex.kt", l = {178, 126}, m = "invokeSuspend", v = 1)
final class MutatorMutex$mutate$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<Object>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Mutex f3912b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f3913c;
    public MutatorMutex d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3914e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f3915f;
    public final /* synthetic */ MutatePriority g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ MutatorMutex f3916h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Function1 f3917i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MutatorMutex$mutate$2(MutatePriority mutatePriority, MutatorMutex mutatorMutex, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.g = mutatePriority;
        this.f3916h = mutatorMutex;
        this.f3917i = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        MutatorMutex$mutate$2 mutatorMutex$mutate$2 = new MutatorMutex$mutate$2(this.g, this.f3916h, this.f3917i, continuation);
        mutatorMutex$mutate$2.f3915f = obj;
        return mutatorMutex$mutate$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MutatorMutex$mutate$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [int, kotlinx.coroutines.sync.Mutex] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MutatorMutex.Mutator mutator;
        MutatorMutex mutatorMutex;
        Mutex mutex;
        Function1 function1;
        MutatorMutex mutatorMutex2;
        Throwable th;
        MutatorMutex.Mutator mutator2;
        Mutex mutex2;
        AtomicReference atomicReference;
        AtomicReference atomicReference2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ?? r1 = this.f3914e;
        try {
            try {
                if (r1 == 0) {
                    ResultKt.b(obj);
                    CoroutineContext.Element element = ((CoroutineScope) this.f3915f).getF8068c().get(Job.Key.f74677b);
                    element.getClass();
                    mutator = new MutatorMutex.Mutator(this.g, (Job) element);
                    mutatorMutex = this.f3916h;
                    AtomicReference atomicReference3 = mutatorMutex.f3908a;
                    loop2: while (true) {
                        MutatorMutex.Mutator mutator3 = (MutatorMutex.Mutator) atomicReference3.get();
                        if (mutator3 != null && mutator.f3910a.compareTo(mutator3.f3910a) < 0) {
                            throw new CancellationException("Current mutation had a higher priority");
                        }
                        do {
                            if (atomicReference3.compareAndSet(mutator3, mutator)) {
                                if (mutator3 != null) {
                                    mutator3.f3911b.cancel(new MutationInterruptedException());
                                }
                                mutex = mutatorMutex.f3909b;
                                this.f3915f = mutator;
                                this.f3912b = mutex;
                                Function1 function2 = this.f3917i;
                                this.f3913c = function2;
                                this.d = mutatorMutex;
                                this.f3914e = 1;
                                if (mutex.c(this) != coroutineSingletons) {
                                    function1 = function2;
                                    break loop2;
                                }
                                return coroutineSingletons;
                            }
                        } while (atomicReference3.get() == mutator3);
                    }
                } else {
                    if (r1 != 1) {
                        if (r1 != 2) {
                            md.k("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        mutatorMutex2 = (MutatorMutex) this.f3913c;
                        mutex2 = this.f3912b;
                        mutator2 = (MutatorMutex.Mutator) this.f3915f;
                        try {
                            ResultKt.b(obj);
                            atomicReference2 = mutatorMutex2.f3908a;
                            while (!atomicReference2.compareAndSet(mutator2, null) && atomicReference2.get() == mutator2) {
                            }
                            mutex2.d(null);
                            return obj;
                        } catch (Throwable th2) {
                            th = th2;
                            atomicReference = mutatorMutex2.f3908a;
                            while (!atomicReference.compareAndSet(mutator2, null)) {
                            }
                            throw th;
                        }
                    }
                    MutatorMutex mutatorMutex3 = this.d;
                    function1 = (Function1) this.f3913c;
                    mutex = this.f3912b;
                    MutatorMutex.Mutator mutator4 = (MutatorMutex.Mutator) this.f3915f;
                    ResultKt.b(obj);
                    mutatorMutex = mutatorMutex3;
                    mutator = mutator4;
                }
                this.f3915f = mutator;
                this.f3912b = mutex;
                this.f3913c = mutatorMutex;
                this.d = null;
                this.f3914e = 2;
                Object objInvoke = function1.invoke(this);
                if (objInvoke != coroutineSingletons) {
                    mutatorMutex2 = mutatorMutex;
                    obj = objInvoke;
                    mutator2 = mutator;
                    mutex2 = mutex;
                    atomicReference2 = mutatorMutex2.f3908a;
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
                atomicReference = mutatorMutex2.f3908a;
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
