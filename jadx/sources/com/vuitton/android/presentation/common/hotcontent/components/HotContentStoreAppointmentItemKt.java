package com.vuitton.android.presentation.common.hotcontent.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
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
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.presentation.common.hotcontent.models.HotContentItemUiModel;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.osa.models.AppointmentTypeUiModel;
import defpackage.a;
import defpackage.cj;
import defpackage.d21;
import defpackage.i1;
import defpackage.py;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class HotContentStoreAppointmentItemKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f50884a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f50885b;

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
            f50884a = iArr;
            int[] iArr2 = new int[AppointmentTypeUiModel.values().length];
            try {
                iArr2[AppointmentTypeUiModel.IN_STORE.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[AppointmentTypeUiModel.DISTANT.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            f50885b = iArr2;
        }
    }

    public static final void a(Modifier modifier, HotContentItemUiModel.StoreAppointment storeAppointment, LVColorScheme lVColorScheme, Function0 function0, Composer composer, int i2) {
        int i3;
        long j2;
        long j3;
        char c2;
        long j4;
        int i4;
        long j5;
        String strF;
        long j6;
        long j7;
        Modifier modifierE = modifier;
        HotContentItemUiModel.StoreAppointment storeAppointment2 = storeAppointment;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "HotContentStoreAppointmentItem");
        }
        storeAppointment2.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(174933207);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(storeAppointment2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.d(lVColorScheme == null ? -1 : lVColorScheme.ordinal()) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function0) ? 2048 : 1024;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierA = ClipKt.a(modifierE, LVAppDesignKitTheme.j(gapComposerH).f48411c);
            int[] iArr = WhenMappings.f50884a;
            int i5 = iArr[lVColorScheme.ordinal()];
            if (i5 == 1) {
                gapComposerH.L(607105129);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.g;
                gapComposerH.Z(false);
            } else {
                if (i5 != 2) {
                    throw d21.u(gapComposerH, 607102260, false);
                }
                gapComposerH.L(607108163);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b;
                gapComposerH.Z(false);
            }
            Modifier modifierB = BackgroundKt.b(modifierA, j2, RectangleShapeKt.f8913a);
            boolean z = (i3 & 7168) == 2048;
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new py(function0, 8);
                gapComposerH.q(objX);
            }
            Modifier modifierJ = PaddingKt.j(ModifierExtKt.c(modifierB, false, null, null, (Function0) objX, 27), LVAppDesignKitTheme.l(gapComposerH).f48416e, 22.0f);
            Alignment.f8582a.getClass();
            BiasAlignment.Vertical vertical = Alignment.Companion.l;
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierJ);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            Function2 function6 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function6);
            Modifier modifierB2 = cj.b("HotContentStoreAppointmentItem", RowScopeInstance.f5040a, 1.0f, true);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB2);
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
            String strC = StringResources_androidKt.c(gapComposerH, R.string.whatsup_card_osa_title);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
            int i6 = iArr[lVColorScheme.ordinal()];
            if (i6 == 1) {
                gapComposerH.L(-859891887);
                j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                gapComposerH.Z(false);
            } else {
                if (i6 != 2) {
                    throw d21.u(gapComposerH, -859894754, false);
                }
                gapComposerH.L(-859888789);
                j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                gapComposerH.Z(false);
            }
            TextKt.c(strC, null, j3, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 131066);
            Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("HotContentStoreAppointmentItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 48);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierM);
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
            Updater.c(gapComposerH, rowMeasurePolicyA2, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function3);
            cj.t(iHashCode3, gapComposerH, function4, gapComposerH, function5);
            Updater.c(gapComposerH, modifierC3, function6);
            String str = storeAppointment.f50897c;
            str.getClass();
            Modifier modifierA2 = ClipKt.a(SizeKt.o(new DTFunctionNameModifier("HotContentStoreAppointmentItem"), 56.0f), LVAppDesignKitTheme.j(gapComposerH).f48410b);
            float f2 = LVAppDesignKitTheme.d(gapComposerH).f48384b;
            int i7 = iArr[lVColorScheme.ordinal()];
            if (i7 != 1) {
                c2 = 2;
                if (i7 != 2) {
                    throw d21.u(gapComposerH, 1341668918, false);
                }
                gapComposerH.L(1341675491);
                j4 = LVAppDesignKitTheme.c(gapComposerH).f48361b.q;
                gapComposerH.Z(false);
            } else {
                c2 = 2;
                gapComposerH.L(1341672137);
                j4 = LVAppDesignKitTheme.c(gapComposerH).f48361b.t;
                gapComposerH.Z(false);
            }
            ImageLoaderKt.b(BorderKt.a(modifierA2, f2, j4, LVAppDesignKitTheme.j(gapComposerH).f48410b), str, null, null, null, 0, false, null, null, null, gapComposerH, 0, 2044);
            Modifier modifierM2 = PaddingKt.m(new DTFunctionNameModifier("HotContentStoreAppointmentItem"), LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode4 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposerH.U();
            Modifier modifierC4 = ComposedModifierKt.c(gapComposerH, modifierM2);
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
            Updater.c(gapComposerH, columnMeasurePolicyA2, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU4, function3);
            cj.t(iHashCode4, gapComposerH, function4, gapComposerH, function5);
            Updater.c(gapComposerH, modifierC4, function6);
            storeAppointment2 = storeAppointment;
            String str2 = storeAppointment2.f50896b;
            TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposerH).l;
            int i8 = iArr[lVColorScheme.ordinal()];
            if (i8 != 1) {
                i4 = 2;
                if (i8 != 2) {
                    throw d21.u(gapComposerH, -983643396, false);
                }
                gapComposerH.L(-983636943);
                j5 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                gapComposerH.Z(false);
            } else {
                i4 = 2;
                gapComposerH.L(-983640297);
                j5 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                gapComposerH.Z(false);
            }
            int i9 = i4;
            TextKt.c(str2, null, j5, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle2, gapComposerH, 0, 0, 131066);
            AppointmentTypeUiModel appointmentTypeUiModel = storeAppointment2.f50895a;
            int i10 = appointmentTypeUiModel == null ? -1 : WhenMappings.f50885b[appointmentTypeUiModel.ordinal()];
            if (i10 == -1) {
                gapComposerH.L(-427541029);
                gapComposerH.Z(false);
                strF = "";
            } else if (i10 == 1) {
                strF = cj.f(gapComposerH, -983630016, R.string.osa_appointment_form_instore_cta, gapComposerH, false);
            } else {
                if (i10 != i9) {
                    throw d21.u(gapComposerH, -983632710, false);
                }
                strF = cj.f(gapComposerH, -983626048, R.string.osa_appointment_form_virtual_cta, gapComposerH, false);
            }
            String str3 = strF;
            TextStyle textStyle3 = LVAppDesignKitTheme.n(gapComposerH).l;
            int i11 = iArr[lVColorScheme.ordinal()];
            if (i11 == 1) {
                gapComposerH.L(-983615146);
                j6 = LVAppDesignKitTheme.c(gapComposerH).f48361b.n;
                gapComposerH.Z(false);
            } else {
                if (i11 != i9) {
                    throw d21.u(gapComposerH, -983618246, false);
                }
                gapComposerH.L(-983611824);
                j6 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
                gapComposerH.Z(false);
            }
            TextKt.c(str3, null, j6, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle3, gapComposerH, 0, 0, 131066);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            Modifier modifierO = SizeKt.o(new DTFunctionNameModifier("HotContentStoreAppointmentItem"), LVAppDesignKitTheme.d(gapComposerH).m);
            Painter painterA = PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).I, gapComposerH, 0);
            int i12 = iArr[lVColorScheme.ordinal()];
            if (i12 == 1) {
                gapComposerH.L(-1213970721);
                j7 = LVAppDesignKitTheme.c(gapComposerH).f48361b.y;
                gapComposerH.Z(false);
            } else {
                if (i12 != i9) {
                    throw d21.u(gapComposerH, -1213973480, false);
                }
                gapComposerH.L(-1213968007);
                j7 = LVAppDesignKitTheme.c(gapComposerH).f48361b.u;
                gapComposerH.Z(false);
            }
            IconKt.a(painterA, null, modifierO, j7, gapComposerH, 56, 0);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i1(modifierE, storeAppointment2, lVColorScheme, function0, i2, 20);
        }
    }
}
