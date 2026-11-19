package androidx.compose.foundation.text;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputSession;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Landroidx/compose/foundation/text/TextFieldDelegate;", "", "<init>", "()V", "Companion", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TextFieldDelegate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f5962a = new Companion(null);

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/text/TextFieldDelegate$Companion;", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static void a(Canvas canvas, long j2, OffsetMapping offsetMapping, TextLayoutResult textLayoutResult, AndroidPaint androidPaint) {
            int iB = offsetMapping.b(TextRange.f(j2));
            int iB2 = offsetMapping.b(TextRange.e(j2));
            if (iB != iB2) {
                canvas.t(textLayoutResult.j(iB, iB2), androidPaint);
            }
        }

        public static void b(TextFieldValue textFieldValue, TextDelegate textDelegate, TextLayoutResult textLayoutResult, LayoutCoordinates layoutCoordinates, TextInputSession textInputSession, boolean z, OffsetMapping offsetMapping) {
            Rect rectB;
            if (z) {
                int iB = offsetMapping.b(TextRange.e(textFieldValue.f10841b));
                String str = TextFieldDelegateKt.f5964a;
                if (iB < textLayoutResult.f10552a.f10543a.f10420c.length()) {
                    rectB = textLayoutResult.b(iB);
                } else {
                    rectB = iB != 0 ? textLayoutResult.b(iB - 1) : new Rect(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, (int) (TextFieldDelegateKt.a(textDelegate.f5951b, textDelegate.g, textDelegate.f5955h, TextFieldDelegateKt.f5964a, 1) & BodyPartID.bodyIdMax));
                }
                float f2 = rectB.f8812b;
                float f3 = rectB.f8811a;
                long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(f3)) << 32) | (((long) Float.floatToRawIntBits(f2)) & BodyPartID.bodyIdMax);
                Offset.Companion companion = Offset.f8806b;
                long jH0 = layoutCoordinates.h0(jFloatToRawIntBits);
                long jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (jH0 & BodyPartID.bodyIdMax)))) & BodyPartID.bodyIdMax) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (jH0 >> 32)))) << 32);
                long jFloatToRawIntBits3 = (((long) Float.floatToRawIntBits(rectB.f8813c - f3)) << 32) | (((long) Float.floatToRawIntBits(rectB.d - f2)) & BodyPartID.bodyIdMax);
                Size.Companion companion2 = Size.f8820b;
                Rect rectA = RectKt.a(jFloatToRawIntBits2, jFloatToRawIntBits3);
                if (Intrinsics.c((TextInputSession) textInputSession.f10861a.f10844b.get(), textInputSession)) {
                    textInputSession.f10862b.h(rectA);
                }
            }
        }
    }
}
