package androidx.compose.foundation;

import android.view.KeyEvent;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.semantics.Role;
import com.dynatrace.android.compose.ClickableComposeCallback;
import defpackage.a3;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ClickableKt {
    public static final Modifier a(Modifier modifier, MutableInteractionSource mutableInteractionSource, final Indication indication, final boolean z, final String str, final Role role, Function0 function0) {
        Modifier modifierA;
        Function0 clickableComposeCallback = function0 != null ? new ClickableComposeCallback(function0, role, "click", null) : function0;
        if (indication instanceof IndicationNodeFactory) {
            modifierA = new ClickableElement(mutableInteractionSource, (IndicationNodeFactory) indication, false, z, str, role, clickableComposeCallback, null);
        } else if (indication == null) {
            modifierA = new ClickableElement(mutableInteractionSource, null, false, z, str, role, clickableComposeCallback, null);
        } else {
            Modifier.Companion companion = Modifier.Companion.f8607b;
            if (mutableInteractionSource != null) {
                modifierA = IndicationKt.a(companion, mutableInteractionSource, indication).o(new ClickableElement(mutableInteractionSource, null, false, z, str, role, clickableComposeCallback, null));
            } else {
                final Function0 function1 = clickableComposeCallback;
                modifierA = ComposedModifierKt.a(companion, InspectableValueKt.f10100a, new Function3<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.ClickableKt$clickable-O2vRcR0$$inlined$clickableWithIndicationIfNeeded$1
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
                        Modifier modifierO = IndicationKt.a(Modifier.Companion.f8607b, mutableInteractionSource2, indication).o(new ClickableElement(mutableInteractionSource2, null, false, z, str, role, function1, null));
                        composer.F();
                        return modifierO;
                    }
                });
            }
        }
        return modifier.o(modifierA);
    }

    public static /* synthetic */ Modifier b(Modifier modifier, MutableInteractionSource mutableInteractionSource, Indication indication, boolean z, String str, Role role, Function0 function0, int i2) {
        if ((i2 & 4) != 0) {
            z = true;
        }
        return a(modifier, mutableInteractionSource, indication, z, (i2 & 8) != 0 ? null : str, (i2 & 16) != 0 ? null : role, function0);
    }

    public static Modifier c(Function0 function0) {
        return ComposedModifierKt.a(Modifier.Companion.f8607b, InspectableValueKt.f10100a, new a3(function0, 9));
    }

    public static Modifier d(Modifier modifier, boolean z, String str, Role role, Function0 function0, int i2) {
        Role role2;
        Function0 clickableComposeCallback;
        if (function0 != null) {
            role2 = role;
            clickableComposeCallback = new ClickableComposeCallback(function0, role2, "click", null);
        } else {
            role2 = role;
            clickableComposeCallback = function0;
        }
        if ((i2 & 1) != 0) {
            z = true;
        }
        return modifier.o(new ClickableElement(null, null, true, z, (i2 & 2) != 0 ? null : str, (i2 & 4) != 0 ? null : role2, clickableComposeCallback, null));
    }

    public static Modifier e(Modifier modifier, MutableInteractionSource mutableInteractionSource, Function0 function0, Function0 function1, int i2) {
        return modifier.o(new CombinedClickableElement(mutableInteractionSource, null, false, true, null, null, function1, null, (i2 & 64) != 0 ? null : function0, null, true, null));
    }

    public static Modifier f(Modifier modifier, Function0 function0, Function0 function1) {
        return modifier.o(new CombinedClickableElement(null, null, true, true, null, null, function1 != null ? new ClickableComposeCallback(function1, null, "click", null) : function1, null, function0 != null ? new ClickableComposeCallback(function0, null, "long click", null) : function0, null, true, null));
    }

    public static final boolean g(KeyEvent keyEvent) {
        long jA = KeyEvent_androidKt.a(keyEvent);
        Key.Companion companion = Key.f9226a;
        companion.getClass();
        if (Key.a(jA, Key.f9232i)) {
            return true;
        }
        companion.getClass();
        if (Key.a(jA, Key.s)) {
            return true;
        }
        companion.getClass();
        if (Key.a(jA, Key.F)) {
            return true;
        }
        companion.getClass();
        return Key.a(jA, Key.r);
    }
}
