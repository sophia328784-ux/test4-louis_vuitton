package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.Modifier;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LazyLayoutBeyondBoundsModifierLocalKt {
    public static final Modifier a(DTFunctionNameModifier dTFunctionNameModifier, LazyLayoutBeyondBoundsState lazyLayoutBeyondBoundsState, LazyLayoutBeyondBoundsInfo lazyLayoutBeyondBoundsInfo, boolean z, Orientation orientation) {
        return dTFunctionNameModifier.o(new LazyLayoutBeyondBoundsModifierElement(lazyLayoutBeyondBoundsState, lazyLayoutBeyondBoundsInfo, z, orientation));
    }
}
