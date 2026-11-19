package kotlinx.coroutines.flow;

import com.google.android.gms.dynamite.descriptors.com.google.android.gms.tagmanager.ModuleDescriptor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001¨\u0006\u0002"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1 implements Flow<Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Flow f74924b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function2 f74925c;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
    public final class AnonymousClass2<T> implements FlowCollector {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ FlowCollector f74926b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Function2 f74927c;

        /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1, reason: invalid class name */
        @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
        @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2", f = "Transform.kt", l = {217, ModuleDescriptor.MODULE_VERSION}, m = "emit", v = 1)
        public final class AnonymousClass1 extends ContinuationImpl {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public /* synthetic */ Object f74928b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f74929c;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public Object f74930e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public FlowCollector f74931f;
            public int g;

            public AnonymousClass1(Continuation continuation) {
                super(continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                this.f74928b = obj;
                this.f74929c |= Integer.MIN_VALUE;
                return AnonymousClass2.this.emit(null, this);
            }
        }

        public AnonymousClass2(FlowCollector flowCollector, Function2 function2) {
            this.f74926b = flowCollector;
            this.f74927c = function2;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0061, code lost:
        
            if (r7.emit(r2, r0) == r1) goto L22;
         */
        @Override // kotlinx.coroutines.flow.FlowCollector
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object emit(java.lang.Object r7, kotlin.coroutines.Continuation r8) {
            /*
                r6 = this;
                boolean r0 = r8 instanceof kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1.AnonymousClass2.AnonymousClass1
                if (r0 == 0) goto L13
                r0 = r8
                kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1 r0 = (kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1.AnonymousClass2.AnonymousClass1) r0
                int r1 = r0.f74929c
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f74929c = r1
                goto L18
            L13:
                kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1 r0 = new kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1
                r0.<init>(r8)
            L18:
                java.lang.Object r8 = r0.f74928b
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r0.f74929c
                r3 = 2
                r4 = 1
                r5 = 0
                if (r2 == 0) goto L3b
                if (r2 == r4) goto L31
                if (r2 != r3) goto L2b
                kotlin.ResultKt.b(r8)
                goto L64
            L2b:
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.md.k(r6)
                return r5
            L31:
                int r6 = r0.g
                kotlinx.coroutines.flow.FlowCollector r7 = r0.f74931f
                java.lang.Object r2 = r0.f74930e
                kotlin.ResultKt.b(r8)
                goto L55
            L3b:
                kotlin.ResultKt.b(r8)
                r0.f74930e = r7
                kotlinx.coroutines.flow.FlowCollector r8 = r6.f74926b
                r0.f74931f = r8
                r2 = 0
                r0.g = r2
                r0.f74929c = r4
                kotlin.jvm.functions.Function2 r6 = r6.f74927c
                java.lang.Object r6 = r6.invoke(r7, r0)
                if (r6 != r1) goto L52
                goto L63
            L52:
                r6 = r2
                r2 = r7
                r7 = r8
            L55:
                r0.f74930e = r5
                r0.f74931f = r5
                r0.g = r6
                r0.f74929c = r3
                java.lang.Object r6 = r7.emit(r2, r0)
                if (r6 != r1) goto L64
            L63:
                return r1
            L64:
                kotlin.Unit r6 = kotlin.Unit.f71739a
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    public FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1(Flow flow, Function2 function2) {
        this.f74924b = flow;
        this.f74925c = function2;
    }

    @Override // kotlinx.coroutines.flow.Flow
    public final Object f(FlowCollector flowCollector, Continuation continuation) {
        Object objF = this.f74924b.f(new AnonymousClass2(flowCollector, this.f74925c), continuation);
        return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
    }
}
