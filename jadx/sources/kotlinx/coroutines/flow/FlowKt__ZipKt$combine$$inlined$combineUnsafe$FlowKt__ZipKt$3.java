package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function6;
import kotlinx.coroutines.flow.internal.CombineKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001¨\u0006\u0002"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3 implements Flow<Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Flow[] f74949b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function6 f74950c;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 2, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3$2", f = "Zip.kt", l = {329, 258}, m = "invokeSuspend", v = 1)
    public final class AnonymousClass2 extends SuspendLambda implements Function3<FlowCollector<Object>, Object[], Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public FlowCollector f74951b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f74952c;
        public /* synthetic */ FlowCollector d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public /* synthetic */ Object[] f74953e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Function6 f74954f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Continuation continuation, Function6 function6) {
            super(3, continuation);
            this.f74954f = function6;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object A(Object obj, Object obj2, Object obj3) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2((Continuation) obj3, this.f74954f);
            anonymousClass2.d = (FlowCollector) obj;
            anonymousClass2.f74953e = (Object[]) obj2;
            return anonymousClass2.invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0050, code lost:
        
            if (r0.emit(r15, r13) == r2) goto L15;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r15) {
            /*
                r14 = this;
                kotlinx.coroutines.flow.FlowCollector r0 = r14.d
                java.lang.Object[] r1 = r14.f74953e
                kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r3 = r14.f74952c
                r4 = 2
                r5 = 1
                r6 = 0
                if (r3 == 0) goto L22
                if (r3 == r5) goto L1b
                if (r3 != r4) goto L15
                kotlin.ResultKt.b(r15)
                goto L53
            L15:
                java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.md.k(r14)
                return r6
            L1b:
                kotlinx.coroutines.flow.FlowCollector r0 = r14.f74951b
                kotlin.ResultKt.b(r15)
                r13 = r14
                goto L44
            L22:
                kotlin.ResultKt.b(r15)
                r15 = 0
                r8 = r1[r15]
                r9 = r1[r5]
                r10 = r1[r4]
                r15 = 3
                r11 = r1[r15]
                r15 = 4
                r12 = r1[r15]
                r14.d = r6
                r14.f74953e = r6
                r14.f74951b = r0
                r14.f74952c = r5
                kotlin.jvm.functions.Function6 r7 = r14.f74954f
                r13 = r14
                java.lang.Object r15 = r7.l(r8, r9, r10, r11, r12, r13)
                if (r15 != r2) goto L44
                goto L52
            L44:
                r13.d = r6
                r13.f74953e = r6
                r13.f74951b = r6
                r13.f74952c = r4
                java.lang.Object r14 = r0.emit(r15, r13)
                if (r14 != r2) goto L53
            L52:
                return r2
            L53:
                kotlin.Unit r14 = kotlin.Unit.f71739a
                return r14
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3(Flow[] flowArr, Function6 function6) {
        this.f74949b = flowArr;
        this.f74950c = function6;
    }

    @Override // kotlinx.coroutines.flow.Flow
    public final Object f(FlowCollector flowCollector, Continuation continuation) {
        Object objA = CombineKt.a(continuation, FlowKt__ZipKt$nullArrayFactory$1.f74961b, new AnonymousClass2(null, this.f74950c), flowCollector, this.f74949b);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
    }
}
