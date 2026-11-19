package coil3.size;

import defpackage.md;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"io.coil-kt.coil3:coil-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class DimensionKt {
    public static final void a(int i2) {
        if (i2 > 0) {
            return;
        }
        md.n("px must be > 0.");
    }
}
