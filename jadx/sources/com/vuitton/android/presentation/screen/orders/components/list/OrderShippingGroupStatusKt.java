package com.vuitton.android.presentation.screen.orders.components.list;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
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
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVProgressIndicatorKt;
import com.vuitton.android.presentation.screen.orders.models.OrderStatusUiModel;
import defpackage.a;
import defpackage.ch0;
import defpackage.cj;
import defpackage.d21;
import defpackage.lm;
import defpackage.lt;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OrderShippingGroupStatusKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f60219a;

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
            f60219a = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:105:0x02a8  */
    /* JADX WARN: Code duplicated, block: B:107:0x02bb  */
    /* JADX WARN: Code duplicated, block: B:109:0x02bf  */
    /* JADX WARN: Code duplicated, block: B:111:0x02c3  */
    /* JADX WARN: Code duplicated, block: B:114:0x02d2  */
    /* JADX WARN: Code duplicated, block: B:116:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x0094  */
    /* JADX WARN: Code duplicated, block: B:57:0x0096  */
    /* JADX WARN: Code duplicated, block: B:60:0x009e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:61:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:64:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:66:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:67:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:73:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:75:0x0102  */
    /* JADX WARN: Code duplicated, block: B:76:0x0106  */
    /* JADX WARN: Code duplicated, block: B:79:0x014b  */
    /* JADX WARN: Code duplicated, block: B:81:0x0152  */
    /* JADX WARN: Code duplicated, block: B:82:0x0156  */
    /* JADX WARN: Code duplicated, block: B:85:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:87:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:88:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:90:0x01c4  */
    public static final void a(Modifier modifier, OrderStatusUiModel orderStatusUiModel, LVColorScheme lVColorScheme, boolean z, long j2, Composer composer, int i2, int i3) {
        int i4;
        boolean z2;
        GapComposer gapComposer;
        LVColorScheme lVColorScheme2;
        long j3;
        Modifier modifier2;
        RecomposeScopeImpl recomposeScopeImplB0;
        LVColorScheme lVColorScheme3;
        long j4;
        Object objX;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function0;
        Function2 function2;
        Function2 function3;
        Function2 function4;
        Function1 function1;
        Function2 function5;
        Modifier modifier3;
        RowMeasurePolicy rowMeasurePolicyA;
        LVColorScheme lVColorScheme4;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        int i5;
        boolean z3;
        long j5;
        boolean z4;
        List list;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = a.e(dTFunctionNameModifier, "OrderShippingGroupStatus");
        }
        GapComposer gapComposerH = composer.h(-1684544804);
        Applier applier = gapComposerH.f7976a;
        int i6 = i3 & 1;
        if (i6 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.y(orderStatusUiModel) ? 32 : 16;
        }
        int i7 = i3 & 4;
        if (i7 != 0) {
            i4 |= KyberEngine.KyberPolyBytes;
        } else if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.d(lVColorScheme == null ? -1 : lVColorScheme.ordinal()) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.b(z) ? 2048 : 1024;
        }
        int i8 = i3 & 16;
        if (i8 == 0) {
            if ((i2 & 24576) == 0) {
                i4 |= gapComposerH.e(j2) ? 16384 : 8192;
            }
            if ((i4 & 9363) != 9362) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (gapComposerH.p(i4 & 1, z2)) {
                if (i6 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("OrderShippingGroupStatus");
                }
                if (i7 != 0) {
                    lVColorScheme3 = LVColorScheme.DEFAULT;
                } else {
                    lVColorScheme3 = lVColorScheme;
                }
                if (i8 != 0) {
                    j4 = 0;
                } else {
                    j4 = j2;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Modifier modifierE = ModifierExtKt.e(dTFunctionNameModifier, "MyOrder_OrderStatus_View");
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = new ch0(28);
                    gapComposerH.q(objX);
                }
                Modifier modifierB = SemanticsModifierKt.b(modifierE, true, (Function1) objX);
                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
                ComposeUiNode.b0.getClass();
                function0 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                function2 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, columnMeasurePolicyA, function2);
                function3 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                Integer numValueOf = Integer.valueOf(iHashCode);
                function4 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf, function4);
                function1 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function1);
                function5 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC, function5);
                BiasAlignment.Vertical vertical = Alignment.Companion.l;
                modifier3 = dTFunctionNameModifier;
                DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("OrderShippingGroupStatus");
                rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical, gapComposerH, 48);
                lVColorScheme4 = lVColorScheme3;
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier2);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
                Modifier modifierO = SizeKt.o(tr.e(gapComposerH, modifierC2, function5, "OrderShippingGroupStatus"), LVAppDesignKitTheme.d(gapComposerH).f48388h);
                long j6 = orderStatusUiModel.f60325b;
                List list2 = orderStatusUiModel.d;
                BoxKt.a(BackgroundKt.b(modifierO, j6, RoundedCornerShapeKt.a(LVAppDesignKitTheme.d(gapComposerH).f48388h)), gapComposerH, 0);
                Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("OrderShippingGroupStatus"), LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                i5 = WhenMappings.f60219a[lVColorScheme4.ordinal()];
                if (i5 != 1) {
                    z3 = false;
                    gapComposerH.L(-1834907178);
                    j5 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                    gapComposerH.Z(false);
                } else {
                    if (i5 == 2) {
                        throw d21.u(gapComposerH, -1834910046, false);
                    }
                    gapComposerH.L(-1834904081);
                    j5 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
                    z3 = false;
                    gapComposerH.Z(false);
                }
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
                TextOverflow.f10989a.getClass();
                z4 = z3;
                TextKt.c(orderStatusUiModel.f60324a, modifierM, j5, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, gapComposerH, 0, 24960, 110584);
                gapComposer = gapComposerH;
                gapComposer.Z(true);
                list = list2;
                if (list != null || list.isEmpty()) {
                    gapComposer.L(942792252);
                    gapComposer.Z(z4);
                } else {
                    gapComposer.L(942078229);
                    String strB = StringResources_androidKt.b(R.string.alt_current_step, new Object[]{Integer.valueOf(orderStatusUiModel.f60326c + 1), Integer.valueOf(list2.size())}, gapComposer);
                    Modifier modifierM2 = PaddingKt.m(new DTFunctionNameModifier("OrderShippingGroupStatus"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                    boolean zK = gapComposer.K(strB);
                    Object objX2 = gapComposer.x();
                    if (zK || objX2 == composer$Companion$Empty$1) {
                        objX2 = new lt(strB, 28);
                        gapComposer.q(objX2);
                    }
                    LVProgressIndicatorKt.b(SemanticsModifierKt.b(modifierM2, z4, (Function1) objX2), orderStatusUiModel.f60326c, list2.size(), Call.Parameters.DEFAULT_CAMERA_ZOOM, orderStatusUiModel.f60325b, 0L, z ? Long.valueOf(200 + j4) : null, null, gapComposer, 48);
                    gapComposer = gapComposer;
                    gapComposer.Z(z4);
                }
                gapComposer.Z(true);
                j3 = j4;
                modifier2 = modifier3;
                lVColorScheme2 = lVColorScheme4;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                lVColorScheme2 = lVColorScheme;
                j3 = j2;
                modifier2 = dTFunctionNameModifier;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new lm(modifier2, orderStatusUiModel, lVColorScheme2, z, j3, i2, i3);
            }
        }
        i4 |= 24576;
        if ((i4 & 9363) != 9362) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposerH.p(i4 & 1, z2)) {
            if (i6 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("OrderShippingGroupStatus");
            }
            if (i7 != 0) {
                lVColorScheme3 = LVColorScheme.DEFAULT;
            } else {
                lVColorScheme3 = lVColorScheme;
            }
            if (i8 != 0) {
                j4 = 0;
            } else {
                j4 = j2;
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            Modifier modifierE2 = ModifierExtKt.e(dTFunctionNameModifier, "MyOrder_OrderStatus_View");
            objX = gapComposerH.x();
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new ch0(28);
                gapComposerH.q(objX);
            }
            Modifier modifierB2 = SemanticsModifierKt.b(modifierE2, true, (Function1) objX);
            Arrangement$Top$1 arrangement$Top$2 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            columnMeasurePolicyA = ColumnKt.a(arrangement$Top$2, Alignment.Companion.n, gapComposerH, 0);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierB2);
            ComposeUiNode.b0.getClass();
            function0 = ComposeUiNode.Companion.f9641b;
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf2 = Integer.valueOf(iHashCode);
            function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf2, function4);
            function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            function5 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function5);
            BiasAlignment.Vertical vertical2 = Alignment.Companion.l;
            modifier3 = dTFunctionNameModifier;
            DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("OrderShippingGroupStatus");
            rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical2, gapComposerH, 48);
            lVColorScheme4 = lVColorScheme3;
            iHashCode2 = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU2 = gapComposerH.U();
            modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier3);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
            Modifier modifierO2 = SizeKt.o(tr.e(gapComposerH, modifierC2, function5, "OrderShippingGroupStatus"), LVAppDesignKitTheme.d(gapComposerH).f48388h);
            long j7 = orderStatusUiModel.f60325b;
            List list3 = orderStatusUiModel.d;
            BoxKt.a(BackgroundKt.b(modifierO2, j7, RoundedCornerShapeKt.a(LVAppDesignKitTheme.d(gapComposerH).f48388h)), gapComposerH, 0);
            Modifier modifierM3 = PaddingKt.m(new DTFunctionNameModifier("OrderShippingGroupStatus"), LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
            i5 = WhenMappings.f60219a[lVColorScheme4.ordinal()];
            if (i5 != 1) {
                z3 = false;
                gapComposerH.L(-1834907178);
                j5 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                gapComposerH.Z(false);
            } else {
                if (i5 == 2) {
                    throw d21.u(gapComposerH, -1834910046, false);
                }
                gapComposerH.L(-1834904081);
                j5 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
                z3 = false;
                gapComposerH.Z(false);
            }
            TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposerH).l;
            TextOverflow.f10989a.getClass();
            z4 = z3;
            TextKt.c(orderStatusUiModel.f60324a, modifierM3, j5, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle2, gapComposerH, 0, 24960, 110584);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
            list = list3;
            if (list != null) {
                gapComposer.L(942792252);
                gapComposer.Z(z4);
            } else {
                gapComposer.L(942792252);
                gapComposer.Z(z4);
            }
            gapComposer.Z(true);
            j3 = j4;
            modifier2 = modifier3;
            lVColorScheme2 = lVColorScheme4;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            lVColorScheme2 = lVColorScheme;
            j3 = j2;
            modifier2 = dTFunctionNameModifier;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new lm(modifier2, orderStatusUiModel, lVColorScheme2, z, j3, i2, i3);
        }
    }
}
