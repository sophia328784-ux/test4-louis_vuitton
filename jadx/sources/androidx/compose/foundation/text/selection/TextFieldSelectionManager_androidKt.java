package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"Landroidx/compose/ui/unit/IntSize;", "magnifierSize", "foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class TextFieldSelectionManager_androidKt {
    public static final boolean a(TextFieldSelectionManager textFieldSelectionManager, boolean z) {
        LayoutCoordinates layoutCoordinatesC;
        LegacyTextFieldState legacyTextFieldState = textFieldSelectionManager.d;
        if (legacyTextFieldState == null || (layoutCoordinatesC = legacyTextFieldState.c()) == null) {
            return false;
        }
        Rect rectA = SelectionManagerKt.a(layoutCoordinatesC);
        long jM = textFieldSelectionManager.m(z);
        float f2 = rectA.f8811a;
        float f3 = rectA.f8813c;
        float fIntBitsToFloat = Float.intBitsToFloat((int) (jM >> 32));
        if (f2 > fIntBitsToFloat || fIntBitsToFloat > f3) {
            return false;
        }
        float f4 = rectA.f8812b;
        float f5 = rectA.d;
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (jM & BodyPartID.bodyIdMax));
        return f4 <= fIntBitsToFloat2 && fIntBitsToFloat2 <= f5;
    }
}
