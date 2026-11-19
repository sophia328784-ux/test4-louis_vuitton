package androidx.paging;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u0004H\u008a@"}, d2 = {"<anonymous>", "", "T", "R", "Lkotlinx/coroutines/flow/FlowCollector;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.paging.FlowExtKt$simpleScan$1", f = "FlowExt.kt", l = {EACTags.CURRENCY_EXPONENT, 55}, m = "invokeSuspend")
final class FlowExtKt$simpleScan$1 extends SuspendLambda implements Function2<FlowCollector<Object>, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Ref$ObjectRef f18600b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f18601c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 f18602e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function3 f18603f;

    /* JADX INFO: renamed from: androidx.paging.FlowExtKt$simpleScan$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", "T", "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    final class AnonymousClass1<T> implements FlowCollector {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Ref$ObjectRef f18604b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Function3 f18605c;
        public final /* synthetic */ FlowCollector d;

        public AnonymousClass1(Ref$ObjectRef ref$ObjectRef, Function3 function3, FlowCollector flowCollector) {
            this.f18604b = ref$ObjectRef;
            this.f18605c = function3;
            this.d = flowCollector;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0069, code lost:
        
            if (r7.emit(r8, r0) == r1) goto L22;
         */
        @Override // kotlinx.coroutines.flow.FlowCollector
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object emit(java.lang.Object r8, kotlin.coroutines.Continuation r9) {
            /*
                r7 = this;
                boolean r0 = r9 instanceof androidx.paging.FlowExtKt$simpleScan$1$1$emit$1
                if (r0 == 0) goto L13
                r0 = r9
                androidx.paging.FlowExtKt$simpleScan$1$1$emit$1 r0 = (androidx.paging.FlowExtKt$simpleScan$1$1$emit$1) r0
                int r1 = r0.f18609f
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f18609f = r1
                goto L18
            L13:
                androidx.paging.FlowExtKt$simpleScan$1$1$emit$1 r0 = new androidx.paging.FlowExtKt$simpleScan$1$1$emit$1
                r0.<init>(r7, r9)
            L18:
                java.lang.Object r9 = r0.d
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r0.f18609f
                r3 = 0
                r4 = 2
                r5 = 1
                if (r2 == 0) goto L3b
                if (r2 == r5) goto L31
                if (r2 != r4) goto L2b
                kotlin.ResultKt.b(r9)
                goto L6c
            L2b:
                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.md.k(r7)
                return r3
            L31:
                kotlin.jvm.internal.Ref$ObjectRef r7 = r0.f18607c
                java.lang.Object r8 = r0.f18606b
                androidx.paging.FlowExtKt$simpleScan$1$1 r8 = (androidx.paging.FlowExtKt$simpleScan$1.AnonymousClass1) r8
                kotlin.ResultKt.b(r9)
                goto L57
            L3b:
                kotlin.ResultKt.b(r9)
                kotlin.jvm.internal.Ref$ObjectRef r9 = r7.f18604b
                java.lang.Object r2 = r9.f71921b
                r0.f18606b = r7
                r0.f18607c = r9
                r0.f18609f = r5
                kotlin.jvm.functions.Function3 r5 = r7.f18605c
                androidx.paging.PageFetcher$flow$1$2 r5 = (androidx.paging.PageFetcher$flow$1.AnonymousClass2) r5
                java.lang.Object r8 = r5.A(r2, r8, r0)
                if (r8 != r1) goto L53
                goto L6b
            L53:
                r6 = r8
                r8 = r7
                r7 = r9
                r9 = r6
            L57:
                r7.f71921b = r9
                kotlinx.coroutines.flow.FlowCollector r7 = r8.d
                kotlin.jvm.internal.Ref$ObjectRef r8 = r8.f18604b
                java.lang.Object r8 = r8.f71921b
                r0.f18606b = r3
                r0.f18607c = r3
                r0.f18609f = r4
                java.lang.Object r7 = r7.emit(r8, r0)
                if (r7 != r1) goto L6c
            L6b:
                return r1
            L6c:
                kotlin.Unit r7 = kotlin.Unit.f71739a
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.FlowExtKt$simpleScan$1.AnonymousClass1.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowExtKt$simpleScan$1(FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1, Function3 function3, Continuation continuation) {
        super(2, continuation);
        this.f18602e = flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;
        this.f18603f = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        FlowExtKt$simpleScan$1 flowExtKt$simpleScan$1 = new FlowExtKt$simpleScan$1(this.f18602e, this.f18603f, continuation);
        flowExtKt$simpleScan$1.d = obj;
        return flowExtKt$simpleScan$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FlowExtKt$simpleScan$1) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0050, code lost:
    
        if (r6.f18602e.f(r7, r6) == r0) goto L16;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r6.f18601c
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L21
            if (r1 == r4) goto L17
            if (r1 != r3) goto L11
            kotlin.ResultKt.b(r7)
            goto L53
        L11:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            return r2
        L17:
            kotlin.jvm.internal.Ref$ObjectRef r1 = r6.f18600b
            java.lang.Object r4 = r6.d
            kotlinx.coroutines.flow.FlowCollector r4 = (kotlinx.coroutines.flow.FlowCollector) r4
            kotlin.ResultKt.b(r7)
            goto L3d
        L21:
            kotlin.ResultKt.b(r7)
            java.lang.Object r7 = r6.d
            kotlinx.coroutines.flow.FlowCollector r7 = (kotlinx.coroutines.flow.FlowCollector) r7
            kotlin.jvm.internal.Ref$ObjectRef r1 = new kotlin.jvm.internal.Ref$ObjectRef
            r1.<init>()
            r1.f71921b = r2
            r6.d = r7
            r6.f18600b = r1
            r6.f18601c = r4
            java.lang.Object r4 = r7.emit(r2, r6)
            if (r4 != r0) goto L3c
            goto L52
        L3c:
            r4 = r7
        L3d:
            androidx.paging.FlowExtKt$simpleScan$1$1 r7 = new androidx.paging.FlowExtKt$simpleScan$1$1
            kotlin.jvm.functions.Function3 r5 = r6.f18603f
            r7.<init>(r1, r5, r4)
            r6.d = r2
            r6.f18600b = r2
            r6.f18601c = r3
            kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 r1 = r6.f18602e
            java.lang.Object r6 = r1.f(r7, r6)
            if (r6 != r0) goto L53
        L52:
            return r0
        L53:
            kotlin.Unit r6 = kotlin.Unit.f71739a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.FlowExtKt$simpleScan$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
