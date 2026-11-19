package androidx.compose.ui;

import androidx.compose.runtime.Composer;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ComposedModifierKt {
    public static final Modifier a(Modifier modifier, Function1 function1, Function3 function3) {
        return modifier.o(new ComposedModifier(function1, function3));
    }

    public static final Modifier b(final Composer composer, Modifier modifier) {
        if (modifier.d(ComposedModifierKt$materializeImpl$1.f8603c)) {
            return modifier;
        }
        composer.w(1219399079);
        Modifier modifier2 = (Modifier) modifier.b(Modifier.Companion.f8607b, new Function2<Modifier, Modifier.Element, Modifier>() { // from class: androidx.compose.ui.ComposedModifierKt$materializeImpl$result$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Modifier modifier3 = (Modifier) obj;
                Modifier modifierB = (Modifier.Element) obj2;
                if (modifierB instanceof ComposedModifier) {
                    Function3 function3 = ((ComposedModifier) modifierB).f8602c;
                    function3.getClass();
                    TypeIntrinsics.e(3, function3);
                    Modifier.Companion companion = Modifier.Companion.f8607b;
                    Composer composer2 = composer;
                    modifierB = ComposedModifierKt.b(composer2, (Modifier) function3.A(companion, composer2, 0));
                }
                return modifier3.o(modifierB);
            }
        });
        composer.J();
        return modifier2;
    }

    public static final Modifier c(Composer composer, Modifier modifier) {
        composer.L(439770924);
        Modifier modifierB = b(composer, modifier);
        composer.F();
        return modifierB;
    }
}
