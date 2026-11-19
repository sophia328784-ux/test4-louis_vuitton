package androidx.compose.foundation.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.Alignment;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation-layout"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ColumnKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ColumnMeasurePolicy f4941a;

    static {
        Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
        Alignment.f8582a.getClass();
        f4941a = new ColumnMeasurePolicy(arrangement$Top$1, Alignment.Companion.n);
    }

    public static final ColumnMeasurePolicy a(Arrangement.Vertical vertical, Alignment.Horizontal horizontal, Composer composer, int i2) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        if (vertical.equals(Arrangement.f4920c)) {
            Alignment.f8582a.getClass();
            if (Intrinsics.c(horizontal, Alignment.Companion.n)) {
                composer.L(-1446604504);
                composer.F();
                return f4941a;
            }
        }
        composer.L(-1446550657);
        boolean z = ((((i2 & 14) ^ 6) > 4 && composer.K(vertical)) || (i2 & 6) == 4) | ((((i2 & 112) ^ 48) > 32 && composer.K(horizontal)) || (i2 & 48) == 32);
        Object objX = composer.x();
        if (z || objX == Composer.Companion.f7939a) {
            objX = new ColumnMeasurePolicy(vertical, horizontal);
            composer.q(objX);
        }
        ColumnMeasurePolicy columnMeasurePolicy = (ColumnMeasurePolicy) objX;
        composer.F();
        return columnMeasurePolicy;
    }
}
