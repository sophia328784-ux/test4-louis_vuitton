package com.vuitton.android.presentation.screen.storemode.components.plp;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Center$1;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.helper.PluralStringResourceHelperKt;
import defpackage.a;
import defpackage.cj;
import defpackage.n00;
import defpackage.p4;
import defpackage.sq0;
import defpackage.tv;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SearchResultCountBarStoreModeKt {
    /* JADX WARN: Code duplicated, block: B:70:0x015b  */
    /* JADX WARN: Code duplicated, block: B:72:0x0169  */
    /* JADX WARN: Code duplicated, block: B:73:0x016b  */
    /* JADX WARN: Code duplicated, block: B:78:0x0176  */
    /* JADX WARN: Code duplicated, block: B:80:0x01a2  */
    public static final void a(Modifier modifier, Integer num, String str, boolean z, Function0 function0, boolean z2, boolean z3, Composer composer, int i2) {
        Modifier modifier2;
        boolean z4;
        boolean z5;
        Object objX;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "SearchResultCountBarStoreMode");
        }
        function0.getClass();
        GapComposer gapComposerH = composer.h(1566001070);
        int i3 = i2 | 6;
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(num) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(str) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.b(z) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function0) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.b(z2) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.b(z3) ? 1048576 : 524288;
        }
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("SearchResultCountBarStoreMode");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierF = SizeKt.f(dTFunctionNameModifier, LVAppDesignKitTheme.d(gapComposerH).w);
            Arrangement$Center$1 arrangement$Center$1 = Arrangement.f4921e;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Center$1, Alignment.Companion.l, gapComposerH, 54);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierF);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            if (z) {
                gapComposerH.L(1599273498);
                b(StringResources_androidKt.c(gapComposerH, R.string.search_results), gapComposerH);
                gapComposerH.Z(false);
            } else {
                if (num == null || num.intValue() <= 0) {
                    z4 = true;
                    SpacerKt.a(gapComposerH, RowScopeInstance.f5040a.a(n00.i(gapComposerH, 1599708242, "SearchResultCountBarStoreMode"), 1.0f, true));
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(1599414951);
                    b(PluralStringResourceHelperKt.a(R.plurals.search_results_number_message, num.intValue(), new Object[]{num, str}, gapComposerH), gapComposerH);
                    gapComposerH.Z(false);
                }
                if (z2) {
                    gapComposerH.L(1599815440);
                    if ((57344 & i3) == 16384) {
                        z5 = z4;
                    } else {
                        z5 = false;
                    }
                    objX = gapComposerH.x();
                    if (z5 || objX == Composer.Companion.f7939a) {
                        objX = new sq0(function0, 11);
                        gapComposerH.q(objX);
                    }
                    IconButtonKt.a((Function0) objX, null, false, null, null, ComposableLambdaKt.b(281196802, new p4(z3, 7, (byte) 0), gapComposerH), gapComposerH, 1572864, 62);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(1600491984);
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(z4);
                modifier2 = dTFunctionNameModifier;
            }
            z4 = true;
            if (z2) {
                gapComposerH.L(1599815440);
                if ((57344 & i3) == 16384) {
                    z5 = z4;
                } else {
                    z5 = false;
                }
                objX = gapComposerH.x();
                if (z5) {
                    objX = new sq0(function0, 11);
                    gapComposerH.q(objX);
                } else {
                    objX = new sq0(function0, 11);
                    gapComposerH.q(objX);
                }
                IconButtonKt.a((Function0) objX, null, false, null, null, ComposableLambdaKt.b(281196802, new p4(z3, 7, (byte) 0), gapComposerH), gapComposerH, 1572864, 62);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1600491984);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(z4);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposerH.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new tv(modifier2, num, str, z, function0, z2, z3, i2);
        }
    }

    public static final void b(String str, Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        TextKt.c(str, PaddingKt.m(SizeKt.v(cj.b("SearchResultCountBarStoreMode$lambda$0$ResultText", RowScopeInstance.f5040a, 1.0f, true), null, 3), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.c(composer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).l, composer, 0, 0, 131064);
    }
}
