package androidx.compose.foundation.lazy;

import androidx.compose.animation.core.SpringSpec;
import androidx.compose.ui.Modifier;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@LazyScopeMarker
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bg\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Landroidx/compose/foundation/lazy/LazyItemScope;", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface LazyItemScope {
    Modifier a(DTFunctionNameModifier dTFunctionNameModifier);

    Modifier b(DTFunctionNameModifier dTFunctionNameModifier);

    default Modifier c(Modifier modifier, SpringSpec springSpec, SpringSpec springSpec2, SpringSpec springSpec3) {
        return modifier;
    }

    Modifier d(Modifier modifier);
}
