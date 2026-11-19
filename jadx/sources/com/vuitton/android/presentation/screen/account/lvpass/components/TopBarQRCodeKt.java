package com.vuitton.android.presentation.screen.account.lvpass.components;

import androidx.compose.material3.ContentColorKt;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import defpackage.a;
import defpackage.g;
import defpackage.wr;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TopBarQRCodeKt {
    /* JADX WARN: Code duplicated, block: B:14:0x0034  */
    /* JADX WARN: Code duplicated, block: B:15:0x0037  */
    /* JADX WARN: Code duplicated, block: B:18:0x0040  */
    /* JADX WARN: Code duplicated, block: B:19:0x0042  */
    /* JADX WARN: Code duplicated, block: B:22:0x004b  */
    /* JADX WARN: Code duplicated, block: B:31:0x0069  */
    /* JADX WARN: Code duplicated, block: B:33:0x0072  */
    /* JADX WARN: Code duplicated, block: B:35:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:38:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:40:? A[RETURN, SYNTHETIC] */
    public static final void a(Modifier modifier, long j2, Function0 function0, Composer composer, int i2, int i3) {
        long j3;
        int i4;
        int i5;
        boolean z;
        Modifier modifier2;
        long j4;
        RecomposeScopeImpl recomposeScopeImplB0;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = a.e(dTFunctionNameModifier, "TopBarQRCode-3IgeMak");
        }
        function0.getClass();
        GapComposer gapComposerH = composer.h(1827617643);
        int i6 = i2 | 6;
        if ((i3 & 2) == 0) {
            j3 = j2;
            int i7 = gapComposerH.e(j3) ? 32 : 16;
            int i8 = i6 | i7;
            if (gapComposerH.y(function0)) {
                i4 = 256;
            } else {
                i4 = 128;
            }
            i5 = i8 | i4;
            if ((i5 & 147) != 146) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i5 & 1, z)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0 || gapComposerH.h0()) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("TopBarQRCode-3IgeMak");
                    if ((i3 & 2) != 0) {
                        j3 = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                        i5 &= -113;
                    }
                } else {
                    gapComposerH.D();
                    if ((i3 & 2) != 0) {
                        i5 &= -113;
                    }
                }
                int i9 = i5;
                Modifier modifier3 = dTFunctionNameModifier;
                long j5 = j3;
                gapComposerH.a0();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                IconButtonKt.a(function0, ModifierExtKt.e(modifier3, "feed_lvPass_button"), false, null, null, ComposableLambdaKt.b(-47188087, new g(j5, 4), gapComposerH), gapComposerH, ((i9 >> 6) & 14) | 1572864, 60);
                j4 = j5;
                modifier2 = modifier3;
            } else {
                gapComposerH.D();
                modifier2 = dTFunctionNameModifier;
                j4 = j3;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new wr(modifier2, j4, function0, i2, i3);
            }
        }
        j3 = j2;
        int i10 = i6 | i7;
        if (gapComposerH.y(function0)) {
            i4 = 256;
        } else {
            i4 = 128;
        }
        i5 = i10 | i4;
        if ((i5 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposerH.p(i5 & 1, z)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("TopBarQRCode-3IgeMak");
                if ((i3 & 2) != 0) {
                    j3 = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                    i5 &= -113;
                }
            } else {
                dTFunctionNameModifier = new DTFunctionNameModifier("TopBarQRCode-3IgeMak");
                if ((i3 & 2) != 0) {
                    j3 = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                    i5 &= -113;
                }
            }
            int i11 = i5;
            Modifier modifier4 = dTFunctionNameModifier;
            long j6 = j3;
            gapComposerH.a0();
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            IconButtonKt.a(function0, ModifierExtKt.e(modifier4, "feed_lvPass_button"), false, null, null, ComposableLambdaKt.b(-47188087, new g(j6, 4), gapComposerH), gapComposerH, ((i11 >> 6) & 14) | 1572864, 60);
            j4 = j6;
            modifier2 = modifier4;
        } else {
            gapComposerH.D();
            modifier2 = dTFunctionNameModifier;
            j4 = j3;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new wr(modifier2, j4, function0, i2, i3);
        }
    }
}
