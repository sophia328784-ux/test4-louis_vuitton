package androidx.compose.animation.core;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.sync.MutexImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.animation.core.SeekableTransitionState$animateTo$2", f = "Transition.kt", l = {607}, m = "invokeSuspend", v = 1)
final class SeekableTransitionState$animateTo$2 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3935b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Transition f3936c;
    public final /* synthetic */ SeekableTransitionState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f3937e;

    /* JADX INFO: renamed from: androidx.compose.animation.core.SeekableTransitionState$animateTo$2$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.animation.core.SeekableTransitionState$animateTo$2$1", f = "Transition.kt", l = {2194, 620, 622, 676, 678}, m = "invokeSuspend", v = 1)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public MutexImpl f3938b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public SeekableTransitionState f3939c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ SeekableTransitionState f3940e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Object f3941f;
        public final /* synthetic */ Transition g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(SeekableTransitionState seekableTransitionState, Transition transition, Object obj, Continuation continuation) {
            super(2, continuation);
            this.f3940e = seekableTransitionState;
            this.f3941f = obj;
            this.g = transition;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            Object obj2 = this.f3941f;
            return new AnonymousClass1(this.f3940e, this.g, obj2, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code duplicated, block: B:42:0x00c9 A[PHI: r16
          0x00c9: PHI (r16v6 long) = (r16v4 long), (r16v5 long), (r16v9 long) binds: [B:26:0x0090, B:40:0x00c5, B:13:0x002f] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:44:0x00d9  */
        /* JADX WARN: Code duplicated, block: B:46:0x00e6  */
        /* JADX WARN: Code duplicated, block: B:51:0x00f4  */
        /* JADX WARN: Code duplicated, block: B:52:0x00f9  */
        /* JADX WARN: Code duplicated, block: B:54:0x00fd  */
        /* JADX WARN: Code duplicated, block: B:56:0x010c  */
        /* JADX WARN: Code duplicated, block: B:58:0x011b  */
        /* JADX WARN: Code duplicated, block: B:59:0x011d  */
        /* JADX WARN: Code duplicated, block: B:69:0x0145  */
        /* JADX WARN: Code duplicated, block: B:71:0x014e  */
        /* JADX WARN: Code duplicated, block: B:76:0x0196  */
        /* JADX WARN: Code restructure failed: missing block: B:77:0x019f, code lost:
        
            if (androidx.compose.animation.core.SeekableTransitionState.h(r14, r24) == r1) goto L78;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r25) {
            /*
                Method dump skipped, instruction units count: 431
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.core.SeekableTransitionState$animateTo$2.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SeekableTransitionState$animateTo$2(SeekableTransitionState seekableTransitionState, Transition transition, Object obj, Continuation continuation) {
        super(1, continuation);
        this.f3936c = transition;
        this.d = seekableTransitionState;
        this.f3937e = obj;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new SeekableTransitionState$animateTo$2(this.d, this.f3936c, this.f3937e, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((SeekableTransitionState$animateTo$2) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f3935b;
        Transition transition = this.f3936c;
        if (i2 == 0) {
            ResultKt.b(obj);
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, transition, this.f3937e, null);
            this.f3935b = 1;
            if (CoroutineScopeKt.d(anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        transition.k();
        return Unit.f71739a;
    }
}
