package androidx.collection;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.SequenceScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "E", "Lkotlin/sequences/SequenceScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "androidx.collection.MutableSetWrapper$iterator$1$iterator$1", f = "ScatterSet.kt", l = {1188}, m = "invokeSuspend")
final class MutableSetWrapper$iterator$1$iterator$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<Object>, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public MutableSetWrapper.AnonymousClass1 f3328c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long[] f3329e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3330f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f3331h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f3332i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f3333j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f3334k;
    public /* synthetic */ Object l;
    public final /* synthetic */ MutableSetWrapper m;
    public final /* synthetic */ MutableSetWrapper.AnonymousClass1 n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MutableSetWrapper$iterator$1$iterator$1(MutableSetWrapper mutableSetWrapper, MutableSetWrapper.AnonymousClass1 anonymousClass1, Continuation continuation) {
        super(2, continuation);
        this.m = mutableSetWrapper;
        this.n = anonymousClass1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        MutableSetWrapper$iterator$1$iterator$1 mutableSetWrapper$iterator$1$iterator$1 = new MutableSetWrapper$iterator$1$iterator$1(this.m, this.n, continuation);
        mutableSetWrapper$iterator$1$iterator$1.l = obj;
        return mutableSetWrapper$iterator$1$iterator$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MutableSetWrapper$iterator$1$iterator$1) create((SequenceScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0054  */
    /* JADX WARN: Code duplicated, block: B:21:0x009b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:22:0x009d  */
    /* JADX WARN: Code duplicated, block: B:24:0x00a5  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0052 -> B:23:0x00a3). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0054 -> B:14:0x0067). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0070 -> B:20:0x0098). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0095 -> B:20:0x0098). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r22) {
        /*
            r21 = this;
            r0 = r21
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f3334k
            r4 = 8
            r5 = 1
            if (r2 == 0) goto L2f
            if (r2 != r5) goto L28
            int r2 = r0.f3332i
            int r6 = r0.f3331h
            long r7 = r0.f3333j
            int r9 = r0.g
            int r10 = r0.f3330f
            long[] r11 = r0.f3329e
            java.lang.Object r12 = r0.d
            androidx.collection.MutableSetWrapper r12 = (androidx.collection.MutableSetWrapper) r12
            androidx.collection.MutableSetWrapper$iterator$1 r13 = r0.f3328c
            java.lang.Object r14 = r0.l
            kotlin.sequences.SequenceScope r14 = (kotlin.sequences.SequenceScope) r14
            kotlin.ResultKt.b(r22)
            goto L98
        L28:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r0)
            r0 = 0
            return r0
        L2f:
            kotlin.ResultKt.b(r22)
            java.lang.Object r2 = r0.l
            kotlin.sequences.SequenceScope r2 = (kotlin.sequences.SequenceScope) r2
            androidx.collection.MutableSetWrapper r6 = r0.m
            androidx.collection.MutableScatterSet r7 = r6.f3325c
            long[] r7 = r7.f3367a
            int r8 = r7.length
            int r8 = r8 + (-2)
            if (r8 < 0) goto La8
            androidx.collection.MutableSetWrapper$iterator$1 r9 = r0.n
            r10 = 0
        L44:
            r11 = r7[r10]
            long r13 = ~r11
            r15 = 7
            long r13 = r13 << r15
            long r13 = r13 & r11
            r15 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r13 = r13 & r15
            int r13 = (r13 > r15 ? 1 : (r13 == r15 ? 0 : -1))
            if (r13 == 0) goto La3
            int r13 = r10 - r8
            int r13 = ~r13
            int r13 = r13 >>> 31
            int r13 = 8 - r13
            r14 = r2
            r2 = 0
            r19 = r11
            r12 = r6
            r11 = r7
            r6 = r13
            r13 = r9
            r9 = r10
            r10 = r8
            r7 = r19
        L67:
            if (r2 >= r6) goto L9b
            r15 = 255(0xff, double:1.26E-321)
            long r15 = r15 & r7
            r17 = 128(0x80, double:6.32E-322)
            int r15 = (r15 > r17 ? 1 : (r15 == r17 ? 0 : -1))
            if (r15 >= 0) goto L98
            int r15 = r9 << 3
            int r15 = r15 + r2
            r13.f3326b = r15
            androidx.collection.MutableScatterSet r3 = r12.f3325c
            java.lang.Object[] r3 = r3.f3368b
            r3 = r3[r15]
            r0.l = r14
            r0.f3328c = r13
            r0.d = r12
            r0.f3329e = r11
            r0.f3330f = r10
            r0.g = r9
            r0.f3333j = r7
            r0.f3331h = r6
            r0.f3332i = r2
            r0.f3334k = r5
            kotlin.coroutines.intrinsics.CoroutineSingletons r3 = r14.a(r3, r0)
            if (r3 != r1) goto L98
            return r1
        L98:
            long r7 = r7 >> r4
            int r2 = r2 + r5
            goto L67
        L9b:
            if (r6 != r4) goto La8
            r8 = r10
            r7 = r11
            r6 = r12
            r2 = r14
            r10 = r9
            r9 = r13
        La3:
            if (r10 == r8) goto La8
            int r10 = r10 + 1
            goto L44
        La8:
            kotlin.Unit r0 = kotlin.Unit.f71739a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.MutableSetWrapper$iterator$1$iterator$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
