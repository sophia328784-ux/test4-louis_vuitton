package androidx.compose.foundation.layout;

import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation-layout"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SpacerKt {
    public static final void a(Composer composer, Modifier modifier) {
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "Spacer");
        }
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        int iHashCode = Long.hashCode(composer.getT());
        Modifier modifierC = ComposedModifierKt.c(composer, modifier);
        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
        ComposeUiNode.b0.getClass();
        Function0 function0 = ComposeUiNode.Companion.f9641b;
        if (composer.getF7976a() == null) {
            ComposablesKt.b();
            throw null;
        }
        composer.B();
        if (composer.getS()) {
            composer.C(function0);
        } else {
            composer.o();
        }
        Updater.c(composer, SpacerMeasurePolicy.f5057a, ComposeUiNode.Companion.f9644f);
        Updater.c(composer, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
        Updater.b(composer, ComposeUiNode.Companion.f9645h);
        Updater.c(composer, modifierC, ComposeUiNode.Companion.d);
        Updater.c(composer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
        composer.r();
    }
}
