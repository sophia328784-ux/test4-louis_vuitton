package androidx.compose.ui.text.input;

import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-text"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class EditingBufferKt {
    public static final long a(long j2, long j3) {
        int iD;
        int iF = TextRange.f(j2);
        int iE = TextRange.e(j2);
        if ((TextRange.f(j3) < TextRange.e(j2)) && (TextRange.f(j2) < TextRange.e(j3))) {
            if ((TextRange.f(j3) <= TextRange.f(j2)) && (TextRange.e(j2) <= TextRange.e(j3))) {
                iF = TextRange.f(j3);
                iE = iF;
            } else {
                if ((TextRange.f(j2) <= TextRange.f(j3)) && (TextRange.e(j3) <= TextRange.e(j2))) {
                    iD = TextRange.d(j3);
                } else {
                    int iF2 = TextRange.f(j3);
                    if (iF >= TextRange.e(j3) || iF2 > iF) {
                        iE = TextRange.f(j3);
                    } else {
                        iF = TextRange.f(j3);
                        iD = TextRange.d(j3);
                    }
                }
                iE -= iD;
            }
        } else if (iE > TextRange.f(j3)) {
            iF -= TextRange.d(j3);
            iD = TextRange.d(j3);
            iE -= iD;
        }
        return TextRangeKt.a(iF, iE);
    }
}
