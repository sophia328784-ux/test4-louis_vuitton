package com.vuitton.android.presentation.screen.orders.components.exchange;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$SpaceBetween$1;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.ModalBottomSheetProperties;
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
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedbackType;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.github.druk.dnssd.NSType;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVDisclaimerKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVTagConfigs;
import com.vuitton.android.designkit.ui.theme.atoms.LVTagKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationTag;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.compose.components.LVDialogListPickerKt;
import com.vuitton.android.presentation.compose.components.ListPickerItem;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.orders.components.returns.legacy.LoadingAnimationKt;
import com.vuitton.android.presentation.screen.orders.models.ConfirmReturnResponseUiModel;
import com.vuitton.android.presentation.screen.orders.models.ExchangeSubmitResponseUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeBottomSheet;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnReasonUiModel;
import com.vuitton.android.presentation.screen.orders.models.TransactionItemUiModel;
import com.vuitton.android.presentation.screen.pdp.bottomsheet.SizeGuideBottomSheetContentKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SizeGuideUiModel;
import com.vuitton.android.presentation.utils.ImageConfiguration;
import com.vuitton.android.presentation.utils.UrlFactory;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.ch0;
import defpackage.cj;
import defpackage.gi0;
import defpackage.h;
import defpackage.h60;
import defpackage.ii0;
import defpackage.n00;
import defpackage.n50;
import defpackage.ni0;
import defpackage.o60;
import defpackage.og0;
import defpackage.oi0;
import defpackage.pf;
import defpackage.pq0;
import defpackage.rg;
import defpackage.ti0;
import defpackage.tr;
import defpackage.uv;
import defpackage.wd0;
import defpackage.z2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OrderReturnOrExchangeComponentsKt {
    public static final void a(Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-918209563);
        if (gapComposerH.p(i2 & 1, i2 != 0)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = SizeKt.d(PaddingKt.m(WindowInsetsPadding_androidKt.b(new DTFunctionNameModifier("BottomSheetLoading")), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).l, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).m, 5), 1.0f);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
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
            LoadingAnimationKt.a(gapComposerH, 0);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new n50(i2, 29);
        }
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0044  */
    /* JADX WARN: Code duplicated, block: B:25:0x004c  */
    /* JADX WARN: Code duplicated, block: B:26:0x004f  */
    /* JADX WARN: Code duplicated, block: B:28:0x0053  */
    /* JADX WARN: Code duplicated, block: B:31:0x005d  */
    /* JADX WARN: Code duplicated, block: B:32:0x005f  */
    /* JADX WARN: Code duplicated, block: B:35:0x0068  */
    /* JADX WARN: Code duplicated, block: B:37:0x006b  */
    /* JADX WARN: Code duplicated, block: B:38:0x006d  */
    /* JADX WARN: Code duplicated, block: B:41:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:43:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:44:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:47:0x0126  */
    /* JADX WARN: Code duplicated, block: B:48:0x0130  */
    /* JADX WARN: Code duplicated, block: B:50:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:52:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:55:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:57:? A[RETURN, SYNTHETIC] */
    public static final void b(String str, String str2, String str3, Composer composer, int i2, int i3) {
        String str4;
        int i4;
        String str5;
        boolean z;
        GapComposer gapComposer;
        String str6;
        RecomposeScopeImpl recomposeScopeImplB0;
        String str7;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function0;
        GapComposer gapComposer2;
        int i5;
        str.getClass();
        str3.getClass();
        GapComposer gapComposerH = composer.h(-1903834356);
        if ((i2 & 6) == 0) {
            str4 = str;
            i4 = (gapComposerH.K(str4) ? 4 : 2) | i2;
        } else {
            str4 = str;
            i4 = i2;
        }
        int i6 = i3 & 2;
        if (i6 == 0) {
            if ((i2 & 48) == 0) {
                str5 = str2;
                i4 |= gapComposerH.K(str5) ? 32 : 16;
            }
            if ((i2 & KyberEngine.KyberPolyBytes) != 0) {
                if (gapComposerH.K(str3)) {
                    i5 = 256;
                } else {
                    i5 = 128;
                }
                i4 |= i5;
            }
            if ((i4 & 147) != 146) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i4 & 1, z)) {
                if (i6 != 0) {
                    str7 = null;
                } else {
                    str7 = str5;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48414b);
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ExchangeReviewDetailRow");
                Alignment.f8582a.getClass();
                columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                ComposeUiNode.b0.getClass();
                function0 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a != null) {
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
                TextKt.c(str4, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, i4 & 14, 0, 131066);
                gapComposer2 = gapComposerH;
                if (str7 == null) {
                    gapComposer2.L(-305859396);
                    gapComposer2.Z(false);
                } else {
                    gapComposer2.L(-305859395);
                    TextKt.c(str7, null, LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer2).f48427h, gapComposer2, 0, 0, 131066);
                    gapComposer2 = gapComposer2;
                    gapComposer2.Z(false);
                }
                GapComposer gapComposer3 = gapComposer2;
                TextKt.c(str3, null, LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer2).f48427h, gapComposer3, (i4 >> 6) & 14, 0, 131066);
                gapComposer = gapComposer3;
                gapComposer.Z(true);
                str6 = str7;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                str6 = str5;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new h(str, str6, str3, i2, i3, 8);
            }
        }
        i4 |= 48;
        str5 = str2;
        if ((i2 & KyberEngine.KyberPolyBytes) != 0) {
            if (gapComposerH.K(str3)) {
                i5 = 256;
            } else {
                i5 = 128;
            }
            i4 |= i5;
        }
        if ((i4 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposerH.p(i4 & 1, z)) {
            if (i6 != 0) {
                str7 = null;
            } else {
                str7 = str5;
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            Arrangement$Start$1 arrangement$Start$2 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF2 = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48414b);
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("ExchangeReviewDetailRow");
            Alignment.f8582a.getClass();
            columnMeasurePolicyA = ColumnKt.a(spacedAlignedF2, Alignment.Companion.n, gapComposerH, 0);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier2);
            ComposeUiNode.b0.getClass();
            function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a != null) {
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
            TextKt.c(str4, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, i4 & 14, 0, 131066);
            gapComposer2 = gapComposerH;
            if (str7 == null) {
                gapComposer2.L(-305859396);
                gapComposer2.Z(false);
            } else {
                gapComposer2.L(-305859395);
                TextKt.c(str7, null, LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer2).f48427h, gapComposer2, 0, 0, 131066);
                gapComposer2 = gapComposer2;
                gapComposer2.Z(false);
            }
            GapComposer gapComposer4 = gapComposer2;
            TextKt.c(str3, null, LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer2).f48427h, gapComposer4, (i4 >> 6) & 14, 0, 131066);
            gapComposer = gapComposer4;
            gapComposer.Z(true);
            str6 = str7;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            str6 = str5;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new h(str, str6, str3, i2, i3, 8);
        }
    }

    public static final void c(ExchangeSubmitResponseUiModel exchangeSubmitResponseUiModel, Function0 function0, Composer composer, int i2) {
        function0.getClass();
        GapComposer gapComposerH = composer.h(-417561599);
        int i3 = 2;
        int i4 = (gapComposerH.K(exchangeSubmitResponseUiModel) ? 4 : 2) | i2 | (gapComposerH.y(function0) ? 32 : 16);
        if (gapComposerH.p(i4 & 1, (i4 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new ch0(23);
                gapComposerH.q(objX);
            }
            LVModalBottomSheetKt.b(null, StringResources_androidKt.c(gapComposerH, R.string.alt_close), null, LVModalBottomSheetKt.f(48, 5, gapComposerH, (Function1) objX), null, 0L, false, new ModalBottomSheetProperties(false, false, 2, (DefaultConstructorMarker) null), ComposableLambdaKt.b(-954273269, new ni0(exchangeSubmitResponseUiModel, function0, i3), gapComposerH), gapComposerH, (LVModalBottomSheetState.f48797e << 9) | 113246208, 117);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new wd0(exchangeSubmitResponseUiModel, function0, i2, 8);
        }
    }

    public static final void d(Modifier modifier, String str, String str2, Composer composer, int i2, int i3) {
        int i4;
        GapComposer gapComposer;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "OrderOrExchangeIntroduction");
        }
        str.getClass();
        str2.getClass();
        GapComposer gapComposerH = composer.h(-1870440270);
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
        } else {
            i4 = i2 | (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2);
        }
        int i6 = i4 | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.K(str2) ? 256 : 128);
        if (gapComposerH.p(i6 & 1, (i6 & 147) != 146)) {
            if (i5 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("OrderOrExchangeIntroduction");
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48414b);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            TextKt.c(str, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposerH, (i6 >> 3) & 14, 0, 131066);
            TextKt.c(str2, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, (i6 >> 6) & 14, 0, 131066);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        Modifier modifier2 = dTFunctionNameModifier;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new og0(modifier2, str, str2, i2, i3, 2);
        }
    }

    public static final void e(boolean z, Function1 function1, Function0 function0, Composer composer, int i2) {
        function1.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-2122278120);
        int i3 = i2 | (gapComposerH.b(z) ? 4 : 2) | (gapComposerH.y(function1) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVModalBottomSheetKt.b(WindowInsetsPadding_androidKt.d(new DTFunctionNameModifier("OrderReturnOrExchangePolicyBottomSheet")), StringResources_androidKt.c(gapComposerH, R.string.alt_close), function0, null, null, 0L, false, null, ComposableLambdaKt.b(1788849826, new pf(z, function1, 3), gapComposerH), gapComposerH, (i3 & 896) | 100663296, 248);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rg(z, function1, function0, i2, 7);
        }
    }

    /* JADX WARN: Code duplicated, block: B:38:0x0075  */
    /* JADX WARN: Code duplicated, block: B:39:0x0078  */
    /* JADX WARN: Code duplicated, block: B:42:0x0081  */
    /* JADX WARN: Code duplicated, block: B:43:0x0083  */
    /* JADX WARN: Code duplicated, block: B:46:0x008c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:47:0x008e  */
    /* JADX WARN: Code duplicated, block: B:49:0x0095  */
    /* JADX WARN: Code duplicated, block: B:50:0x009a  */
    /* JADX WARN: Code duplicated, block: B:53:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:55:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:56:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:59:0x012b  */
    /* JADX WARN: Code duplicated, block: B:61:0x0132  */
    /* JADX WARN: Code duplicated, block: B:62:0x0136  */
    /* JADX WARN: Code duplicated, block: B:65:0x0189  */
    /* JADX WARN: Code duplicated, block: B:66:0x019a  */
    /* JADX WARN: Code duplicated, block: B:70:0x01b7 A[LOOP:0: B:68:0x01b1->B:70:0x01b7, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:72:0x01fa  */
    /* JADX WARN: Code duplicated, block: B:74:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:76:0x0202  */
    /* JADX WARN: Code duplicated, block: B:79:0x020e  */
    /* JADX WARN: Code duplicated, block: B:82:? A[RETURN, SYNTHETIC] */
    public static final void f(Modifier modifier, String str, String str2, float f2, List list, Composer composer, int i2, int i3) {
        int i4;
        float f3;
        int i5;
        int i6;
        boolean z;
        GapComposer gapComposer;
        Modifier modifier2;
        float f4;
        RecomposeScopeImpl recomposeScopeImplB0;
        float f5;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function0;
        Function2 function2;
        Function2 function3;
        Function2 function4;
        Function1 function1;
        Modifier modifier3;
        Function2 function5;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        Iterator it;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "OrderReturnOrExchangeProduct-hGBTI10");
        }
        str.getClass();
        str2.getClass();
        GapComposer gapComposerH = composer.h(963822059);
        Applier applier = gapComposerH.f7976a;
        int i7 = i3 & 1;
        if (i7 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        int i8 = i4 | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.K(str2) ? 256 : 128);
        int i9 = i3 & 8;
        if (i9 == 0) {
            if ((i2 & 3072) == 0) {
                f3 = f2;
                i8 |= gapComposerH.c(f3) ? 2048 : 1024;
            }
            if (gapComposerH.y(list)) {
                i5 = 16384;
            } else {
                i5 = 8192;
            }
            i6 = i8 | i5;
            if ((i6 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i6 & 1, z)) {
                if (i7 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("OrderReturnOrExchangeProduct-hGBTI10");
                }
                if (i9 != 0) {
                    Dp.Companion companion = Dp.f11004c;
                    f5 = 112.0f;
                } else {
                    f5 = f3;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Alignment.f8582a.getClass();
                rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
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
                Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                function3 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                Integer numValueOf = Integer.valueOf(iHashCode);
                function4 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf, function4);
                function1 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function1);
                modifier3 = dTFunctionNameModifier;
                function5 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC, function5);
                g(f5, (i6 >> 6) & 126, gapComposerH, str2);
                SpacerKt.a(gapComposerH, SizeKt.s(new DTFunctionNameModifier("OrderReturnOrExchangeProduct-hGBTI10"), LVAppDesignKitTheme.l(gapComposerH).f48416e));
                DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("OrderReturnOrExchangeProduct-hGBTI10");
                columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposerH, 0);
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
                Updater.c(gapComposerH, columnMeasurePolicyA, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
                Updater.c(gapComposerH, modifierC2, function5);
                float f6 = f5;
                TextKt.c(str, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, (i6 >> 3) & 14, 0, 131066);
                gapComposer = gapComposerH;
                if (list.isEmpty()) {
                    gapComposer.L(-2062595683);
                    gapComposer.Z(false);
                } else {
                    cj.x(n00.i(gapComposer, -2062696588, "OrderReturnOrExchangeProduct-hGBTI10"), LVAppDesignKitTheme.l(gapComposer).f48414b, gapComposer, false);
                }
                gapComposer.L(1734580925);
                it = list.iterator();
                while (it.hasNext()) {
                    TextKt.c((String) it.next(), null, LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48427h, gapComposer, 0, 0, 131066);
                }
                pq0.x(gapComposer, false, true, true);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                f4 = f6;
                modifier2 = modifier3;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                modifier2 = dTFunctionNameModifier;
                f4 = f3;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new h60(modifier2, str, str2, f4, list, i2, i3);
            }
        }
        i8 |= 3072;
        f3 = f2;
        if (gapComposerH.y(list)) {
            i5 = 16384;
        } else {
            i5 = 8192;
        }
        i6 = i8 | i5;
        if ((i6 & 9363) != 9362) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposerH.p(i6 & 1, z)) {
            if (i7 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("OrderReturnOrExchangeProduct-hGBTI10");
            }
            if (i9 != 0) {
                Dp.Companion companion2 = Dp.f11004c;
                f5 = 112.0f;
            } else {
                f5 = f3;
            }
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
            Alignment.f8582a.getClass();
            rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf2 = Integer.valueOf(iHashCode);
            function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf2, function4);
            function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            modifier3 = dTFunctionNameModifier;
            function5 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function5);
            g(f5, (i6 >> 6) & 126, gapComposerH, str2);
            SpacerKt.a(gapComposerH, SizeKt.s(new DTFunctionNameModifier("OrderReturnOrExchangeProduct-hGBTI10"), LVAppDesignKitTheme.l(gapComposerH).f48416e));
            DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("OrderReturnOrExchangeProduct-hGBTI10");
            columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposerH, 0);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
            Updater.c(gapComposerH, modifierC2, function5);
            float f7 = f5;
            TextKt.c(str, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, (i6 >> 3) & 14, 0, 131066);
            gapComposer = gapComposerH;
            if (list.isEmpty()) {
                cj.x(n00.i(gapComposer, -2062696588, "OrderReturnOrExchangeProduct-hGBTI10"), LVAppDesignKitTheme.l(gapComposer).f48414b, gapComposer, false);
            } else {
                gapComposer.L(-2062595683);
                gapComposer.Z(false);
            }
            gapComposer.L(1734580925);
            it = list.iterator();
            while (it.hasNext()) {
                TextKt.c((String) it.next(), null, LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48427h, gapComposer, 0, 0, 131066);
            }
            pq0.x(gapComposer, false, true, true);
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            f4 = f7;
            modifier2 = modifier3;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            modifier2 = dTFunctionNameModifier;
            f4 = f3;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new h60(modifier2, str, str2, f4, list, i2, i3);
        }
    }

    public static final void g(float f2, int i2, Composer composer, String str) {
        int i3;
        str.getClass();
        GapComposer gapComposerH = composer.h(259498612);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(str) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.c(f2) ? 32 : 16;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            new UrlFactory(ContextExtKt.f((Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b)));
            String strD = UrlFactory.d(str, (int) f2, ImageConfiguration.Background.Transparent.f65853a);
            Modifier modifierA = ClipKt.a(SizeKt.o(new DTFunctionNameModifier("OrderReturnOrExchangeProductImage-ziNgDLE"), f2), LVAppDesignKitTheme.j(gapComposerH).f48410b);
            Painter painterA = PainterResources_androidKt.a(R.drawable.background_product_floor_1_1, gapComposerH, 0);
            ContentScale.f9447a.getClass();
            Modifier modifierA2 = PainterModifierKt.a(modifierA, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54);
            strD.getClass();
            ImageLoaderKt.b(modifierA2, strD, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, gapComposerH, KyberEngine.KyberPolyBytes, 2040);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ti0(str, f2, i2, 0);
        }
    }

    public static final void h(Modifier modifier, String str, String str2, List list, Composer composer, int i2) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "OrderReturnOrExchangeProductReturned");
        }
        str.getClass();
        str2.getClass();
        GapComposer gapComposerH = composer.h(45626214);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.K(str2) ? 256 : 128) | (gapComposerH.y(list) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierI = PaddingKt.i(BackgroundKt.b(modifierE, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierI);
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
            Updater.c(gapComposerH, measurePolicyD, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function5 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function5);
            BiasAlignment.Vertical vertical = Alignment.Companion.l;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("OrderReturnOrExchangeProductReturned");
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical, gapComposerH, 48);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
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
            Dp.Companion companion = Dp.f11004c;
            g(80.0f, ((i3 >> 6) & 14) | 48, gapComposerH, str2);
            SpacerKt.a(gapComposerH, SizeKt.s(new DTFunctionNameModifier("OrderReturnOrExchangeProductReturned"), LVAppDesignKitTheme.l(gapComposerH).f48416e));
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("OrderReturnOrExchangeProductReturned");
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier2);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function3);
            cj.t(iHashCode3, gapComposerH, function4, gapComposerH, function1);
            Updater.c(gapComposerH, modifierC3, function5);
            TextKt.c(str, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, (i3 >> 3) & 14, 0, 131066);
            gapComposerH = gapComposerH;
            if (list.isEmpty()) {
                gapComposerH.L(1762620988);
                gapComposerH.Z(false);
            } else {
                cj.x(n00.i(gapComposerH, 1762512395, "OrderReturnOrExchangeProductReturned"), LVAppDesignKitTheme.l(gapComposerH).f48414b, gapComposerH, false);
            }
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48413a);
            DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("OrderReturnOrExchangeProductReturned");
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(spacedAlignedF, horizontal, gapComposerH, 0);
            int iHashCode4 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposerH.U();
            Modifier modifierC4 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier3);
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
            Updater.c(gapComposerH, columnMeasurePolicyA2, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU4, function3);
            cj.t(iHashCode4, gapComposerH, function4, gapComposerH, function1);
            Updater.c(gapComposerH, modifierC4, function5);
            gapComposerH.L(1231677752);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                GapComposer gapComposer = gapComposerH;
                TextKt.c((String) it.next(), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposer, 0, 0, 131066);
                gapComposerH = gapComposer;
            }
            gapComposerH.Z(false);
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            DTFunctionNameModifier dTFunctionNameModifier4 = new DTFunctionNameModifier("OrderReturnOrExchangeProductReturned");
            Alignment.f8582a.getClass();
            LVTagKt.a(BoxScopeInstance.f4938a.g(dTFunctionNameModifier4, Alignment.Companion.f8590j), ConfigurationTag.a(((LVTagConfigs) gapComposerH.k(LVTagKt.f48516a)).f48513a, LVAppDesignKitTheme.c(gapComposerH).f48361b.d, 0L, 61), StringResources_androidKt.c(gapComposerH, R.string.exchange_review_returned_tag), gapComposerH, 64, 24);
            gapComposerH.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new uv(modifierE, str, str2, list, i2, 15);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v3, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r7v15, types: [java.util.List] */
    public static final void i(Modifier modifier, OrderReturnReasonUiModel orderReturnReasonUiModel, List list, String str, OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel, Function2 function2, Composer composer, int i2) {
        int i3;
        Modifier modifier2;
        ?? arrayList;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "OrderReturnOrExchangeReasonPicker");
        }
        orderReturnOrExchangeItemUiModel.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(-66552880);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(orderReturnReasonUiModel) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(list) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.K(str) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(orderReturnOrExchangeItemUiModel) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function2) ? 131072 : 65536;
        }
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.return_an_order_reason_field_placeholder);
            boolean z = list != null;
            if (list != null) {
                List list2 = list;
                arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    arrayList.add(new ListPickerItem(((OrderReturnReasonUiModel) it.next()).f60317c, false, null, 6, null));
                }
            } else {
                arrayList = EmptyList.f71768b;
            }
            ListPickerItem listPickerItem = orderReturnReasonUiModel != null ? new ListPickerItem(orderReturnReasonUiModel.f60317c, false, null, 6, null) : null;
            boolean z2 = z;
            boolean z3 = str != null;
            boolean zY = ((458752 & i3) == 131072) | gapComposerH.y(orderReturnOrExchangeItemUiModel) | gapComposerH.y(list);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new gi0(function2, orderReturnOrExchangeItemUiModel, list, 2);
                gapComposerH.q(objX);
            }
            modifier2 = modifierE;
            ListPickerItem listPickerItem2 = listPickerItem;
            LVDialogListPickerKt.a(modifier2, strC, listPickerItem2, arrayList, z2, z3, (Function2) objX, str, gapComposerH, ((i3 << 12) & 29360128) | (i3 & 14), 0);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            modifier2 = modifierE;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z2(modifier2, orderReturnReasonUiModel, list, str, orderReturnOrExchangeItemUiModel, function2, i2);
        }
    }

    public static final void j(ConfirmReturnResponseUiModel confirmReturnResponseUiModel, Function0 function0, Composer composer, int i2) {
        function0.getClass();
        GapComposer gapComposerH = composer.h(916148445);
        int i3 = (gapComposerH.K(confirmReturnResponseUiModel) ? 4 : 2) | i2 | (gapComposerH.y(function0) ? 32 : 16);
        int i4 = 1;
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new ch0(22);
                gapComposerH.q(objX);
            }
            LVModalBottomSheetKt.b(null, StringResources_androidKt.c(gapComposerH, R.string.alt_close), null, LVModalBottomSheetKt.f(48, 5, gapComposerH, (Function1) objX), null, 0L, false, new ModalBottomSheetProperties(false, false, 2, (DefaultConstructorMarker) null), ComposableLambdaKt.b(153453331, new ni0(confirmReturnResponseUiModel, function0, i4), gapComposerH), gapComposerH, (LVModalBottomSheetState.f48797e << 9) | 113246208, 117);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new wd0(confirmReturnResponseUiModel, function0, i2, 10);
        }
    }

    public static final void k(final OrderReturnOrExchangeBottomSheet.SizeGuide.SizeGuideRequest sizeGuideRequest, Function0 function0, Composer composer, int i2) {
        sizeGuideRequest.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(463681996);
        int i3 = (gapComposerH.K(sizeGuideRequest) ? 4 : 2) | i2 | (gapComposerH.y(function0) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVModalBottomSheetKt.b(null, StringResources_androidKt.c(gapComposerH, R.string.alt_close), function0, null, null, 0L, false, null, ComposableLambdaKt.b(961254102, new Function3() { // from class: com.vuitton.android.presentation.screen.orders.components.exchange.a
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    ((ColumnScope) obj).getClass();
                    if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        OrderReturnOrExchangeBottomSheet.SizeGuide.SizeGuideRequest sizeGuideRequest2 = sizeGuideRequest;
                        if (sizeGuideRequest2 instanceof OrderReturnOrExchangeBottomSheet.SizeGuide.SizeGuideRequest.Loading) {
                            Modifier modifierD = SizeKt.d(PaddingKt.m(pq0.j(-2120845666, composer2, "OrderReturnOrExchangeSizeGuideBottomSheet$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).l, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).m, 5), 1.0f);
                            Alignment.f8582a.getClass();
                            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
                            int iHashCode = Long.hashCode(composer2.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                            Modifier modifierC = ComposedModifierKt.c(composer2, modifierD);
                            ComposeUiNode.b0.getClass();
                            Function0 function1 = ComposeUiNode.Companion.f9641b;
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function1);
                            } else {
                                composer2.o();
                            }
                            Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                            Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                            Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                            Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                            Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                            LoadingAnimationKt.a(composer2, 0);
                            composer2.r();
                            composer2.F();
                        } else {
                            if (!(sizeGuideRequest2 instanceof OrderReturnOrExchangeBottomSheet.SizeGuide.SizeGuideRequest.Result)) {
                                throw o60.v(composer2, 347224954);
                            }
                            composer2.L(-2120281342);
                            OrderReturnOrExchangeBottomSheet.SizeGuide.SizeGuideRequest.Result result = (OrderReturnOrExchangeBottomSheet.SizeGuide.SizeGuideRequest.Result) sizeGuideRequest2;
                            InAppDispatch inAppDispatch = result.f60298c;
                            SizeGuideUiModel sizeGuideUiModel = result.f60297b;
                            TransactionItemUiModel transactionItemUiModel = result.f60296a;
                            String str = transactionItemUiModel.g;
                            String str2 = transactionItemUiModel.f60416f;
                            String str3 = transactionItemUiModel.f60418i;
                            Object objX = composer2.x();
                            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                            if (objX == composer$Companion$Empty$1) {
                                objX = new ii0(4);
                                composer2.q(objX);
                            }
                            Function0 function2 = (Function0) objX;
                            Object objX2 = composer2.x();
                            if (objX2 == composer$Companion$Empty$1) {
                                objX2 = OrderReturnOrExchangeComponentsKt$OrderReturnOrExchangeSizeGuideBottomSheet$1$3$1.f60139b;
                                composer2.q(objX2);
                            }
                            SizeGuideBottomSheetContentKt.a(str2, str3, str, sizeGuideUiModel, inAppDispatch, null, function2, (Function2) objX2, composer2, 14352384);
                            composer2.F();
                        }
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, ((i3 << 3) & 896) | 100663296, NSType.TKEY);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new wd0(sizeGuideRequest, function0, i2, 9);
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0045  */
    /* JADX WARN: Code duplicated, block: B:20:0x0047  */
    /* JADX WARN: Code duplicated, block: B:23:0x0050  */
    /* JADX WARN: Code duplicated, block: B:32:0x006c  */
    /* JADX WARN: Code duplicated, block: B:34:0x0070  */
    /* JADX WARN: Code duplicated, block: B:37:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:39:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:40:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:42:0x015f  */
    /* JADX WARN: Code duplicated, block: B:44:0x0164  */
    /* JADX WARN: Code duplicated, block: B:47:0x016e  */
    /* JADX WARN: Code duplicated, block: B:49:? A[RETURN, SYNTHETIC] */
    public static final void l(String str, String str2, TextStyle textStyle, Composer composer, int i2, int i3) {
        TextStyle textStyle2;
        int i4;
        boolean z;
        GapComposer gapComposer;
        RecomposeScopeImpl recomposeScopeImplB0;
        int i5;
        TextStyle textStyle3;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function0;
        str.getClass();
        str2.getClass();
        GapComposer gapComposerH = composer.h(1382096979);
        int i6 = i2 | (gapComposerH.K(str) ? 4 : 2) | (gapComposerH.K(str2) ? 32 : 16);
        if ((i3 & 4) == 0) {
            textStyle2 = textStyle;
            int i7 = gapComposerH.K(textStyle2) ? 256 : 128;
            i4 = i6 | i7;
            if ((i4 & 147) != 146) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i4 & 1, z)) {
                gapComposerH.y0();
                if ((i2 & 1) == 0 && !gapComposerH.h0()) {
                    gapComposerH.D();
                    if ((i3 & 4) != 0) {
                        i4 &= -897;
                    }
                } else if ((i3 & 4) != 0) {
                    textStyle2 = LVAppDesignKitTheme.n(gapComposerH).f48427h;
                    i4 &= -897;
                }
                i5 = i4;
                textStyle3 = textStyle2;
                gapComposerH.a0();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Modifier modifierD = tr.d("OrderReturnOrExchangeSummaryLine", 1.0f);
                Arrangement$SpaceBetween$1 arrangement$SpaceBetween$1 = Arrangement.g;
                Alignment.f8582a.getClass();
                rowMeasurePolicyA = RowKt.a(arrangement$SpaceBetween$1, Alignment.Companion.f8591k, gapComposerH, 6);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
                ComposeUiNode.b0.getClass();
                function0 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                TextKt.c(str, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle3, gapComposerH, i5 & 14, (i5 << 15) & 29360128, 131066);
                SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier("OrderReturnOrExchangeSummaryLine"), LVAppDesignKitTheme.l(gapComposerH).f48413a));
                TextAlign.f10959b.getClass();
                TextKt.c(str2, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, new TextAlign(TextAlign.f10963h), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, (i5 >> 3) & 14, 0, 130042);
                gapComposer = gapComposerH;
                gapComposer.Z(true);
                textStyle2 = textStyle3;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new og0(str, str2, textStyle2, i2, i3, 1);
            }
        }
        textStyle2 = textStyle;
        i4 = i6 | i7;
        if ((i4 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposerH.p(i4 & 1, z)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0) {
                if ((i3 & 4) != 0) {
                    textStyle2 = LVAppDesignKitTheme.n(gapComposerH).f48427h;
                    i4 &= -897;
                }
            } else if ((i3 & 4) != 0) {
                textStyle2 = LVAppDesignKitTheme.n(gapComposerH).f48427h;
                i4 &= -897;
            }
            i5 = i4;
            textStyle3 = textStyle2;
            gapComposerH.a0();
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            Modifier modifierD2 = tr.d("OrderReturnOrExchangeSummaryLine", 1.0f);
            Arrangement$SpaceBetween$1 arrangement$SpaceBetween$2 = Arrangement.g;
            Alignment.f8582a.getClass();
            rowMeasurePolicyA = RowKt.a(arrangement$SpaceBetween$2, Alignment.Companion.f8591k, gapComposerH, 6);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierD2);
            ComposeUiNode.b0.getClass();
            function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            TextKt.c(str, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle3, gapComposerH, i5 & 14, (i5 << 15) & 29360128, 131066);
            SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier("OrderReturnOrExchangeSummaryLine"), LVAppDesignKitTheme.l(gapComposerH).f48413a));
            TextAlign.f10959b.getClass();
            TextKt.c(str2, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, new TextAlign(TextAlign.f10963h), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, (i5 >> 3) & 14, 0, 130042);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
            textStyle2 = textStyle3;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new og0(str, str2, textStyle2, i2, i3, 1);
        }
    }

    public static final void m(int i2, int i3, Composer composer, String str, String str2, String str3, Function0 function0) {
        String str4;
        int i4;
        String str5;
        String str6;
        GapComposer gapComposerH = composer.h(1070021245);
        Applier applier = gapComposerH.f7976a;
        int i5 = i2 | (gapComposerH.y(function0) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.K(str2) ? 256 : 128);
        int i6 = i3 & 8;
        if (i6 != 0) {
            i4 = i5 | 3072;
            str4 = str3;
        } else {
            str4 = str3;
            i4 = i5 | (gapComposerH.K(str4) ? 2048 : 1024);
        }
        if (gapComposerH.p(i4 & 1, (i4 & 1171) != 1170)) {
            String str7 = i6 != 0 ? null : str4;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            HapticFeedback hapticFeedback = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
            HapticFeedbackType.f9193b.getClass();
            int i7 = PlatformHapticFeedbackType.f9196a;
            hapticFeedback.a(0);
            Modifier modifierI = PaddingKt.i(WindowInsetsPadding_androidKt.b(SizeKt.d(new DTFunctionNameModifier("ReturnBottomSheetContent"), 1.0f)), LVAppDesignKitTheme.l(gapComposerH).f48417f);
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.o;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4921e, horizontal, gapComposerH, 54);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            Function2 function6 = ComposeUiNode.Companion.d;
            LoadingAnimationKt.b(PaddingKt.k(tr.e(gapComposerH, modifierC, function6, "ReturnBottomSheetContent"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, 1), gapComposerH, 0);
            Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("ReturnBottomSheetContent"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 7);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c), horizontal, gapComposerH, 48);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierM);
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
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
            Updater.c(gapComposerH, modifierC2, function6);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48425e;
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
            TextAlign.f10959b.getClass();
            int i8 = TextAlign.f10961e;
            int i9 = i4;
            TextKt.c(str, null, j2, 0L, null, 0L, null, new TextAlign(i8), 0L, 0, false, 0, 0, null, textStyle, gapComposerH, (i4 >> 3) & 14, 0, 130042);
            int i10 = i9 >> 6;
            TextKt.c(str2, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, new TextAlign(i8), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, i10 & 14, 0, 130042);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
            if (str7 != null) {
                gapComposerH.L(-176610023);
                String str8 = str7;
                LVDisclaimerKt.a(null, str8, null, 0L, null, null, gapComposerH, i10 & 112, 61);
                str6 = str8;
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            } else {
                str6 = str7;
                gapComposerH.L(-176527377);
                gapComposerH.Z(false);
            }
            LVButtonKt.b((i9 << 27) & 1879048192, 504, gapComposerH, PaddingKt.m(tr.d("ReturnBottomSheetContent", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 5), LVAppDesignKitTheme.b(gapComposerH).f48446a, null, null, StringResources_androidKt.c(gapComposerH, R.string.cta_continue), function0, false, false, false);
            gapComposerH.Z(true);
            str5 = str6;
        } else {
            gapComposerH.D();
            str5 = str4;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new oi0(i2, i3, str, str2, str5, function0);
        }
    }
}
