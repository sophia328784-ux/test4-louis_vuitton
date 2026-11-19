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
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.sync.Mutex;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "R", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.MutatorMutex$mutate$2", f = "MutatorMutex.kt", l = {212, CertificateBody.profileType}, m = "invokeSuspend", v = 1)
final class MutatorMutex$mutate$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<Object>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Mutex f4267b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f4268c;
    public MutatorMutex d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4269e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f4270f;
    public final /* synthetic */ MutatePriority g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ MutatorMutex f4271h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Function1 f4272i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MutatorMutex$mutate$2(MutatePriority mutatePriority, MutatorMutex mutatorMutex, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.g = mutatePriority;
        this.f4271h = mutatorMutex;
        this.f4272i = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        MutatorMutex$mutate$2 mutatorMutex$mutate$2 = new MutatorMutex$mutate$2(this.g, this.f4271h, this.f4272i, continuation);
        mutatorMutex$mutate$2.f4270f = obj;
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
        ?? r1 = this.f4269e;
        try {
            try {
                if (r1 == 0) {
                    ResultKt.b(obj);
                    CoroutineContext.Element element = ((CoroutineScope) this.f4270f).getF8068c().get(Job.Key.f74677b);
                    element.getClass();
                    mutator = new MutatorMutex.Mutator(this.g, (Job) element);
                    mutatorMutex = this.f4271h;
                    MutatorMutex.a(mutatorMutex, mutator);
                    mutex = mutatorMutex.f4264b;
                    this.f4270f = mutator;
                    this.f4267b = mutex;
                    Function1 function2 = this.f4272i;
                    this.f4268c = function2;
                    this.d = mutatorMutex;
                    this.f4269e = 1;
                    if (mutex.c(this) != coroutineSingletons) {
                        function1 = function2;
                    }
                    return coroutineSingletons;
                }
                if (r1 != 1) {
                    if (r1 != 2) {
                        md.k("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    mutatorMutex2 = (MutatorMutex) this.f4268c;
                    mutex2 = this.f4267b;
                    mutator2 = (MutatorMutex.Mutator) this.f4270f;
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
                MutatorMutex mutatorMutex3 = this.d;
                function1 = (Function1) this.f4268c;
                mutex = this.f4267b;
                MutatorMutex.Mutator mutator3 = (MutatorMutex.Mutator) this.f4270f;
                ResultKt.b(obj);
                mutatorMutex = mutatorMutex3;
                mutator = mutator3;
                this.f4270f = mutator;
                this.f4267b = mutex;
                this.f4268c = mutatorMutex;
                this.d = null;
                this.f4269e = 2;
                Object objInvoke = function1.invoke(this);
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
