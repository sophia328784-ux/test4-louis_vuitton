package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVStandardTopBarKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.TopBarNavIcon;
import com.vuitton.android.presentation.screen.account.myinformation.components.edition.EditMyInfoComposableKt;
import com.vuitton.android.presentation.screen.booking.personalinfo.infoform.components.BookingConflictBottomSheetContentKt;
import com.vuitton.android.presentation.screen.certificates.components.list.CertificateEmptyScreenKt;
import com.vuitton.android.presentation.screen.certificates.components.visionnaire.CertificateVisionnaireHeaderKt;
import com.vuitton.android.presentation.screen.options.optoutprivacymenu.components.OptOutMenuScreenKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyColorSelectorKt;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailBffScreenKt;
import com.vuitton.android.presentation.screen.repairs.list.components.RepairListItemKt;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceTransactionIdUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class qd implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79071b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f79072c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ qd(int i2, String str, Function0 function0) {
        this.f79071b = i2;
        this.f79072c = str;
        this.d = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        String strK;
        String strK2;
        int i2 = this.f79071b;
        Function0 function0 = this.d;
        String str = this.f79072c;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                BeautyColorSelectorKt.c(str, function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 1:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, this.f79072c, null, null, this.d, null, null, null, null, composer, 0, 0, 4023);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 2:
                ((Integer) obj2).getClass();
                BookingConflictBottomSheetContentKt.a(str, function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 3:
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, this.f79072c, null, null, this.d, null, null, null, null, composer2, 0, 0, 4023);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 4:
                Composer composer3 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, this.f79072c, null, null, this.d, null, null, null, null, composer3, 0, 0, 4023);
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 5:
                Composer composer4 = (Composer) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                if (composer4.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, this.f79072c, null, TopBarNavIcon.BACK, this.d, null, null, null, null, composer4, ImageMetadata.EDGE_MODE, 0, 3991);
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 6:
                Composer composer5 = (Composer) obj;
                int iIntValue5 = ((Integer) obj2).intValue();
                if (composer5.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, this.f79072c, null, TopBarNavIcon.CLOSE, this.d, null, null, null, null, composer5, ImageMetadata.EDGE_MODE, 0, 3991);
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 7:
                ((Integer) obj2).getClass();
                CertificateEmptyScreenKt.b(str, function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 8:
                ((Integer) obj2).getClass();
                CertificateVisionnaireHeaderKt.a(str, function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 9:
                Composer composer6 = (Composer) obj;
                int iIntValue6 = ((Integer) obj2).intValue();
                if (composer6.p(iIntValue6 & 1, (iIntValue6 & 3) != 2)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    EditMyInfoComposableKt.b(str, function0, composer6, 0);
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            case 10:
                Composer composer7 = (Composer) obj;
                int iIntValue7 = ((Integer) obj2).intValue();
                if (composer7.p(iIntValue7 & 1, (iIntValue7 & 3) != 2)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    EditMyInfoComposableKt.b(str, function0, composer7, 0);
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
            case 11:
                ((Integer) obj2).getClass();
                EditMyInfoComposableKt.b(str, function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 12:
                Composer composer8 = (Composer) obj;
                int iIntValue8 = ((Integer) obj2).intValue();
                if (composer8.p(iIntValue8 & 1, (iIntValue8 & 3) != 2)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, this.f79072c, null, null, this.d, null, null, null, null, composer8, 0, 0, 4023);
                } else {
                    composer8.D();
                }
                return Unit.f71739a;
            case 13:
                ((Integer) obj2).getClass();
                OptOutMenuScreenKt.a(str, function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 14:
                Composer composer9 = (Composer) obj;
                int iIntValue9 = ((Integer) obj2).intValue();
                if (composer9.p(iIntValue9 & 1, (iIntValue9 & 3) != 2)) {
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    CareServiceTransactionIdUiModel.f64071c.getClass();
                    if (str == null || str.equals(CareServiceTransactionIdUiModel.d)) {
                        strK = o60.k(composer9, 145167634, R.string.dr_screen_title, composer9);
                    } else {
                        composer9.L(145036876);
                        CareServiceTransactionIdUiModel careServiceTransactionIdUiModel = str != null ? new CareServiceTransactionIdUiModel(str) : null;
                        if (careServiceTransactionIdUiModel == null) {
                            md.n("Required value was null.");
                            return null;
                        }
                        strK = StringResources_androidKt.b(R.string.dr_prass_repair, new Object[]{careServiceTransactionIdUiModel.f64072b}, composer9);
                        composer9.F();
                    }
                    LVStandardTopBarKt.a(null, null, false, strK, null, null, this.d, null, null, null, null, composer9, 0, 0, 4023);
                } else {
                    composer9.D();
                }
                return Unit.f71739a;
            case 15:
                Composer composer10 = (Composer) obj;
                int iIntValue10 = ((Integer) obj2).intValue();
                if (composer10.p(iIntValue10 & 1, (iIntValue10 & 3) != 2)) {
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    CareServiceTransactionIdUiModel.f64071c.getClass();
                    if (str == null || str.equals(CareServiceTransactionIdUiModel.d)) {
                        strK2 = o60.k(composer10, 1187499013, R.string.dr_screen_title, composer10);
                    } else {
                        composer10.L(1187368255);
                        CareServiceTransactionIdUiModel careServiceTransactionIdUiModel2 = str != null ? new CareServiceTransactionIdUiModel(str) : null;
                        if (careServiceTransactionIdUiModel2 == null) {
                            md.n("Required value was null.");
                            return null;
                        }
                        strK2 = StringResources_androidKt.b(R.string.dr_prass_repair, new Object[]{careServiceTransactionIdUiModel2.f64072b}, composer10);
                        composer10.F();
                    }
                    LVStandardTopBarKt.a(null, null, false, strK2, null, null, this.d, null, null, null, null, composer10, 0, 0, 4023);
                } else {
                    composer10.D();
                }
                return Unit.f71739a;
            case 16:
                ((Integer) obj2).getClass();
                RepairDetailBffScreenKt.e(str, function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 17:
                ((Integer) obj2).getClass();
                RepairListItemKt.b(str, function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            default:
                Composer composer11 = (Composer) obj;
                int iIntValue11 = ((Integer) obj2).intValue();
                if (composer11.p(iIntValue11 & 1, (iIntValue11 & 3) != 2)) {
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    if (str == null) {
                        str = new String();
                    }
                    LVStandardTopBarKt.a(null, null, false, str, null, null, this.d, null, null, null, null, composer11, 0, 0, 4023);
                } else {
                    composer11.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ qd(String str, Function0 function0, int i2, int i3) {
        this.f79071b = i3;
        this.f79072c = str;
        this.d = function0;
    }
}
