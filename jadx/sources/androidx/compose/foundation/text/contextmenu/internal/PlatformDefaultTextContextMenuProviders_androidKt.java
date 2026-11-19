package androidx.compose.foundation.text.contextmenu.internal;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProvider;
import androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProviderKt;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProviderKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.window.PopupProperties;
import defpackage.i6;
import defpackage.kj0;
import defpackage.u00;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\u0010\u0010\u0001\u001a\u0004\u0018\u00010\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"Landroidx/compose/ui/layout/LayoutCoordinates;", "layoutCoordinates", "foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class PlatformDefaultTextContextMenuProviders_androidKt {
    public static final void a(Modifier modifier, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        int i3;
        ComposableLambdaImpl composableLambdaImpl2;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "ProvideBothDefaultProviders");
        }
        Modifier modifier2 = modifier;
        GapComposer gapComposerH = composer.h(790527681);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(composableLambdaImpl) ? 32 : 16;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.f(null, SnapshotStateKt.h());
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new u00(20, mutableState);
                gapComposerH.q(objX2);
            }
            Function0 function0 = (Function0) objX2;
            PopupProperties popupProperties = DefaultTextContextMenuDropdownProvider_androidKt.f6100a;
            ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt.f6097a.getClass();
            BasicTextContextMenuProvider basicTextContextMenuProviderB = BasicTextContextMenuProviderKt.b(ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt.f6099c, gapComposerH, 6);
            composableLambdaImpl2 = composableLambdaImpl;
            CompositionLocalKt.b(new ProvidedValue[]{TextContextMenuProviderKt.f6154b.c(AndroidTextContextMenuToolbarProvider_androidKt.c(function0, gapComposerH, 2)), TextContextMenuProviderKt.f6153a.c(basicTextContextMenuProviderB)}, ComposableLambdaKt.b(1070596993, new kj0(modifier2, mutableState, composableLambdaImpl2, basicTextContextMenuProviderB, function0), gapComposerH), gapComposerH, 56);
        } else {
            composableLambdaImpl2 = composableLambdaImpl;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i6(modifier2, composableLambdaImpl2, i2, 4);
        }
    }

    public static final void b(Modifier modifier, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        int i3;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "ProvideDefaultPlatformTextContextMenuProviders");
        }
        GapComposer gapComposerH = composer.h(155925518);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(composableLambdaImpl) ? 32 : 16;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z = gapComposerH.k(TextContextMenuProviderKt.f6153a) != null;
            boolean z2 = gapComposerH.k(TextContextMenuProviderKt.f6154b) != null;
            if (z && z2) {
                gapComposerH.L(-1977187922);
                Alignment.f8582a.getClass();
                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, true);
                int iHashCode = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
                Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifier);
                ComposeUiNode.b0.getClass();
                Function0 function0 = ComposeUiNode.Companion.f9641b;
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
                Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                composableLambdaImpl.invoke(gapComposerH, Integer.valueOf((i3 >> 3) & 14));
                gapComposerH.Z(true);
                gapComposerH.Z(false);
            } else if (z) {
                gapComposerH.L(-1976997706);
                AndroidTextContextMenuToolbarProvider_androidKt.a(modifier, composableLambdaImpl, gapComposerH, i3 & 126);
                gapComposerH.Z(false);
            } else if (z2) {
                gapComposerH.L(-1976846922);
                DefaultTextContextMenuDropdownProvider_androidKt.d(modifier, composableLambdaImpl, gapComposerH, i3 & 126);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1976716505);
                a(modifier, composableLambdaImpl, gapComposerH, i3 & 126);
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i6(modifier, composableLambdaImpl, i2, 3);
        }
    }
}
