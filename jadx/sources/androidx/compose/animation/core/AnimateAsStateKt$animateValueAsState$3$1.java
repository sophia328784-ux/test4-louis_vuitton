package androidx.compose.animation.core;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
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
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelIterator;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$3$1", f = "AnimateAsState.kt", l = {430}, m = "invokeSuspend", v = 1)
final class AnimateAsStateKt$animateValueAsState$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ChannelIterator f3799b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3800c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Channel f3801e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Animatable f3802f;
    public final /* synthetic */ MutableState g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ MutableState f3803h;

    /* JADX INFO: renamed from: androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$3$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$3$1$1", f = "AnimateAsState.kt", l = {439}, m = "invokeSuspend", v = 1)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f3804b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Object f3805c;
        public final /* synthetic */ Animatable d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ MutableState f3806e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ MutableState f3807f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Object obj, Animatable animatable, MutableState mutableState, MutableState mutableState2, Continuation continuation) {
            super(2, continuation);
            this.f3805c = obj;
            this.d = animatable;
            this.f3806e = mutableState;
            this.f3807f = mutableState2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f3805c, this.d, this.f3806e, this.f3807f, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            AnonymousClass1 anonymousClass1;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f3804b;
            Animatable animatable = this.d;
            if (i2 == 0) {
                ResultKt.b(obj);
                if (!Intrinsics.c(this.f3805c, ((SnapshotMutableStateImpl) animatable.f3775e).getF10755b())) {
                    SpringSpec springSpec = AnimateAsStateKt.f3796a;
                    AnimationSpec animationSpec = (AnimationSpec) this.f3806e.getF10755b();
                    this.f3804b = 1;
                    anonymousClass1 = this;
                    if (Animatable.c(this.d, this.f3805c, animationSpec, null, null, anonymousClass1, 12) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return Unit.f71739a;
            }
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            anonymousClass1 = this;
            SpringSpec springSpec2 = AnimateAsStateKt.f3796a;
            Function1 function1 = (Function1) anonymousClass1.f3807f.getF10755b();
            if (function1 != null) {
                function1.invoke(animatable.d());
            }
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnimateAsStateKt$animateValueAsState$3$1(Channel channel, Animatable animatable, MutableState mutableState, MutableState mutableState2, Continuation continuation) {
        super(2, continuation);
        this.f3801e = channel;
        this.f3802f = animatable;
        this.g = mutableState;
        this.f3803h = mutableState2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        AnimateAsStateKt$animateValueAsState$3$1 animateAsStateKt$animateValueAsState$3$1 = new AnimateAsStateKt$animateValueAsState$3$1(this.f3801e, this.f3802f, this.g, this.f3803h, continuation);
        animateAsStateKt$animateValueAsState$3$1.d = obj;
        return animateAsStateKt$animateValueAsState$3$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AnimateAsStateKt$animateValueAsState$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0034 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:14:0x003d  */
    /* JADX WARN: Code duplicated, block: B:16:0x004b  */
    /* JADX WARN: Code duplicated, block: B:17:0x004d  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0032 -> B:12:0x0035). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:11:0x0034
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            r13 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r13.f3800c
            r2 = 0
            kotlinx.coroutines.channels.Channel r3 = r13.f3801e
            r4 = 1
            if (r1 == 0) goto L1c
            if (r1 != r4) goto L16
            kotlinx.coroutines.channels.ChannelIterator r1 = r13.f3799b
            java.lang.Object r5 = r13.d
            kotlinx.coroutines.CoroutineScope r5 = (kotlinx.coroutines.CoroutineScope) r5
            kotlin.ResultKt.b(r14)
            goto L35
        L16:
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r13)
            return r2
        L1c:
            kotlin.ResultKt.b(r14)
            java.lang.Object r14 = r13.d
            kotlinx.coroutines.CoroutineScope r14 = (kotlinx.coroutines.CoroutineScope) r14
            kotlinx.coroutines.channels.ChannelIterator r1 = r3.iterator()
            r5 = r14
        L28:
            r13.d = r5
            r13.f3799b = r1
            r13.f3800c = r4
            java.lang.Object r14 = r1.a(r13)
            if (r14 != r0) goto L35
            return r0
        L35:
            java.lang.Boolean r14 = (java.lang.Boolean) r14
            boolean r14 = r14.booleanValue()
            if (r14 == 0) goto L5f
            java.lang.Object r14 = r1.next()
            java.lang.Object r6 = r3.f()
            java.lang.Object r6 = kotlinx.coroutines.channels.ChannelResult.a(r6)
            if (r6 != 0) goto L4d
            r8 = r14
            goto L4e
        L4d:
            r8 = r6
        L4e:
            androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$3$1$1 r7 = new androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$3$1$1
            androidx.compose.runtime.MutableState r11 = r13.f3803h
            r12 = 0
            androidx.compose.animation.core.Animatable r9 = r13.f3802f
            androidx.compose.runtime.MutableState r10 = r13.g
            r7.<init>(r8, r9, r10, r11, r12)
            r14 = 3
            kotlinx.coroutines.BuildersKt.c(r5, r2, r2, r7, r14)
            goto L28
        L5f:
            kotlin.Unit r13 = kotlin.Unit.f71739a
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$3$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
