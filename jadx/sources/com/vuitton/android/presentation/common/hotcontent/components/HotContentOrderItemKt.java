package com.vuitton.android.presentation.common.hotcontent.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.presentation.common.hotcontent.components.HotContentOrderItemKt;
import com.vuitton.android.presentation.common.hotcontent.models.HotContentItemUiModel;
import com.vuitton.android.presentation.screen.orders.components.list.OrderItemKt;
import com.vuitton.android.presentation.screen.orders.components.list.OrderShippingGroupStatusKt;
import com.vuitton.android.presentation.screen.orders.models.OrderStatusUiModel;
import com.vuitton.android.presentation.screen.orders.models.TimelineUiModel;
import defpackage.a;
import defpackage.cj;
import defpackage.d21;
import defpackage.o60;
import defpackage.py;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class HotContentOrderItemKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f50883a;

        static {
            int[] iArr = new int[LVColorScheme.values().length];
            try {
                iArr[LVColorScheme.INVERT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LVColorScheme.DEFAULT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f50883a = iArr;
        }
    }

    public static final void a(Modifier modifier, final HotContentItemUiModel.Order order, final LVColorScheme lVColorScheme, final boolean z, final long j2, final Function0 function0, Composer composer, final int i2) {
        int i3;
        long j3;
        long j4;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "HotContentOrderItem");
        }
        order.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(128105965);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(order) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.d(lVColorScheme == null ? -1 : lVColorScheme.ordinal()) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.b(z) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.e(j2) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function0) ? 131072 : 65536;
        }
        int i4 = i3;
        if (gapComposerH.p(i4 & 1, (74899 & i4) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierA = ClipKt.a(modifierE, LVAppDesignKitTheme.j(gapComposerH).f48411c);
            int[] iArr = WhenMappings.f50883a;
            int i5 = iArr[lVColorScheme.ordinal()];
            if (i5 == 1) {
                gapComposerH.L(-1444204033);
                j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.g;
                gapComposerH.Z(false);
            } else {
                if (i5 != 2) {
                    throw d21.u(gapComposerH, -1444206902, false);
                }
                gapComposerH.L(-1444200999);
                j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b;
                gapComposerH.Z(false);
            }
            Modifier modifierB = BackgroundKt.b(modifierA, j3, RectangleShapeKt.f8913a);
            boolean z2 = (458752 & i4) == 131072;
            Object objX = gapComposerH.x();
            if (z2 || objX == Composer.Companion.f7939a) {
                objX = new py(function0, 7);
                gapComposerH.q(objX);
            }
            Modifier modifierI = PaddingKt.i(ModifierExtKt.c(modifierB, false, null, null, (Function0) objX, 27), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierI);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            Function2 function6 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function6);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("HotContentOrderItem");
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
            Updater.c(gapComposerH, modifierC2, function6);
            int i6 = i4 & 896;
            OrderItemKt.a(null, order.f50894b, lVColorScheme, LVAppDesignKitTheme.j(gapComposerH).f48410b, z, false, gapComposerH, i6 | ((i4 << 3) & 57344), 33);
            OrderStatusUiModel.Companion companion = OrderStatusUiModel.f60323f;
            TimelineUiModel timelineUiModel = order.f50894b.f60414c;
            companion.getClass();
            OrderStatusUiModel orderStatusUiModelA = OrderStatusUiModel.Companion.a(timelineUiModel, lVColorScheme, gapComposerH, 0);
            if (orderStatusUiModelA == null) {
                gapComposerH.L(-701179391);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-701179390);
                OrderShippingGroupStatusKt.a(null, orderStatusUiModelA, lVColorScheme, true, j2, gapComposerH, i6 | 3072 | (i4 & 57344), 1);
                gapComposerH.Z(false);
            }
            Modifier modifierG = BoxScopeInstance.f4938a.g(SizeKt.o(o60.f(gapComposerH, true, "HotContentOrderItem"), LVAppDesignKitTheme.d(gapComposerH).m), Alignment.Companion.g);
            Painter painterA = PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).I, gapComposerH, 0);
            int i7 = iArr[lVColorScheme.ordinal()];
            if (i7 == 1) {
                gapComposerH.L(-971312493);
                j4 = LVAppDesignKitTheme.c(gapComposerH).f48361b.y;
                gapComposerH.Z(false);
            } else {
                if (i7 != 2) {
                    throw d21.u(gapComposerH, -971315252, false);
                }
                gapComposerH.L(-971309779);
                j4 = LVAppDesignKitTheme.c(gapComposerH).f48361b.u;
                gapComposerH.Z(false);
            }
            IconKt.a(painterA, null, modifierG, j4, gapComposerH, 56, 0);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier2 = modifierE;
            recomposeScopeImplB0.d = new Function2() { // from class: o10
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    HotContentOrderItemKt.a(modifier2, order, lVColorScheme, z, j2, function0, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                    return Unit.f71739a;
                }
            };
        }
    }
}
