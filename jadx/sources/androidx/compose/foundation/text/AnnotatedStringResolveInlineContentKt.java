package androidx.compose.foundation.text;

import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.AnnotatedString;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import defpackage.g2;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0018\b\u0000\u0010\u0002\"\b\u0012\u0004\u0012\u00020\u00010\u00002\b\u0012\u0004\u0012\u00020\u00010\u0000*:\b\u0000\u0010\u0007\"\u0019\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u00060\u00002\u0019\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u00060\u0000¨\u0006\b"}, d2 = {"Landroidx/compose/ui/text/AnnotatedString$Range;", "Landroidx/compose/ui/text/Placeholder;", "PlaceholderRange", "Lkotlin/Function1;", "", "", "Landroidx/compose/runtime/Composable;", "InlineContentRange", "foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class AnnotatedStringResolveInlineContentKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Pair f5849a;

    static {
        EmptyList emptyList = EmptyList.f71768b;
        f5849a = new Pair(emptyList, emptyList);
    }

    public static final void a(AnnotatedString annotatedString, List list, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-1794596951);
        int i3 = (i2 & 6) == 0 ? (gapComposerH.K(annotatedString) ? 4 : 2) | i2 : i2;
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(list) ? 32 : 16;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                AnnotatedString.Range range = (AnnotatedString.Range) list.get(i4);
                Function3 function3 = (Function3) range.f10428a;
                int i5 = range.f10429b;
                int i6 = range.f10430c;
                Object objX = gapComposerH.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = AnnotatedStringResolveInlineContentKt$InlineChildren$1$2$1.f5850a;
                    gapComposerH.q(objX);
                }
                MeasurePolicy measurePolicy = (MeasurePolicy) objX;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("InlineChildren");
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                int iHashCode = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
                Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
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
                Updater.c(gapComposerH, measurePolicy, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                function3.A(annotatedString.subSequence(i5, i6).f10420c, gapComposerH, 0);
                gapComposerH.Z(true);
            }
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new g2(annotatedString, list, i2, 3);
        }
    }
}
