package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.TopBarActionScope;
import com.vuitton.android.presentation.contact.compose.ContactUsIconKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class bl implements Function4 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20896b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ContactUsUiModel f20897c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function1 f20898e;

    public /* synthetic */ bl(ContactUsUiModel contactUsUiModel, Function0 function0, Function1 function1, int i2) {
        this.f20896b = i2;
        this.f20897c = contactUsUiModel;
        this.d = function0;
        this.f20898e = function1;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
        int i2 = this.f20896b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Function1 function1 = this.f20898e;
        TopBarActionScope topBarActionScope = (TopBarActionScope) obj;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj3;
                ((Integer) obj4).getClass();
                topBarActionScope.getClass();
                ((LVColorScheme) obj2).getClass();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                ContactUsUiModel contactUsUiModel = this.f20897c;
                if (contactUsUiModel.f51154a) {
                    composer.L(1546240020);
                    boolean zK = composer.K(function1);
                    Object objX = composer.x();
                    if (zK || objX == composer$Companion$Empty$1) {
                        objX = new u8(function1, 10);
                        composer.q(objX);
                    }
                    ContactUsIconKt.a(null, contactUsUiModel, this.d, (Function0) objX, false, null, composer, 0, 49);
                    composer.F();
                } else {
                    composer.L(1546530242);
                    composer.F();
                }
                break;
            case 1:
                Composer composer2 = (Composer) obj3;
                ((Integer) obj4).getClass();
                topBarActionScope.getClass();
                ((LVColorScheme) obj2).getClass();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                ContactUsUiModel contactUsUiModel2 = this.f20897c;
                if (contactUsUiModel2.f51154a) {
                    composer2.L(-1888623001);
                    boolean zK2 = composer2.K(function1);
                    Object objX2 = composer2.x();
                    if (zK2 || objX2 == composer$Companion$Empty$1) {
                        objX2 = new tf0(function1, 8);
                        composer2.q(objX2);
                    }
                    ContactUsIconKt.a(null, contactUsUiModel2, this.d, (Function0) objX2, false, "personalSelections_contactUs_button", composer2, ImageMetadata.EDGE_MODE, 17);
                    composer2.F();
                } else {
                    composer2.L(-1888290495);
                    composer2.F();
                }
                break;
            default:
                Composer composer3 = (Composer) obj3;
                ((Integer) obj4).getClass();
                topBarActionScope.getClass();
                ((LVColorScheme) obj2).getClass();
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                ContactUsUiModel contactUsUiModel3 = this.f20897c;
                if (contactUsUiModel3.f51154a) {
                    composer3.L(967083000);
                    boolean zK3 = composer3.K(function1);
                    Object objX3 = composer3.x();
                    if (zK3 || objX3 == composer$Companion$Empty$1) {
                        objX3 = new tf0(function1, 19);
                        composer3.q(objX3);
                    }
                    ContactUsIconKt.a(null, contactUsUiModel3, this.d, (Function0) objX3, false, null, composer3, 0, 49);
                    composer3.F();
                } else {
                    composer3.L(967364573);
                    composer3.F();
                }
                break;
        }
        return Unit.f71739a;
    }
}
