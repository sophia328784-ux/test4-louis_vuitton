package com.kizitonwose.calendar.compose;

import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.ScrollableDefaults;
import androidx.compose.foundation.gestures.snapping.LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;
import androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt;
import androidx.compose.foundation.gestures.snapping.SnapLayoutInfoProvider;
import androidx.compose.foundation.gestures.snapping.SnapPosition;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.kizitonwose.calendar.data.DataStore;
import defpackage.ai;
import defpackage.zh;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"compose_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CalendarKt {
    public static final void a(Modifier modifier, final CalendarState calendarState, boolean z, boolean z2, PaddingValues paddingValues, final ContentHeightMode contentHeightMode, final ComposableLambdaImpl composableLambdaImpl, final Function4 function4, Composer composer, int i2, int i3) {
        int i4;
        boolean z3;
        PaddingValues paddingValues2;
        int i5;
        GapComposer gapComposer;
        FlingBehavior flingBehaviorA;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "Calendar");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(-1694050184);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(calendarState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.b(z) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            z3 = z2;
            i4 |= gapComposerH.b(z3) ? 2048 : 1024;
        } else {
            z3 = z2;
        }
        if ((i2 & 24576) == 0) {
            i4 |= gapComposerH.b(true) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i4 |= gapComposerH.b(false) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            paddingValues2 = paddingValues;
            i4 |= gapComposerH.K(paddingValues2) ? 1048576 : 524288;
        } else {
            paddingValues2 = paddingValues;
        }
        if ((i2 & 12582912) == 0) {
            i4 |= gapComposerH.d(contentHeightMode.ordinal()) ? 8388608 : 4194304;
        }
        if ((100663296 & i2) == 0) {
            i4 |= gapComposerH.y(composableLambdaImpl) ? 67108864 : 33554432;
        }
        if ((805306368 & i2) == 0) {
            i4 |= gapComposerH.y(function4) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if ((i3 & 6) == 0) {
            i5 = (gapComposerH.y(null) ? 4 : 2) | i3;
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= gapComposerH.y(null) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.y(null) ? 256 : 128;
        }
        if (gapComposerH.p(i4 & 1, ((306783379 & i4) == 306783378 && (i5 & 147) == 146) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposerH.L(-1582579258);
            LazyListState lazyListState = calendarState.g;
            int i6 = i4 >> 6;
            int i7 = (i6 & 14) | KyberEngine.KyberPolyBytes;
            lazyListState.getClass();
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            int i8 = i4;
            if (z) {
                gapComposerH.L(-843180899);
                int i9 = i7 >> 3;
                boolean z4 = (((i9 & 14) ^ 6) > 4 && gapComposerH.K(lazyListState)) || (i9 & 6) == 4;
                Object objX = gapComposerH.x();
                if (z4 || objX == composer$Companion$Empty$1) {
                    final LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1 lazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1 = new LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1(lazyListState, SnapPosition.Start.f4877a);
                    objX = new SnapLayoutInfoProvider() { // from class: com.kizitonwose.calendar.compose.CalendarDefaultsKt$CalendarSnapLayoutInfoProvider$1
                        @Override // androidx.compose.foundation.gestures.snapping.SnapLayoutInfoProvider
                        public final float a(float f2) {
                            return lazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1.a(f2);
                        }

                        @Override // androidx.compose.foundation.gestures.snapping.SnapLayoutInfoProvider
                        public final float b(float f2, float f3) {
                            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        }
                    };
                    gapComposerH.q(objX);
                }
                flingBehaviorA = SnapFlingBehaviorKt.e((SnapLayoutInfoProvider) objX, gapComposerH);
            } else {
                gapComposerH.L(-843179907);
                flingBehaviorA = ScrollableDefaults.a(gapComposerH);
            }
            gapComposerH.F();
            FlingBehavior flingBehavior = flingBehaviorA;
            boolean z5 = ((i8 & 112) == 32) | ((i8 & 29360128) == 8388608) | ((i8 & 234881024) == 67108864) | ((i8 & 1879048192) == 536870912) | ((i5 & 14) == 4) | ((i5 & 112) == 32) | ((i5 & 896) == 256);
            Object objX2 = gapComposerH.x();
            if (z5 || objX2 == composer$Companion$Empty$1) {
                objX2 = new Function1() { // from class: com.kizitonwose.calendar.compose.a
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        LazyListScope lazyListScope = (LazyListScope) obj;
                        lazyListScope.getClass();
                        CalendarState calendarState2 = calendarState;
                        CalendarMonthsKt.a(lazyListScope, ((CalendarInfo) ((SnapshotMutableStateImpl) calendarState2.f35933i).getF10755b()).f35920a, new CalendarKt$Calendar$1$1$1(1, calendarState2.f35934j, DataStore.class, "get", "get(I)Ljava/lang/Object;", 0), contentHeightMode, composableLambdaImpl, function4, new CalendarKt$Calendar$1$1$2(1, calendarState2.f35932h, ItemPlacementInfo.class, "onItemPlaced", "onItemPlaced(Lcom/kizitonwose/calendar/compose/ItemCoordinates;)V", 0));
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX2);
            }
            LazyDslKt.b(modifier2, lazyListState, paddingValues2, null, null, flingBehavior, z3, null, (Function1) objX2, gapComposerH, (i8 & 14) | ((i8 >> 12) & 896) | (i6 & 7168) | ((i8 << 12) & 29360128), 304);
            gapComposer = gapComposerH;
            gapComposer.Z(false);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ai(modifier2, calendarState, z, z2, paddingValues, contentHeightMode, composableLambdaImpl, function4, i2, i3, 0);
        }
    }

    public static final void b(Modifier modifier, CalendarState calendarState, boolean z, boolean z2, PaddingValues paddingValues, ContentHeightMode contentHeightMode, ComposableLambdaImpl composableLambdaImpl, Function4 function4, Composer composer, int i2) {
        boolean z3;
        boolean z4;
        PaddingValues paddingValues2;
        ContentHeightMode contentHeightMode2;
        Modifier modifier2;
        PaddingValues paddingValuesA;
        ContentHeightMode contentHeightMode3;
        boolean z5;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "HorizontalCalendar");
        }
        GapComposer gapComposerH = composer.h(-70790120);
        int i3 = i2 | 6 | (gapComposerH.K(calendarState) ? 32 : 16) | 807103872;
        boolean z6 = true;
        if (gapComposerH.p(i3 & 1, (306783379 & i3) != 306783378)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalCalendar");
                Dp.Companion companion = Dp.f11004c;
                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                contentHeightMode3 = ContentHeightMode.Wrap;
                z5 = true;
            } else {
                gapComposerH.D();
                z6 = z;
                z5 = z2;
                paddingValuesA = paddingValues;
                contentHeightMode3 = contentHeightMode;
            }
            Modifier modifier3 = dTFunctionNameModifier;
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            a(modifier3, calendarState, z6, z5, paddingValuesA, contentHeightMode3, composableLambdaImpl, function4, gapComposerH, (i3 & 112) | 920350086, 438);
            modifier2 = modifier3;
            z3 = z6;
            z4 = z5;
            paddingValues2 = paddingValuesA;
            contentHeightMode2 = contentHeightMode3;
        } else {
            gapComposerH.D();
            z3 = z;
            z4 = z2;
            paddingValues2 = paddingValues;
            contentHeightMode2 = contentHeightMode;
            modifier2 = dTFunctionNameModifier;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zh(modifier2, calendarState, z3, z4, paddingValues2, contentHeightMode2, composableLambdaImpl, function4, i2);
        }
    }
}
