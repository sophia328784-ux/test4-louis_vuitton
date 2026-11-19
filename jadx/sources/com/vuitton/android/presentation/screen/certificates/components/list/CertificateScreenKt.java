package com.vuitton.android.presentation.screen.certificates.components.list;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.components.components.LVLoadingOverlayKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.certificates.model.CertificateViewState;
import defpackage.dm;
import defpackage.g0;
import defpackage.k4;
import defpackage.kg;
import defpackage.p0;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CertificateScreenKt {
    public static final void a(Modifier modifier, List list, boolean z, Function1 function1, Function1 function2, Function0 function0, Function1 function3, Function2 function4, Composer composer, int i2) {
        Modifier modifier2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "CertificateList");
        }
        Modifier modifier3 = modifierE;
        GapComposer gapComposerH = composer.h(-1929950037);
        int i3 = (gapComposerH.y(function4) ? 8388608 : 4194304) | i2 | (gapComposerH.K(modifier3) ? 4 : 2) | (gapComposerH.y(list) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function0) ? 131072 : 65536) | (gapComposerH.y(function3) ? 1048576 : 524288);
        if (gapComposerH.p(i3 & 1, (4793491 & i3) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            PaddingValuesImpl paddingValuesImplD = PaddingKt.d(LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).g);
            boolean zY = ((458752 & i3) == 131072) | gapComposerH.y(list) | ((29360128 & i3) == 8388608) | ((57344 & i3) == 16384) | ((3670016 & i3) == 1048576) | ((i3 & 7168) == 2048) | ((i3 & 896) == 256);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                kg kgVar = new kg(list, function0, function4, function2, function3, function1, z);
                gapComposerH.q(kgVar);
                objX = kgVar;
            }
            modifier2 = modifier3;
            LazyDslKt.a(modifier2, null, paddingValuesImplD, null, null, null, false, null, (Function1) objX, gapComposerH, i3 & 14, 506);
        } else {
            modifier2 = modifier3;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new dm(modifier2, list, z, function1, function2, function0, function3, function4, i2);
        }
    }

    public static final void b(Modifier modifier, ComposableLambdaImpl composableLambdaImpl, SnackbarHostState snackbarHostState, CertificateViewState.Success success, Function0 function0, Function1 function1, Function1 function2, Function1 function3, Function2 function4, Composer composer, int i2) {
        int i3;
        Object obj;
        Object obj2;
        Object obj3;
        Modifier modifier2;
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "CertificateScreen");
        }
        modifierE.getClass();
        snackbarHostState.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        GapComposer gapComposerH = composer.h(-1028888011);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(composableLambdaImpl) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(snackbarHostState) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(success) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function0) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            obj = function1;
            i3 |= gapComposerH.y(obj) ? 131072 : 65536;
        } else {
            obj = function1;
        }
        if ((1572864 & i2) == 0) {
            obj2 = function2;
            i3 |= gapComposerH.y(obj2) ? 1048576 : 524288;
        } else {
            obj2 = function2;
        }
        if ((12582912 & i2) == 0) {
            obj3 = function3;
            i3 |= gapComposerH.y(obj3) ? 8388608 : 4194304;
        } else {
            obj3 = function3;
        }
        if ((100663296 & i2) == 0) {
            i3 |= gapComposerH.y(function4) ? 67108864 : 33554432;
        }
        int i4 = i3;
        if (gapComposerH.p(i4 & 1, (38347923 & i4) != 38347922)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            modifier2 = modifierE;
            ScaffoldKt.a(modifier2, composableLambdaImpl, null, ComposableLambdaKt.b(-25768657, new g0(snackbarHostState, 16), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(838437894, new p0(success, obj, obj2, function0, obj3, function4, 8), gapComposerH), gapComposerH, (i4 & 14) | 805309440 | (i4 & 112), 500);
            gapComposer = gapComposerH;
            if (success.d) {
                gapComposer.L(1580286379);
                LVLoadingOverlayKt.a(false, gapComposer, 0, 1);
                gapComposer.Z(false);
            } else {
                gapComposer.L(1580319053);
                gapComposer.Z(false);
            }
        } else {
            modifier2 = modifierE;
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new k4(modifier2, composableLambdaImpl, snackbarHostState, success, function0, function1, function2, function3, function4, i2);
        }
    }
}
