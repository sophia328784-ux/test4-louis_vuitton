package com.vuitton.android.presentation.screen.osa.list.components;

import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.osa.list.models.OsaListViewState;
import defpackage.ae0;
import defpackage.f9;
import defpackage.k4;
import defpackage.m8;
import defpackage.n8;
import defpackage.wd0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\u0010\u0010\u0001\u001a\u0004\u0018\u00010\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListBottomSheetScreen;", "currentBottomSheet", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OsaListScreenKt {
    public static final void a(OsaListViewState osaListViewState, Function2 function2, SnackbarHostState snackbarHostState, Function0 function0, Function2 function3, Function1 function1, Function0 function4, Function1 function5, Function0 function6, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        osaListViewState.getClass();
        function2.getClass();
        snackbarHostState.getClass();
        function0.getClass();
        function3.getClass();
        function1.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        GapComposer gapComposerH = composer.h(1890679138);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(osaListViewState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(snackbarHostState) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function0) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function3) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function1) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.y(function4) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i3 |= gapComposerH.y(function5) ? 8388608 : 4194304;
        }
        if ((100663296 & i2) == 0) {
            i3 |= gapComposerH.y(function6) ? 67108864 : 33554432;
        }
        int i4 = i3;
        if (gapComposerH.p(i4 & 1, (i4 & 38347923) != 38347922)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(null);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            boolean zY = gapComposerH.y(lVModalBottomSheetStateF);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new m8(lVModalBottomSheetStateF, mutableState, 6);
                gapComposerH.q(objX2);
            }
            Function0 function7 = (Function0) objX2;
            boolean zY2 = gapComposerH.y(lVModalBottomSheetStateF);
            Object objX3 = gapComposerH.x();
            if (zY2 || objX3 == composer$Companion$Empty$1) {
                objX3 = new n8(lVModalBottomSheetStateF, mutableState, 5);
                gapComposerH.q(objX3);
            }
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, function2, ComposableLambdaKt.b(-1480815257, new wd0(osaListViewState, function0, 12), gapComposerH), ComposableLambdaKt.b(-1304487000, new ae0(snackbarHostState, 17), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(531714225, new f9(osaListViewState, function6, (Function1) objX3, function3, function1, function5, lVModalBottomSheetStateF, mutableState, function4, function7), gapComposerH), gapComposer, (i4 & 112) | 805309824, 497);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new k4(osaListViewState, function2, snackbarHostState, function0, function3, function1, function4, function5, function6, i2, 9);
        }
    }
}
