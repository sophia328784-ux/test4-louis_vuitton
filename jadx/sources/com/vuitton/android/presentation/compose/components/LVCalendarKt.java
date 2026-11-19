package com.vuitton.android.presentation.compose.components;

import android.text.format.DateFormat;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.kizitonwose.calendar.compose.CalendarKt;
import com.kizitonwose.calendar.compose.CalendarState;
import com.kizitonwose.calendar.core.CalendarDay;
import com.kizitonwose.calendar.core.CalendarMonth;
import com.kizitonwose.calendar.core.DayPosition;
import com.kizitonwose.calendar.core.ExtensionsKt$EntriesMappings;
import com.kizitonwose.calendar.core.OutDateStyle;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.extensions.ModifierExtKt;
import defpackage.ag;
import defpackage.cf;
import defpackage.cj;
import defpackage.i1;
import defpackage.j50;
import defpackage.k50;
import defpackage.l00;
import defpackage.lt;
import defpackage.ly;
import defpackage.n00;
import defpackage.p4;
import defpackage.pq0;
import defpackage.t30;
import defpackage.tr;
import defpackage.v1;
import defpackage.x20;
import defpackage.yh;
import defpackage.z2;
import defpackage.zg;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.Month;
import java.time.YearMonth;
import java.time.chrono.ChronoLocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.TextStyle;
import java.time.temporal.WeekFields;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;
import kotlin.collections.EmptyList;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.enums.EnumEntries;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.FilteringSequence;
import kotlin.text.CharsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\u0010\u0010\u0001\u001a\u0004\u0018\u00010\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"Ljava/time/LocalDate;", "selectedDate", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVCalendarKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f50961a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f50962b;

    static {
        Dp.Companion companion = Dp.f11004c;
        f50961a = 1.5f;
        f50962b = 0.5f;
    }

    public static final void a(Modifier modifier, boolean z, boolean z2, Function0 function0, Function0 function1, Composer composer, int i2) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "CalendarArrows");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(2098382420);
        int i3 = 4;
        int i4 = i2 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.b(z) ? 32 : 16) | (gapComposerH.b(z2) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192);
        byte b2 = 0;
        if (gapComposerH.p(i4 & 1, (i4 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifier2);
            ComposeUiNode.b0.getClass();
            Function0 function2 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function2);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            IconButtonKt.a(function0, null, z, null, null, ComposableLambdaKt.b(335783126, new p4(z, i3, b2), gapComposerH), gapComposerH, ((i4 >> 9) & 14) | 1572864 | ((i4 << 3) & 896), 58);
            IconButtonKt.a(function1, null, z2, null, null, ComposableLambdaKt.b(2094358157, new p4(z2, 3, b2), gapComposerH), gapComposerH, ((i4 >> 12) & 14) | 1572864 | (i4 & 896), 58);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ly(modifier2, z, z2, function0, function1, i2, 1);
        }
    }

    public static final void b(Modifier modifier, List list, Locale locale, Composer composer, int i2) {
        List<DayOfWeek> list2;
        GapComposer gapComposer;
        Modifier modifier2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "CalendarTop");
        }
        GapComposer gapComposerH = composer.h(1919964333);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | 6;
        if ((i2 & 48) == 0) {
            list2 = list;
            i3 |= gapComposerH.y(list2) ? 32 : 16;
        } else {
            list2 = list;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(locale) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("CalendarTop");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierM = PaddingKt.m(SizeKt.d(dTFunctionNameModifier, 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).d, 5);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).d);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierM);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function5 = ComposeUiNode.Companion.d;
            Modifier modifierE2 = n00.e(gapComposerH, modifierC, function5, "CalendarTop", 1.0f);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.f8591k, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierE2);
            if (applier == null) {
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
            Updater.c(gapComposerH, modifierC2, function5);
            gapComposerH.L(601128827);
            for (DayOfWeek dayOfWeek : list2) {
                Modifier modifierA = ModifierExtKt.a(cj.b("CalendarTop", RowScopeInstance.f5040a, 1.0f, true), null, null, 7);
                dayOfWeek.getClass();
                locale.getClass();
                String displayName = dayOfWeek.getDisplayName(TextStyle.SHORT, locale);
                displayName.getClass();
                androidx.compose.ui.text.TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48428i;
                TextAlign.f10959b.getClass();
                GapComposer gapComposer2 = gapComposerH;
                TextKt.c(displayName, modifierA, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyle, gapComposer2, 0, 0, 130040);
                gapComposerH = gapComposer2;
            }
            gapComposer = gapComposerH;
            pq0.x(gapComposer, false, true, true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new v1(i2, 17, modifier2, list, locale);
        }
    }

    public static final void c(CalendarDay calendarDay, LocalDate localDate, LocalDate localDate2, List list, Locale locale, Function1 function1, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        boolean z;
        long j2;
        androidx.compose.ui.text.TextStyle textStyle;
        TextDecoration textDecoration;
        boolean z2;
        Modifier modifierA;
        boolean z3;
        GapComposer gapComposerH = composer.h(-2013119934);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(calendarDay) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(localDate) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(localDate2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(list) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.K(locale) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function1) ? 131072 : 65536;
        }
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DayPosition dayPosition = calendarDay.f35956c;
            LocalDate localDate3 = calendarDay.f35955b;
            boolean z4 = dayPosition == DayPosition.MonthDate;
            boolean z5 = z4 && localDate3.compareTo((ChronoLocalDate) localDate) >= 0 && list != null && list.contains(localDate3);
            boolean z6 = z4 && Intrinsics.c(localDate3, localDate);
            boolean z7 = z5 && Intrinsics.c(localDate3, localDate2);
            String strC = StringResources_androidKt.c(gapComposerH, R.string.alt_today);
            String strC2 = StringResources_androidKt.c(gapComposerH, R.string.alt_selected);
            if (z5) {
                gapComposerH.L(2067977539);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                z = false;
                gapComposerH.Z(false);
            } else {
                z = false;
                gapComposerH.L(2068043972);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
                gapComposerH.Z(false);
            }
            if (z5) {
                gapComposerH.L(2068142149);
                textStyle = LVAppDesignKitTheme.n(gapComposerH).f48430k;
                gapComposerH.Z(false);
            } else {
                boolean z8 = z;
                gapComposerH.L(2068206660);
                textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
                gapComposerH.Z(z8);
            }
            androidx.compose.ui.text.TextStyle textStyle2 = textStyle;
            if (!localDate3.isAfter(localDate) || list == null || list.contains(localDate3)) {
                TextDecoration.f10965b.getClass();
                textDecoration = TextDecoration.f10966c;
            } else {
                TextDecoration.f10965b.getClass();
                textDecoration = TextDecoration.f10967e;
            }
            boolean zK = ((i3 & 57344) == 16384) | gapComposerH.K(localDate3);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$1) {
                objX = localDate3.format(DateTimeFormatter.ofPattern(DateFormat.getBestDateTimePattern(locale, "EEEEdMMMM"), locale));
                gapComposerH.q(objX);
            }
            String str = (String) objX;
            TextDecoration textDecoration2 = textDecoration;
            boolean z9 = z4;
            Modifier modifierA2 = AspectRatioKt.a(new DTFunctionNameModifier("Day"), 1.0f, false);
            if (z5) {
                gapComposerH.L(2068893620);
                if (z6 && z7) {
                    strC = tr.h(strC, ", ", strC2);
                } else if (!z6) {
                    strC = z7 ? tr.h(str, ", ", strC2) : String.valueOf(str);
                }
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("Day");
                boolean zK2 = gapComposerH.K(strC);
                Object objX2 = gapComposerH.x();
                if (zK2 || objX2 == composer$Companion$Empty$1) {
                    objX2 = new lt(strC, 11);
                    gapComposerH.q(objX2);
                }
                Modifier modifierB = SemanticsModifierKt.b(dTFunctionNameModifier, false, (Function1) objX2);
                boolean z10 = ((i3 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | ((i3 & 14) == 4);
                Object objX3 = gapComposerH.x();
                if (z10 || objX3 == composer$Companion$Empty$1) {
                    objX3 = new t30(function1, calendarDay, 5);
                    gapComposerH.q(objX3);
                }
                Modifier modifierC = com.vuitton.android.designkit.ui.common.ModifierExtKt.c(modifierB, false, null, null, (Function0) objX3, 27);
                gapComposerH.Z(false);
                modifierA = modifierC;
                z2 = true;
            } else if (z9) {
                DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, 2069654794, "Day");
                boolean zB = gapComposerH.b(z6) | gapComposerH.K(strC) | gapComposerH.K(str);
                Object objX4 = gapComposerH.x();
                if (zB || objX4 == composer$Companion$Empty$1) {
                    objX4 = new ag(z6, strC, str, 3);
                    gapComposerH.q(objX4);
                }
                z2 = true;
                modifierA = SemanticsModifierKt.b(dTFunctionNameModifierI, true, (Function1) objX4);
                gapComposerH.Z(false);
            } else {
                z2 = true;
                modifierA = ModifierExtKt.a(n00.j(gapComposerH, -1872890683, false, "Day"), null, null, 7);
            }
            Modifier modifierO = modifierA2.o(modifierA);
            if (modifierO != null) {
                modifierO = defpackage.a.e(modifierO, "dayBackgroundAndBorder");
            }
            modifierO.getClass();
            localDate.getClass();
            float f2 = LVAppDesignKitTheme.l(gapComposerH).f48413a;
            if (localDate3.equals(localDate2)) {
                gapComposerH.L(-108331601);
                modifierO = DrawModifierKt.b(modifierO, new zg(f50961a, f2, LVAppDesignKitTheme.c(gapComposerH).f48361b.u, 1));
                z3 = false;
                gapComposerH.Z(false);
            } else if (localDate3.equals(localDate)) {
                gapComposerH.L(-108326224);
                modifierO = DrawModifierKt.b(modifierO, new zg(f50962b, f2, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, 1));
                z3 = false;
                gapComposerH.Z(false);
            } else {
                z3 = false;
                gapComposerH.L(-108320994);
                gapComposerH.Z(false);
            }
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, z3);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierO);
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
            TextKt.c(String.valueOf(localDate3.getDayOfMonth()), ModifierExtKt.a(tr.e(gapComposerH, modifierC2, ComposeUiNode.Companion.d, "Day"), null, null, 7), j2, 0L, null, 0L, textDecoration2, null, 0L, 0, false, 0, 0, null, textStyle2, gapComposerH, 0, 0, 130552);
            gapComposer = gapComposerH;
            gapComposer.Z(z2);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z2(calendarDay, localDate, localDate2, list, locale, function1, i2, 8);
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0138  */
    /* JADX WARN: Code duplicated, block: B:105:0x0146  */
    /* JADX WARN: Code duplicated, block: B:108:0x0154  */
    /* JADX WARN: Code duplicated, block: B:109:0x0157  */
    /* JADX WARN: Code duplicated, block: B:112:0x0165  */
    /* JADX WARN: Code duplicated, block: B:114:0x0169  */
    /* JADX WARN: Code duplicated, block: B:117:0x0179  */
    /* JADX WARN: Code duplicated, block: B:119:0x018b  */
    /* JADX WARN: Code duplicated, block: B:122:0x0191  */
    /* JADX WARN: Code duplicated, block: B:125:0x0198  */
    /* JADX WARN: Code duplicated, block: B:126:0x019b  */
    /* JADX WARN: Code duplicated, block: B:128:0x019f  */
    /* JADX WARN: Code duplicated, block: B:129:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:132:0x01b4 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:133:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:136:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:137:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:140:0x01df  */
    /* JADX WARN: Code duplicated, block: B:145:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:146:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:148:0x01f9 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:153:0x0203  */
    /* JADX WARN: Code duplicated, block: B:156:0x0239  */
    /* JADX WARN: Code duplicated, block: B:159:0x024c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:160:0x024e  */
    /* JADX WARN: Code duplicated, block: B:163:0x029c  */
    /* JADX WARN: Code duplicated, block: B:165:0x02a5  */
    /* JADX WARN: Code duplicated, block: B:166:0x02a9  */
    /* JADX WARN: Code duplicated, block: B:169:0x02dc  */
    /* JADX WARN: Code duplicated, block: B:170:0x02ea  */
    /* JADX WARN: Code duplicated, block: B:173:0x02f4  */
    /* JADX WARN: Code duplicated, block: B:174:0x02f6  */
    /* JADX WARN: Code duplicated, block: B:177:0x02fc  */
    /* JADX WARN: Code duplicated, block: B:178:0x02fe  */
    /* JADX WARN: Code duplicated, block: B:181:0x0304  */
    /* JADX WARN: Code duplicated, block: B:183:0x031f  */
    /* JADX WARN: Code duplicated, block: B:186:0x0367 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:187:0x0369  */
    /* JADX WARN: Code duplicated, block: B:190:0x0395  */
    /* JADX WARN: Code duplicated, block: B:193:0x03c0  */
    /* JADX WARN: Code duplicated, block: B:195:0x03c7  */
    /* JADX WARN: Code duplicated, block: B:196:0x03cb  */
    /* JADX WARN: Code duplicated, block: B:199:0x045f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:202:0x0464  */
    /* JADX WARN: Code duplicated, block: B:205:0x0495 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:206:0x0497  */
    /* JADX WARN: Code duplicated, block: B:208:0x04c5  */
    /* JADX WARN: Code duplicated, block: B:210:0x04c9  */
    /* JADX WARN: Code duplicated, block: B:212:0x04cd  */
    /* JADX WARN: Code duplicated, block: B:215:0x04dc  */
    /* JADX WARN: Code duplicated, block: B:218:0x01eb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:220:0x01d9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:224:0x018c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:225:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x0064  */
    /* JADX WARN: Code duplicated, block: B:38:0x006a  */
    /* JADX WARN: Code duplicated, block: B:39:0x006d  */
    /* JADX WARN: Code duplicated, block: B:43:0x0074  */
    /* JADX WARN: Code duplicated, block: B:45:0x0079  */
    /* JADX WARN: Code duplicated, block: B:47:0x007d  */
    /* JADX WARN: Code duplicated, block: B:49:0x0085  */
    /* JADX WARN: Code duplicated, block: B:50:0x0088  */
    /* JADX WARN: Code duplicated, block: B:54:0x0092  */
    /* JADX WARN: Code duplicated, block: B:55:0x0099  */
    /* JADX WARN: Code duplicated, block: B:57:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:60:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:65:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:67:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:70:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:74:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:75:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:78:0x00ed A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:79:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:80:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:83:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:85:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:86:0x0100  */
    /* JADX WARN: Code duplicated, block: B:88:0x0103  */
    /* JADX WARN: Code duplicated, block: B:89:0x0106  */
    /* JADX WARN: Code duplicated, block: B:92:0x010c  */
    /* JADX WARN: Code duplicated, block: B:94:0x0112  */
    /* JADX WARN: Code duplicated, block: B:96:0x0120  */
    /* JADX WARN: Code duplicated, block: B:99:0x0129  */
    public static final void d(Modifier modifier, List list, LocalDate localDate, Locale locale, boolean z, boolean z2, Function1 function1, Composer composer, int i2, int i3) {
        int i4;
        LocalDate localDate2;
        int i5;
        boolean z3;
        int i6;
        int i7;
        boolean z4;
        int i8;
        int i9;
        Function1 function2;
        int i10;
        Modifier modifier2;
        boolean z5;
        boolean z6;
        Function1 function3;
        LocalDate localDate3;
        Modifier modifier3;
        boolean z7;
        boolean z8;
        RecomposeScopeImpl recomposeScopeImplB0;
        Modifier dTFunctionNameModifier;
        boolean z9;
        boolean z10;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Function1 function4;
        Object objX;
        YearMonth yearMonth;
        Object objX2;
        final YearMonth yearMonth2;
        Object objX3;
        LocalDate localDate4;
        List list2;
        Iterator it;
        YearMonth yearMonthFrom;
        YearMonth yearMonthFrom2;
        boolean z11;
        YearMonth yearMonth3;
        List list3;
        boolean zY;
        Object objX4;
        FilteringSequence.AnonymousClass1 anonymousClass1;
        Comparable comparable;
        Comparable comparable2;
        LocalDate localDate5;
        YearMonth yearMonthFrom3;
        Object objX5;
        List list4;
        Object objX6;
        MutableState mutableState;
        boolean zY2;
        Object objX7;
        boolean z12;
        YearMonth yearMonth4;
        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function0;
        Function2 function5;
        Function2 function6;
        Function1 function7;
        Function2 function8;
        Function1 function9;
        Function2 function10;
        DayOfWeek dayOfWeek;
        YearMonth yearMonth5;
        YearMonth yearMonth6;
        YearMonth yearMonth7;
        DayOfWeek dayOfWeek2;
        LocalDate localDate6;
        OutDateStyle outDateStyle;
        DayOfWeek dayOfWeek3;
        YearMonth yearMonth8;
        boolean zY3;
        Object objX8;
        final CalendarState calendarState;
        final YearMonth yearMonth9;
        Object objX9;
        final CoroutineScope coroutineScope;
        MeasurePolicy measurePolicyD;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        final YearMonth yearMonth10;
        boolean zY4;
        Object objX10;
        YearMonth yearMonth11;
        boolean zY5;
        Object objX11;
        Object objX12;
        int i11;
        Modifier modifierE = modifier;
        Locale locale2 = locale;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVCalendar");
        }
        locale2.getClass();
        GapComposer gapComposerH = composer.h(864299416);
        Applier applier = gapComposerH.f7976a;
        int i12 = i3 & 1;
        if (i12 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.y(list) ? 32 : 16;
        }
        int i13 = i3 & 4;
        if (i13 == 0) {
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                localDate2 = localDate;
                i4 |= gapComposerH.y(localDate2) ? 256 : 128;
            }
            if ((i2 & 3072) == 0) {
                if (gapComposerH.K(locale2)) {
                    i11 = 2048;
                } else {
                    i11 = 1024;
                }
                i4 |= i11;
            }
            i5 = i3 & 16;
            if (i5 != 0) {
                if ((i2 & 24576) == 0) {
                    z3 = z;
                    if (gapComposerH.b(z3)) {
                        i6 = 16384;
                    } else {
                        i6 = 8192;
                    }
                    i4 |= i6;
                }
                i7 = i3 & 32;
                if (i7 != 0) {
                    i4 |= ImageMetadata.EDGE_MODE;
                    z4 = z2;
                } else {
                    z4 = z2;
                    if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
                        if (gapComposerH.b(z4)) {
                            i8 = 131072;
                        } else {
                            i8 = 65536;
                        }
                        i4 |= i8;
                    }
                }
                i9 = i3 & 64;
                if (i9 != 0) {
                    i4 |= 1572864;
                    function2 = function1;
                } else {
                    function2 = function1;
                    if ((i2 & 1572864) == 0) {
                        if (gapComposerH.y(function2)) {
                            i10 = 1048576;
                        } else {
                            i10 = 524288;
                        }
                        i4 |= i10;
                    }
                }
                modifier2 = modifierE;
                z5 = true;
                if ((i4 & 599187) != 599186) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (gapComposerH.p(i4 & 1, z6)) {
                    if (i12 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVCalendar");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i13 != 0) {
                        localDate2 = null;
                    }
                    if (i5 != 0) {
                        z9 = true;
                    } else {
                        z9 = z3;
                    }
                    if (i7 != 0) {
                        z10 = false;
                    } else {
                        z10 = z4;
                    }
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i9 != 0) {
                        objX12 = gapComposerH.x();
                        if (objX12 == composer$Companion$Empty$1) {
                            objX12 = new x20(21);
                            gapComposerH.q(objX12);
                        }
                        function4 = (Function1) objX12;
                    } else {
                        function4 = function2;
                    }
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = YearMonth.now();
                        gapComposerH.q(objX);
                    }
                    yearMonth = (YearMonth) objX;
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        gapComposerH.q(yearMonth);
                        objX2 = yearMonth;
                    }
                    yearMonth2 = (YearMonth) objX2;
                    objX3 = gapComposerH.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = LocalDate.now();
                        gapComposerH.q(objX3);
                    }
                    localDate4 = (LocalDate) objX3;
                    yearMonth.getClass();
                    if (list == null) {
                        list2 = EmptyList.f71768b;
                    } else {
                        list2 = list;
                    }
                    it = list2.iterator();
                    if (it.hasNext()) {
                        yearMonthFrom = YearMonth.from((LocalDate) it.next());
                        while (it.hasNext()) {
                            boolean z13 = z5;
                            yearMonthFrom2 = YearMonth.from((LocalDate) it.next());
                            if (yearMonthFrom.compareTo(yearMonthFrom2) < 0) {
                                yearMonthFrom = yearMonthFrom2;
                            }
                            z5 = z13;
                        }
                    } else {
                        yearMonthFrom = null;
                    }
                    z11 = z5;
                    if (yearMonthFrom == null) {
                        yearMonthFrom = yearMonth;
                    }
                    if (yearMonth.compareTo(yearMonthFrom) >= 0) {
                        yearMonth3 = yearMonth;
                    } else {
                        yearMonth3 = yearMonthFrom;
                    }
                    if (list == null) {
                        list3 = EmptyList.f71768b;
                    } else {
                        list3 = list;
                    }
                    CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1 collectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1O = CollectionsKt.o(list3);
                    zY = gapComposerH.y(localDate4);
                    objX4 = gapComposerH.x();
                    if (zY || objX4 == composer$Companion$Empty$1) {
                        objX4 = new l00(localDate4, 11);
                        gapComposerH.q(objX4);
                    }
                    anonymousClass1 = new FilteringSequence.AnonymousClass1();
                    if (anonymousClass1.hasNext()) {
                        comparable = (Comparable) anonymousClass1.next();
                        while (anonymousClass1.hasNext()) {
                            comparable2 = (Comparable) anonymousClass1.next();
                            if (comparable.compareTo(comparable2) > 0) {
                                comparable = comparable2;
                            }
                        }
                    } else {
                        comparable = null;
                    }
                    localDate5 = (LocalDate) comparable;
                    if (localDate5 != null) {
                        yearMonthFrom3 = YearMonth.from(localDate5);
                    } else {
                        yearMonthFrom3 = null;
                    }
                    if (z10 && yearMonthFrom3 != null) {
                        yearMonth = yearMonthFrom3;
                    }
                    objX5 = gapComposerH.x();
                    if (objX5 == composer$Companion$Empty$1) {
                        Locale locale3 = Locale.getDefault();
                        locale3.getClass();
                        DayOfWeek firstDayOfWeek = WeekFields.of(locale3).getFirstDayOfWeek();
                        firstDayOfWeek.getClass();
                        int iOrdinal = 7 - firstDayOfWeek.ordinal();
                        EnumEntries enumEntries = ExtensionsKt$EntriesMappings.f35959a;
                        objX5 = CollectionsKt.Y(CollectionsKt.r0(iOrdinal, enumEntries), CollectionsKt.x(iOrdinal, enumEntries));
                        gapComposerH.q(objX5);
                    }
                    list4 = (List) objX5;
                    objX6 = gapComposerH.x();
                    if (objX6 == composer$Companion$Empty$1) {
                        objX6 = SnapshotStateKt.g(localDate2);
                        gapComposerH.q(objX6);
                    }
                    mutableState = (MutableState) objX6;
                    zY2 = gapComposerH.y(localDate2);
                    objX7 = gapComposerH.x();
                    if (zY2 || objX7 == composer$Companion$Empty$1) {
                        objX7 = new LVCalendarKt$LVCalendar$2$1(localDate2, mutableState, null);
                        gapComposerH.q(objX7);
                    }
                    EffectsKt.e(gapComposerH, localDate2, (Function2) objX7);
                    Modifier modifierD = SizeKt.d(dTFunctionNameModifier, 1.0f);
                    z12 = z9;
                    yearMonth4 = yearMonth;
                    long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
                    rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
                    Modifier modifierB = BackgroundKt.b(modifierD, j2, rectangleShapeKt$RectangleShape$1);
                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
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
                    function5 = ComposeUiNode.Companion.f9644f;
                    Updater.c(gapComposerH, columnMeasurePolicyA, function5);
                    function6 = ComposeUiNode.Companion.f9643e;
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
                    Integer numValueOf = Integer.valueOf(iHashCode);
                    function7 = function4;
                    function8 = ComposeUiNode.Companion.g;
                    Updater.c(gapComposerH, numValueOf, function8);
                    function9 = ComposeUiNode.Companion.f9645h;
                    Updater.b(gapComposerH, function9);
                    function10 = ComposeUiNode.Companion.d;
                    Updater.c(gapComposerH, modifierC, function10);
                    yearMonth2.getClass();
                    dayOfWeek = (DayOfWeek) CollectionsKt.B(list4);
                    if ((16 & 1) != 0) {
                        YearMonth yearMonthNow = YearMonth.now();
                        yearMonthNow.getClass();
                        yearMonth5 = yearMonthNow;
                    } else {
                        yearMonth5 = yearMonth2;
                    }
                    if ((16 & 2) != 0) {
                        yearMonth6 = yearMonth5;
                    } else {
                        yearMonth6 = yearMonth3;
                    }
                    if ((16 & 4) != 0) {
                        yearMonth7 = yearMonth5;
                    } else {
                        yearMonth7 = yearMonth4;
                    }
                    if ((16 & 8) != 0) {
                        Locale locale4 = Locale.getDefault();
                        locale4.getClass();
                        DayOfWeek firstDayOfWeek2 = WeekFields.of(locale4).getFirstDayOfWeek();
                        firstDayOfWeek2.getClass();
                        dayOfWeek2 = firstDayOfWeek2;
                    } else {
                        dayOfWeek2 = dayOfWeek;
                    }
                    localDate6 = localDate2;
                    outDateStyle = OutDateStyle.EndOfRow;
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    Object[] objArr = {yearMonth5, yearMonth6, yearMonth7, dayOfWeek2, outDateStyle};
                    CalendarState.f35926k.getClass();
                    dayOfWeek3 = dayOfWeek2;
                    SaverKt$Saver$1 saverKt$Saver$1 = CalendarState.l;
                    yearMonth8 = yearMonth5;
                    zY3 = gapComposerH.y(yearMonth5) | gapComposerH.y(yearMonth6) | gapComposerH.d(dayOfWeek3.ordinal()) | gapComposerH.y(yearMonth7) | gapComposerH.d(outDateStyle.ordinal());
                    objX8 = gapComposerH.x();
                    if (zY3 || objX8 == composer$Companion$Empty$1) {
                        objX8 = new yh(yearMonth8, yearMonth6, dayOfWeek3, yearMonth7, outDateStyle, 1);
                        gapComposerH.q(objX8);
                    }
                    calendarState = (CalendarState) RememberSaveableKt.b(objArr, saverKt$Saver$1, (Function0) objX8, gapComposerH, 0);
                    yearMonth9 = ((CalendarMonth) calendarState.f35930e.getF10755b()).f35957b;
                    objX9 = gapComposerH.x();
                    if (objX9 == composer$Companion$Empty$1) {
                        objX9 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                        gapComposerH.q(objX9);
                    }
                    coroutineScope = (CoroutineScope) objX9;
                    DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("LVCalendar");
                    measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
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
                    Updater.c(gapComposerH, measurePolicyD, function5);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
                    cj.t(iHashCode2, gapComposerH, function8, gapComposerH, function9);
                    Updater.c(gapComposerH, modifierC2, function10);
                    locale2 = locale;
                    Modifier modifier4 = dTFunctionNameModifier;
                    yearMonth10 = yearMonth3;
                    CalendarKt.b(null, calendarState, false, false, null, null, ComposableLambdaKt.b(485507947, new j50(localDate4, z12, list, locale2, function7, mutableState, 0), gapComposerH), ComposableLambdaKt.b(1383195375, new cf(locale2, list4), gapComposerH), gapComposerH, 113246208);
                    gapComposerH = gapComposerH;
                    Modifier modifierG = BoxScopeInstance.f4938a.g(BackgroundKt.b(new DTFunctionNameModifier("LVCalendar"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, rectangleShapeKt$RectangleShape$1), Alignment.Companion.d);
                    boolean z14 = !Intrinsics.c(yearMonth9, yearMonth2);
                    boolean z15 = !Intrinsics.c(yearMonth9, yearMonth10);
                    zY4 = gapComposerH.y(yearMonth9) | gapComposerH.y(yearMonth2) | gapComposerH.y(coroutineScope) | gapComposerH.K(calendarState);
                    objX10 = gapComposerH.x();
                    if (!zY4 || objX10 == composer$Companion$Empty$1) {
                        final int i14 = 0;
                        objX10 = new Function0() { // from class: com.vuitton.android.presentation.compose.components.b
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i15 = i14;
                                CalendarState calendarState2 = calendarState;
                                CoroutineScope coroutineScope2 = coroutineScope;
                                YearMonth yearMonth12 = yearMonth2;
                                YearMonth yearMonth13 = yearMonth9;
                                switch (i15) {
                                    case 0:
                                        float f2 = LVCalendarKt.f50961a;
                                        if (!Intrinsics.c(yearMonth13, yearMonth12)) {
                                            BuildersKt.c(coroutineScope2, null, null, new LVCalendarKt$LVCalendar$3$1$3$1$1(calendarState2, yearMonth13, null), 3);
                                        }
                                        break;
                                    default:
                                        float f3 = LVCalendarKt.f50961a;
                                        if (!Intrinsics.c(yearMonth13, yearMonth12)) {
                                            BuildersKt.c(coroutineScope2, null, null, new LVCalendarKt$LVCalendar$3$1$4$1$1(calendarState2, yearMonth13, null), 3);
                                        }
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        yearMonth11 = yearMonth9;
                        gapComposerH.q(objX10);
                    } else {
                        yearMonth11 = yearMonth9;
                    }
                    Function0 function11 = (Function0) objX10;
                    zY5 = gapComposerH.y(yearMonth11) | gapComposerH.y(yearMonth10) | gapComposerH.y(coroutineScope) | gapComposerH.K(calendarState);
                    objX11 = gapComposerH.x();
                    if (zY5 || objX11 == composer$Companion$Empty$1) {
                        final int i15 = 1;
                        final YearMonth yearMonth12 = yearMonth11;
                        objX11 = new Function0() { // from class: com.vuitton.android.presentation.compose.components.b
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i16 = i15;
                                CalendarState calendarState2 = calendarState;
                                CoroutineScope coroutineScope2 = coroutineScope;
                                YearMonth yearMonth13 = yearMonth10;
                                YearMonth yearMonth14 = yearMonth12;
                                switch (i16) {
                                    case 0:
                                        float f2 = LVCalendarKt.f50961a;
                                        if (!Intrinsics.c(yearMonth14, yearMonth13)) {
                                            BuildersKt.c(coroutineScope2, null, null, new LVCalendarKt$LVCalendar$3$1$3$1$1(calendarState2, yearMonth14, null), 3);
                                        }
                                        break;
                                    default:
                                        float f3 = LVCalendarKt.f50961a;
                                        if (!Intrinsics.c(yearMonth14, yearMonth13)) {
                                            BuildersKt.c(coroutineScope2, null, null, new LVCalendarKt$LVCalendar$3$1$4$1$1(calendarState2, yearMonth14, null), 3);
                                        }
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX11);
                    }
                    a(modifierG, z14, z15, function11, (Function0) objX11, gapComposerH, 0);
                    gapComposerH.Z(z11);
                    gapComposerH.Z(z11);
                    modifier3 = modifier4;
                    function3 = function7;
                    z7 = z10;
                    z8 = z12;
                    localDate3 = localDate6;
                } else {
                    gapComposerH.D();
                    function3 = function2;
                    localDate3 = localDate2;
                    modifier3 = modifier2;
                    z7 = z4;
                    z8 = z3;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new k50(modifier3, list, localDate3, locale2, z8, z7, function3, i2, i3);
                }
            }
            i4 |= 24576;
            z3 = z;
            i7 = i3 & 32;
            if (i7 != 0) {
                i4 |= ImageMetadata.EDGE_MODE;
                z4 = z2;
            } else {
                z4 = z2;
                if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
                    if (gapComposerH.b(z4)) {
                        i8 = 131072;
                    } else {
                        i8 = 65536;
                    }
                    i4 |= i8;
                }
            }
            i9 = i3 & 64;
            if (i9 != 0) {
                i4 |= 1572864;
                function2 = function1;
            } else {
                function2 = function1;
                if ((i2 & 1572864) == 0) {
                    if (gapComposerH.y(function2)) {
                        i10 = 1048576;
                    } else {
                        i10 = 524288;
                    }
                    i4 |= i10;
                }
            }
            modifier2 = modifierE;
            z5 = true;
            if ((i4 & 599187) != 599186) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (gapComposerH.p(i4 & 1, z6)) {
                if (i12 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVCalendar");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i13 != 0) {
                    localDate2 = null;
                }
                if (i5 != 0) {
                    z9 = true;
                } else {
                    z9 = z3;
                }
                if (i7 != 0) {
                    z10 = false;
                } else {
                    z10 = z4;
                }
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i9 != 0) {
                    objX12 = gapComposerH.x();
                    if (objX12 == composer$Companion$Empty$1) {
                        objX12 = new x20(21);
                        gapComposerH.q(objX12);
                    }
                    function4 = (Function1) objX12;
                } else {
                    function4 = function2;
                }
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$1) {
                    objX = YearMonth.now();
                    gapComposerH.q(objX);
                }
                yearMonth = (YearMonth) objX;
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    gapComposerH.q(yearMonth);
                    objX2 = yearMonth;
                }
                yearMonth2 = (YearMonth) objX2;
                objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = LocalDate.now();
                    gapComposerH.q(objX3);
                }
                localDate4 = (LocalDate) objX3;
                yearMonth.getClass();
                if (list == null) {
                    list2 = EmptyList.f71768b;
                } else {
                    list2 = list;
                }
                it = list2.iterator();
                if (it.hasNext()) {
                    yearMonthFrom = null;
                } else {
                    yearMonthFrom = YearMonth.from((LocalDate) it.next());
                    while (it.hasNext()) {
                        boolean z16 = z5;
                        yearMonthFrom2 = YearMonth.from((LocalDate) it.next());
                        if (yearMonthFrom.compareTo(yearMonthFrom2) < 0) {
                            yearMonthFrom = yearMonthFrom2;
                        }
                        z5 = z16;
                    }
                }
                z11 = z5;
                if (yearMonthFrom == null) {
                    yearMonthFrom = yearMonth;
                }
                if (yearMonth.compareTo(yearMonthFrom) >= 0) {
                    yearMonth3 = yearMonth;
                } else {
                    yearMonth3 = yearMonthFrom;
                }
                if (list == null) {
                    list3 = EmptyList.f71768b;
                } else {
                    list3 = list;
                }
                CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1 collectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1O2 = CollectionsKt.o(list3);
                zY = gapComposerH.y(localDate4);
                objX4 = gapComposerH.x();
                if (zY) {
                    objX4 = new l00(localDate4, 11);
                    gapComposerH.q(objX4);
                } else {
                    objX4 = new l00(localDate4, 11);
                    gapComposerH.q(objX4);
                }
                anonymousClass1 = new FilteringSequence.AnonymousClass1();
                if (anonymousClass1.hasNext()) {
                    comparable = null;
                } else {
                    comparable = (Comparable) anonymousClass1.next();
                    while (anonymousClass1.hasNext()) {
                        comparable2 = (Comparable) anonymousClass1.next();
                        if (comparable.compareTo(comparable2) > 0) {
                            comparable = comparable2;
                        }
                    }
                }
                localDate5 = (LocalDate) comparable;
                if (localDate5 != null) {
                    yearMonthFrom3 = YearMonth.from(localDate5);
                } else {
                    yearMonthFrom3 = null;
                }
                if (z10) {
                    yearMonth = yearMonthFrom3;
                }
                objX5 = gapComposerH.x();
                if (objX5 == composer$Companion$Empty$1) {
                    Locale locale5 = Locale.getDefault();
                    locale5.getClass();
                    DayOfWeek firstDayOfWeek3 = WeekFields.of(locale5).getFirstDayOfWeek();
                    firstDayOfWeek3.getClass();
                    int iOrdinal2 = 7 - firstDayOfWeek3.ordinal();
                    EnumEntries enumEntries2 = ExtensionsKt$EntriesMappings.f35959a;
                    objX5 = CollectionsKt.Y(CollectionsKt.r0(iOrdinal2, enumEntries2), CollectionsKt.x(iOrdinal2, enumEntries2));
                    gapComposerH.q(objX5);
                }
                list4 = (List) objX5;
                objX6 = gapComposerH.x();
                if (objX6 == composer$Companion$Empty$1) {
                    objX6 = SnapshotStateKt.g(localDate2);
                    gapComposerH.q(objX6);
                }
                mutableState = (MutableState) objX6;
                zY2 = gapComposerH.y(localDate2);
                objX7 = gapComposerH.x();
                if (zY2) {
                    objX7 = new LVCalendarKt$LVCalendar$2$1(localDate2, mutableState, null);
                    gapComposerH.q(objX7);
                } else {
                    objX7 = new LVCalendarKt$LVCalendar$2$1(localDate2, mutableState, null);
                    gapComposerH.q(objX7);
                }
                EffectsKt.e(gapComposerH, localDate2, (Function2) objX7);
                Modifier modifierD2 = SizeKt.d(dTFunctionNameModifier, 1.0f);
                z12 = z9;
                yearMonth4 = yearMonth;
                long j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
                rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
                Modifier modifierB2 = BackgroundKt.b(modifierD2, j3, rectangleShapeKt$RectangleShape$1);
                Arrangement$Top$1 arrangement$Top$2 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                columnMeasurePolicyA = ColumnKt.a(arrangement$Top$2, Alignment.Companion.n, gapComposerH, 0);
                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
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
                function5 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, columnMeasurePolicyA, function5);
                function6 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
                Integer numValueOf2 = Integer.valueOf(iHashCode);
                function7 = function4;
                function8 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf2, function8);
                function9 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function9);
                function10 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC, function10);
                yearMonth2.getClass();
                dayOfWeek = (DayOfWeek) CollectionsKt.B(list4);
                if ((16 & 1) != 0) {
                    YearMonth yearMonthNow2 = YearMonth.now();
                    yearMonthNow2.getClass();
                    yearMonth5 = yearMonthNow2;
                } else {
                    yearMonth5 = yearMonth2;
                }
                if ((16 & 2) != 0) {
                    yearMonth6 = yearMonth5;
                } else {
                    yearMonth6 = yearMonth3;
                }
                if ((16 & 4) != 0) {
                    yearMonth7 = yearMonth5;
                } else {
                    yearMonth7 = yearMonth4;
                }
                if ((16 & 8) != 0) {
                    Locale locale6 = Locale.getDefault();
                    locale6.getClass();
                    DayOfWeek firstDayOfWeek4 = WeekFields.of(locale6).getFirstDayOfWeek();
                    firstDayOfWeek4.getClass();
                    dayOfWeek2 = firstDayOfWeek4;
                } else {
                    dayOfWeek2 = dayOfWeek;
                }
                localDate6 = localDate2;
                outDateStyle = OutDateStyle.EndOfRow;
                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                Object[] objArr2 = {yearMonth5, yearMonth6, yearMonth7, dayOfWeek2, outDateStyle};
                CalendarState.f35926k.getClass();
                dayOfWeek3 = dayOfWeek2;
                SaverKt$Saver$1 saverKt$Saver$2 = CalendarState.l;
                yearMonth8 = yearMonth5;
                zY3 = gapComposerH.y(yearMonth5) | gapComposerH.y(yearMonth6) | gapComposerH.d(dayOfWeek3.ordinal()) | gapComposerH.y(yearMonth7) | gapComposerH.d(outDateStyle.ordinal());
                objX8 = gapComposerH.x();
                if (zY3) {
                    objX8 = new yh(yearMonth8, yearMonth6, dayOfWeek3, yearMonth7, outDateStyle, 1);
                    gapComposerH.q(objX8);
                } else {
                    objX8 = new yh(yearMonth8, yearMonth6, dayOfWeek3, yearMonth7, outDateStyle, 1);
                    gapComposerH.q(objX8);
                }
                calendarState = (CalendarState) RememberSaveableKt.b(objArr2, saverKt$Saver$2, (Function0) objX8, gapComposerH, 0);
                yearMonth9 = ((CalendarMonth) calendarState.f35930e.getF10755b()).f35957b;
                objX9 = gapComposerH.x();
                if (objX9 == composer$Companion$Empty$1) {
                    objX9 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                    gapComposerH.q(objX9);
                }
                coroutineScope = (CoroutineScope) objX9;
                DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("LVCalendar");
                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
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
                Updater.c(gapComposerH, measurePolicyD, function5);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
                cj.t(iHashCode2, gapComposerH, function8, gapComposerH, function9);
                Updater.c(gapComposerH, modifierC2, function10);
                locale2 = locale;
                Modifier modifier5 = dTFunctionNameModifier;
                yearMonth10 = yearMonth3;
                CalendarKt.b(null, calendarState, false, false, null, null, ComposableLambdaKt.b(485507947, new j50(localDate4, z12, list, locale2, function7, mutableState, 0), gapComposerH), ComposableLambdaKt.b(1383195375, new cf(locale2, list4), gapComposerH), gapComposerH, 113246208);
                gapComposerH = gapComposerH;
                Modifier modifierG2 = BoxScopeInstance.f4938a.g(BackgroundKt.b(new DTFunctionNameModifier("LVCalendar"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, rectangleShapeKt$RectangleShape$1), Alignment.Companion.d);
                boolean z17 = !Intrinsics.c(yearMonth9, yearMonth2);
                boolean z18 = !Intrinsics.c(yearMonth9, yearMonth10);
                zY4 = gapComposerH.y(yearMonth9) | gapComposerH.y(yearMonth2) | gapComposerH.y(coroutineScope) | gapComposerH.K(calendarState);
                objX10 = gapComposerH.x();
                if (zY4) {
                    final int i16 = 0;
                    objX10 = new Function0() { // from class: com.vuitton.android.presentation.compose.components.b
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            int i17 = i16;
                            CalendarState calendarState2 = calendarState;
                            CoroutineScope coroutineScope2 = coroutineScope;
                            YearMonth yearMonth13 = yearMonth2;
                            YearMonth yearMonth14 = yearMonth9;
                            switch (i17) {
                                case 0:
                                    float f2 = LVCalendarKt.f50961a;
                                    if (!Intrinsics.c(yearMonth14, yearMonth13)) {
                                        BuildersKt.c(coroutineScope2, null, null, new LVCalendarKt$LVCalendar$3$1$3$1$1(calendarState2, yearMonth14, null), 3);
                                    }
                                    break;
                                default:
                                    float f3 = LVCalendarKt.f50961a;
                                    if (!Intrinsics.c(yearMonth14, yearMonth13)) {
                                        BuildersKt.c(coroutineScope2, null, null, new LVCalendarKt$LVCalendar$3$1$4$1$1(calendarState2, yearMonth14, null), 3);
                                    }
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    yearMonth11 = yearMonth9;
                    gapComposerH.q(objX10);
                } else {
                    final int i17 = 0;
                    objX10 = new Function0() { // from class: com.vuitton.android.presentation.compose.components.b
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            int i18 = i17;
                            CalendarState calendarState2 = calendarState;
                            CoroutineScope coroutineScope2 = coroutineScope;
                            YearMonth yearMonth13 = yearMonth2;
                            YearMonth yearMonth14 = yearMonth9;
                            switch (i18) {
                                case 0:
                                    float f2 = LVCalendarKt.f50961a;
                                    if (!Intrinsics.c(yearMonth14, yearMonth13)) {
                                        BuildersKt.c(coroutineScope2, null, null, new LVCalendarKt$LVCalendar$3$1$3$1$1(calendarState2, yearMonth14, null), 3);
                                    }
                                    break;
                                default:
                                    float f3 = LVCalendarKt.f50961a;
                                    if (!Intrinsics.c(yearMonth14, yearMonth13)) {
                                        BuildersKt.c(coroutineScope2, null, null, new LVCalendarKt$LVCalendar$3$1$4$1$1(calendarState2, yearMonth14, null), 3);
                                    }
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    yearMonth11 = yearMonth9;
                    gapComposerH.q(objX10);
                }
                Function0 function12 = (Function0) objX10;
                zY5 = gapComposerH.y(yearMonth11) | gapComposerH.y(yearMonth10) | gapComposerH.y(coroutineScope) | gapComposerH.K(calendarState);
                objX11 = gapComposerH.x();
                if (zY5) {
                    final int i18 = 1;
                    final YearMonth yearMonth13 = yearMonth11;
                    objX11 = new Function0() { // from class: com.vuitton.android.presentation.compose.components.b
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            int i19 = i18;
                            CalendarState calendarState2 = calendarState;
                            CoroutineScope coroutineScope2 = coroutineScope;
                            YearMonth yearMonth14 = yearMonth10;
                            YearMonth yearMonth15 = yearMonth13;
                            switch (i19) {
                                case 0:
                                    float f2 = LVCalendarKt.f50961a;
                                    if (!Intrinsics.c(yearMonth15, yearMonth14)) {
                                        BuildersKt.c(coroutineScope2, null, null, new LVCalendarKt$LVCalendar$3$1$3$1$1(calendarState2, yearMonth15, null), 3);
                                    }
                                    break;
                                default:
                                    float f3 = LVCalendarKt.f50961a;
                                    if (!Intrinsics.c(yearMonth15, yearMonth14)) {
                                        BuildersKt.c(coroutineScope2, null, null, new LVCalendarKt$LVCalendar$3$1$4$1$1(calendarState2, yearMonth15, null), 3);
                                    }
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX11);
                } else {
                    final int i19 = 1;
                    final YearMonth yearMonth14 = yearMonth11;
                    objX11 = new Function0() { // from class: com.vuitton.android.presentation.compose.components.b
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            int i110 = i19;
                            CalendarState calendarState2 = calendarState;
                            CoroutineScope coroutineScope2 = coroutineScope;
                            YearMonth yearMonth15 = yearMonth10;
                            YearMonth yearMonth16 = yearMonth14;
                            switch (i110) {
                                case 0:
                                    float f2 = LVCalendarKt.f50961a;
                                    if (!Intrinsics.c(yearMonth16, yearMonth15)) {
                                        BuildersKt.c(coroutineScope2, null, null, new LVCalendarKt$LVCalendar$3$1$3$1$1(calendarState2, yearMonth16, null), 3);
                                    }
                                    break;
                                default:
                                    float f3 = LVCalendarKt.f50961a;
                                    if (!Intrinsics.c(yearMonth16, yearMonth15)) {
                                        BuildersKt.c(coroutineScope2, null, null, new LVCalendarKt$LVCalendar$3$1$4$1$1(calendarState2, yearMonth16, null), 3);
                                    }
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX11);
                }
                a(modifierG2, z17, z18, function12, (Function0) objX11, gapComposerH, 0);
                gapComposerH.Z(z11);
                gapComposerH.Z(z11);
                modifier3 = modifier5;
                function3 = function7;
                z7 = z10;
                z8 = z12;
                localDate3 = localDate6;
            } else {
                gapComposerH.D();
                function3 = function2;
                localDate3 = localDate2;
                modifier3 = modifier2;
                z7 = z4;
                z8 = z3;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new k50(modifier3, list, localDate3, locale2, z8, z7, function3, i2, i3);
            }
        }
        i4 |= KyberEngine.KyberPolyBytes;
        localDate2 = localDate;
        if ((i2 & 3072) == 0) {
            if (gapComposerH.K(locale2)) {
                i11 = 2048;
            } else {
                i11 = 1024;
            }
            i4 |= i11;
        }
        i5 = i3 & 16;
        if (i5 != 0) {
            if ((i2 & 24576) == 0) {
                z3 = z;
                if (gapComposerH.b(z3)) {
                    i6 = 16384;
                } else {
                    i6 = 8192;
                }
                i4 |= i6;
            }
            i7 = i3 & 32;
            if (i7 != 0) {
                i4 |= ImageMetadata.EDGE_MODE;
                z4 = z2;
            } else {
                z4 = z2;
                if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
                    if (gapComposerH.b(z4)) {
                        i8 = 131072;
                    } else {
                        i8 = 65536;
                    }
                    i4 |= i8;
                }
            }
            i9 = i3 & 64;
            if (i9 != 0) {
                i4 |= 1572864;
                function2 = function1;
            } else {
                function2 = function1;
                if ((i2 & 1572864) == 0) {
                    if (gapComposerH.y(function2)) {
                        i10 = 1048576;
                    } else {
                        i10 = 524288;
                    }
                    i4 |= i10;
                }
            }
            modifier2 = modifierE;
            z5 = true;
            if ((i4 & 599187) != 599186) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (gapComposerH.p(i4 & 1, z6)) {
                if (i12 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVCalendar");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i13 != 0) {
                    localDate2 = null;
                }
                if (i5 != 0) {
                    z9 = true;
                } else {
                    z9 = z3;
                }
                if (i7 != 0) {
                    z10 = false;
                } else {
                    z10 = z4;
                }
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i9 != 0) {
                    objX12 = gapComposerH.x();
                    if (objX12 == composer$Companion$Empty$1) {
                        objX12 = new x20(21);
                        gapComposerH.q(objX12);
                    }
                    function4 = (Function1) objX12;
                } else {
                    function4 = function2;
                }
                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$1) {
                    objX = YearMonth.now();
                    gapComposerH.q(objX);
                }
                yearMonth = (YearMonth) objX;
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    gapComposerH.q(yearMonth);
                    objX2 = yearMonth;
                }
                yearMonth2 = (YearMonth) objX2;
                objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = LocalDate.now();
                    gapComposerH.q(objX3);
                }
                localDate4 = (LocalDate) objX3;
                yearMonth.getClass();
                if (list == null) {
                    list2 = EmptyList.f71768b;
                } else {
                    list2 = list;
                }
                it = list2.iterator();
                if (it.hasNext()) {
                    yearMonthFrom = null;
                } else {
                    yearMonthFrom = YearMonth.from((LocalDate) it.next());
                    while (it.hasNext()) {
                        boolean z19 = z5;
                        yearMonthFrom2 = YearMonth.from((LocalDate) it.next());
                        if (yearMonthFrom.compareTo(yearMonthFrom2) < 0) {
                            yearMonthFrom = yearMonthFrom2;
                        }
                        z5 = z19;
                    }
                }
                z11 = z5;
                if (yearMonthFrom == null) {
                    yearMonthFrom = yearMonth;
                }
                if (yearMonth.compareTo(yearMonthFrom) >= 0) {
                    yearMonth3 = yearMonth;
                } else {
                    yearMonth3 = yearMonthFrom;
                }
                if (list == null) {
                    list3 = EmptyList.f71768b;
                } else {
                    list3 = list;
                }
                CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1 collectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1O3 = CollectionsKt.o(list3);
                zY = gapComposerH.y(localDate4);
                objX4 = gapComposerH.x();
                if (zY) {
                    objX4 = new l00(localDate4, 11);
                    gapComposerH.q(objX4);
                } else {
                    objX4 = new l00(localDate4, 11);
                    gapComposerH.q(objX4);
                }
                anonymousClass1 = new FilteringSequence.AnonymousClass1();
                if (anonymousClass1.hasNext()) {
                    comparable = null;
                } else {
                    comparable = (Comparable) anonymousClass1.next();
                    while (anonymousClass1.hasNext()) {
                        comparable2 = (Comparable) anonymousClass1.next();
                        if (comparable.compareTo(comparable2) > 0) {
                            comparable = comparable2;
                        }
                    }
                }
                localDate5 = (LocalDate) comparable;
                if (localDate5 != null) {
                    yearMonthFrom3 = YearMonth.from(localDate5);
                } else {
                    yearMonthFrom3 = null;
                }
                if (z10) {
                    yearMonth = yearMonthFrom3;
                }
                objX5 = gapComposerH.x();
                if (objX5 == composer$Companion$Empty$1) {
                    Locale locale7 = Locale.getDefault();
                    locale7.getClass();
                    DayOfWeek firstDayOfWeek5 = WeekFields.of(locale7).getFirstDayOfWeek();
                    firstDayOfWeek5.getClass();
                    int iOrdinal3 = 7 - firstDayOfWeek5.ordinal();
                    EnumEntries enumEntries3 = ExtensionsKt$EntriesMappings.f35959a;
                    objX5 = CollectionsKt.Y(CollectionsKt.r0(iOrdinal3, enumEntries3), CollectionsKt.x(iOrdinal3, enumEntries3));
                    gapComposerH.q(objX5);
                }
                list4 = (List) objX5;
                objX6 = gapComposerH.x();
                if (objX6 == composer$Companion$Empty$1) {
                    objX6 = SnapshotStateKt.g(localDate2);
                    gapComposerH.q(objX6);
                }
                mutableState = (MutableState) objX6;
                zY2 = gapComposerH.y(localDate2);
                objX7 = gapComposerH.x();
                if (zY2) {
                    objX7 = new LVCalendarKt$LVCalendar$2$1(localDate2, mutableState, null);
                    gapComposerH.q(objX7);
                } else {
                    objX7 = new LVCalendarKt$LVCalendar$2$1(localDate2, mutableState, null);
                    gapComposerH.q(objX7);
                }
                EffectsKt.e(gapComposerH, localDate2, (Function2) objX7);
                Modifier modifierD3 = SizeKt.d(dTFunctionNameModifier, 1.0f);
                z12 = z9;
                yearMonth4 = yearMonth;
                long j4 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
                rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
                Modifier modifierB3 = BackgroundKt.b(modifierD3, j4, rectangleShapeKt$RectangleShape$1);
                Arrangement$Top$1 arrangement$Top$3 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                columnMeasurePolicyA = ColumnKt.a(arrangement$Top$3, Alignment.Companion.n, gapComposerH, 0);
                OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierB3);
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
                function5 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, columnMeasurePolicyA, function5);
                function6 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
                Integer numValueOf3 = Integer.valueOf(iHashCode);
                function7 = function4;
                function8 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf3, function8);
                function9 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function9);
                function10 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC, function10);
                yearMonth2.getClass();
                dayOfWeek = (DayOfWeek) CollectionsKt.B(list4);
                if ((16 & 1) != 0) {
                    YearMonth yearMonthNow3 = YearMonth.now();
                    yearMonthNow3.getClass();
                    yearMonth5 = yearMonthNow3;
                } else {
                    yearMonth5 = yearMonth2;
                }
                if ((16 & 2) != 0) {
                    yearMonth6 = yearMonth5;
                } else {
                    yearMonth6 = yearMonth3;
                }
                if ((16 & 4) != 0) {
                    yearMonth7 = yearMonth5;
                } else {
                    yearMonth7 = yearMonth4;
                }
                if ((16 & 8) != 0) {
                    Locale locale8 = Locale.getDefault();
                    locale8.getClass();
                    DayOfWeek firstDayOfWeek6 = WeekFields.of(locale8).getFirstDayOfWeek();
                    firstDayOfWeek6.getClass();
                    dayOfWeek2 = firstDayOfWeek6;
                } else {
                    dayOfWeek2 = dayOfWeek;
                }
                localDate6 = localDate2;
                outDateStyle = OutDateStyle.EndOfRow;
                OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                Object[] objArr3 = {yearMonth5, yearMonth6, yearMonth7, dayOfWeek2, outDateStyle};
                CalendarState.f35926k.getClass();
                dayOfWeek3 = dayOfWeek2;
                SaverKt$Saver$1 saverKt$Saver$3 = CalendarState.l;
                yearMonth8 = yearMonth5;
                zY3 = gapComposerH.y(yearMonth5) | gapComposerH.y(yearMonth6) | gapComposerH.d(dayOfWeek3.ordinal()) | gapComposerH.y(yearMonth7) | gapComposerH.d(outDateStyle.ordinal());
                objX8 = gapComposerH.x();
                if (zY3) {
                    objX8 = new yh(yearMonth8, yearMonth6, dayOfWeek3, yearMonth7, outDateStyle, 1);
                    gapComposerH.q(objX8);
                } else {
                    objX8 = new yh(yearMonth8, yearMonth6, dayOfWeek3, yearMonth7, outDateStyle, 1);
                    gapComposerH.q(objX8);
                }
                calendarState = (CalendarState) RememberSaveableKt.b(objArr3, saverKt$Saver$3, (Function0) objX8, gapComposerH, 0);
                yearMonth9 = ((CalendarMonth) calendarState.f35930e.getF10755b()).f35957b;
                objX9 = gapComposerH.x();
                if (objX9 == composer$Companion$Empty$1) {
                    objX9 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                    gapComposerH.q(objX9);
                }
                coroutineScope = (CoroutineScope) objX9;
                DTFunctionNameModifier dTFunctionNameModifier4 = new DTFunctionNameModifier("LVCalendar");
                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier4);
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
                Updater.c(gapComposerH, measurePolicyD, function5);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
                cj.t(iHashCode2, gapComposerH, function8, gapComposerH, function9);
                Updater.c(gapComposerH, modifierC2, function10);
                locale2 = locale;
                Modifier modifier6 = dTFunctionNameModifier;
                yearMonth10 = yearMonth3;
                CalendarKt.b(null, calendarState, false, false, null, null, ComposableLambdaKt.b(485507947, new j50(localDate4, z12, list, locale2, function7, mutableState, 0), gapComposerH), ComposableLambdaKt.b(1383195375, new cf(locale2, list4), gapComposerH), gapComposerH, 113246208);
                gapComposerH = gapComposerH;
                Modifier modifierG3 = BoxScopeInstance.f4938a.g(BackgroundKt.b(new DTFunctionNameModifier("LVCalendar"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, rectangleShapeKt$RectangleShape$1), Alignment.Companion.d);
                boolean z110 = !Intrinsics.c(yearMonth9, yearMonth2);
                boolean z111 = !Intrinsics.c(yearMonth9, yearMonth10);
                zY4 = gapComposerH.y(yearMonth9) | gapComposerH.y(yearMonth2) | gapComposerH.y(coroutineScope) | gapComposerH.K(calendarState);
                objX10 = gapComposerH.x();
                if (zY4) {
                    final int i110 = 0;
                    objX10 = new Function0() { // from class: com.vuitton.android.presentation.compose.components.b
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            int i111 = i110;
                            CalendarState calendarState2 = calendarState;
                            CoroutineScope coroutineScope2 = coroutineScope;
                            YearMonth yearMonth15 = yearMonth2;
                            YearMonth yearMonth16 = yearMonth9;
                            switch (i111) {
                                case 0:
                                    float f2 = LVCalendarKt.f50961a;
                                    if (!Intrinsics.c(yearMonth16, yearMonth15)) {
                                        BuildersKt.c(coroutineScope2, null, null, new LVCalendarKt$LVCalendar$3$1$3$1$1(calendarState2, yearMonth16, null), 3);
                                    }
                                    break;
                                default:
                                    float f3 = LVCalendarKt.f50961a;
                                    if (!Intrinsics.c(yearMonth16, yearMonth15)) {
                                        BuildersKt.c(coroutineScope2, null, null, new LVCalendarKt$LVCalendar$3$1$4$1$1(calendarState2, yearMonth16, null), 3);
                                    }
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    yearMonth11 = yearMonth9;
                    gapComposerH.q(objX10);
                } else {
                    final int i111 = 0;
                    objX10 = new Function0() { // from class: com.vuitton.android.presentation.compose.components.b
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            int i112 = i111;
                            CalendarState calendarState2 = calendarState;
                            CoroutineScope coroutineScope2 = coroutineScope;
                            YearMonth yearMonth15 = yearMonth2;
                            YearMonth yearMonth16 = yearMonth9;
                            switch (i112) {
                                case 0:
                                    float f2 = LVCalendarKt.f50961a;
                                    if (!Intrinsics.c(yearMonth16, yearMonth15)) {
                                        BuildersKt.c(coroutineScope2, null, null, new LVCalendarKt$LVCalendar$3$1$3$1$1(calendarState2, yearMonth16, null), 3);
                                    }
                                    break;
                                default:
                                    float f3 = LVCalendarKt.f50961a;
                                    if (!Intrinsics.c(yearMonth16, yearMonth15)) {
                                        BuildersKt.c(coroutineScope2, null, null, new LVCalendarKt$LVCalendar$3$1$4$1$1(calendarState2, yearMonth16, null), 3);
                                    }
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    yearMonth11 = yearMonth9;
                    gapComposerH.q(objX10);
                }
                Function0 function13 = (Function0) objX10;
                zY5 = gapComposerH.y(yearMonth11) | gapComposerH.y(yearMonth10) | gapComposerH.y(coroutineScope) | gapComposerH.K(calendarState);
                objX11 = gapComposerH.x();
                if (zY5) {
                    final int i112 = 1;
                    final YearMonth yearMonth15 = yearMonth11;
                    objX11 = new Function0() { // from class: com.vuitton.android.presentation.compose.components.b
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            int i113 = i112;
                            CalendarState calendarState2 = calendarState;
                            CoroutineScope coroutineScope2 = coroutineScope;
                            YearMonth yearMonth16 = yearMonth10;
                            YearMonth yearMonth17 = yearMonth15;
                            switch (i113) {
                                case 0:
                                    float f2 = LVCalendarKt.f50961a;
                                    if (!Intrinsics.c(yearMonth17, yearMonth16)) {
                                        BuildersKt.c(coroutineScope2, null, null, new LVCalendarKt$LVCalendar$3$1$3$1$1(calendarState2, yearMonth17, null), 3);
                                    }
                                    break;
                                default:
                                    float f3 = LVCalendarKt.f50961a;
                                    if (!Intrinsics.c(yearMonth17, yearMonth16)) {
                                        BuildersKt.c(coroutineScope2, null, null, new LVCalendarKt$LVCalendar$3$1$4$1$1(calendarState2, yearMonth17, null), 3);
                                    }
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX11);
                } else {
                    final int i113 = 1;
                    final YearMonth yearMonth16 = yearMonth11;
                    objX11 = new Function0() { // from class: com.vuitton.android.presentation.compose.components.b
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            int i114 = i113;
                            CalendarState calendarState2 = calendarState;
                            CoroutineScope coroutineScope2 = coroutineScope;
                            YearMonth yearMonth17 = yearMonth10;
                            YearMonth yearMonth18 = yearMonth16;
                            switch (i114) {
                                case 0:
                                    float f2 = LVCalendarKt.f50961a;
                                    if (!Intrinsics.c(yearMonth18, yearMonth17)) {
                                        BuildersKt.c(coroutineScope2, null, null, new LVCalendarKt$LVCalendar$3$1$3$1$1(calendarState2, yearMonth18, null), 3);
                                    }
                                    break;
                                default:
                                    float f3 = LVCalendarKt.f50961a;
                                    if (!Intrinsics.c(yearMonth18, yearMonth17)) {
                                        BuildersKt.c(coroutineScope2, null, null, new LVCalendarKt$LVCalendar$3$1$4$1$1(calendarState2, yearMonth18, null), 3);
                                    }
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX11);
                }
                a(modifierG3, z110, z111, function13, (Function0) objX11, gapComposerH, 0);
                gapComposerH.Z(z11);
                gapComposerH.Z(z11);
                modifier3 = modifier6;
                function3 = function7;
                z7 = z10;
                z8 = z12;
                localDate3 = localDate6;
            } else {
                gapComposerH.D();
                function3 = function2;
                localDate3 = localDate2;
                modifier3 = modifier2;
                z7 = z4;
                z8 = z3;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new k50(modifier3, list, localDate3, locale2, z8, z7, function3, i2, i3);
            }
        }
        i4 |= 24576;
        z3 = z;
        i7 = i3 & 32;
        if (i7 != 0) {
            i4 |= ImageMetadata.EDGE_MODE;
            z4 = z2;
        } else {
            z4 = z2;
            if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
                if (gapComposerH.b(z4)) {
                    i8 = 131072;
                } else {
                    i8 = 65536;
                }
                i4 |= i8;
            }
        }
        i9 = i3 & 64;
        if (i9 != 0) {
            i4 |= 1572864;
            function2 = function1;
        } else {
            function2 = function1;
            if ((i2 & 1572864) == 0) {
                if (gapComposerH.y(function2)) {
                    i10 = 1048576;
                } else {
                    i10 = 524288;
                }
                i4 |= i10;
            }
        }
        modifier2 = modifierE;
        z5 = true;
        if ((i4 & 599187) != 599186) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (gapComposerH.p(i4 & 1, z6)) {
            if (i12 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("LVCalendar");
            } else {
                dTFunctionNameModifier = modifier2;
            }
            if (i13 != 0) {
                localDate2 = null;
            }
            if (i5 != 0) {
                z9 = true;
            } else {
                z9 = z3;
            }
            if (i7 != 0) {
                z10 = false;
            } else {
                z10 = z4;
            }
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (i9 != 0) {
                objX12 = gapComposerH.x();
                if (objX12 == composer$Companion$Empty$1) {
                    objX12 = new x20(21);
                    gapComposerH.q(objX12);
                }
                function4 = (Function1) objX12;
            } else {
                function4 = function2;
            }
            OpaqueKey opaqueKey10 = ComposerKt.f7940a;
            objX = gapComposerH.x();
            if (objX == composer$Companion$Empty$1) {
                objX = YearMonth.now();
                gapComposerH.q(objX);
            }
            yearMonth = (YearMonth) objX;
            objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                gapComposerH.q(yearMonth);
                objX2 = yearMonth;
            }
            yearMonth2 = (YearMonth) objX2;
            objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = LocalDate.now();
                gapComposerH.q(objX3);
            }
            localDate4 = (LocalDate) objX3;
            yearMonth.getClass();
            if (list == null) {
                list2 = EmptyList.f71768b;
            } else {
                list2 = list;
            }
            it = list2.iterator();
            if (it.hasNext()) {
                yearMonthFrom = null;
            } else {
                yearMonthFrom = YearMonth.from((LocalDate) it.next());
                while (it.hasNext()) {
                    boolean z112 = z5;
                    yearMonthFrom2 = YearMonth.from((LocalDate) it.next());
                    if (yearMonthFrom.compareTo(yearMonthFrom2) < 0) {
                        yearMonthFrom = yearMonthFrom2;
                    }
                    z5 = z112;
                }
            }
            z11 = z5;
            if (yearMonthFrom == null) {
                yearMonthFrom = yearMonth;
            }
            if (yearMonth.compareTo(yearMonthFrom) >= 0) {
                yearMonth3 = yearMonth;
            } else {
                yearMonth3 = yearMonthFrom;
            }
            if (list == null) {
                list3 = EmptyList.f71768b;
            } else {
                list3 = list;
            }
            CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1 collectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1O4 = CollectionsKt.o(list3);
            zY = gapComposerH.y(localDate4);
            objX4 = gapComposerH.x();
            if (zY) {
                objX4 = new l00(localDate4, 11);
                gapComposerH.q(objX4);
            } else {
                objX4 = new l00(localDate4, 11);
                gapComposerH.q(objX4);
            }
            anonymousClass1 = new FilteringSequence.AnonymousClass1();
            if (anonymousClass1.hasNext()) {
                comparable = null;
            } else {
                comparable = (Comparable) anonymousClass1.next();
                while (anonymousClass1.hasNext()) {
                    comparable2 = (Comparable) anonymousClass1.next();
                    if (comparable.compareTo(comparable2) > 0) {
                        comparable = comparable2;
                    }
                }
            }
            localDate5 = (LocalDate) comparable;
            if (localDate5 != null) {
                yearMonthFrom3 = YearMonth.from(localDate5);
            } else {
                yearMonthFrom3 = null;
            }
            if (z10) {
                yearMonth = yearMonthFrom3;
            }
            objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$1) {
                Locale locale9 = Locale.getDefault();
                locale9.getClass();
                DayOfWeek firstDayOfWeek7 = WeekFields.of(locale9).getFirstDayOfWeek();
                firstDayOfWeek7.getClass();
                int iOrdinal4 = 7 - firstDayOfWeek7.ordinal();
                EnumEntries enumEntries4 = ExtensionsKt$EntriesMappings.f35959a;
                objX5 = CollectionsKt.Y(CollectionsKt.r0(iOrdinal4, enumEntries4), CollectionsKt.x(iOrdinal4, enumEntries4));
                gapComposerH.q(objX5);
            }
            list4 = (List) objX5;
            objX6 = gapComposerH.x();
            if (objX6 == composer$Companion$Empty$1) {
                objX6 = SnapshotStateKt.g(localDate2);
                gapComposerH.q(objX6);
            }
            mutableState = (MutableState) objX6;
            zY2 = gapComposerH.y(localDate2);
            objX7 = gapComposerH.x();
            if (zY2) {
                objX7 = new LVCalendarKt$LVCalendar$2$1(localDate2, mutableState, null);
                gapComposerH.q(objX7);
            } else {
                objX7 = new LVCalendarKt$LVCalendar$2$1(localDate2, mutableState, null);
                gapComposerH.q(objX7);
            }
            EffectsKt.e(gapComposerH, localDate2, (Function2) objX7);
            Modifier modifierD4 = SizeKt.d(dTFunctionNameModifier, 1.0f);
            z12 = z9;
            yearMonth4 = yearMonth;
            long j5 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
            rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
            Modifier modifierB4 = BackgroundKt.b(modifierD4, j5, rectangleShapeKt$RectangleShape$1);
            Arrangement$Top$1 arrangement$Top$4 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            columnMeasurePolicyA = ColumnKt.a(arrangement$Top$4, Alignment.Companion.n, gapComposerH, 0);
            OpaqueKey opaqueKey11 = ComposerKt.f7940a;
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierB4);
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
            function5 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function5);
            function6 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
            Integer numValueOf4 = Integer.valueOf(iHashCode);
            function7 = function4;
            function8 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf4, function8);
            function9 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function9);
            function10 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function10);
            yearMonth2.getClass();
            dayOfWeek = (DayOfWeek) CollectionsKt.B(list4);
            if ((16 & 1) != 0) {
                YearMonth yearMonthNow4 = YearMonth.now();
                yearMonthNow4.getClass();
                yearMonth5 = yearMonthNow4;
            } else {
                yearMonth5 = yearMonth2;
            }
            if ((16 & 2) != 0) {
                yearMonth6 = yearMonth5;
            } else {
                yearMonth6 = yearMonth3;
            }
            if ((16 & 4) != 0) {
                yearMonth7 = yearMonth5;
            } else {
                yearMonth7 = yearMonth4;
            }
            if ((16 & 8) != 0) {
                Locale locale10 = Locale.getDefault();
                locale10.getClass();
                DayOfWeek firstDayOfWeek8 = WeekFields.of(locale10).getFirstDayOfWeek();
                firstDayOfWeek8.getClass();
                dayOfWeek2 = firstDayOfWeek8;
            } else {
                dayOfWeek2 = dayOfWeek;
            }
            localDate6 = localDate2;
            outDateStyle = OutDateStyle.EndOfRow;
            OpaqueKey opaqueKey12 = ComposerKt.f7940a;
            Object[] objArr4 = {yearMonth5, yearMonth6, yearMonth7, dayOfWeek2, outDateStyle};
            CalendarState.f35926k.getClass();
            dayOfWeek3 = dayOfWeek2;
            SaverKt$Saver$1 saverKt$Saver$4 = CalendarState.l;
            yearMonth8 = yearMonth5;
            zY3 = gapComposerH.y(yearMonth5) | gapComposerH.y(yearMonth6) | gapComposerH.d(dayOfWeek3.ordinal()) | gapComposerH.y(yearMonth7) | gapComposerH.d(outDateStyle.ordinal());
            objX8 = gapComposerH.x();
            if (zY3) {
                objX8 = new yh(yearMonth8, yearMonth6, dayOfWeek3, yearMonth7, outDateStyle, 1);
                gapComposerH.q(objX8);
            } else {
                objX8 = new yh(yearMonth8, yearMonth6, dayOfWeek3, yearMonth7, outDateStyle, 1);
                gapComposerH.q(objX8);
            }
            calendarState = (CalendarState) RememberSaveableKt.b(objArr4, saverKt$Saver$4, (Function0) objX8, gapComposerH, 0);
            yearMonth9 = ((CalendarMonth) calendarState.f35930e.getF10755b()).f35957b;
            objX9 = gapComposerH.x();
            if (objX9 == composer$Companion$Empty$1) {
                objX9 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX9);
            }
            coroutineScope = (CoroutineScope) objX9;
            DTFunctionNameModifier dTFunctionNameModifier5 = new DTFunctionNameModifier("LVCalendar");
            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            iHashCode2 = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU2 = gapComposerH.U();
            modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier5);
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
            Updater.c(gapComposerH, measurePolicyD, function5);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
            cj.t(iHashCode2, gapComposerH, function8, gapComposerH, function9);
            Updater.c(gapComposerH, modifierC2, function10);
            locale2 = locale;
            Modifier modifier7 = dTFunctionNameModifier;
            yearMonth10 = yearMonth3;
            CalendarKt.b(null, calendarState, false, false, null, null, ComposableLambdaKt.b(485507947, new j50(localDate4, z12, list, locale2, function7, mutableState, 0), gapComposerH), ComposableLambdaKt.b(1383195375, new cf(locale2, list4), gapComposerH), gapComposerH, 113246208);
            gapComposerH = gapComposerH;
            Modifier modifierG4 = BoxScopeInstance.f4938a.g(BackgroundKt.b(new DTFunctionNameModifier("LVCalendar"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, rectangleShapeKt$RectangleShape$1), Alignment.Companion.d);
            boolean z113 = !Intrinsics.c(yearMonth9, yearMonth2);
            boolean z114 = !Intrinsics.c(yearMonth9, yearMonth10);
            zY4 = gapComposerH.y(yearMonth9) | gapComposerH.y(yearMonth2) | gapComposerH.y(coroutineScope) | gapComposerH.K(calendarState);
            objX10 = gapComposerH.x();
            if (zY4) {
                final int i114 = 0;
                objX10 = new Function0() { // from class: com.vuitton.android.presentation.compose.components.b
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        int i115 = i114;
                        CalendarState calendarState2 = calendarState;
                        CoroutineScope coroutineScope2 = coroutineScope;
                        YearMonth yearMonth17 = yearMonth2;
                        YearMonth yearMonth18 = yearMonth9;
                        switch (i115) {
                            case 0:
                                float f2 = LVCalendarKt.f50961a;
                                if (!Intrinsics.c(yearMonth18, yearMonth17)) {
                                    BuildersKt.c(coroutineScope2, null, null, new LVCalendarKt$LVCalendar$3$1$3$1$1(calendarState2, yearMonth18, null), 3);
                                }
                                break;
                            default:
                                float f3 = LVCalendarKt.f50961a;
                                if (!Intrinsics.c(yearMonth18, yearMonth17)) {
                                    BuildersKt.c(coroutineScope2, null, null, new LVCalendarKt$LVCalendar$3$1$4$1$1(calendarState2, yearMonth18, null), 3);
                                }
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                yearMonth11 = yearMonth9;
                gapComposerH.q(objX10);
            } else {
                final int i115 = 0;
                objX10 = new Function0() { // from class: com.vuitton.android.presentation.compose.components.b
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        int i116 = i115;
                        CalendarState calendarState2 = calendarState;
                        CoroutineScope coroutineScope2 = coroutineScope;
                        YearMonth yearMonth17 = yearMonth2;
                        YearMonth yearMonth18 = yearMonth9;
                        switch (i116) {
                            case 0:
                                float f2 = LVCalendarKt.f50961a;
                                if (!Intrinsics.c(yearMonth18, yearMonth17)) {
                                    BuildersKt.c(coroutineScope2, null, null, new LVCalendarKt$LVCalendar$3$1$3$1$1(calendarState2, yearMonth18, null), 3);
                                }
                                break;
                            default:
                                float f3 = LVCalendarKt.f50961a;
                                if (!Intrinsics.c(yearMonth18, yearMonth17)) {
                                    BuildersKt.c(coroutineScope2, null, null, new LVCalendarKt$LVCalendar$3$1$4$1$1(calendarState2, yearMonth18, null), 3);
                                }
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                yearMonth11 = yearMonth9;
                gapComposerH.q(objX10);
            }
            Function0 function14 = (Function0) objX10;
            zY5 = gapComposerH.y(yearMonth11) | gapComposerH.y(yearMonth10) | gapComposerH.y(coroutineScope) | gapComposerH.K(calendarState);
            objX11 = gapComposerH.x();
            if (zY5) {
                final int i116 = 1;
                final YearMonth yearMonth17 = yearMonth11;
                objX11 = new Function0() { // from class: com.vuitton.android.presentation.compose.components.b
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        int i117 = i116;
                        CalendarState calendarState2 = calendarState;
                        CoroutineScope coroutineScope2 = coroutineScope;
                        YearMonth yearMonth18 = yearMonth10;
                        YearMonth yearMonth19 = yearMonth17;
                        switch (i117) {
                            case 0:
                                float f2 = LVCalendarKt.f50961a;
                                if (!Intrinsics.c(yearMonth19, yearMonth18)) {
                                    BuildersKt.c(coroutineScope2, null, null, new LVCalendarKt$LVCalendar$3$1$3$1$1(calendarState2, yearMonth19, null), 3);
                                }
                                break;
                            default:
                                float f3 = LVCalendarKt.f50961a;
                                if (!Intrinsics.c(yearMonth19, yearMonth18)) {
                                    BuildersKt.c(coroutineScope2, null, null, new LVCalendarKt$LVCalendar$3$1$4$1$1(calendarState2, yearMonth19, null), 3);
                                }
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX11);
            } else {
                final int i117 = 1;
                final YearMonth yearMonth18 = yearMonth11;
                objX11 = new Function0() { // from class: com.vuitton.android.presentation.compose.components.b
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        int i118 = i117;
                        CalendarState calendarState2 = calendarState;
                        CoroutineScope coroutineScope2 = coroutineScope;
                        YearMonth yearMonth19 = yearMonth10;
                        YearMonth yearMonth110 = yearMonth18;
                        switch (i118) {
                            case 0:
                                float f2 = LVCalendarKt.f50961a;
                                if (!Intrinsics.c(yearMonth110, yearMonth19)) {
                                    BuildersKt.c(coroutineScope2, null, null, new LVCalendarKt$LVCalendar$3$1$3$1$1(calendarState2, yearMonth110, null), 3);
                                }
                                break;
                            default:
                                float f3 = LVCalendarKt.f50961a;
                                if (!Intrinsics.c(yearMonth110, yearMonth19)) {
                                    BuildersKt.c(coroutineScope2, null, null, new LVCalendarKt$LVCalendar$3$1$4$1$1(calendarState2, yearMonth110, null), 3);
                                }
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX11);
            }
            a(modifierG4, z113, z114, function14, (Function0) objX11, gapComposerH, 0);
            gapComposerH.Z(z11);
            gapComposerH.Z(z11);
            modifier3 = modifier7;
            function3 = function7;
            z7 = z10;
            z8 = z12;
            localDate3 = localDate6;
        } else {
            gapComposerH.D();
            function3 = function2;
            localDate3 = localDate2;
            modifier3 = modifier2;
            z7 = z4;
            z8 = z3;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new k50(modifier3, list, localDate3, locale2, z8, z7, function3, i2, i3);
        }
    }

    public static final void e(Modifier modifier, CalendarMonth calendarMonth, Locale locale, List list, Composer composer, int i2) {
        int i3;
        boolean z;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "MonthHeader");
        }
        GapComposer gapComposerH = composer.h(-1557665771);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(calendarMonth) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(locale) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(list) ? 2048 : 1024;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("MonthHeader");
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function5 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function5);
            Modifier modifierI = PaddingKt.i(SizeKt.d(modifierE, 1.0f), LVAppDesignKitTheme.l(gapComposerH).d);
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int i4 = i3;
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierI);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
            Modifier modifierF = n00.f(gapComposerH, modifierC2, function5, "MonthHeader", "careservicesCalendar_month_text");
            YearMonth yearMonth = calendarMonth.f35957b;
            yearMonth.getClass();
            locale.getClass();
            Month month = yearMonth.getMonth();
            month.getClass();
            String displayName = month.getDisplayName(TextStyle.FULL, locale);
            displayName.getClass();
            if (displayName.length() > 0) {
                StringBuilder sb = new StringBuilder();
                char cCharAt = displayName.charAt(0);
                sb.append((Object) (Character.isLowerCase(cCharAt) ? CharsKt.d(cCharAt, locale) : String.valueOf(cCharAt)));
                z = true;
                sb.append(displayName.substring(1));
                displayName = sb.toString();
            } else {
                z = true;
            }
            String strE = cj.e(yearMonth.getYear(), displayName, " ");
            androidx.compose.ui.text.TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48429j;
            TextAlign.f10959b.getClass();
            boolean z2 = z;
            TextKt.c(strE, modifierF, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 130040);
            gapComposerH.Z(z2);
            b(null, list, locale, gapComposerH, (i4 & 896) | ((i4 >> 6) & 112));
            gapComposerH.Z(z2);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i1(modifierE, calendarMonth, locale, list, i2, 21);
        }
    }
}
