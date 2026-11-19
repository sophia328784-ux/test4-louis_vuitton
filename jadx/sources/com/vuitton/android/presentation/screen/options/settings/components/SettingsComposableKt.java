package com.vuitton.android.presentation.screen.options.settings.components;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
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
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.screen.mylv.models.UserConsentsUiModel;
import com.vuitton.android.presentation.screen.options.settings.SettingsViewModel;
import com.vuitton.android.presentation.screen.options.settings.components.SettingsComposableKt;
import com.vuitton.android.presentation.screen.options.settings.models.SettingsViewState;
import com.vuitton.android.presentation.screen.privacy.PrivacyViewModel;
import com.vuitton.android.presentation.screen.privacy.models.PrivacyViewState;
import defpackage.aw;
import defpackage.fs0;
import defpackage.h0;
import defpackage.iv0;
import defpackage.j8;
import defpackage.kn0;
import defpackage.lv0;
import defpackage.mp0;
import defpackage.n00;
import defpackage.od;
import defpackage.pu;
import defpackage.ql;
import defpackage.tr;
import defpackage.wv;
import defpackage.zs0;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KFunction;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002¨\u0006\u0007²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\u0016\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00048\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;", "viewState", "Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyViewState;", "privacyViewState", "Lkotlin/Function0;", "", "pendingPrivacyAction", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SettingsComposableKt {
    public static final void a(Function0 function0, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        function0.getClass();
        GapComposer gapComposerH = composer.h(448166913);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(function0) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Unit unit = Unit.f71739a;
            boolean z = (i3 & 14) == 4;
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new SettingsComposableKt$PartnersBottomSheet$1$1(function0, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            gapComposer = gapComposerH;
            LVModalBottomSheetKt.a(ModifierExtKt.e(new DTFunctionNameModifier("PartnersBottomSheet"), "sharingPreferences_thirdPartyPartnersDescription_text"), null, StringResources_androidKt.c(gapComposerH, R.string.mylv_settings_gcm_bottom_title), null, null, StringResources_androidKt.c(gapComposerH, R.string.mylv_settings_gcm_bottom_description), null, null, null, false, null, null, null, false, null, null, null, false, null, gapComposer, 0, 0, 1048538);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new pu(i2, 8, function0);
        }
    }

    public static final void b(Boolean bool, boolean z, Function0 function0, Function0 function1, Function1 function2, Composer composer, int i2) {
        int i3;
        GapComposer gapComposerH = composer.h(-1344993633);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(bool) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.b(z) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function0) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function2) ? 16384 : 8192;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            d(ComposableLambdaKt.b(-767708374, new od(z, function1, bool, function2, function0, 11), gapComposerH), gapComposerH, 6);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new j8(bool, z, function0, function1, function2, i2);
        }
    }

    public static final void c(UserConsentsUiModel userConsentsUiModel, boolean z, boolean z2, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-1412700542);
        int i3 = (gapComposerH.y(userConsentsUiModel) ? 4 : 2) | i2 | (gapComposerH.b(z) ? 32 : 16) | (gapComposerH.b(z2) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            d(ComposableLambdaKt.b(2034177367, new iv0(userConsentsUiModel, z, z2), gapComposerH), gapComposerH, 6);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new iv0(userConsentsUiModel, z, z2, i2);
        }
    }

    public static final void d(ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-1641348757);
        if (gapComposerH.p(i2 & 1, (i2 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierM = PaddingKt.m(BackgroundKt.b(ClipKt.a(PaddingKt.m(tr.d("SettingCard", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.j(gapComposerH).f48410b), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, 2);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierM);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            composableLambdaImpl.invoke(gapComposerH, 6);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ql(composableLambdaImpl, i2, 26);
        }
    }

    public static final void e(SettingsViewModel settingsViewModel, PrivacyViewModel privacyViewModel, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Composer composer, int i2) {
        GapComposer gapComposer;
        settingsViewModel.getClass();
        privacyViewModel.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(-29865609);
        int i3 = i2 | (gapComposerH.K(settingsViewModel) ? 4 : 2) | (gapComposerH.K(privacyViewModel) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(settingsViewModel.getT(), gapComposerH);
            MutableState mutableStateB2 = SnapshotStateKt.b(privacyViewModel.getY(), gapComposerH);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState = (SnackbarHostState) objX;
            Unit unit = Unit.f71739a;
            int i4 = i3 & 14;
            boolean zY = (i4 == 4) | gapComposerH.y(context);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new SettingsComposableKt$SettingsComposable$1$1(settingsViewModel, snackbarHostState, context, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX2);
            SettingsViewState settingsViewState = (SettingsViewState) mutableStateB.getF10755b();
            PrivacyViewState privacyViewState = (PrivacyViewState) mutableStateB2.getF10755b();
            boolean z = (i4 == 4) | ((i3 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072);
            Object objX3 = gapComposerH.x();
            if (z || objX3 == composer$Companion$Empty$1) {
                objX3 = new aw(settingsViewModel, function3, 2);
                gapComposerH.q(objX3);
            }
            Function0 function4 = (Function0) objX3;
            int i5 = i3 & 112;
            boolean z2 = i5 == 32;
            Object objX4 = gapComposerH.x();
            if (z2 || objX4 == composer$Companion$Empty$1) {
                objX4 = new mp0(privacyViewModel, 4);
                gapComposerH.q(objX4);
            }
            Function0 function5 = (Function0) objX4;
            boolean z3 = i5 == 32;
            Object objX5 = gapComposerH.x();
            if (z3 || objX5 == composer$Companion$Empty$1) {
                objX5 = new mp0(privacyViewModel, 5);
                gapComposerH.q(objX5);
            }
            Function0 function6 = (Function0) objX5;
            boolean z4 = i4 == 4;
            Object objX6 = gapComposerH.x();
            if (z4 || objX6 == composer$Companion$Empty$1) {
                objX6 = new wv(settingsViewModel, 2);
                gapComposerH.q(objX6);
            }
            Function0 function7 = (Function0) objX6;
            boolean z5 = i4 == 4;
            Object objX7 = gapComposerH.x();
            if (z5 || objX7 == composer$Companion$Empty$1) {
                objX7 = new wv(settingsViewModel, 3);
                gapComposerH.q(objX7);
            }
            Function0 function8 = (Function0) objX7;
            boolean z6 = i4 == 4;
            Object objX8 = gapComposerH.x();
            if (z6 || objX8 == composer$Companion$Empty$1) {
                objX8 = new SettingsComposableKt$SettingsComposable$7$1(1, settingsViewModel, SettingsViewModel.class, "updatePartnerConsent", "updatePartnerConsent(Z)V", 0);
                gapComposerH.q(objX8);
            }
            int i6 = i3 << 3;
            gapComposer = gapComposerH;
            f(settingsViewState, privacyViewState, snackbarHostState, function0, function1, function2, function4, function5, function6, function7, function8, (Function1) ((KFunction) objX8), gapComposer, (i6 & 7168) | KyberEngine.KyberPolyBytes | (57344 & i6) | (i6 & ImageMetadata.JPEG_GPS_COORDINATES), 0);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zs0((Object) settingsViewModel, (Object) privacyViewModel, function0, (Function) function1, (Function) function2, (Function) function3, i2, 1);
        }
    }

    public static final void f(final SettingsViewState settingsViewState, final PrivacyViewState privacyViewState, final SnackbarHostState snackbarHostState, final Function0 function0, final Function0 function1, final Function0 function2, final Function0 function3, final Function0 function4, final Function0 function5, final Function0 function6, final Function0 function7, final Function1 function8, Composer composer, final int i2, final int i3) {
        int i4;
        PrivacyViewState privacyViewState2;
        Function0 function9;
        Function0 function10;
        Function0 function11;
        int i5;
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(281023085);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.y(settingsViewState) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            privacyViewState2 = privacyViewState;
            i4 |= gapComposerH.y(privacyViewState2) ? 32 : 16;
        } else {
            privacyViewState2 = privacyViewState;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.K(snackbarHostState) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.y(function0) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            function9 = function1;
            i4 |= gapComposerH.y(function9) ? 16384 : 8192;
        } else {
            function9 = function1;
        }
        if ((196608 & i2) == 0) {
            function10 = function2;
            i4 |= gapComposerH.y(function10) ? 131072 : 65536;
        } else {
            function10 = function2;
        }
        if ((1572864 & i2) == 0) {
            function11 = function3;
            i4 |= gapComposerH.y(function11) ? 1048576 : 524288;
        } else {
            function11 = function3;
        }
        if ((12582912 & i2) == 0) {
            i4 |= gapComposerH.y(function4) ? 8388608 : 4194304;
        }
        if ((100663296 & i2) == 0) {
            i4 |= gapComposerH.y(function5) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i4 |= gapComposerH.y(function6) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if ((i3 & 6) == 0) {
            i5 = i3 | (gapComposerH.y(function7) ? 4 : 2);
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= gapComposerH.y(function8) ? 32 : 16;
        }
        int i6 = 19;
        if (gapComposerH.p(i4 & 1, ((i4 & 306783379) == 306783378 && (i5 & 19) == 18) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            LVModalBottomSheetState lVModalBottomSheetStateF2 = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = SnapshotStateKt.g(null);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-1746197711, new kn0(function0, i6), gapComposerH);
            ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(705133875, new fs0(snackbarHostState, 4), gapComposerH);
            WindowInsets windowInsetsA = WindowInsetsExtKt.a();
            ComposableLambdaImpl composableLambdaImplB3 = ComposableLambdaKt.b(1144280828, new h0(lVModalBottomSheetStateF, lVModalBottomSheetStateF2, function9, settingsViewState, function6, function11, function8, privacyViewState2, function4, function5, function10, mutableState, function7), gapComposerH);
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, composableLambdaImplB, null, composableLambdaImplB2, null, 0, 0L, 0L, windowInsetsA, composableLambdaImplB3, gapComposer, 805309488, 245);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: jv0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i3);
                    SettingsComposableKt.f(settingsViewState, privacyViewState, snackbarHostState, function0, function1, function2, function3, function4, function5, function6, function7, function8, (Composer) obj, iA, iA2);
                    return Unit.f71739a;
                }
            };
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x004c  */
    /* JADX WARN: Code duplicated, block: B:28:0x0051  */
    /* JADX WARN: Code duplicated, block: B:30:0x0055  */
    /* JADX WARN: Code duplicated, block: B:32:0x005d  */
    /* JADX WARN: Code duplicated, block: B:33:0x0060  */
    /* JADX WARN: Code duplicated, block: B:37:0x0067  */
    /* JADX WARN: Code duplicated, block: B:38:0x006c  */
    /* JADX WARN: Code duplicated, block: B:40:0x0074  */
    /* JADX WARN: Code duplicated, block: B:41:0x0077  */
    /* JADX WARN: Code duplicated, block: B:45:0x0082  */
    /* JADX WARN: Code duplicated, block: B:46:0x0084  */
    /* JADX WARN: Code duplicated, block: B:49:0x008c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:50:0x008e  */
    /* JADX WARN: Code duplicated, block: B:52:0x0091  */
    /* JADX WARN: Code duplicated, block: B:53:0x0093  */
    /* JADX WARN: Code duplicated, block: B:55:0x0096  */
    /* JADX WARN: Code duplicated, block: B:56:0x0099  */
    /* JADX WARN: Code duplicated, block: B:59:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:61:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:62:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:65:0x0105  */
    /* JADX WARN: Code duplicated, block: B:67:0x010b  */
    /* JADX WARN: Code duplicated, block: B:70:0x0166  */
    /* JADX WARN: Code duplicated, block: B:71:0x0173  */
    /* JADX WARN: Code duplicated, block: B:73:0x0187  */
    /* JADX WARN: Code duplicated, block: B:75:0x018d  */
    /* JADX WARN: Code duplicated, block: B:78:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:80:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:83:0x01c4  */
    /* JADX WARN: Code duplicated, block: B:85:? A[RETURN, SYNTHETIC] */
    public static final void g(Modifier modifier, int i2, String str, String str2, Function0 function0, Composer composer, int i3, int i4) {
        String str3;
        int i5;
        String str4;
        int i6;
        int i7;
        Function0 function1;
        int i8;
        int i9;
        boolean z;
        String str5;
        String str6;
        Function0 function2;
        RecomposeScopeImpl recomposeScopeImplB0;
        Function0 function3;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function4;
        Modifier dTFunctionNameModifier;
        Modifier dTFunctionNameModifier2;
        Function0 function5;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "TitleRow");
        }
        GapComposer gapComposerH = composer.h(-1820778380);
        int i10 = (gapComposerH.K(modifierE) ? 4 : 2) | i3 | (gapComposerH.d(i2) ? 32 : 16);
        int i11 = i4 & 4;
        if (i11 == 0) {
            if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
                str3 = str;
                i10 |= gapComposerH.K(str3) ? 256 : 128;
            }
            i5 = i4 & 8;
            if (i5 != 0) {
                if ((i3 & 3072) == 0) {
                    str4 = str2;
                    if (gapComposerH.K(str4)) {
                        i6 = 2048;
                    } else {
                        i6 = 1024;
                    }
                    i10 |= i6;
                }
                i7 = i4 & 16;
                if (i7 != 0) {
                    i9 = i10 | 24576;
                    function1 = function0;
                } else {
                    function1 = function0;
                    if (gapComposerH.y(function1)) {
                        i8 = 16384;
                    } else {
                        i8 = 8192;
                    }
                    i9 = i10 | i8;
                }
                if ((i9 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposerH.p(i9 & 1, z)) {
                    if (i11 != 0) {
                        str3 = null;
                    }
                    if (i5 != 0) {
                        str6 = null;
                    } else {
                        str6 = str4;
                    }
                    if (i7 != 0) {
                        function3 = null;
                    } else {
                        function3 = function1;
                    }
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Modifier modifierD = SizeKt.d(modifierE, 1.0f);
                    Alignment.f8582a.getClass();
                    rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
                    ComposeUiNode.b0.getClass();
                    function4 = ComposeUiNode.Companion.f9641b;
                    if (gapComposerH.f7976a != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function4);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                    String strC = StringResources_androidKt.c(gapComposerH, i2);
                    TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48426f;
                    if (str3 != null || (dTFunctionNameModifier = n00.g("TitleRow", str3)) == null) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("TitleRow");
                    }
                    TextKt.c(strC, dTFunctionNameModifier, 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 131068);
                    gapComposerH = gapComposerH;
                    SpacerKt.a(gapComposerH, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("TitleRow"), 1.0f, true));
                    if (function3 == null) {
                        gapComposerH.L(32233864);
                        gapComposerH.Z(false);
                        function5 = function3;
                    } else {
                        Modifier modifierO = SizeKt.o(n00.i(gapComposerH, 32233865, "TitleRow"), LVAppDesignKitTheme.d(gapComposerH).o);
                        if (str6 != null || (dTFunctionNameModifier2 = n00.g("TitleRow", str6)) == null) {
                            dTFunctionNameModifier2 = new DTFunctionNameModifier("TitleRow");
                        }
                        Modifier modifierO2 = modifierO.o(dTFunctionNameModifier2);
                        ComposableSingletons$SettingsComposableKt.f60033a.getClass();
                        function5 = function3;
                        IconButtonKt.a(function5, modifierO2, false, null, null, ComposableSingletons$SettingsComposableKt.f60034b, gapComposerH, 1572864, 60);
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(true);
                    str5 = str3;
                    function2 = function5;
                } else {
                    gapComposerH.D();
                    str5 = str3;
                    str6 = str4;
                    function2 = function1;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new lv0(modifierE, i2, str5, str6, function2, i3, i4);
                }
            }
            i10 |= 3072;
            str4 = str2;
            i7 = i4 & 16;
            if (i7 != 0) {
                i9 = i10 | 24576;
                function1 = function0;
            } else {
                function1 = function0;
                if (gapComposerH.y(function1)) {
                    i8 = 16384;
                } else {
                    i8 = 8192;
                }
                i9 = i10 | i8;
            }
            if ((i9 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i9 & 1, z)) {
                if (i11 != 0) {
                    str3 = null;
                }
                if (i5 != 0) {
                    str6 = null;
                } else {
                    str6 = str4;
                }
                if (i7 != 0) {
                    function3 = null;
                } else {
                    function3 = function1;
                }
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                Modifier modifierD2 = SizeKt.d(modifierE, 1.0f);
                Alignment.f8582a.getClass();
                rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierD2);
                ComposeUiNode.b0.getClass();
                function4 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function4);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                String strC2 = StringResources_androidKt.c(gapComposerH, i2);
                TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposerH).f48426f;
                if (str3 != null) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("TitleRow");
                } else {
                    dTFunctionNameModifier = new DTFunctionNameModifier("TitleRow");
                }
                TextKt.c(strC2, dTFunctionNameModifier, 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle2, gapComposerH, 0, 0, 131068);
                gapComposerH = gapComposerH;
                SpacerKt.a(gapComposerH, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("TitleRow"), 1.0f, true));
                if (function3 == null) {
                    gapComposerH.L(32233864);
                    gapComposerH.Z(false);
                    function5 = function3;
                } else {
                    Modifier modifierO3 = SizeKt.o(n00.i(gapComposerH, 32233865, "TitleRow"), LVAppDesignKitTheme.d(gapComposerH).o);
                    if (str6 != null) {
                        dTFunctionNameModifier2 = new DTFunctionNameModifier("TitleRow");
                    } else {
                        dTFunctionNameModifier2 = new DTFunctionNameModifier("TitleRow");
                    }
                    Modifier modifierO4 = modifierO3.o(dTFunctionNameModifier2);
                    ComposableSingletons$SettingsComposableKt.f60033a.getClass();
                    function5 = function3;
                    IconButtonKt.a(function5, modifierO4, false, null, null, ComposableSingletons$SettingsComposableKt.f60034b, gapComposerH, 1572864, 60);
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(true);
                str5 = str3;
                function2 = function5;
            } else {
                gapComposerH.D();
                str5 = str3;
                str6 = str4;
                function2 = function1;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new lv0(modifierE, i2, str5, str6, function2, i3, i4);
            }
        }
        i10 |= KyberEngine.KyberPolyBytes;
        str3 = str;
        i5 = i4 & 8;
        if (i5 != 0) {
            if ((i3 & 3072) == 0) {
                str4 = str2;
                if (gapComposerH.K(str4)) {
                    i6 = 2048;
                } else {
                    i6 = 1024;
                }
                i10 |= i6;
            }
            i7 = i4 & 16;
            if (i7 != 0) {
                i9 = i10 | 24576;
                function1 = function0;
            } else {
                function1 = function0;
                if (gapComposerH.y(function1)) {
                    i8 = 16384;
                } else {
                    i8 = 8192;
                }
                i9 = i10 | i8;
            }
            if ((i9 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i9 & 1, z)) {
                if (i11 != 0) {
                    str3 = null;
                }
                if (i5 != 0) {
                    str6 = null;
                } else {
                    str6 = str4;
                }
                if (i7 != 0) {
                    function3 = null;
                } else {
                    function3 = function1;
                }
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                Modifier modifierD3 = SizeKt.d(modifierE, 1.0f);
                Alignment.f8582a.getClass();
                rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierD3);
                ComposeUiNode.b0.getClass();
                function4 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function4);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                String strC3 = StringResources_androidKt.c(gapComposerH, i2);
                TextStyle textStyle3 = LVAppDesignKitTheme.n(gapComposerH).f48426f;
                if (str3 != null) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("TitleRow");
                } else {
                    dTFunctionNameModifier = new DTFunctionNameModifier("TitleRow");
                }
                TextKt.c(strC3, dTFunctionNameModifier, 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle3, gapComposerH, 0, 0, 131068);
                gapComposerH = gapComposerH;
                SpacerKt.a(gapComposerH, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("TitleRow"), 1.0f, true));
                if (function3 == null) {
                    gapComposerH.L(32233864);
                    gapComposerH.Z(false);
                    function5 = function3;
                } else {
                    Modifier modifierO5 = SizeKt.o(n00.i(gapComposerH, 32233865, "TitleRow"), LVAppDesignKitTheme.d(gapComposerH).o);
                    if (str6 != null) {
                        dTFunctionNameModifier2 = new DTFunctionNameModifier("TitleRow");
                    } else {
                        dTFunctionNameModifier2 = new DTFunctionNameModifier("TitleRow");
                    }
                    Modifier modifierO6 = modifierO5.o(dTFunctionNameModifier2);
                    ComposableSingletons$SettingsComposableKt.f60033a.getClass();
                    function5 = function3;
                    IconButtonKt.a(function5, modifierO6, false, null, null, ComposableSingletons$SettingsComposableKt.f60034b, gapComposerH, 1572864, 60);
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(true);
                str5 = str3;
                function2 = function5;
            } else {
                gapComposerH.D();
                str5 = str3;
                str6 = str4;
                function2 = function1;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new lv0(modifierE, i2, str5, str6, function2, i3, i4);
            }
        }
        i10 |= 3072;
        str4 = str2;
        i7 = i4 & 16;
        if (i7 != 0) {
            i9 = i10 | 24576;
            function1 = function0;
        } else {
            function1 = function0;
            if (gapComposerH.y(function1)) {
                i8 = 16384;
            } else {
                i8 = 8192;
            }
            i9 = i10 | i8;
        }
        if ((i9 & 9363) != 9362) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposerH.p(i9 & 1, z)) {
            if (i11 != 0) {
                str3 = null;
            }
            if (i5 != 0) {
                str6 = null;
            } else {
                str6 = str4;
            }
            if (i7 != 0) {
                function3 = null;
            } else {
                function3 = function1;
            }
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            Modifier modifierD4 = SizeKt.d(modifierE, 1.0f);
            Alignment.f8582a.getClass();
            rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierD4);
            ComposeUiNode.b0.getClass();
            function4 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function4);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            String strC4 = StringResources_androidKt.c(gapComposerH, i2);
            TextStyle textStyle4 = LVAppDesignKitTheme.n(gapComposerH).f48426f;
            if (str3 != null) {
                dTFunctionNameModifier = new DTFunctionNameModifier("TitleRow");
            } else {
                dTFunctionNameModifier = new DTFunctionNameModifier("TitleRow");
            }
            TextKt.c(strC4, dTFunctionNameModifier, 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle4, gapComposerH, 0, 0, 131068);
            gapComposerH = gapComposerH;
            SpacerKt.a(gapComposerH, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("TitleRow"), 1.0f, true));
            if (function3 == null) {
                gapComposerH.L(32233864);
                gapComposerH.Z(false);
                function5 = function3;
            } else {
                Modifier modifierO7 = SizeKt.o(n00.i(gapComposerH, 32233865, "TitleRow"), LVAppDesignKitTheme.d(gapComposerH).o);
                if (str6 != null) {
                    dTFunctionNameModifier2 = new DTFunctionNameModifier("TitleRow");
                } else {
                    dTFunctionNameModifier2 = new DTFunctionNameModifier("TitleRow");
                }
                Modifier modifierO8 = modifierO7.o(dTFunctionNameModifier2);
                ComposableSingletons$SettingsComposableKt.f60033a.getClass();
                function5 = function3;
                IconButtonKt.a(function5, modifierO8, false, null, null, ComposableSingletons$SettingsComposableKt.f60034b, gapComposerH, 1572864, 60);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
            str5 = str3;
            function2 = function5;
        } else {
            gapComposerH.D();
            str5 = str3;
            str6 = str4;
            function2 = function1;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new lv0(modifierE, i2, str5, str6, function2, i3, i4);
        }
    }
}
