package androidx.compose.ui.platform;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelIterator;
import kotlinx.coroutines.channels.ReceiveChannel;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.ui.platform.GlobalSnapshotManager$ensureStarted$1", f = "GlobalSnapshotManager.android.kt", l = {64}, m = "invokeSuspend", v = 1)
final class GlobalSnapshotManager$ensureStarted$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ReceiveChannel f10075b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ChannelIterator f10076c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ BufferedChannel f10077e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GlobalSnapshotManager$ensureStarted$1(BufferedChannel bufferedChannel, Continuation continuation) {
        super(2, continuation);
        this.f10077e = bufferedChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new GlobalSnapshotManager$ensureStarted$1(this.f10077e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((GlobalSnapshotManager$ensureStarted$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0030 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:19:0x0039 A[Catch: all -> 0x0012, TRY_LEAVE, TryCatch #0 {all -> 0x0012, blocks: (B:6:0x000e, B:17:0x0031, B:19:0x0039, B:14:0x0024, B:13:0x001f), top: B:27:0x0006 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x002e -> B:17:0x0031). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r6.d
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L1a
            if (r1 != r3) goto L14
            kotlinx.coroutines.channels.ChannelIterator r1 = r6.f10076c
            kotlinx.coroutines.channels.ReceiveChannel r4 = r6.f10075b
            kotlin.ResultKt.b(r7)     // Catch: java.lang.Throwable -> L12
            goto L31
        L12:
            r6 = move-exception
            goto L54
        L14:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            return r2
        L1a:
            kotlin.ResultKt.b(r7)
            kotlinx.coroutines.channels.BufferedChannel r4 = r6.f10077e
            kotlinx.coroutines.channels.ChannelIterator r7 = r4.iterator()     // Catch: java.lang.Throwable -> L12
            r1 = r7
        L24:
            r6.f10075b = r4     // Catch: java.lang.Throwable -> L12
            r6.f10076c = r1     // Catch: java.lang.Throwable -> L12
            r6.d = r3     // Catch: java.lang.Throwable -> L12
            java.lang.Object r7 = r1.a(r6)     // Catch: java.lang.Throwable -> L12
            if (r7 != r0) goto L31
            return r0
        L31:
            java.lang.Boolean r7 = (java.lang.Boolean) r7     // Catch: java.lang.Throwable -> L12
            boolean r7 = r7.booleanValue()     // Catch: java.lang.Throwable -> L12
            if (r7 == 0) goto L4e
            java.lang.Object r7 = r1.next()     // Catch: java.lang.Throwable -> L12
            kotlin.Unit r7 = (kotlin.Unit) r7     // Catch: java.lang.Throwable -> L12
            java.util.concurrent.atomic.AtomicBoolean r7 = androidx.compose.ui.platform.GlobalSnapshotManager.f10074b     // Catch: java.lang.Throwable -> L12
            r5 = 0
            r7.set(r5)     // Catch: java.lang.Throwable -> L12
            androidx.compose.runtime.snapshots.Snapshot$Companion r7 = androidx.compose.runtime.snapshots.Snapshot.f8462e     // Catch: java.lang.Throwable -> L12
            r7.getClass()     // Catch: java.lang.Throwable -> L12
            androidx.compose.runtime.snapshots.Snapshot.Companion.f()     // Catch: java.lang.Throwable -> L12
            goto L24
        L4e:
            r4.cancel(r2)
            kotlin.Unit r6 = kotlin.Unit.f71739a
            return r6
        L54:
            throw r6     // Catch: java.lang.Throwable -> L55
        L55:
            r7 = move-exception
            kotlinx.coroutines.channels.ChannelsKt.a(r4, r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.GlobalSnapshotManager$ensureStarted$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
