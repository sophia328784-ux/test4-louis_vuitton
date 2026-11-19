package kotlinx.coroutines.flow;

import com.batch.android.s.b;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "Lkotlinx/coroutines/flow/SharingCommand;", b.a.f24018f, ""}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.StartedWhileSubscribed$command$1", f = "SharingStarted.kt", l = {175, 177, 179, Sink.ORIENTATION_180, 182}, m = "invokeSuspend", v = 1)
final class StartedWhileSubscribed$command$1 extends SuspendLambda implements Function3<FlowCollector<? super SharingCommand>, Integer, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f74998b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ FlowCollector f74999c;
    public /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ StartedWhileSubscribed f75000e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StartedWhileSubscribed$command$1(StartedWhileSubscribed startedWhileSubscribed, Continuation continuation) {
        super(3, continuation);
        this.f75000e = startedWhileSubscribed;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int iIntValue = ((Number) obj2).intValue();
        StartedWhileSubscribed$command$1 startedWhileSubscribed$command$1 = new StartedWhileSubscribed$command$1(this.f75000e, (Continuation) obj3);
        startedWhileSubscribed$command$1.f74999c = (FlowCollector) obj;
        startedWhileSubscribed$command$1.d = iIntValue;
        return startedWhileSubscribed$command$1.invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x005e  */
    /* JADX WARN: Code duplicated, block: B:29:0x006d  */
    /* JADX WARN: Code duplicated, block: B:32:0x007a  */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0046, code lost:
    
        if (r3.emit(r15, r14) == r5) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0086, code lost:
    
        if (r3.emit(r15, r14) == r5) goto L34;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            r14 = this;
            kotlinx.coroutines.flow.StartedWhileSubscribed r0 = r14.f75000e
            long r1 = r0.f74997c
            kotlinx.coroutines.flow.FlowCollector r3 = r14.f74999c
            int r4 = r14.d
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r6 = r14.f74998b
            r7 = 0
            r8 = 5
            r9 = 4
            r10 = 3
            r11 = 2
            r12 = 1
            if (r6 == 0) goto L35
            if (r6 == r12) goto L31
            if (r6 == r11) goto L2d
            if (r6 == r10) goto L29
            if (r6 == r9) goto L25
            if (r6 != r8) goto L1f
            goto L31
        L1f:
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r14)
            return r7
        L25:
            kotlin.ResultKt.b(r15)
            goto L7a
        L29:
            kotlin.ResultKt.b(r15)
            goto L6d
        L2d:
            kotlin.ResultKt.b(r15)
            goto L58
        L31:
            kotlin.ResultKt.b(r15)
            goto L89
        L35:
            kotlin.ResultKt.b(r15)
            if (r4 <= 0) goto L49
            kotlinx.coroutines.flow.SharingCommand r15 = kotlinx.coroutines.flow.SharingCommand.START
            r14.f74999c = r7
            r14.d = r4
            r14.f74998b = r12
            java.lang.Object r14 = r3.emit(r15, r14)
            if (r14 != r5) goto L89
            goto L88
        L49:
            long r12 = r0.f74996b
            r14.f74999c = r3
            r14.d = r4
            r14.f74998b = r11
            java.lang.Object r15 = kotlinx.coroutines.DelayKt.b(r12, r14)
            if (r15 != r5) goto L58
            goto L88
        L58:
            r11 = 0
            int r15 = (r1 > r11 ? 1 : (r1 == r11 ? 0 : -1))
            if (r15 <= 0) goto L7a
            kotlinx.coroutines.flow.SharingCommand r15 = kotlinx.coroutines.flow.SharingCommand.STOP
            r14.f74999c = r3
            r14.d = r4
            r14.f74998b = r10
            java.lang.Object r15 = r3.emit(r15, r14)
            if (r15 != r5) goto L6d
            goto L88
        L6d:
            r14.f74999c = r3
            r14.d = r4
            r14.f74998b = r9
            java.lang.Object r15 = kotlinx.coroutines.DelayKt.b(r1, r14)
            if (r15 != r5) goto L7a
            goto L88
        L7a:
            kotlinx.coroutines.flow.SharingCommand r15 = kotlinx.coroutines.flow.SharingCommand.STOP_AND_RESET_REPLAY_CACHE
            r14.f74999c = r7
            r14.d = r4
            r14.f74998b = r8
            java.lang.Object r14 = r3.emit(r15, r14)
            if (r14 != r5) goto L89
        L88:
            return r5
        L89:
            kotlin.Unit r14 = kotlin.Unit.f71739a
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.StartedWhileSubscribed$command$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
