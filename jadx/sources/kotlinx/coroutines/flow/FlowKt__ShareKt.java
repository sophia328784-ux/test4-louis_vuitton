package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.flow.internal.ChannelFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 5, mv = {2, 2, 0}, xi = 48, xs = "kotlinx/coroutines/flow/FlowKt")
abstract /* synthetic */ class FlowKt__ShareKt {
    /* JADX WARN: Code duplicated, block: B:19:0x0030  */
    public static final SharingConfig a(Flow flow, int i2) {
        Channel.z0.getClass();
        int i3 = Channel.Factory.f74757b;
        if (i2 >= i3) {
            i3 = i2;
        }
        int i4 = i3 - i2;
        if (flow instanceof ChannelFlow) {
            ChannelFlow channelFlow = (ChannelFlow) flow;
            BufferOverflow bufferOverflow = channelFlow.d;
            Flow flowL = channelFlow.l();
            if (flowL != null) {
                int i5 = channelFlow.f75029c;
                if (i5 != -3 && i5 != -2 && i5 != 0) {
                    i4 = i5;
                } else if (bufferOverflow == BufferOverflow.SUSPEND) {
                    if (i5 == 0) {
                        i4 = 0;
                    }
                } else if (i2 == 0) {
                    i4 = 1;
                } else {
                    i4 = 0;
                }
                return new SharingConfig(flowL, i4, bufferOverflow, channelFlow.f75028b);
            }
        }
        return new SharingConfig(flow, i4, BufferOverflow.SUSPEND, EmptyCoroutineContext.f71840b);
    }
}
