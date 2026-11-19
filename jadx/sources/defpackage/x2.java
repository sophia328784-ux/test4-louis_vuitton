package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.FloatingTopBarType;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVFloatingTopBarKt;
import com.vuitton.android.presentation.screen.account.addressbook.components.AddressBottomSheetDeleteKt;
import com.vuitton.android.presentation.screen.account.addresseditor.components.DeleteAddressBottomSheetKt;
import com.vuitton.android.presentation.screen.account.inbox.components.InboxComposableKt;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.AudioGuideLeavingBottomSheetKt;
import com.vuitton.android.presentation.screen.authentication.landing.components.AccountActivationLandingComposableKt;
import com.vuitton.android.presentation.screen.authentication.landing.components.AccountActivationLandingScreenKt;
import com.vuitton.android.presentation.screen.booking.summary.components.bottomsheets.ExitWarningBottomSheetContentKt;
import com.vuitton.android.presentation.screen.maintenance.MaintenanceComposableKt;
import com.vuitton.android.presentation.screen.options.components.LogoutBottomSheetKt;
import com.vuitton.android.presentation.screen.options.dispatch.components.DispatchBottomSheetKt;
import com.vuitton.android.presentation.screen.options.optoutprivacymenu.components.OptOutMenuScreenKt;
import com.vuitton.android.presentation.screen.pdp.bottomsheet.MultipleCustomizationBottomSheetKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyPictureComposableKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder.ShadeFinderEmptyComposableKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder.ShadeFinderIntroComposableKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class x2 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80999b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f81000c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ x2(Function0 function0, Function0 function1, int i2) {
        this.f80999b = i2;
        this.f81000c = function0;
        this.d = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f80999b;
        Function0 function0 = this.d;
        Function0 function1 = this.f81000c;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                AccountActivationLandingComposableKt.a(function1, function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 1:
                ((Integer) obj2).getClass();
                AccountActivationLandingScreenKt.a(function1, function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 2:
                ((Integer) obj2).getClass();
                AddressBottomSheetDeleteKt.a(function1, function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 3:
                ((Integer) obj2).getClass();
                AudioGuideLeavingBottomSheetKt.a(function1, function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 4:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    BeautyPictureComposableKt.a(function1, function0, composer, 0);
                } else {
                    composer.D();
                }
                break;
            case 5:
                ((Integer) obj2).getClass();
                BeautyPictureComposableKt.a(function1, function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 6:
                ((Integer) obj2).getClass();
                DeleteAddressBottomSheetKt.a(function1, function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 7:
                ((Integer) obj2).getClass();
                DispatchBottomSheetKt.a(function1, function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 8:
                ((Integer) obj2).getClass();
                ExitWarningBottomSheetContentKt.a(function1, function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 9:
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    InboxComposableKt.b(true, this.f81000c, this.d, composer2, 6, 0);
                } else {
                    composer2.D();
                }
                break;
            case 10:
                ((Integer) obj2).getClass();
                LogoutBottomSheetKt.a(function1, function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 11:
                ((Integer) obj2).getClass();
                MaintenanceComposableKt.a(function1, function0, (Composer) obj, RecomposeScopeImplKt.a(7));
                break;
            case 12:
                ((Integer) obj2).getClass();
                MultipleCustomizationBottomSheetKt.a(function1, function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 13:
                ((Integer) obj2).getClass();
                OptOutMenuScreenKt.b(function1, function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 14:
                Composer composer3 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    FloatingTopBarType floatingTopBarType = FloatingTopBarType.Close;
                    String strC = StringResources_androidKt.c(composer3, R.string.alt_close);
                    boolean zK = composer3.K(function1) | composer3.K(function0);
                    Object objX = composer3.x();
                    if (zK || objX == Composer.Companion.f7939a) {
                        objX = new il(function1, function0, 14);
                        composer3.q(objX);
                    }
                    LVFloatingTopBarKt.a(null, floatingTopBarType, null, null, strC, (Function0) objX, null, null, composer3, 48, 205);
                } else {
                    composer3.D();
                }
                break;
            case 15:
                ((Integer) obj2).getClass();
                ShadeFinderEmptyComposableKt.b(function1, function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            default:
                ((Integer) obj2).getClass();
                ShadeFinderIntroComposableKt.b(function1, function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ x2(Function0 function0, Function0 function1, int i2, int i3) {
        this.f80999b = i3;
        this.f81000c = function0;
        this.d = function1;
    }
}
