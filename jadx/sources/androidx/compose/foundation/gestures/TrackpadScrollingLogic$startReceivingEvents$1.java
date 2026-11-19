package androidx.compose.foundation.gestures;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.TrackpadScrollingLogic$startReceivingEvents$1", f = "TrackpadScrollingLogic.kt", l = {99, 99}, m = "invokeSuspend", v = 1)
final class TrackpadScrollingLogic$startReceivingEvents$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TrackpadScrollingLogic f4820b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ScrollingLogic f4821c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f4822e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ TrackpadScrollingLogic f4823f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TrackpadScrollingLogic$startReceivingEvents$1(TrackpadScrollingLogic trackpadScrollingLogic, Continuation continuation) {
        super(2, continuation);
        this.f4823f = trackpadScrollingLogic;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        TrackpadScrollingLogic$startReceivingEvents$1 trackpadScrollingLogic$startReceivingEvents$1 = new TrackpadScrollingLogic$startReceivingEvents$1(this.f4823f, continuation);
        trackpadScrollingLogic$startReceivingEvents$1.f4822e = obj;
        return trackpadScrollingLogic$startReceivingEvents$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((TrackpadScrollingLogic$startReceivingEvents$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x003d A[Catch: all -> 0x0018, TryCatch #0 {all -> 0x0018, blocks: (B:7:0x0013, B:17:0x0033, B:19:0x003d, B:23:0x0056, B:14:0x0028), top: B:31:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:21:0x0052  */
    /* JADX WARN: Code duplicated, block: B:22:0x0053  */
    /* JADX WARN: Code duplicated, block: B:26:0x0067  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0067 -> B:17:0x0033). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r8.d
            androidx.compose.foundation.gestures.TrackpadScrollingLogic r2 = r8.f4823f
            r3 = 2
            r4 = 1
            r5 = 0
            if (r1 == 0) goto L2c
            if (r1 == r4) goto L20
            if (r1 != r3) goto L1a
            java.lang.Object r1 = r8.f4822e
            kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
            kotlin.ResultKt.b(r9)     // Catch: java.lang.Throwable -> L18
            r9 = r1
            goto L33
        L18:
            r8 = move-exception
            goto L6e
        L1a:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            return r5
        L20:
            androidx.compose.foundation.gestures.ScrollingLogic r1 = r8.f4821c
            androidx.compose.foundation.gestures.TrackpadScrollingLogic r6 = r8.f4820b
            java.lang.Object r7 = r8.f4822e
            kotlinx.coroutines.CoroutineScope r7 = (kotlinx.coroutines.CoroutineScope) r7
            kotlin.ResultKt.b(r9)     // Catch: java.lang.Throwable -> L18
            goto L56
        L2c:
            kotlin.ResultKt.b(r9)
            java.lang.Object r9 = r8.f4822e
            kotlinx.coroutines.CoroutineScope r9 = (kotlinx.coroutines.CoroutineScope) r9
        L33:
            kotlin.coroutines.CoroutineContext r1 = r9.getF50528e()     // Catch: java.lang.Throwable -> L18
            boolean r1 = kotlinx.coroutines.JobKt.g(r1)     // Catch: java.lang.Throwable -> L18
            if (r1 == 0) goto L69
            androidx.compose.foundation.gestures.ScrollingLogic r1 = r2.f4634a     // Catch: java.lang.Throwable -> L18
            kotlinx.coroutines.channels.BufferedChannel r6 = r2.f4810f     // Catch: java.lang.Throwable -> L18
            r8.f4822e = r9     // Catch: java.lang.Throwable -> L18
            r8.f4820b = r2     // Catch: java.lang.Throwable -> L18
            r8.f4821c = r1     // Catch: java.lang.Throwable -> L18
            r8.d = r4     // Catch: java.lang.Throwable -> L18
            r6.getClass()     // Catch: java.lang.Throwable -> L18
            java.lang.Object r6 = kotlinx.coroutines.channels.BufferedChannel.L(r6, r8)     // Catch: java.lang.Throwable -> L18
            if (r6 != r0) goto L53
            goto L66
        L53:
            r7 = r9
            r9 = r6
            r6 = r2
        L56:
            androidx.compose.foundation.gestures.TrackpadScrollingLogic$TrackpadScrollDelta r9 = (androidx.compose.foundation.gestures.TrackpadScrollingLogic.TrackpadScrollDelta) r9     // Catch: java.lang.Throwable -> L18
            r8.f4822e = r7     // Catch: java.lang.Throwable -> L18
            r8.f4820b = r5     // Catch: java.lang.Throwable -> L18
            r8.f4821c = r5     // Catch: java.lang.Throwable -> L18
            r8.d = r3     // Catch: java.lang.Throwable -> L18
            java.lang.Object r9 = androidx.compose.foundation.gestures.TrackpadScrollingLogic.c(r6, r1, r9, r8)     // Catch: java.lang.Throwable -> L18
            if (r9 != r0) goto L67
        L66:
            return r0
        L67:
            r9 = r7
            goto L33
        L69:
            r2.g = r5
            kotlin.Unit r8 = kotlin.Unit.f71739a
            return r8
        L6e:
            r2.g = r5
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TrackpadScrollingLogic$startReceivingEvents$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
