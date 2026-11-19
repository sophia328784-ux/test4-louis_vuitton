package androidx.compose.runtime;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSet;
import androidx.compose.runtime.snapshots.Snapshot;
import defpackage.j00;
import defpackage.ll0;
import defpackage.md;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.runtime.Recomposer$recompositionRunner$2", f = "Recomposer.kt", l = {1081}, m = "invokeSuspend", v = 1)
final class Recomposer$recompositionRunner$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public j00 f8092b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8093c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Recomposer f8094e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function3 f8095f;
    public final /* synthetic */ MonotonicFrameClock g;

    /* JADX INFO: renamed from: androidx.compose.runtime.Recomposer$recompositionRunner$2$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.runtime.Recomposer$recompositionRunner$2$2", f = "Recomposer.kt", l = {1081}, m = "invokeSuspend", v = 1)
    final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f8096b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public /* synthetic */ Object f8097c;
        public final /* synthetic */ Function3 d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ MonotonicFrameClock f8098e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Function3 function3, MonotonicFrameClock monotonicFrameClock, Continuation continuation) {
            super(2, continuation);
            this.d = function3;
            this.f8098e = monotonicFrameClock;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.d, this.f8098e, continuation);
            anonymousClass2.f8097c = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f8096b;
            if (i2 == 0) {
                ResultKt.b(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.f8097c;
                this.f8096b = 1;
                if (((Recomposer$runRecomposeAndApplyChanges$2) this.d).A(coroutineScope, this.f8098e, this) == coroutineSingletons) {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Recomposer$recompositionRunner$2(Recomposer recomposer, Function3 function3, MonotonicFrameClock monotonicFrameClock, Continuation continuation) {
        super(2, continuation);
        this.f8094e = recomposer;
        this.f8095f = function3;
        this.g = monotonicFrameClock;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        Recomposer$recompositionRunner$2 recomposer$recompositionRunner$2 = new Recomposer$recompositionRunner$2(this.f8094e, this.f8095f, this.g, continuation);
        recomposer$recompositionRunner$2.d = obj;
        return recomposer$recompositionRunner$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((Recomposer$recompositionRunner$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0110 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:105:0x0100 A[EDGE_INSN: B:105:0x0100->B:61:0x0100 BREAK  A[LOOP:0: B:57:0x00ec->B:107:?], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:108:0x0143 A[EDGE_INSN: B:108:0x0143->B:85:0x0143 BREAK  A[LOOP:1: B:80:0x012e->B:110:?], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x00d2 A[Catch: all -> 0x00d5, TryCatch #1 {all -> 0x00d5, blocks: (B:47:0x00ce, B:49:0x00d2, B:52:0x00d7, B:54:0x00dd), top: B:97:0x00ce }] */
    /* JADX WARN: Code duplicated, block: B:54:0x00dd A[Catch: all -> 0x00d5, TRY_LEAVE, TryCatch #1 {all -> 0x00d5, blocks: (B:47:0x00ce, B:49:0x00d2, B:52:0x00d7, B:54:0x00dd), top: B:97:0x00ce }] */
    /* JADX WARN: Code duplicated, block: B:59:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:72:0x0114 A[Catch: all -> 0x0117, TryCatch #3 {all -> 0x0117, blocks: (B:70:0x0110, B:72:0x0114, B:75:0x0119, B:77:0x011f), top: B:101:0x0110 }] */
    /* JADX WARN: Code duplicated, block: B:77:0x011f A[Catch: all -> 0x0117, TRY_LEAVE, TryCatch #3 {all -> 0x0117, blocks: (B:70:0x0110, B:72:0x0114, B:75:0x0119, B:77:0x011f), top: B:101:0x0110 }] */
    /* JADX WARN: Code duplicated, block: B:82:0x013c  */
    /* JADX WARN: Code duplicated, block: B:97:0x00ce A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Job jobE;
        MutableStateFlow mutableStateFlow;
        PersistentSet persistentSet;
        PersistentOrderedSet persistentOrderedSetAdd;
        j00 j00Var;
        Throwable th;
        List listJ;
        Recomposer recomposer;
        Recomposer.RecomposerInfoImpl recomposerInfoImpl;
        MutableStateFlow mutableStateFlow2;
        PersistentSet persistentSet2;
        PersistentOrderedSet persistentOrderedSetRemove;
        Recomposer recomposer2;
        Recomposer.RecomposerInfoImpl recomposerInfoImpl2;
        MutableStateFlow mutableStateFlow3;
        PersistentSet persistentSet3;
        PersistentOrderedSet persistentOrderedSetRemove2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f8093c;
        if (i2 != 0) {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            j00Var = this.f8092b;
            jobE = (Job) this.d;
            try {
                ResultKt.b(obj);
                j00Var.dispose();
                recomposer2 = this.f8094e;
                synchronized (recomposer2.f8083c) {
                    try {
                        if (recomposer2.d == jobE) {
                            recomposer2.d = null;
                        }
                        if (recomposer2.D() != null) {
                            ComposerKt.a("called outside of runRecomposeAndApplyChanges");
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                Recomposer.Companion companion = Recomposer.z;
                recomposerInfoImpl2 = this.f8094e.y;
                companion.getClass();
                do {
                    mutableStateFlow3 = Recomposer.A;
                    persistentSet3 = (PersistentSet) mutableStateFlow3.getValue();
                    persistentOrderedSetRemove2 = persistentSet3.remove((Object) recomposerInfoImpl2);
                    if (persistentSet3 != persistentOrderedSetRemove2) {
                        break;
                    }
                } while (!mutableStateFlow3.i(persistentSet3, persistentOrderedSetRemove2));
                return Unit.f71739a;
            } catch (Throwable th3) {
                th = th3;
                j00Var.dispose();
                recomposer = this.f8094e;
                synchronized (recomposer.f8083c) {
                    try {
                        if (recomposer.d == jobE) {
                            recomposer.d = null;
                        }
                        if (recomposer.D() != null) {
                            ComposerKt.a("called outside of runRecomposeAndApplyChanges");
                        }
                    } catch (Throwable th4) {
                        throw th4;
                    }
                }
                Recomposer.Companion companion2 = Recomposer.z;
                recomposerInfoImpl = this.f8094e.y;
                companion2.getClass();
                do {
                    mutableStateFlow2 = Recomposer.A;
                    persistentSet2 = (PersistentSet) mutableStateFlow2.getValue();
                    persistentOrderedSetRemove = persistentSet2.remove((Object) recomposerInfoImpl);
                    if (persistentSet2 != persistentOrderedSetRemove) {
                        break;
                    }
                } while (!mutableStateFlow2.i(persistentSet2, persistentOrderedSetRemove));
                throw th;
            }
        }
        ResultKt.b(obj);
        jobE = JobKt.e(((CoroutineScope) this.d).getF50528e());
        Recomposer recomposer3 = this.f8094e;
        synchronized (recomposer3.f8083c) {
            Throwable th5 = recomposer3.f8084e;
            if (th5 != null) {
                throw th5;
            }
            if (((Recomposer.State) recomposer3.u.getValue()).compareTo(Recomposer.State.ShuttingDown) <= 0) {
                throw new IllegalStateException("Recomposer shut down");
            }
            if (recomposer3.d != null) {
                throw new IllegalStateException("Recomposer already running");
            }
            recomposer3.d = jobE;
            if (recomposer3.D() != null) {
                ComposerKt.a("called outside of runRecomposeAndApplyChanges");
            }
        }
        Snapshot.Companion companion3 = Snapshot.f8462e;
        ll0 ll0Var = new ll0(this.f8094e, 6);
        companion3.getClass();
        j00 j00VarD = Snapshot.Companion.d(ll0Var);
        Recomposer.Companion companion4 = Recomposer.z;
        Recomposer.RecomposerInfoImpl recomposerInfoImpl3 = this.f8094e.y;
        companion4.getClass();
        do {
            mutableStateFlow = Recomposer.A;
            persistentSet = (PersistentSet) mutableStateFlow.getValue();
            persistentOrderedSetAdd = persistentSet.add((Object) recomposerInfoImpl3);
            if (persistentSet == persistentOrderedSetAdd) {
                break;
            }
        } while (!mutableStateFlow.i(persistentSet, persistentOrderedSetAdd));
        try {
            Recomposer recomposer4 = this.f8094e;
            synchronized (recomposer4.f8083c) {
                listJ = recomposer4.J();
            }
            int size = listJ.size();
            for (int i3 = 0; i3 < size; i3++) {
                ((ControlledComposition) listJ.get(i3)).b();
            }
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.f8095f, this.g, null);
            this.d = jobE;
            this.f8092b = j00VarD;
            this.f8093c = 1;
            if (CoroutineScopeKt.d(anonymousClass2, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
            j00Var = j00VarD;
            j00Var.dispose();
            recomposer2 = this.f8094e;
            synchronized (recomposer2.f8083c) {
                if (recomposer2.d == jobE) {
                    recomposer2.d = null;
                }
                if (recomposer2.D() != null) {
                    ComposerKt.a("called outside of runRecomposeAndApplyChanges");
                }
                Recomposer.Companion companion5 = Recomposer.z;
                recomposerInfoImpl2 = this.f8094e.y;
                companion5.getClass();
                do {
                    mutableStateFlow3 = Recomposer.A;
                    persistentSet3 = (PersistentSet) mutableStateFlow3.getValue();
                    persistentOrderedSetRemove2 = persistentSet3.remove((Object) recomposerInfoImpl2);
                    if (persistentSet3 != persistentOrderedSetRemove2) {
                        break;
                        break;
                    }
                } while (!mutableStateFlow3.i(persistentSet3, persistentOrderedSetRemove2));
                return Unit.f71739a;
            }
        } catch (Throwable th6) {
            j00Var = j00VarD;
            th = th6;
            j00Var.dispose();
            recomposer = this.f8094e;
            synchronized (recomposer.f8083c) {
                if (recomposer.d == jobE) {
                    recomposer.d = null;
                }
                if (recomposer.D() != null) {
                    ComposerKt.a("called outside of runRecomposeAndApplyChanges");
                }
                Recomposer.Companion companion6 = Recomposer.z;
                recomposerInfoImpl = this.f8094e.y;
                companion6.getClass();
                do {
                    mutableStateFlow2 = Recomposer.A;
                    persistentSet2 = (PersistentSet) mutableStateFlow2.getValue();
                    persistentOrderedSetRemove = persistentSet2.remove((Object) recomposerInfoImpl);
                    if (persistentSet2 != persistentOrderedSetRemove) {
                        break;
                        break;
                    }
                } while (!mutableStateFlow2.i(persistentSet2, persistentOrderedSetRemove));
                throw th;
            }
        }
    }
}
