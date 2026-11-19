package androidx.compose.material3.internal;

import androidx.compose.foundation.MutatePriority;
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
@Metadata(d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "R", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.material3.internal.InternalMutatorMutex$mutate$2", f = "InternalMutatorMutex.kt", l = {179, 103}, m = "invokeSuspend")
final class InternalMutatorMutex$mutate$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<Object>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Mutex f7628b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f7629c;
    public InternalMutatorMutex d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7630e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f7631f;
    public final /* synthetic */ MutatePriority g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ InternalMutatorMutex f7632h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Function1 f7633i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InternalMutatorMutex$mutate$2(MutatePriority mutatePriority, InternalMutatorMutex internalMutatorMutex, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.g = mutatePriority;
        this.f7632h = internalMutatorMutex;
        this.f7633i = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        InternalMutatorMutex$mutate$2 internalMutatorMutex$mutate$2 = new InternalMutatorMutex$mutate$2(this.g, this.f7632h, this.f7633i, continuation);
        internalMutatorMutex$mutate$2.f7631f = obj;
        return internalMutatorMutex$mutate$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((InternalMutatorMutex$mutate$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [int, kotlinx.coroutines.sync.Mutex] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        InternalMutatorMutex.Mutator mutator;
        InternalMutatorMutex internalMutatorMutex;
        Mutex mutex;
        Function1 function1;
        InternalMutatorMutex internalMutatorMutex2;
        Throwable th;
        InternalMutatorMutex.Mutator mutator2;
        Mutex mutex2;
        AtomicReference atomicReference;
        AtomicReference atomicReference2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ?? r1 = this.f7630e;
        try {
            try {
                if (r1 == 0) {
                    ResultKt.b(obj);
                    CoroutineContext.Element element = ((CoroutineScope) this.f7631f).getF8068c().get(Job.Key.f74677b);
                    element.getClass();
                    mutator = new InternalMutatorMutex.Mutator(this.g, (Job) element);
                    internalMutatorMutex = this.f7632h;
                    AtomicReference atomicReference3 = internalMutatorMutex.f7624a;
                    loop2: while (true) {
                        InternalMutatorMutex.Mutator mutator3 = (InternalMutatorMutex.Mutator) atomicReference3.get();
                        if (mutator3 != null && mutator.f7626a.compareTo(mutator3.f7626a) < 0) {
                            throw new CancellationException("Current mutation had a higher priority");
                        }
                        do {
                            if (atomicReference3.compareAndSet(mutator3, mutator)) {
                                if (mutator3 != null) {
                                    mutator3.f7627b.cancel(null);
                                }
                                mutex = internalMutatorMutex.f7625b;
                                this.f7631f = mutator;
                                this.f7628b = mutex;
                                Function1 function2 = this.f7633i;
                                this.f7629c = function2;
                                this.d = internalMutatorMutex;
                                this.f7630e = 1;
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
                        internalMutatorMutex2 = (InternalMutatorMutex) this.f7629c;
                        mutex2 = this.f7628b;
                        mutator2 = (InternalMutatorMutex.Mutator) this.f7631f;
                        try {
                            ResultKt.b(obj);
                            atomicReference2 = internalMutatorMutex2.f7624a;
                            while (!atomicReference2.compareAndSet(mutator2, null) && atomicReference2.get() == mutator2) {
                            }
                            mutex2.d(null);
                            return obj;
                        } catch (Throwable th2) {
                            th = th2;
                            atomicReference = internalMutatorMutex2.f7624a;
                            while (!atomicReference.compareAndSet(mutator2, null)) {
                            }
                            throw th;
                        }
                    }
                    InternalMutatorMutex internalMutatorMutex3 = this.d;
                    function1 = (Function1) this.f7629c;
                    mutex = this.f7628b;
                    InternalMutatorMutex.Mutator mutator4 = (InternalMutatorMutex.Mutator) this.f7631f;
                    ResultKt.b(obj);
                    internalMutatorMutex = internalMutatorMutex3;
                    mutator = mutator4;
                }
                this.f7631f = mutator;
                this.f7628b = mutex;
                this.f7629c = internalMutatorMutex;
                this.d = null;
                this.f7630e = 2;
                Object objInvoke = function1.invoke(this);
                if (objInvoke != coroutineSingletons) {
                    internalMutatorMutex2 = internalMutatorMutex;
                    obj = objInvoke;
                    mutator2 = mutator;
                    mutex2 = mutex;
                    atomicReference2 = internalMutatorMutex2.f7624a;
                    while (!atomicReference2.compareAndSet(mutator2, null)) {
                    }
                    mutex2.d(null);
                    return obj;
                }
                return coroutineSingletons;
            } catch (Throwable th3) {
                internalMutatorMutex2 = internalMutatorMutex;
                th = th3;
                mutator2 = mutator;
                atomicReference = internalMutatorMutex2.f7624a;
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
