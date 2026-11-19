package androidx.compose.foundation.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.Alignment;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation-layout"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class RowKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final RowMeasurePolicy f5037a;

    static {
        Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
        Alignment.f8582a.getClass();
        f5037a = new RowMeasurePolicy(arrangement$Start$1, Alignment.Companion.f8591k);
    }

    public static final RowMeasurePolicy a(Arrangement.Horizontal horizontal, Alignment.Vertical vertical, Composer composer, int i2) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        if (horizontal.equals(Arrangement.f4918a)) {
            Alignment.f8582a.getClass();
            if (Intrinsics.c(vertical, Alignment.Companion.f8591k)) {
                composer.L(-1073830487);
                composer.F();
                return f5037a;
            }
        }
        composer.L(-1073779616);
        boolean z = ((((i2 & 14) ^ 6) > 4 && composer.K(horizontal)) || (i2 & 6) == 4) | ((((i2 & 112) ^ 48) > 32 && composer.K(vertical)) || (i2 & 48) == 32);
        Object objX = composer.x();
        if (z || objX == Composer.Companion.f7939a) {
            objX = new RowMeasurePolicy(horizontal, vertical);
            composer.q(objX);
        }
        RowMeasurePolicy rowMeasurePolicy = (RowMeasurePolicy) objX;
        composer.F();
        return rowMeasurePolicy;
    }
}
