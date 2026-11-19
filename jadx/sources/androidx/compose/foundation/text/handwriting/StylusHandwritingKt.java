package androidx.compose.foundation.text.handwriting;

import androidx.compose.foundation.text.TextPointerIcon_androidKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.pointer.StylusHoverIconModifierElement;
import androidx.compose.ui.node.DpTouchBoundsExpansion;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class StylusHandwritingKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DpTouchBoundsExpansion f6170a;

    static {
        Dp.Companion companion = Dp.f11004c;
        f6170a = new DpTouchBoundsExpansion(10.0f, 40.0f, 10.0f, 40.0f, true, null);
    }

    public static final Modifier a(DTFunctionNameModifier dTFunctionNameModifier, boolean z, boolean z2, Function0 function0) {
        DTFunctionNameModifier dTFunctionNameModifierO;
        if (!z) {
            return dTFunctionNameModifier;
        }
        if (!StylusHandwriting_androidKt.f6175a) {
            dTFunctionNameModifierO = dTFunctionNameModifier;
            return dTFunctionNameModifier;
        }
        if (z2) {
            dTFunctionNameModifierO = dTFunctionNameModifier.o(new StylusHoverIconModifierElement(TextPointerIcon_androidKt.f6024a, false, f6170a));
        }
        return dTFunctionNameModifierO.o(new StylusHandwritingElement(function0));
    }
}
