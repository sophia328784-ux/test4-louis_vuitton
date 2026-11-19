package com.vuitton.android.presentation.screen.pdp.bottomsheet;

import android.content.Context;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.screen.pdp.components.PdpBottomSheetType;
import com.vuitton.android.presentation.utils.ImageConfiguration;
import com.vuitton.android.presentation.utils.UrlFactory;
import defpackage.fm;
import defpackage.n00;
import defpackage.om;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ServerOverloadContentBottomSheetKt {
    public static final void a(PdpBottomSheetType.ServerOverload serverOverload, Composer composer, int i2) {
        int i3;
        serverOverload.getClass();
        String str = serverOverload.f61388c;
        GapComposer gapComposerH = composer.h(255448924);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(serverOverload) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            StringResourceUiModel stringResourceUiModel = serverOverload.f61387b;
            StringResourceUiModel stringResourceUiModel2 = serverOverload.f61386a;
            if (str != null) {
                gapComposerH.L(-602961860);
                b(StringResourceUiModelKt.a(stringResourceUiModel2, context), StringResourceUiModelKt.a(stringResourceUiModel, context), str, gapComposerH, 0);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-602681868);
                LVModalBottomSheetKt.a(null, null, StringResourceUiModelKt.a(stringResourceUiModel2, context), null, null, StringResourceUiModelKt.a(stringResourceUiModel, context), null, null, null, false, null, null, null, false, null, null, null, false, null, gapComposerH, 0, 0, 1048539);
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new om(serverOverload, i2, 11);
        }
    }

    public static final void b(String str, String str2, String str3, Composer composer, int i2) {
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(-1801492134);
        int i3 = i2 | (gapComposerH.K(str) ? 4 : 2) | (gapComposerH.K(str2) ? 32 : 16) | (gapComposerH.K(str3) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = SizeKt.d(ScrollKt.d(WindowInsetsPadding_androidKt.b(new DTFunctionNameModifier("ServerOverloadContentWithAsset")), ScrollKt.b(gapComposerH), false, 14), 1.0f);
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierM = PaddingKt.m(modifierD, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 24.0f, 7);
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
            Modifier modifierM2 = PaddingKt.m(PaddingKt.k(n00.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "ServerOverloadContentWithAsset", 1.0f), 24.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 16.0f, 7);
            TextStyle textStyleA = TextStyle.a(LVAppDesignKitTheme.n(gapComposerH).f48426f, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, null, 0L, null, 0, 0, 0L, null, null, 16777214);
            TextAlign.f10959b.getClass();
            TextKt.c(str, modifierM2, 0L, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyleA, gapComposerH, (i3 & 14) | 48, 0, 130044);
            Modifier modifierM3 = PaddingKt.m(new DTFunctionNameModifier("ServerOverloadContentWithAsset"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 40.0f, 7);
            String strB = new UrlFactory(ContextExtKt.f((Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b))).b(str3, ImageConfiguration.Background.Transparent.f65853a);
            strB.getClass();
            ContentScale.f9447a.getClass();
            ImageLoaderKt.b(modifierM3, strB, ContentScale.Companion.f9451e, null, null, 0, false, null, null, null, gapComposerH, 390, 2040);
            TextKt.c(str2, PaddingKt.m(PaddingKt.k(SizeKt.d(new DTFunctionNameModifier("ServerOverloadContentWithAsset"), 1.0f), 24.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 24.0f, 7), 0L, 0L, null, 0L, null, new TextAlign(TextAlign.g), 0L, 0, false, 0, 0, null, TextStyle.a(LVAppDesignKitTheme.n(gapComposerH).g, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, null, 0L, null, 0, 0, 0L, null, null, 16777214), gapComposerH, ((i3 >> 3) & 14) | 48, 0, 130044);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new fm(i2, 3, str, str2, str3);
        }
    }
}
