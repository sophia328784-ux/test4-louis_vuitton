package com.airbnb.lottie.compose;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import com.airbnb.lottie.LottieComposition;
import defpackage.md;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.NonCancellable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.airbnb.lottie.compose.LottieAnimatableImpl$animate$2", f = "LottieAnimatable.kt", l = {269}, m = "invokeSuspend")
final class LottieAnimatableImpl$animate$2 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f21948b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LottieAnimatableImpl f21949c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f21950e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f21951f;
    public final /* synthetic */ float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ LottieClipSpec f21952h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ LottieComposition f21953i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ float f21954j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ boolean f21955k;
    public final /* synthetic */ boolean l;
    public final /* synthetic */ LottieCancellationBehavior m;

    /* JADX INFO: renamed from: com.airbnb.lottie.compose.LottieAnimatableImpl$animate$2$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.airbnb.lottie.compose.LottieAnimatableImpl$animate$2$1", f = "LottieAnimatable.kt", l = {277}, m = "invokeSuspend")
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f21956b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ LottieCancellationBehavior f21957c;
        public final /* synthetic */ Job d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ int f21958e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ int f21959f;
        public final /* synthetic */ LottieAnimatableImpl g;

        /* JADX INFO: renamed from: com.airbnb.lottie.compose.LottieAnimatableImpl$animate$2$1$WhenMappings */
        @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f21960a;

            static {
                int[] iArr = new int[LottieCancellationBehavior.values().length];
                try {
                    iArr[LottieCancellationBehavior.OnIterationFinish.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                f21960a = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(LottieCancellationBehavior lottieCancellationBehavior, Job job, int i2, int i3, LottieAnimatableImpl lottieAnimatableImpl, Continuation continuation) {
            super(2, continuation);
            this.f21957c = lottieCancellationBehavior;
            this.d = job;
            this.f21958e = i2;
            this.f21959f = i3;
            this.g = lottieAnimatableImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f21957c, this.d, this.f21958e, this.f21959f, this.g, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0025  */
        /* JADX WARN: Code duplicated, block: B:17:0x0039  */
        /* JADX WARN: Code duplicated, block: B:18:0x0043  */
        /* JADX WARN: Code duplicated, block: B:20:0x0056 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:23:0x005f  */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:11:0x0025
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r5) {
            /*
                r4 = this;
                kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r1 = r4.f21956b
                r2 = 1
                if (r1 == 0) goto L14
                if (r1 != r2) goto Ld
                kotlin.ResultKt.b(r5)
                goto L57
            Ld:
                java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.md.k(r4)
                r4 = 0
                return r4
            L14:
                kotlin.ResultKt.b(r5)
            L17:
                int[] r5 = com.airbnb.lottie.compose.LottieAnimatableImpl$animate$2.AnonymousClass1.WhenMappings.f21960a
                com.airbnb.lottie.compose.LottieCancellationBehavior r1 = r4.f21957c
                int r1 = r1.ordinal()
                r5 = r5[r1]
                int r1 = r4.f21958e
                if (r5 != r2) goto L30
                kotlinx.coroutines.Job r5 = r4.d
                boolean r5 = r5.isActive()
                if (r5 == 0) goto L2e
                goto L30
            L2e:
                int r1 = r4.f21959f
            L30:
                r4.f21956b = r2
                r5 = 2147483647(0x7fffffff, float:NaN)
                com.airbnb.lottie.compose.LottieAnimatableImpl r3 = r4.g
                if (r1 != r5) goto L43
                com.airbnb.lottie.compose.LottieAnimatableImpl$doFrame$2 r5 = new com.airbnb.lottie.compose.LottieAnimatableImpl$doFrame$2
                r5.<init>()
                java.lang.Object r5 = androidx.compose.animation.core.InfiniteAnimationPolicyKt.a(r5, r4)
                goto L54
            L43:
                com.airbnb.lottie.compose.LottieAnimatableImpl$doFrame$3 r5 = new com.airbnb.lottie.compose.LottieAnimatableImpl$doFrame$3
                r5.<init>()
                kotlin.coroutines.CoroutineContext r1 = r4.getContext()
                androidx.compose.runtime.MonotonicFrameClock r1 = androidx.compose.runtime.MonotonicFrameClockKt.a(r1)
                java.lang.Object r5 = r1.c(r4, r5)
            L54:
                if (r5 != r0) goto L57
                return r0
            L57:
                java.lang.Boolean r5 = (java.lang.Boolean) r5
                boolean r5 = r5.booleanValue()
                if (r5 != 0) goto L17
                kotlin.Unit r4 = kotlin.Unit.f71739a
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.compose.LottieAnimatableImpl$animate$2.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f21961a;

        static {
            int[] iArr = new int[LottieCancellationBehavior.values().length];
            try {
                iArr[LottieCancellationBehavior.OnIterationFinish.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LottieCancellationBehavior.Immediately.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f21961a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LottieAnimatableImpl$animate$2(LottieAnimatableImpl lottieAnimatableImpl, int i2, int i3, boolean z, float f2, LottieClipSpec lottieClipSpec, LottieComposition lottieComposition, float f3, boolean z2, boolean z3, LottieCancellationBehavior lottieCancellationBehavior, Continuation continuation) {
        super(1, continuation);
        this.f21949c = lottieAnimatableImpl;
        this.d = i2;
        this.f21950e = i3;
        this.f21951f = z;
        this.g = f2;
        this.f21952h = lottieClipSpec;
        this.f21953i = lottieComposition;
        this.f21954j = f3;
        this.f21955k = z2;
        this.l = z3;
        this.m = lottieCancellationBehavior;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new LottieAnimatableImpl$animate$2(this.f21949c, this.d, this.f21950e, this.f21951f, this.g, this.f21952h, this.f21953i, this.f21954j, this.f21955k, this.l, this.m, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((LottieAnimatableImpl$animate$2) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineContext coroutineContext;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f21948b;
        LottieAnimatableImpl lottieAnimatableImpl = this.f21949c;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                lottieAnimatableImpl.r(this.d);
                MutableState mutableState = lottieAnimatableImpl.d;
                int i3 = this.f21950e;
                ((SnapshotMutableStateImpl) mutableState).setValue(Integer.valueOf(i3));
                ((SnapshotMutableStateImpl) lottieAnimatableImpl.f21942e).setValue(Boolean.valueOf(this.f21951f));
                MutableState mutableState2 = lottieAnimatableImpl.g;
                float f2 = this.g;
                ((SnapshotMutableStateImpl) mutableState2).setValue(Float.valueOf(f2));
                ((SnapshotMutableStateImpl) lottieAnimatableImpl.f21943f).setValue(this.f21952h);
                SnapshotMutableStateImpl snapshotMutableStateImpl = (SnapshotMutableStateImpl) lottieAnimatableImpl.f21946j;
                LottieComposition lottieComposition = this.f21953i;
                snapshotMutableStateImpl.setValue(lottieComposition);
                lottieAnimatableImpl.s(this.f21954j);
                ((SnapshotMutableStateImpl) lottieAnimatableImpl.f21944h).setValue(Boolean.valueOf(this.f21955k));
                if (!this.l) {
                    ((SnapshotMutableStateImpl) lottieAnimatableImpl.m).setValue(Long.MIN_VALUE);
                }
                if (lottieComposition == null) {
                    LottieAnimatableImpl.j(lottieAnimatableImpl, false);
                    return Unit.f71739a;
                }
                if (Float.isInfinite(f2)) {
                    lottieAnimatableImpl.s(((Number) lottieAnimatableImpl.n.getF10755b()).floatValue());
                    LottieAnimatableImpl.j(lottieAnimatableImpl, false);
                    lottieAnimatableImpl.r(i3);
                    return Unit.f71739a;
                }
                LottieAnimatableImpl.j(lottieAnimatableImpl, true);
                int i4 = WhenMappings.f21961a[this.m.ordinal()];
                if (i4 == 1) {
                    coroutineContext = NonCancellable.f74707b;
                } else {
                    if (i4 != 2) {
                        throw new NoWhenBranchMatchedException();
                    }
                    coroutineContext = EmptyCoroutineContext.f71840b;
                }
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.m, JobKt.e(getContext()), this.f21950e, this.d, lottieAnimatableImpl, null);
                this.f21948b = 1;
                if (BuildersKt.f(coroutineContext, anonymousClass1, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            JobKt.d(getContext());
            LottieAnimatableImpl.j(lottieAnimatableImpl, false);
            return Unit.f71739a;
        } catch (Throwable th) {
            LottieAnimatableImpl.j(lottieAnimatableImpl, false);
            throw th;
        }
    }
}
