package defpackage;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.WireEnum;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"MemoryError$Type$Companion$ADAPTER$1", "Lcom/squareup/wire/EnumAdapter;", "LMemoryError$Type;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class MemoryError$Type$Companion$ADAPTER$1 extends EnumAdapter<MemoryError.Type> {
    @Override // com.squareup.wire.EnumAdapter
    public final WireEnum j(int i2) {
        MemoryError.Type.INSTANCE.getClass();
        if (i2 == 0) {
            return MemoryError.Type.UNKNOWN;
        }
        if (i2 == 1) {
            return MemoryError.Type.USE_AFTER_FREE;
        }
        if (i2 == 2) {
            return MemoryError.Type.DOUBLE_FREE;
        }
        if (i2 == 3) {
            return MemoryError.Type.INVALID_FREE;
        }
        if (i2 == 4) {
            return MemoryError.Type.BUFFER_OVERFLOW;
        }
        if (i2 != 5) {
            return null;
        }
        return MemoryError.Type.BUFFER_UNDERFLOW;
    }
}
