package androidx.compose.ui.layout;

import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import defpackage.a;
import defpackage.v9;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LayoutKt {
    public static final void a(final Modifier modifier, final ComposableLambdaImpl composableLambdaImpl, final MeasurePolicy measurePolicy, Composer composer, final int i2) {
        if (modifier != null) {
            modifier = a.e(modifier, "MultiMeasureLayout");
        }
        GapComposer gapComposerH = composer.h(-1663319424);
        int i3 = (gapComposerH.K(modifier) ? 4 : 2) | i2 | (gapComposerH.K(measurePolicy) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int iHashCode = Integer.hashCode(gapComposerH.G());
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifier);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            LayoutNode.T.getClass();
            Function0 function0 = LayoutNode.W;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            ComposeUiNode.b0.getClass();
            Updater.c(gapComposerH, measurePolicy, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            LayoutKt$MultiMeasureLayout$1$1 layoutKt$MultiMeasureLayout$1$1 = LayoutKt$MultiMeasureLayout$1$1.f9475c;
            if (gapComposerH.getS()) {
                gapComposerH.a(Unit.f71739a, new v9(layoutKt$MultiMeasureLayout$1$1, 7));
            }
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            composableLambdaImpl.invoke(gapComposerH, 6);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>(composableLambdaImpl, measurePolicy, i2) { // from class: androidx.compose.ui.layout.LayoutKt$MultiMeasureLayout$2
                public final /* synthetic */ ComposableLambdaImpl d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ MeasurePolicy f9477e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    int iA = RecomposeScopeImplKt.a(49);
                    LayoutKt.a(this.f9476c, this.d, this.f9477e, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final ComposableLambdaImpl b(final List list) {
        return new ComposableLambdaImpl(1271844412, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.layout.LayoutKt$combineAsVirtualLayouts$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Composer composer = (Composer) obj;
                int iIntValue = ((Number) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    List list2 = list;
                    int size = list2.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        Function2 function2 = (Function2) list2.get(i2);
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        int iHashCode = Long.hashCode(composer.getT());
                        ComposeUiNode.b0.getClass();
                        Function0 function0 = ComposeUiNode.Companion.f9642c;
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
                        Updater.c(composer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        function2.invoke(composer, 0);
                        composer.r();
                    }
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            }
        });
    }
}
