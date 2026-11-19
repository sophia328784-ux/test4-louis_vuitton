package kotlinx.coroutines.channels;

import defpackage.md;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class ChannelKt {
    public static BufferedChannel a(int i2, int i3, BufferOverflow bufferOverflow) {
        if ((i3 & 1) != 0) {
            i2 = 0;
        }
        if ((i3 & 2) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        if (i2 == -2) {
            if (bufferOverflow != BufferOverflow.SUSPEND) {
                return new ConflatedBufferedChannel(1, bufferOverflow, null);
            }
            Channel.z0.getClass();
            return new BufferedChannel(Channel.Factory.f74757b, null);
        }
        if (i2 == -1) {
            if (bufferOverflow == BufferOverflow.SUSPEND) {
                return new ConflatedBufferedChannel(1, BufferOverflow.DROP_OLDEST, null);
            }
            md.n("CONFLATED capacity cannot be used with non-default onBufferOverflow");
            return null;
        }
        if (i2 == 0) {
            return bufferOverflow == BufferOverflow.SUSPEND ? new BufferedChannel(0, null) : new ConflatedBufferedChannel(1, bufferOverflow, null);
        }
        if (i2 != Integer.MAX_VALUE) {
            return bufferOverflow == BufferOverflow.SUSPEND ? new BufferedChannel(i2, null) : new ConflatedBufferedChannel(i2, bufferOverflow, null);
        }
        return new BufferedChannel(Integer.MAX_VALUE, null);
    }
}
