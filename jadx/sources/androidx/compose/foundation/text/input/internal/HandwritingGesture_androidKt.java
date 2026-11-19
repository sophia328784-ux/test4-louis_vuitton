package androidx.compose.foundation.text.input.internal;

import android.graphics.PointF;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.TextInclusionStrategy;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class HandwritingGesture_androidKt {
    public static final int a(LegacyTextFieldState legacyTextFieldState, long j2, ViewConfiguration viewConfiguration) {
        TextLayoutResult textLayoutResult;
        MultiParagraph multiParagraph;
        LayoutCoordinates layoutCoordinatesC;
        long jF;
        int iE;
        TextLayoutResultProxy textLayoutResultProxyD = legacyTextFieldState.d();
        if (textLayoutResultProxyD == null || (textLayoutResult = textLayoutResultProxyD.f6011a) == null || (multiParagraph = textLayoutResult.f10553b) == null || (layoutCoordinatesC = legacyTextFieldState.c()) == null || (iE = e(multiParagraph, (jF = layoutCoordinatesC.f(j2)), viewConfiguration)) == -1) {
            return -1;
        }
        return multiParagraph.g(Offset.a(jF, 1, (multiParagraph.b(iE) + multiParagraph.f(iE)) / 2.0f));
    }

    public static final long b(LegacyTextFieldState legacyTextFieldState, Rect rect, Rect rect2, int i2) {
        long jF = f(legacyTextFieldState, rect, i2);
        if (TextRange.c(jF)) {
            TextRange.f10564b.getClass();
            return TextRange.f10565c;
        }
        long jF2 = f(legacyTextFieldState, rect2, i2);
        if (TextRange.c(jF2)) {
            TextRange.f10564b.getClass();
            return TextRange.f10565c;
        }
        int i3 = (int) (jF >> 32);
        int iMin = Math.min(i3, i3);
        int i4 = (int) (jF2 & BodyPartID.bodyIdMax);
        return TextRangeKt.a(iMin, Math.max(i4, i4));
    }

    public static final boolean c(TextLayoutResult textLayoutResult, int i2) {
        MultiParagraph multiParagraph = textLayoutResult.f10553b;
        int iD = multiParagraph.d(i2);
        return i2 == textLayoutResult.h(iD) || i2 == multiParagraph.c(iD, false) ? textLayoutResult.i(i2) != textLayoutResult.a(i2) : textLayoutResult.a(i2) != textLayoutResult.a(i2 - 1);
    }

    public static final long d(PointF pointF) {
        float f2 = pointF.x;
        float f3 = pointF.y;
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(f2)) << 32) | (((long) Float.floatToRawIntBits(f3)) & BodyPartID.bodyIdMax);
        Offset.Companion companion = Offset.f8806b;
        return jFloatToRawIntBits;
    }

    public static final int e(MultiParagraph multiParagraph, long j2, ViewConfiguration viewConfiguration) {
        float fH = viewConfiguration != null ? viewConfiguration.h() : Call.Parameters.DEFAULT_CAMERA_ZOOM;
        int i2 = (int) (BodyPartID.bodyIdMax & j2);
        int iE = multiParagraph.e(Float.intBitsToFloat(i2));
        if (Float.intBitsToFloat(i2) < multiParagraph.f(iE) - fH || Float.intBitsToFloat(i2) > multiParagraph.b(iE) + fH) {
            return -1;
        }
        int i3 = (int) (j2 >> 32);
        if (Float.intBitsToFloat(i3) < (-fH) || Float.intBitsToFloat(i3) > multiParagraph.d + fH) {
            return -1;
        }
        return iE;
    }

    public static final long f(LegacyTextFieldState legacyTextFieldState, Rect rect, int i2) {
        TextLayoutResult textLayoutResult;
        TextLayoutResultProxy textLayoutResultProxyD = legacyTextFieldState.d();
        MultiParagraph multiParagraph = (textLayoutResultProxyD == null || (textLayoutResult = textLayoutResultProxyD.f6011a) == null) ? null : textLayoutResult.f10553b;
        LayoutCoordinates layoutCoordinatesC = legacyTextFieldState.c();
        if (multiParagraph == null || layoutCoordinatesC == null) {
            TextRange.f10564b.getClass();
            return TextRange.f10565c;
        }
        Offset.f8806b.getClass();
        return multiParagraph.h(rect.i(layoutCoordinatesC.f(0L)), i2, TextInclusionStrategy.Companion.f10539b);
    }

    public static final boolean g(int i2) {
        int type = Character.getType(i2);
        return type == 23 || type == 20 || type == 22 || type == 30 || type == 29 || type == 24 || type == 21;
    }

    public static final boolean h(int i2) {
        return Character.isWhitespace(i2) || i2 == 160;
    }

    public static final boolean i(int i2) {
        int type;
        return (!h(i2) || (type = Character.getType(i2)) == 14 || type == 13 || i2 == 10) ? false : true;
    }
}
