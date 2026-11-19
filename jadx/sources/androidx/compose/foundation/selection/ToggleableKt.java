package androidx.compose.foundation.selection;

import androidx.compose.foundation.Indication;
import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.IndicationNodeFactory;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.semantics.Role;
import com.dynatrace.android.compose.ToggleableComposeCallback_1_7;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ToggleableKt {
    public static final Modifier a(Modifier modifier, final boolean z, MutableInteractionSource mutableInteractionSource, final Indication indication, final boolean z2, final Role role, Function1 function1) {
        Modifier modifierA;
        final ToggleableComposeCallback_1_7 toggleableComposeCallback_1_7 = new ToggleableComposeCallback_1_7(function1, role, null);
        if (indication != null) {
            modifierA = new ToggleableElement(z, mutableInteractionSource, (IndicationNodeFactory) indication, false, z2, role, toggleableComposeCallback_1_7, null);
        } else if (indication == null) {
            modifierA = new ToggleableElement(z, mutableInteractionSource, null, false, z2, role, toggleableComposeCallback_1_7, null);
        } else {
            Modifier.Companion companion = Modifier.Companion.f8607b;
            if (mutableInteractionSource != null) {
                modifierA = IndicationKt.a(companion, mutableInteractionSource, indication).o(new ToggleableElement(z, mutableInteractionSource, null, false, z2, role, toggleableComposeCallback_1_7, null));
            } else {
                modifierA = ComposedModifierKt.a(companion, InspectableValueKt.f10100a, new Function3<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.selection.ToggleableKt$toggleable-O2vRcR0$$inlined$clickableWithIndicationIfNeeded$1
                    @Override // kotlin.jvm.functions.Function3
                    public final Object A(Object obj, Object obj2, Object obj3) {
                        Composer composer = (Composer) obj2;
                        ((Number) obj3).intValue();
                        composer.L(-1525724089);
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        Object objX = composer.x();
                        if (objX == Composer.Companion.f7939a) {
                            objX = InteractionSourceKt.a();
                            composer.q(objX);
                        }
                        MutableInteractionSource mutableInteractionSource2 = (MutableInteractionSource) objX;
                        Modifier modifierO = IndicationKt.a(Modifier.Companion.f8607b, mutableInteractionSource2, indication).o(new ToggleableElement(z, mutableInteractionSource2, null, false, z2, role, toggleableComposeCallback_1_7, null));
                        composer.F();
                        return modifierO;
                    }
                });
            }
        }
        return modifier.o(modifierA);
    }

    public static Modifier b(Modifier modifier, boolean z, boolean z2, Role role, Function1 function1) {
        return modifier.o(new ToggleableElement(z, null, null, true, z2, role, function1, null));
    }
}
