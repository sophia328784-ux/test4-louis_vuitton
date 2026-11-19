package com.vuitton.android.presentation.screen.connectivity;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import defpackage.md;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.ChannelIterator;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.ReceiveChannel;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.LVViewModel$callView$2", f = "LVViewModel.kt", l = {87}, m = "invokeSuspend", v = 2)
final class LVViewModel$callView$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Function1 f55945b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ReceiveChannel f55946c;
    public ChannelIterator d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f55947e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f55948f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f55949h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public /* synthetic */ Object f55950i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Function1 f55951j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ LVViewModel f55952k;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.connectivity.LVViewModel$callView$2$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "View", "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.LVViewModel$callView$2$1", f = "LVViewModel.kt", l = {EACTags.DEPRECATED}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<ProducerScope<Object>, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Iterator f55953b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f55954c;
        public /* synthetic */ Object d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ LVViewModel f55955e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(LVViewModel lVViewModel, Continuation continuation) {
            super(2, continuation);
            this.f55955e = lVViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f55955e, continuation);
            anonymousClass1.d = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Iterator it;
            ProducerScope producerScope = (ProducerScope) this.d;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f55954c;
            if (i2 == 0) {
                ResultKt.b(obj);
                it = this.f55955e.f55944a.iterator();
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                it = this.f55953b;
                ResultKt.b(obj);
            }
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                if (((LifecycleOwner) pair.f71705b).getD().getF13454i().a(Lifecycle.State.STARTED)) {
                    Object obj2 = pair.f71706c;
                    this.d = producerScope;
                    this.f55953b = it;
                    this.f55954c = 1;
                    if (producerScope.u(obj2, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
            }
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LVViewModel$callView$2(Function1 function1, LVViewModel lVViewModel, Continuation continuation) {
        super(2, continuation);
        this.f55951j = function1;
        this.f55952k = lVViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        LVViewModel$callView$2 lVViewModel$callView$2 = new LVViewModel$callView$2(this.f55951j, this.f55952k, continuation);
        lVViewModel$callView$2.f55950i = obj;
        return lVViewModel$callView$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LVViewModel$callView$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0063 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:20:0x006c A[Catch: all -> 0x001f, TRY_LEAVE, TryCatch #1 {all -> 0x001f, blocks: (B:6:0x001b, B:18:0x0064, B:20:0x006c, B:15:0x004d, B:13:0x003d), top: B:30:0x000b }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0061 -> B:18:0x0064). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            java.lang.Object r0 = r9.f55950i
            r1 = r0
            kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r9.f55949h
            r7 = 1
            r8 = 0
            if (r2 == 0) goto L28
            if (r2 != r7) goto L22
            int r1 = r9.g
            int r2 = r9.f55948f
            int r3 = r9.f55947e
            kotlinx.coroutines.channels.ChannelIterator r4 = r9.d
            kotlinx.coroutines.channels.ReceiveChannel r5 = r9.f55946c
            kotlin.jvm.functions.Function1 r6 = r9.f55945b
            kotlin.ResultKt.b(r10)     // Catch: java.lang.Throwable -> L1f
            goto L64
        L1f:
            r0 = move-exception
            r9 = r0
            goto L7a
        L22:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r9)
            return r8
        L28:
            kotlin.ResultKt.b(r10)
            com.vuitton.android.presentation.screen.connectivity.LVViewModel$callView$2$1 r6 = new com.vuitton.android.presentation.screen.connectivity.LVViewModel$callView$2$1
            com.vuitton.android.presentation.screen.connectivity.LVViewModel r10 = r9.f55952k
            r6.<init>(r10, r8)
            kotlin.coroutines.EmptyCoroutineContext r2 = kotlin.coroutines.EmptyCoroutineContext.f71840b
            kotlinx.coroutines.channels.BufferOverflow r4 = kotlinx.coroutines.channels.BufferOverflow.SUSPEND
            kotlinx.coroutines.CoroutineStart r5 = kotlinx.coroutines.CoroutineStart.DEFAULT
            r3 = 0
            kotlinx.coroutines.channels.ReceiveChannel r5 = kotlinx.coroutines.channels.ProduceKt.b(r1, r2, r3, r4, r5, r6)
            r10 = r5
            kotlinx.coroutines.channels.ChannelCoroutine r10 = (kotlinx.coroutines.channels.ChannelCoroutine) r10     // Catch: java.lang.Throwable -> L1f
            kotlinx.coroutines.channels.Channel r10 = r10.f74758b     // Catch: java.lang.Throwable -> L1f
            kotlinx.coroutines.channels.ChannelIterator r10 = r10.iterator()     // Catch: java.lang.Throwable -> L1f
            r1 = 0
            kotlin.jvm.functions.Function1 r2 = r9.f55951j
            r4 = r10
            r3 = r1
            r6 = r2
            r2 = r3
        L4d:
            r9.f55950i = r8     // Catch: java.lang.Throwable -> L1f
            r9.f55945b = r6     // Catch: java.lang.Throwable -> L1f
            r9.f55946c = r5     // Catch: java.lang.Throwable -> L1f
            r9.d = r4     // Catch: java.lang.Throwable -> L1f
            r9.f55947e = r3     // Catch: java.lang.Throwable -> L1f
            r9.f55948f = r2     // Catch: java.lang.Throwable -> L1f
            r9.g = r1     // Catch: java.lang.Throwable -> L1f
            r9.f55949h = r7     // Catch: java.lang.Throwable -> L1f
            java.lang.Object r10 = r4.a(r9)     // Catch: java.lang.Throwable -> L1f
            if (r10 != r0) goto L64
            return r0
        L64:
            java.lang.Boolean r10 = (java.lang.Boolean) r10     // Catch: java.lang.Throwable -> L1f
            boolean r10 = r10.booleanValue()     // Catch: java.lang.Throwable -> L1f
            if (r10 == 0) goto L74
            java.lang.Object r10 = r4.next()     // Catch: java.lang.Throwable -> L1f
            r6.invoke(r10)     // Catch: java.lang.Throwable -> L1f
            goto L4d
        L74:
            r5.cancel(r8)
            kotlin.Unit r9 = kotlin.Unit.f71739a
            return r9
        L7a:
            throw r9     // Catch: java.lang.Throwable -> L7b
        L7b:
            r0 = move-exception
            r10 = r0
            kotlinx.coroutines.channels.ChannelsKt.a(r5, r9)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.connectivity.LVViewModel$callView$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
