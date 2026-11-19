package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
final class FlowKt__LimitKt$dropWhile$1$1<T> implements FlowCollector {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Ref$BooleanRef f74865b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FlowCollector f74866c;
    public final /* synthetic */ Function2 d;

    public FlowKt__LimitKt$dropWhile$1$1(Ref$BooleanRef ref$BooleanRef, FlowCollector flowCollector, Function2 function2) {
        this.f74865b = ref$BooleanRef;
        this.f74866c = flowCollector;
        this.d = function2;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x006c  */
    /* JADX WARN: Code duplicated, block: B:35:0x007c  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0051, code lost:
    
        if (r4.emit(r10, r0) == r1) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0076, code lost:
    
        if (r4.emit(r10, r0) == r1) goto L32;
     */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emit(java.lang.Object r10, kotlin.coroutines.Continuation r11) {
        /*
            r9 = this;
            boolean r0 = r11 instanceof kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1$emit$1
            if (r0 == 0) goto L13
            r0 = r11
            kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1$emit$1 r0 = (kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1$emit$1) r0
            int r1 = r0.f74869e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f74869e = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1$emit$1 r0 = new kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1$emit$1
            r0.<init>(r9, r11)
        L18:
            java.lang.Object r11 = r0.f74868c
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f74869e
            r3 = 0
            kotlinx.coroutines.flow.FlowCollector r4 = r9.f74866c
            kotlin.jvm.internal.Ref$BooleanRef r5 = r9.f74865b
            r6 = 3
            r7 = 2
            r8 = 1
            if (r2 == 0) goto L42
            if (r2 == r8) goto L3e
            if (r2 == r7) goto L38
            if (r2 != r6) goto L32
            kotlin.ResultKt.b(r11)
            goto L79
        L32:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r9)
            return r3
        L38:
            java.lang.Object r10 = r0.f74867b
            kotlin.ResultKt.b(r11)
            goto L64
        L3e:
            kotlin.ResultKt.b(r11)
            goto L54
        L42:
            kotlin.ResultKt.b(r11)
            boolean r11 = r5.f71917b
            if (r11 == 0) goto L57
            r0.f74867b = r3
            r0.f74869e = r8
            java.lang.Object r9 = r4.emit(r10, r0)
            if (r9 != r1) goto L54
            goto L78
        L54:
            kotlin.Unit r9 = kotlin.Unit.f71739a
            return r9
        L57:
            r0.f74867b = r10
            r0.f74869e = r7
            kotlin.jvm.functions.Function2 r9 = r9.d
            java.lang.Object r11 = r9.invoke(r10, r0)
            if (r11 != r1) goto L64
            goto L78
        L64:
            java.lang.Boolean r11 = (java.lang.Boolean) r11
            boolean r9 = r11.booleanValue()
            if (r9 != 0) goto L7c
            r5.f71917b = r8
            r0.f74867b = r3
            r0.f74869e = r6
            java.lang.Object r9 = r4.emit(r10, r0)
            if (r9 != r1) goto L79
        L78:
            return r1
        L79:
            kotlin.Unit r9 = kotlin.Unit.f71739a
            return r9
        L7c:
            kotlin.Unit r9 = kotlin.Unit.f71739a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
