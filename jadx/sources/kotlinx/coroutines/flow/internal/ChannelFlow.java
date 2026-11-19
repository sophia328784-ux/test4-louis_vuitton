package kotlinx.coroutines.flow.internal;

import defpackage.fc;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b'\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lkotlinx/coroutines/flow/internal/ChannelFlow;", "T", "Lkotlinx/coroutines/flow/internal/FusibleFlow;", "Lkotlin/coroutines/CoroutineContext;", MvelScriptManager.VAR_CONTEXT, "", "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "<init>", "(Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public abstract class ChannelFlow<T> implements FusibleFlow<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CoroutineContext f75028b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f75029c;
    public final BufferOverflow d;

    public ChannelFlow(CoroutineContext coroutineContext, int i2, BufferOverflow bufferOverflow) {
        this.f75028b = coroutineContext;
        this.f75029c = i2;
        this.d = bufferOverflow;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0015  */
    @Override // kotlinx.coroutines.flow.internal.FusibleFlow
    public final Flow d(CoroutineContext coroutineContext, int i2, BufferOverflow bufferOverflow) {
        CoroutineContext coroutineContext2 = this.f75028b;
        CoroutineContext coroutineContextPlus = coroutineContext.plus(coroutineContext2);
        BufferOverflow bufferOverflow2 = BufferOverflow.SUSPEND;
        BufferOverflow bufferOverflow3 = this.d;
        int i3 = this.f75029c;
        if (bufferOverflow == bufferOverflow2) {
            if (i3 != -3) {
                if (i2 == -3) {
                    i2 = i3;
                } else if (i3 != -2) {
                    if (i2 == -2) {
                        i2 = i3;
                    } else {
                        i2 += i3;
                        if (i2 < 0) {
                            i2 = Integer.MAX_VALUE;
                        }
                    }
                }
            }
            bufferOverflow = bufferOverflow3;
        }
        return (Intrinsics.c(coroutineContextPlus, coroutineContext2) && i2 == i3 && bufferOverflow == bufferOverflow3) ? this : k(coroutineContextPlus, i2, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.Flow
    public Object f(FlowCollector flowCollector, Continuation continuation) {
        Object objD = CoroutineScopeKt.d(new ChannelFlow$collect$2(flowCollector, this, null), continuation);
        return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : Unit.f71739a;
    }

    public String g() {
        return null;
    }

    public abstract Object h(ProducerScope producerScope, Continuation continuation);

    public abstract ChannelFlow k(CoroutineContext coroutineContext, int i2, BufferOverflow bufferOverflow);

    public Flow l() {
        return null;
    }

    public ReceiveChannel m(CoroutineScope coroutineScope) {
        int i2 = this.f75029c;
        if (i2 == -3) {
            i2 = -2;
        }
        CoroutineStart coroutineStart = CoroutineStart.ATOMIC;
        ChannelFlow$collectToFun$1 channelFlow$collectToFun$1 = new ChannelFlow$collectToFun$1(this, null);
        return ProduceKt.b(coroutineScope, this.f75028b, i2, this.d, coroutineStart, channelFlow$collectToFun$1);
    }

    public String toString() {
        ArrayList arrayList = new ArrayList(4);
        String strG = g();
        if (strG != null) {
            arrayList.add(strG);
        }
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.f71840b;
        CoroutineContext coroutineContext = this.f75028b;
        if (coroutineContext != emptyCoroutineContext) {
            arrayList.add("context=" + coroutineContext);
        }
        int i2 = this.f75029c;
        if (i2 != -3) {
            arrayList.add("capacity=" + i2);
        }
        BufferOverflow bufferOverflow = BufferOverflow.SUSPEND;
        BufferOverflow bufferOverflow2 = this.d;
        if (bufferOverflow2 != bufferOverflow) {
            arrayList.add("onBufferOverflow=" + bufferOverflow2);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append('[');
        return fc.l(sb, CollectionsKt.K(arrayList, ", ", null, null, null, 62), ']');
    }
}
