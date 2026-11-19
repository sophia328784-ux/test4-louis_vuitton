package com.vuitton.android.presentation.screen.account.myinformation.components;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.res.StringResources_androidKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.presentation.screen.account.myinformation.models.CancelDeleteMyAccountAction;
import com.vuitton.android.presentation.screen.account.myinformation.models.DeleteMyAccountAction;
import defpackage.a;
import defpackage.a9;
import defpackage.d21;
import defpackage.pu;
import defpackage.rv;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class MyInformationBottomSheetScreenKt {
    public static final void a(Function0 function0, Function0 function1, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(526264886);
        if ((i2 & 6) == 0) {
            i3 = i2 | (gapComposerH.y(function0) ? 4 : 2);
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function1) ? 32 : 16;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            LVModalBottomSheetKt.a(null, null, StringResources_androidKt.c(gapComposerH, R.string.delete_my_account_title_bottom_sheet), "MyInfo_deleteAccountConfirmationTitle_text", null, StringResources_androidKt.c(gapComposerH, R.string.delete_my_account_description), "MyInfo_deleteAccountConfirmationDescription_text", StringResources_androidKt.c(gapComposerH, R.string.delete_my_account_delete_cta), null, false, DeleteMyAccountAction.f52639a, function0, StringResources_androidKt.c(gapComposerH, R.string.delete_my_account_cancel_cta), false, CancelDeleteMyAccountAction.f52638a, function1, null, false, null, gapComposer, 1575936, ((i3 << 3) & 112) | 196614 | ((i3 << 15) & 3670016), 942867);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new a9(function0, function1, i2, 2);
        }
    }

    public static final void b(Function0 function0, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(-672841425);
        if ((i2 & 6) == 0) {
            i3 = i2 | (gapComposerH.y(function0) ? 4 : 2);
        } else {
            i3 = i2;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            LVModalBottomSheetKt.a(null, null, StringResources_androidKt.c(gapComposerH, R.string.delete_my_account_confirmation_title_bottom_sheet), null, null, StringResources_androidKt.c(gapComposerH, R.string.delete_my_account_description), null, StringResources_androidKt.c(gapComposerH, R.string.ok), null, false, null, function0, null, false, null, null, null, false, null, gapComposer, 0, (i3 << 3) & 112, 1046363);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new pu(i2, 2, function0);
        }
    }

    public static final void c(MyInformationBottomSheetScreen myInformationBottomSheetScreen, Function0 function0, Function0 function1, Composer composer, int i2) {
        GapComposer gapComposerC = a.c(function0, function1, composer, 1870670202);
        int i3 = (gapComposerC.K(myInformationBottomSheetScreen) ? 4 : 2) | i2 | (gapComposerC.y(function0) ? 32 : 16) | (gapComposerC.y(function1) ? 256 : 128);
        if (gapComposerC.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (myInformationBottomSheetScreen.equals(MyInformationBottomSheetScreen.DeletedAccountConfirmation.f52597a)) {
                gapComposerC.L(-1877224917);
                b(function1, gapComposerC, (i3 >> 6) & 14);
                gapComposerC.Z(false);
            } else {
                if (!myInformationBottomSheetScreen.equals(MyInformationBottomSheetScreen.DeleteAccount.f52596a)) {
                    throw d21.u(gapComposerC, -1877227582, false);
                }
                gapComposerC.L(-1877221450);
                a(function0, function1, gapComposerC, (i3 >> 3) & 126);
                gapComposerC.Z(false);
            }
        } else {
            gapComposerC.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerC.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rv(i2, 23, myInformationBottomSheetScreen, function0, function1);
        }
    }
}
