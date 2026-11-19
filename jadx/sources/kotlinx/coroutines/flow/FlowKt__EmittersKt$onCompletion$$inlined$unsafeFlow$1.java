package kotlinx.coroutines.flow;

import defpackage.md;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.internal.SafeCollector;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001¨\u0006\u0002"}, d2 = {"kotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1 implements Flow<Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Flow f74825b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function3 f74826c;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1", f = "Emitters.kt", l = {113, 120, CertificateBody.profileType}, m = "collect", v = 1)
    public final class AnonymousClass1 extends ContinuationImpl {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f74827b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f74828c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public FlowCollector f74829e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Serializable f74830f;
        public int g;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f74827b = obj;
            this.f74828c |= Integer.MIN_VALUE;
            return FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.this.f(null, this);
        }
    }

    public FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1(Flow flow, Function3 function3) {
        this.f74825b = flow;
        this.f74826c = function3;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x007c  */
    /* JADX WARN: Code duplicated, block: B:55:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.Flow
    public final Object f(FlowCollector flowCollector, Continuation continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        int i2;
        int i3;
        ThrowingCollector throwingCollector;
        SafeCollector safeCollector;
        SafeCollector safeCollector2;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            int i4 = anonymousClass1.f74828c;
            if ((i4 & Integer.MIN_VALUE) != 0) {
                anonymousClass1.f74828c = i4 - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        Object obj = anonymousClass1.f74827b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i5 = anonymousClass1.f74828c;
        Function3 function3 = this.f74826c;
        if (i5 == 0) {
            ResultKt.b(obj);
            i2 = 0;
            try {
                Flow flow = this.f74825b;
                anonymousClass1.f74829e = flowCollector;
                anonymousClass1.g = 0;
                anonymousClass1.f74828c = 1;
                if (flow.f(flowCollector, anonymousClass1) != coroutineSingletons) {
                    i3 = 0;
                    safeCollector = new SafeCollector(flowCollector, anonymousClass1.getContext());
                    anonymousClass1.f74829e = null;
                    anonymousClass1.f74830f = safeCollector;
                    anonymousClass1.g = i3;
                    anonymousClass1.f74828c = 3;
                    if (function3.A(safeCollector, null, anonymousClass1) != coroutineSingletons) {
                        safeCollector2 = safeCollector;
                        safeCollector2.releaseIntercepted();
                        return Unit.f71739a;
                    }
                }
            } catch (Throwable th) {
                th = th;
                throwingCollector = new ThrowingCollector(th);
                anonymousClass1.f74829e = null;
                anonymousClass1.f74830f = th;
                anonymousClass1.g = i2;
                anonymousClass1.f74828c = 2;
                if (FlowKt__EmittersKt.a(throwingCollector, function3, th, anonymousClass1) == coroutineSingletons) {
                    throw th;
                }
            }
            return coroutineSingletons;
        }
        if (i5 != 1) {
            if (i5 == 2) {
                Throwable th2 = (Throwable) anonymousClass1.f74830f;
                ResultKt.b(obj);
                throw th2;
            }
            if (i5 != 3) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            safeCollector2 = (SafeCollector) anonymousClass1.f74830f;
            try {
                ResultKt.b(obj);
                safeCollector2.releaseIntercepted();
                return Unit.f71739a;
            } catch (Throwable th3) {
                th = th3;
                safeCollector2.releaseIntercepted();
                throw th;
            }
        }
        i3 = anonymousClass1.g;
        flowCollector = anonymousClass1.f74829e;
        try {
            ResultKt.b(obj);
            safeCollector = new SafeCollector(flowCollector, anonymousClass1.getContext());
            try {
                anonymousClass1.f74829e = null;
                anonymousClass1.f74830f = safeCollector;
                anonymousClass1.g = i3;
                anonymousClass1.f74828c = 3;
                if (function3.A(safeCollector, null, anonymousClass1) != coroutineSingletons) {
                    safeCollector2 = safeCollector;
                    safeCollector2.releaseIntercepted();
                    return Unit.f71739a;
                }
            } catch (Throwable th4) {
                th = th4;
                safeCollector2 = safeCollector;
                safeCollector2.releaseIntercepted();
                throw th;
            }
        } catch (Throwable th5) {
            i2 = i3;
            th = th5;
            throwingCollector = new ThrowingCollector(th);
            anonymousClass1.f74829e = null;
            anonymousClass1.f74830f = th;
            anonymousClass1.g = i2;
            anonymousClass1.f74828c = 2;
            if (FlowKt__EmittersKt.a(throwingCollector, function3, th, anonymousClass1) == coroutineSingletons) {
                throw th;
            }
        }
        return coroutineSingletons;
    }
}
