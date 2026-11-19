package androidx.compose.animation;

import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import kotlin.Metadata;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Landroidx/compose/animation/AnimatedVisibilityScope;", "", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface AnimatedVisibilityScope {
    Transition a();

    default Modifier b(DTFunctionNameModifier dTFunctionNameModifier, final EnterTransition enterTransition, final ExitTransition exitTransition) {
        return ComposedModifierKt.a(dTFunctionNameModifier, InspectableValueKt.f10100a, new Function3<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.animation.AnimatedVisibilityScope$animateEnterExit$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public final Object A(Object obj, Object obj2, Object obj3) {
                Composer composer = (Composer) obj2;
                ((Number) obj3).intValue();
                composer.L(1840112047);
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Modifier modifierO = ((Modifier) obj).o(EnterExitTransitionKt.a(this.f3530c.a(), enterTransition, exitTransition, null, "animateEnterExit", composer, 0, 12));
                composer.F();
                return modifierO;
            }
        });
    }
}
