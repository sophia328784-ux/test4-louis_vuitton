package defpackage;

import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.unit.Dp;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class oq implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f77521b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TextFieldSelectionManager f77522c;

    public /* synthetic */ oq(TextFieldSelectionManager textFieldSelectionManager, int i2) {
        this.f77521b = i2;
        this.f77522c = textFieldSelectionManager;
    }

    /* JADX WARN: Code duplicated, block: B:47:0x0135  */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Rect rect;
        LayoutCoordinates layoutCoordinatesC;
        long jH0;
        char c2;
        float fIntBitsToFloat;
        LayoutCoordinates layoutCoordinatesC2;
        TextLayoutResult textLayoutResult;
        LayoutCoordinates layoutCoordinatesC3;
        TextLayoutResult textLayoutResult2;
        LayoutCoordinates layoutCoordinatesC4;
        LayoutCoordinates layoutCoordinatesC5;
        int i2 = this.f77521b;
        final TextFieldSelectionManager textFieldSelectionManager = this.f77522c;
        switch (i2) {
            case 0:
                return new DisposableEffectResult() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$lambda$17$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        textFieldSelectionManager.p();
                    }
                };
            case 1:
                textFieldSelectionManager.u();
                return Unit.f71739a;
            default:
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) obj;
                LegacyTextFieldState legacyTextFieldState = textFieldSelectionManager.d;
                if (legacyTextFieldState == null) {
                    Rect.f8809e.getClass();
                    rect = Rect.f8810f;
                } else {
                    if (legacyTextFieldState.p) {
                        legacyTextFieldState = null;
                    }
                    if (legacyTextFieldState != null) {
                        OffsetMapping offsetMapping = textFieldSelectionManager.f6455b;
                        long j2 = textFieldSelectionManager.o().f10841b;
                        TextRange.Companion companion = TextRange.f10564b;
                        int iB = offsetMapping.b((int) (j2 >> 32));
                        int iB2 = textFieldSelectionManager.f6455b.b((int) (textFieldSelectionManager.o().f10841b & BodyPartID.bodyIdMax));
                        LegacyTextFieldState legacyTextFieldState2 = textFieldSelectionManager.d;
                        long jH1 = 0;
                        if (legacyTextFieldState2 == null || (layoutCoordinatesC5 = legacyTextFieldState2.c()) == null) {
                            Offset.f8806b.getClass();
                            jH0 = 0;
                        } else {
                            jH0 = layoutCoordinatesC5.h0(textFieldSelectionManager.m(true));
                        }
                        LegacyTextFieldState legacyTextFieldState3 = textFieldSelectionManager.d;
                        if (legacyTextFieldState3 == null || (layoutCoordinatesC4 = legacyTextFieldState3.c()) == null) {
                            Offset.f8806b.getClass();
                        } else {
                            jH1 = layoutCoordinatesC4.h0(textFieldSelectionManager.m(false));
                        }
                        LegacyTextFieldState legacyTextFieldState4 = textFieldSelectionManager.d;
                        float fIntBitsToFloat2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        if (legacyTextFieldState4 == null || (layoutCoordinatesC3 = legacyTextFieldState4.c()) == null) {
                            c2 = ' ';
                            fIntBitsToFloat = 0.0f;
                        } else {
                            TextLayoutResultProxy textLayoutResultProxyD = legacyTextFieldState.d();
                            c2 = ' ';
                            long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) << 32) | (((long) Float.floatToRawIntBits((textLayoutResultProxyD == null || (textLayoutResult2 = textLayoutResultProxyD.f6011a) == null) ? 0.0f : textLayoutResult2.c(iB).f8812b)) & BodyPartID.bodyIdMax);
                            Offset.Companion companion2 = Offset.f8806b;
                            fIntBitsToFloat = Float.intBitsToFloat((int) (layoutCoordinatesC3.h0(jFloatToRawIntBits) & BodyPartID.bodyIdMax));
                        }
                        LegacyTextFieldState legacyTextFieldState5 = textFieldSelectionManager.d;
                        if (legacyTextFieldState5 != null && (layoutCoordinatesC2 = legacyTextFieldState5.c()) != null) {
                            TextLayoutResultProxy textLayoutResultProxyD2 = legacyTextFieldState.d();
                            long jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) << c2) | (((long) Float.floatToRawIntBits((textLayoutResultProxyD2 == null || (textLayoutResult = textLayoutResultProxyD2.f6011a) == null) ? 0.0f : textLayoutResult.c(iB2).f8812b)) & BodyPartID.bodyIdMax);
                            Offset.Companion companion3 = Offset.f8806b;
                            fIntBitsToFloat2 = Float.intBitsToFloat((int) (layoutCoordinatesC2.h0(jFloatToRawIntBits2) & BodyPartID.bodyIdMax));
                        }
                        int i3 = (int) (jH0 >> c2);
                        int i4 = (int) (jH1 >> c2);
                        float fMin = Math.min(Float.intBitsToFloat(i3), Float.intBitsToFloat(i4));
                        float fMax = Math.max(Float.intBitsToFloat(i3), Float.intBitsToFloat(i4));
                        float fMin2 = Math.min(fIntBitsToFloat, fIntBitsToFloat2);
                        float fMax2 = Math.max(Float.intBitsToFloat((int) (jH0 & BodyPartID.bodyIdMax)), Float.intBitsToFloat((int) (jH1 & BodyPartID.bodyIdMax)));
                        Dp.Companion companion4 = Dp.f11004c;
                        rect = new Rect(fMin, fMin2, fMax, (legacyTextFieldState.f5925a.g.getF11002b() * 25.0f) + fMax2);
                    } else {
                        Rect.f8809e.getClass();
                        rect = Rect.f8810f;
                    }
                }
                LegacyTextFieldState legacyTextFieldState6 = textFieldSelectionManager.d;
                if (legacyTextFieldState6 == null || (layoutCoordinatesC = legacyTextFieldState6.c()) == null) {
                    return null;
                }
                if (layoutCoordinatesC.c() && layoutCoordinates.c()) {
                    return RectKt.a(layoutCoordinates.y(LayoutCoordinatesKt.c(layoutCoordinatesC), rect.d()), rect.c());
                }
                Rect.f8809e.getClass();
                return Rect.f8810f;
        }
    }
}
