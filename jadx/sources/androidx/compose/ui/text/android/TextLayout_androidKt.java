package androidx.compose.ui.text.android;

import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-text"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class TextLayout_androidKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f10618a = new ThreadLocal();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final long f10619b = a(0, 0);

    public static final long a(int i2, int i3) {
        return (((long) i3) & BodyPartID.bodyIdMax) | (((long) i2) << 32);
    }

    public static final TextDirectionHeuristic b(int i2) {
        if (i2 == 0) {
            return TextDirectionHeuristics.LTR;
        }
        if (i2 == 1) {
            return TextDirectionHeuristics.RTL;
        }
        if (i2 == 2) {
            return TextDirectionHeuristics.FIRSTSTRONG_LTR;
        }
        if (i2 == 3) {
            return TextDirectionHeuristics.FIRSTSTRONG_RTL;
        }
        if (i2 != 4) {
            return i2 != 5 ? TextDirectionHeuristics.FIRSTSTRONG_LTR : TextDirectionHeuristics.LOCALE;
        }
        return TextDirectionHeuristics.ANYRTL_LTR;
    }
}
