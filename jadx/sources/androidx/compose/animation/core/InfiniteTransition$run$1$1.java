package androidx.compose.animation.core;

import androidx.compose.runtime.MutableState;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.animation.core.InfiniteTransition$run$1$1", f = "InfiniteTransition.kt", l = {172, 193}, m = "invokeSuspend", v = 1)
final class InfiniteTransition$run$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Ref$FloatRef f3888b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3889c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f3890e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ InfiniteTransition f3891f;

    /* JADX INFO: renamed from: androidx.compose.animation.core.InfiniteTransition$run$1$1$3, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", ""}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.animation.core.InfiniteTransition$run$1$1$3", f = "InfiniteTransition.kt", l = {}, m = "invokeSuspend", v = 1)
    final class AnonymousClass3 extends SuspendLambda implements Function2<Float, Continuation<? super Boolean>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ float f3892b;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(2, continuation);
            anonymousClass3.f3892b = ((Number) obj).floatValue();
            return anonymousClass3;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass3) create(Float.valueOf(((Number) obj).floatValue()), (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            return Boolean.valueOf(this.f3892b > Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InfiniteTransition$run$1$1(MutableState mutableState, InfiniteTransition infiniteTransition, Continuation continuation) {
        super(2, continuation);
        this.f3890e = mutableState;
        this.f3891f = infiniteTransition;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        InfiniteTransition$run$1$1 infiniteTransition$run$1$1 = new InfiniteTransition$run$1$1(this.f3890e, this.f3891f, continuation);
        infiniteTransition$run$1$1.d = obj;
        return infiniteTransition$run$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((InfiniteTransition$run$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x003d A[PHI: r9 r10
      0x003d: PHI (r9v2 kotlin.jvm.internal.Ref$FloatRef) = 
      (r9v0 kotlin.jvm.internal.Ref$FloatRef)
      (r9v1 kotlin.jvm.internal.Ref$FloatRef)
      (r9v1 kotlin.jvm.internal.Ref$FloatRef)
      (r9v4 kotlin.jvm.internal.Ref$FloatRef)
     binds: [B:10:0x002b, B:15:0x005a, B:17:0x0076, B:6:0x000d] A[DONT_GENERATE, DONT_INLINE]
      0x003d: PHI (r10v2 kotlinx.coroutines.CoroutineScope) = 
      (r10v0 kotlinx.coroutines.CoroutineScope)
      (r10v1 kotlinx.coroutines.CoroutineScope)
      (r10v1 kotlinx.coroutines.CoroutineScope)
      (r10v4 kotlinx.coroutines.CoroutineScope)
     binds: [B:10:0x002b, B:15:0x005a, B:17:0x0076, B:6:0x000d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:14:0x0055 A[PHI: r9 r10
      0x0055: PHI (r9v1 kotlin.jvm.internal.Ref$FloatRef) = (r9v2 kotlin.jvm.internal.Ref$FloatRef), (r9v3 kotlin.jvm.internal.Ref$FloatRef) binds: [B:12:0x0052, B:9:0x001f] A[DONT_GENERATE, DONT_INLINE]
      0x0055: PHI (r10v1 kotlinx.coroutines.CoroutineScope) = (r10v2 kotlinx.coroutines.CoroutineScope), (r10v3 kotlinx.coroutines.CoroutineScope) binds: [B:12:0x0052, B:9:0x001f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:16:0x005c  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x005a -> B:11:0x003d). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0076 -> B:11:0x003d). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            r12 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r12.f3889c
            r2 = 0
            r3 = 1
            r4 = 2
            if (r1 == 0) goto L2b
            if (r1 == r3) goto L1f
            if (r1 != r4) goto L19
            kotlin.jvm.internal.Ref$FloatRef r1 = r12.f3888b
            java.lang.Object r5 = r12.d
            kotlinx.coroutines.CoroutineScope r5 = (kotlinx.coroutines.CoroutineScope) r5
            kotlin.ResultKt.b(r13)
            r9 = r1
            r10 = r5
            goto L3d
        L19:
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r12)
            return r2
        L1f:
            kotlin.jvm.internal.Ref$FloatRef r1 = r12.f3888b
            java.lang.Object r5 = r12.d
            kotlinx.coroutines.CoroutineScope r5 = (kotlinx.coroutines.CoroutineScope) r5
            kotlin.ResultKt.b(r13)
            r9 = r1
            r10 = r5
            goto L55
        L2b:
            kotlin.ResultKt.b(r13)
            java.lang.Object r13 = r12.d
            kotlinx.coroutines.CoroutineScope r13 = (kotlinx.coroutines.CoroutineScope) r13
            kotlin.jvm.internal.Ref$FloatRef r1 = new kotlin.jvm.internal.Ref$FloatRef
            r1.<init>()
            r5 = 1065353216(0x3f800000, float:1.0)
            r1.f71918b = r5
            r10 = r13
            r9 = r1
        L3d:
            k3 r6 = new k3
            r11 = 16
            androidx.compose.runtime.MutableState r7 = r12.f3890e
            androidx.compose.animation.core.InfiniteTransition r8 = r12.f3891f
            r6.<init>(r7, r8, r9, r10, r11)
            r12.d = r10
            r12.f3888b = r9
            r12.f3889c = r3
            java.lang.Object r13 = androidx.compose.animation.core.InfiniteAnimationPolicyKt.a(r6, r12)
            if (r13 != r0) goto L55
            goto L78
        L55:
            float r13 = r9.f71918b
            r1 = 0
            int r13 = (r13 > r1 ? 1 : (r13 == r1 ? 0 : -1))
            if (r13 != 0) goto L3d
            ss r13 = new ss
            r1 = 22
            r13.<init>(r10, r1)
            kotlinx.coroutines.flow.Flow r13 = androidx.compose.runtime.SnapshotStateKt.m(r13)
            androidx.compose.animation.core.InfiniteTransition$run$1$1$3 r1 = new androidx.compose.animation.core.InfiniteTransition$run$1$1$3
            r1.<init>(r4, r2)
            r12.d = r10
            r12.f3888b = r9
            r12.f3889c = r4
            java.lang.Object r13 = kotlinx.coroutines.flow.FlowKt.q(r13, r1, r12)
            if (r13 != r0) goto L3d
        L78:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.core.InfiniteTransition$run$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
