package androidx.compose.foundation;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import kotlin.Metadata;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class IndicationKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DynamicProvidableCompositionLocal f4231a = CompositionLocalKt.c(new d());

    public static final Modifier a(Modifier modifier, final InteractionSource interactionSource, final Indication indication) {
        if (indication == null) {
            return modifier;
        }
        return indication instanceof IndicationNodeFactory ? modifier.o(new IndicationModifierElement(interactionSource, (IndicationNodeFactory) indication)) : ComposedModifierKt.a(modifier, InspectableValueKt.f10100a, new Function3() { // from class: androidx.compose.foundation.e
            @Override // kotlin.jvm.functions.Function3
            public final Object A(Object obj, Object obj2, Object obj3) {
                Modifier modifier2 = (Modifier) obj;
                Composer composer = (Composer) obj2;
                ((Integer) obj3).getClass();
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = IndicationKt.f4231a;
                if (modifier2 != null) {
                    modifier2.o(new DTFunctionNameModifier("indication$lambda$1"));
                }
                composer.L(-353972293);
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                indication.getClass();
                composer.L(1257603829);
                composer.F();
                NoIndicationInstance noIndicationInstance = NoIndicationInstance.f4281a;
                boolean zK = composer.K(noIndicationInstance);
                Object objX = composer.x();
                if (zK || objX == Composer.Companion.f7939a) {
                    objX = new IndicationModifier(noIndicationInstance);
                    composer.q(objX);
                }
                IndicationModifier indicationModifier = (IndicationModifier) objX;
                composer.F();
                return indicationModifier;
            }
        });
    }
}
