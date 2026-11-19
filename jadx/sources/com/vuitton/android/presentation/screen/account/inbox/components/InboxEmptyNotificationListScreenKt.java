package com.vuitton.android.presentation.screen.account.inbox.components;

import android.content.Context;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.github.druk.dnssd.NSType;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsBottomSheet;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsUiModel;
import defpackage.cj;
import defpackage.sp;
import defpackage.z2;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class InboxEmptyNotificationListScreenKt {
    public static final void a(PermissionsUiModel permissionsUiModel, ComposableLambdaImpl composableLambdaImpl, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        String strF;
        String strF2;
        permissionsUiModel.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(-517799398);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(permissionsUiModel) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(composableLambdaImpl) ? 32 : 16;
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
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function3) ? 131072 : 65536;
        }
        int i4 = i3;
        boolean z = true;
        if (gapComposerH.p(i4 & 1, (74899 & i4) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (permissionsUiModel.f62374c && permissionsUiModel.d) {
                z = false;
            }
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            if (z) {
                strF = cj.f(gapComposerH, 1761148488, R.string.my_notifications_empty_page_enable_description, gapComposerH, false);
            } else {
                gapComposerH.L(1761247316);
                gapComposerH.Z(false);
                strF = null;
            }
            if (z) {
                strF2 = cj.f(gapComposerH, 1761310122, R.string.activate_cta, gapComposerH, false);
            } else {
                gapComposerH.L(1761376276);
                gapComposerH.Z(false);
                strF2 = null;
            }
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            PermissionsBottomSheet permissionsBottomSheet = permissionsUiModel.f62372a;
            boolean zY = gapComposerH.y(permissionsUiModel) | gapComposerH.y(lVModalBottomSheetStateF);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new InboxEmptyNotificationListScreenKt$InboxEmptyNotificationListScreen$1$1(permissionsUiModel, lVModalBottomSheetStateF, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, permissionsBottomSheet, (Function2) objX);
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, composableLambdaImpl, null, null, null, 0, 0L, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(1349526507, new sp(strF, strF2, function2, lVModalBottomSheetStateF, permissionsUiModel, function3, context, function0, function1), gapComposerH), gapComposer, (i4 & 112) | 805306368, NSType.MAILB);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z2((Object) permissionsUiModel, (Object) composableLambdaImpl, function0, function1, function2, function3, i2, 7);
        }
    }
}
