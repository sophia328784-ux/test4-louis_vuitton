package defpackage;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.WireEnum;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Architecture$Companion$ADAPTER$1", "Lcom/squareup/wire/EnumAdapter;", "LArchitecture;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class Architecture$Companion$ADAPTER$1 extends EnumAdapter<Architecture> {
    @Override // com.squareup.wire.EnumAdapter
    public final WireEnum j(int i2) {
        Architecture.INSTANCE.getClass();
        if (i2 == 0) {
            return Architecture.ARM32;
        }
        if (i2 == 1) {
            return Architecture.ARM64;
        }
        if (i2 == 2) {
            return Architecture.X86;
        }
        if (i2 == 3) {
            return Architecture.X86_64;
        }
        if (i2 == 4) {
            return Architecture.RISCV64;
        }
        if (i2 != 5) {
            return null;
        }
        return Architecture.NONE;
    }
}
