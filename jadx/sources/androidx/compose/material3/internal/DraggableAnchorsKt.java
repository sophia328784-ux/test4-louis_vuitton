package androidx.compose.material3.internal;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.Modifier;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class DraggableAnchorsKt {
    public static final Modifier a(DTFunctionNameModifier dTFunctionNameModifier, androidx.compose.foundation.gestures.AnchoredDraggableState anchoredDraggableState, Orientation orientation, Function2 function2) {
        return dTFunctionNameModifier.o(new DraggableAnchorsElementV2(anchoredDraggableState, function2, orientation));
    }
}
