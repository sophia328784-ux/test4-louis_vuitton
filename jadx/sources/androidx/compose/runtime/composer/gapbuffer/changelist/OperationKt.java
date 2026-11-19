package androidx.compose.runtime.composer.gapbuffer.changelist;

import androidx.compose.runtime.Applier;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002*\f\b\u0000\u0010\u0001\"\u00020\u00002\u00020\u0000¨\u0006\u0002"}, d2 = {"", "IntParameter", "runtime"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class OperationKt {
    public static final void a(SlotWriter slotWriter, Applier applier, int i2) {
        while (true) {
            int i3 = slotWriter.v;
            if (i2 > i3 && i2 < slotWriter.u) {
                return;
            }
            if (i3 == 0 && i2 == 0) {
                return;
            }
            slotWriter.O();
            if (slotWriter.y(slotWriter.v)) {
                applier.j();
            }
            slotWriter.j();
        }
    }
}
