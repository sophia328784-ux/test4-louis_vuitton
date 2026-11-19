package androidx.lifecycle;

import defpackage.md;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.MainCoroutineDispatcher;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexImpl;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3", f = "RepeatOnLifecycle.kt", l = {83}, m = "invokeSuspend", v = 1)
final class RepeatOnLifecycleKt$repeatOnLifecycle$3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f13477b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f13478c;
    public final /* synthetic */ Lifecycle d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Lifecycle.State f13479e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function2 f13480f;

    /* JADX INFO: renamed from: androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1", f = "RepeatOnLifecycle.kt", l = {161}, m = "invokeSuspend", v = 1)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Ref$ObjectRef f13481b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Ref$ObjectRef f13482c;
        public CoroutineScope d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f13483e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Lifecycle f13484f;
        public final /* synthetic */ Lifecycle.State g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ CoroutineScope f13485h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ Function2 f13486i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Lifecycle lifecycle, Lifecycle.State state, CoroutineScope coroutineScope, Function2 function2, Continuation continuation) {
            super(2, continuation);
            this.f13484f = lifecycle;
            this.g = state;
            this.f13485h = coroutineScope;
            this.f13486i = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f13484f, this.g, this.f13485h, this.f13486i, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code duplicated, block: B:25:0x0079  */
        /* JADX WARN: Code duplicated, block: B:28:0x0082  */
        /* JADX WARN: Code duplicated, block: B:38:0x0096  */
        /* JADX WARN: Code duplicated, block: B:41:0x009f  */
        /* JADX WARN: Code duplicated, block: B:49:? A[SYNTHETIC] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Ref$ObjectRef ref$ObjectRef;
            Throwable th;
            Ref$ObjectRef ref$ObjectRef2;
            Job job;
            LifecycleEventObserver lifecycleEventObserver;
            Job job2;
            LifecycleEventObserver lifecycleEventObserver2;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f13483e;
            Lifecycle lifecycle = this.f13484f;
            if (i2 != 0) {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ref$ObjectRef = this.f13482c;
                ref$ObjectRef2 = this.f13481b;
                try {
                    ResultKt.b(obj);
                    job2 = (Job) ref$ObjectRef2.f71921b;
                    if (job2 != null) {
                        job2.cancel(null);
                    }
                    lifecycleEventObserver2 = (LifecycleEventObserver) ref$ObjectRef.f71921b;
                    if (lifecycleEventObserver2 != null) {
                        lifecycle.d(lifecycleEventObserver2);
                    }
                    return Unit.f71739a;
                } catch (Throwable th2) {
                    th = th2;
                    job = (Job) ref$ObjectRef2.f71921b;
                    if (job != null) {
                        job.cancel(null);
                    }
                    lifecycleEventObserver = (LifecycleEventObserver) ref$ObjectRef.f71921b;
                    if (lifecycleEventObserver != null) {
                        throw th;
                    }
                    lifecycle.d(lifecycleEventObserver);
                    throw th;
                }
            }
            ResultKt.b(obj);
            if (lifecycle.getF13454i() == Lifecycle.State.DESTROYED) {
                return Unit.f71739a;
            }
            final Ref$ObjectRef ref$ObjectRef3 = new Ref$ObjectRef();
            ref$ObjectRef = new Ref$ObjectRef();
            try {
                Lifecycle.State state = this.g;
                final CoroutineScope coroutineScope = this.f13485h;
                final Function2 function2 = this.f13486i;
                this.f13481b = ref$ObjectRef3;
                this.f13482c = ref$ObjectRef;
                this.d = coroutineScope;
                this.f13483e = 1;
                final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.b(this), 1);
                cancellableContinuationImpl.initCancellability();
                try {
                    Lifecycle.Event.INSTANCE.getClass();
                    final Lifecycle.Event eventC = Lifecycle.Event.Companion.c(state);
                    final Lifecycle.Event eventA = Lifecycle.Event.Companion.a(state);
                    final MutexImpl mutexImplA = MutexKt.a();
                    LifecycleEventObserver lifecycleEventObserver3 = new LifecycleEventObserver() { // from class: androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1

                        /* JADX INFO: renamed from: androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1, reason: invalid class name */
                        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
                        @DebugMetadata(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1", f = "RepeatOnLifecycle.kt", l = {166, 110}, m = "invokeSuspend", v = 1)
                        final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public Mutex f13492b;

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            public SuspendLambda f13493c;
                            public int d;

                            /* JADX INFO: renamed from: e, reason: collision with root package name */
                            public final /* synthetic */ MutexImpl f13494e;

                            /* JADX INFO: renamed from: f, reason: collision with root package name */
                            public final /* synthetic */ Function2 f13495f;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            public AnonymousClass1(MutexImpl mutexImpl, Function2 function2, Continuation continuation) {
                                super(2, continuation);
                                this.f13494e = mutexImpl;
                                this.f13495f = function2;
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Continuation create(Object obj, Continuation continuation) {
                                return new AnonymousClass1(this.f13494e, this.f13495f, continuation);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                            }

                            /* JADX WARN: Multi-variable type inference failed */
                            /* JADX WARN: Type inference failed for: r1v2, types: [kotlin.jvm.functions.Function2] */
                            /* JADX WARN: Type inference failed for: r1v5 */
                            /* JADX WARN: Type inference failed for: r1v6 */
                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Object invokeSuspend(Object obj) throws Throwable {
                                Mutex mutex;
                                Function function;
                                ?? r1;
                                Throwable th;
                                Mutex mutex2;
                                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                                int i2 = this.d;
                                try {
                                    if (i2 == 0) {
                                        ResultKt.b(obj);
                                        mutex = this.f13494e;
                                        this.f13492b = mutex;
                                        function = this.f13495f;
                                        this.f13493c = (SuspendLambda) function;
                                        this.d = 1;
                                        if (mutex.c(this) != coroutineSingletons) {
                                        }
                                        r1 = function;
                                        return coroutineSingletons;
                                    }
                                    if (i2 != 1) {
                                        if (i2 != 2) {
                                            md.k("call to 'resume' before 'invoke' with coroutine");
                                            return null;
                                        }
                                        mutex2 = this.f13492b;
                                        try {
                                            ResultKt.b(obj);
                                            mutex2.d(null);
                                            return Unit.f71739a;
                                        } catch (Throwable th2) {
                                            th = th2;
                                            mutex2.d(null);
                                            throw th;
                                        }
                                    }
                                    Function2 function2 = (Function2) this.f13493c;
                                    Mutex mutex3 = this.f13492b;
                                    ResultKt.b(obj);
                                    mutex = mutex3;
                                    r1 = function2;
                                    r1 = function;
                                    RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1 repeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1 = new RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1(r1, null);
                                    this.f13492b = mutex;
                                    this.f13493c = null;
                                    this.d = 2;
                                    if (CoroutineScopeKt.d(repeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1, this) != coroutineSingletons) {
                                        mutex2 = mutex;
                                        mutex2.d(null);
                                        return Unit.f71739a;
                                    }
                                    r1 = function;
                                    return coroutineSingletons;
                                } catch (Throwable th3) {
                                    Mutex mutex4 = mutex;
                                    th = th3;
                                    mutex2 = mutex4;
                                    mutex2.d(null);
                                    throw th;
                                }
                            }
                        }

                        @Override // androidx.lifecycle.LifecycleEventObserver
                        public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                            Lifecycle.Event event2 = eventC;
                            Ref$ObjectRef ref$ObjectRef4 = ref$ObjectRef3;
                            if (event == event2) {
                                ref$ObjectRef4.f71921b = BuildersKt.c(coroutineScope, null, null, new AnonymousClass1(mutexImplA, function2, null), 3);
                                return;
                            }
                            if (event == eventA) {
                                Job job3 = (Job) ref$ObjectRef4.f71921b;
                                if (job3 != null) {
                                    job3.cancel(null);
                                }
                                ref$ObjectRef4.f71921b = null;
                            }
                            if (event == Lifecycle.Event.ON_DESTROY) {
                                Result.Companion companion = Result.INSTANCE;
                                cancellableContinuationImpl.resumeWith(Unit.f71739a);
                            }
                        }
                    };
                    ref$ObjectRef.f71921b = lifecycleEventObserver3;
                    lifecycle.a(lifecycleEventObserver3);
                    if (cancellableContinuationImpl.getResult() == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    ref$ObjectRef2 = ref$ObjectRef3;
                    job2 = (Job) ref$ObjectRef2.f71921b;
                    if (job2 != null) {
                        job2.cancel(null);
                    }
                    lifecycleEventObserver2 = (LifecycleEventObserver) ref$ObjectRef.f71921b;
                    if (lifecycleEventObserver2 != null) {
                        lifecycle.d(lifecycleEventObserver2);
                    }
                    return Unit.f71739a;
                } catch (Throwable th3) {
                    th = th3;
                    ref$ObjectRef2 = ref$ObjectRef3;
                    job = (Job) ref$ObjectRef2.f71921b;
                    if (job != null) {
                        job.cancel(null);
                    }
                    lifecycleEventObserver = (LifecycleEventObserver) ref$ObjectRef.f71921b;
                    if (lifecycleEventObserver != null) {
                        throw th;
                    }
                    lifecycle.d(lifecycleEventObserver);
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RepeatOnLifecycleKt$repeatOnLifecycle$3(Lifecycle lifecycle, Lifecycle.State state, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.d = lifecycle;
        this.f13479e = state;
        this.f13480f = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        RepeatOnLifecycleKt$repeatOnLifecycle$3 repeatOnLifecycleKt$repeatOnLifecycle$3 = new RepeatOnLifecycleKt$repeatOnLifecycle$3(this.d, this.f13479e, this.f13480f, continuation);
        repeatOnLifecycleKt$repeatOnLifecycle$3.f13478c = obj;
        return repeatOnLifecycleKt$repeatOnLifecycle$3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RepeatOnLifecycleKt$repeatOnLifecycle$3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f13477b;
        if (i2 == 0) {
            ResultKt.b(obj);
            CoroutineScope coroutineScope = (CoroutineScope) this.f13478c;
            DefaultScheduler defaultScheduler = Dispatchers.f74659a;
            MainCoroutineDispatcher mainCoroutineDispatcherR = MainDispatcherLoader.f75131a.r();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f13479e, coroutineScope, this.f13480f, null);
            this.f13477b = 1;
            if (BuildersKt.f(mainCoroutineDispatcherR, anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
