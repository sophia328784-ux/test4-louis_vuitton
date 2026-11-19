package androidx.compose.foundation.layout;

import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.q5;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation-layout"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class BoxKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final MutableScatterMap f4932a = c(true);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final MutableScatterMap f4933b = c(false);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final MeasurePolicy f4934c;

    static {
        Alignment.f8582a.getClass();
        new BoxMeasurePolicy(Alignment.Companion.f8584b, false);
        f4934c = BoxKt$EmptyBoxMeasurePolicy$1.f4935a;
    }

    public static final void a(Modifier modifier, Composer composer, int i2) {
        int i3;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "Box");
        }
        GapComposer gapComposerH = composer.h(-211209833);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int iHashCode = Long.hashCode(gapComposerH.T);
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifier);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
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
            Updater.c(gapComposerH, f4934c, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new q5(modifier, i2);
        }
    }

    public static final void b(Placeable.PlacementScope placementScope, Placeable placeable, Measurable measurable, LayoutDirection layoutDirection, int i2, int i3, Alignment alignment) {
        Alignment alignment2;
        Object t = measurable.getZ();
        BoxChildDataNode boxChildDataNode = t instanceof BoxChildDataNode ? (BoxChildDataNode) t : null;
        Alignment alignment3 = (boxChildDataNode == null || (alignment2 = boxChildDataNode.p) == null) ? alignment : alignment2;
        long j2 = (((long) placeable.f9548b) << 32) | (((long) placeable.f9549c) & BodyPartID.bodyIdMax);
        IntSize.Companion companion = IntSize.f11020b;
        Placeable.PlacementScope.u(placementScope, placeable, alignment3.a(j2, (((long) i2) << 32) | (((long) i3) & BodyPartID.bodyIdMax), layoutDirection));
    }

    public static final MutableScatterMap c(boolean z) {
        MutableScatterMap mutableScatterMap = new MutableScatterMap(9);
        Alignment.f8582a.getClass();
        BiasAlignment biasAlignment = Alignment.Companion.f8584b;
        mutableScatterMap.o(biasAlignment, new BoxMeasurePolicy(biasAlignment, z));
        BiasAlignment biasAlignment2 = Alignment.Companion.f8585c;
        mutableScatterMap.o(biasAlignment2, new BoxMeasurePolicy(biasAlignment2, z));
        BiasAlignment biasAlignment3 = Alignment.Companion.d;
        mutableScatterMap.o(biasAlignment3, new BoxMeasurePolicy(biasAlignment3, z));
        BiasAlignment biasAlignment4 = Alignment.Companion.f8586e;
        mutableScatterMap.o(biasAlignment4, new BoxMeasurePolicy(biasAlignment4, z));
        BiasAlignment biasAlignment5 = Alignment.Companion.f8587f;
        mutableScatterMap.o(biasAlignment5, new BoxMeasurePolicy(biasAlignment5, z));
        BiasAlignment biasAlignment6 = Alignment.Companion.g;
        mutableScatterMap.o(biasAlignment6, new BoxMeasurePolicy(biasAlignment6, z));
        BiasAlignment biasAlignment7 = Alignment.Companion.f8588h;
        mutableScatterMap.o(biasAlignment7, new BoxMeasurePolicy(biasAlignment7, z));
        BiasAlignment biasAlignment8 = Alignment.Companion.f8589i;
        mutableScatterMap.o(biasAlignment8, new BoxMeasurePolicy(biasAlignment8, z));
        BiasAlignment biasAlignment9 = Alignment.Companion.f8590j;
        mutableScatterMap.o(biasAlignment9, new BoxMeasurePolicy(biasAlignment9, z));
        return mutableScatterMap;
    }

    public static final MeasurePolicy d(Alignment alignment, boolean z) {
        MeasurePolicy measurePolicy = (MeasurePolicy) (z ? f4932a : f4933b).e(alignment);
        return measurePolicy == null ? new BoxMeasurePolicy(alignment, z) : measurePolicy;
    }
}
