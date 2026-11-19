package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.navigation.NavHostController;
import androidx.navigation.Navigator;
import androidx.navigation.compose.NavHostControllerKt;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.presentation.compose.components.EdgeToEdgeKt;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVCertificatesLocalProviderKt;
import com.vuitton.android.presentation.screen.certificates.CertificateActivity;
import defpackage.d3;
import defpackage.w1;
import defpackage.wk;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class vk implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80595b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CertificateActivity f80596c;

    public /* synthetic */ vk(CertificateActivity certificateActivity, int i2) {
        this.f80595b = i2;
        this.f80596c = certificateActivity;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f80595b;
        final CertificateActivity certificateActivity = this.f80596c;
        int i3 = 1;
        Composer composer = (Composer) obj;
        int iIntValue = ((Integer) obj2).intValue();
        switch (i2) {
            case 0:
                CertificateActivity.Companion companion = CertificateActivity.x;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-1233255408, new vk(certificateActivity, i3), composer), composer, 48);
                } else {
                    composer.D();
                }
                break;
            default:
                CertificateActivity.Companion companion2 = CertificateActivity.x;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    final NavHostController navHostControllerA = NavHostControllerKt.a(new Navigator[0], composer);
                    LVCertificatesLocalProviderKt.a(ComposableLambdaKt.b(-1961637435, new Function2() { // from class: com.vuitton.android.presentation.screen.certificates.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj3, Object obj4) {
                            Composer composer2 = (Composer) obj3;
                            int iIntValue2 = ((Integer) obj4).intValue();
                            CertificateActivity.Companion companion3 = CertificateActivity.x;
                            if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                CertificateActivity certificateActivity2 = certificateActivity;
                                CertificateViewModel certificateViewModel = (CertificateViewModel) certificateActivity2.p.getF71699b();
                                boolean booleanExtra = certificateActivity2.getIntent().getBooleanExtra("IS_DEEPLINK_TO_ADD", false);
                                boolean zY = composer2.y(certificateActivity2);
                                Object objX = composer2.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                if (zY || objX == composer$Companion$Empty$1) {
                                    CertificateActivity$onCreate$1$1$1$1$1 certificateActivity$onCreate$1$1$1$1$1 = new CertificateActivity$onCreate$1$1$1$1$1(0, certificateActivity2, CertificateActivity.class, "finish", "finish()V", 0);
                                    composer2.q(certificateActivity$onCreate$1$1$1$1$1);
                                    objX = certificateActivity$onCreate$1$1$1$1$1;
                                }
                                Function0 function0 = (Function0) ((KFunction) objX);
                                boolean zY2 = composer2.y(certificateActivity2);
                                Object objX2 = composer2.x();
                                if (zY2 || objX2 == composer$Companion$Empty$1) {
                                    CertificateActivity$onCreate$1$1$1$2$1 certificateActivity$onCreate$1$1$1$2$1 = new CertificateActivity$onCreate$1$1$1$2$1(2, certificateActivity2, EdgeToEdgeKt.class, "setSystemBarsIcons", "setSystemBarsIcons--UQiWvU(Landroid/app/Activity;ZZ)V", 1);
                                    composer2.q(certificateActivity$onCreate$1$1$1$2$1);
                                    objX2 = certificateActivity$onCreate$1$1$1$2$1;
                                }
                                Function2 function2 = (Function2) ((KFunction) objX2);
                                boolean zY3 = composer2.y(certificateActivity2);
                                Object objX3 = composer2.x();
                                if (zY3 || objX3 == composer$Companion$Empty$1) {
                                    CertificateActivity$onCreate$1$1$1$3$1 certificateActivity$onCreate$1$1$1$3$1 = new CertificateActivity$onCreate$1$1$1$3$1(1, certificateActivity2, CertificateActivity.class, "routeToCertificateDiamondDetails", "routeToCertificateDiamondDetails(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;)V", 0);
                                    composer2.q(certificateActivity$onCreate$1$1$1$3$1);
                                    objX3 = certificateActivity$onCreate$1$1$1$3$1;
                                }
                                Function1 function1 = (Function1) ((KFunction) objX3);
                                boolean zY4 = composer2.y(certificateActivity2);
                                Object objX4 = composer2.x();
                                if (zY4 || objX4 == composer$Companion$Empty$1) {
                                    CertificateActivity$onCreate$1$1$1$4$1 certificateActivity$onCreate$1$1$1$4$1 = new CertificateActivity$onCreate$1$1$1$4$1(1, certificateActivity2, CertificateActivity.class, "openPDF", "openPDF(Ljava/lang/String;)V", 0);
                                    composer2.q(certificateActivity$onCreate$1$1$1$4$1);
                                    objX4 = certificateActivity$onCreate$1$1$1$4$1;
                                }
                                Function1 function3 = (Function1) ((KFunction) objX4);
                                boolean zY5 = composer2.y(certificateActivity2);
                                Object objX5 = composer2.x();
                                if (zY5 || objX5 == composer$Companion$Empty$1) {
                                    CertificateActivity$onCreate$1$1$1$5$1 certificateActivity$onCreate$1$1$1$5$1 = new CertificateActivity$onCreate$1$1$1$5$1(0, certificateActivity2, CertificateActivity.class, "quitCertificates", "quitCertificates()V", 0);
                                    composer2.q(certificateActivity$onCreate$1$1$1$5$1);
                                    objX5 = certificateActivity$onCreate$1$1$1$5$1;
                                }
                                Function0 function4 = (Function0) ((KFunction) objX5);
                                boolean zY6 = composer2.y(certificateActivity2);
                                Object objX6 = composer2.x();
                                if (zY6 || objX6 == composer$Companion$Empty$1) {
                                    objX6 = new d3(certificateActivity2, 12);
                                    composer2.q(objX6);
                                }
                                Function3 function5 = (Function3) objX6;
                                boolean zY7 = composer2.y(certificateActivity2);
                                Object objX7 = composer2.x();
                                if (zY7 || objX7 == composer$Companion$Empty$1) {
                                    objX7 = new w1(certificateActivity2, 18);
                                    composer2.q(objX7);
                                }
                                Function0 function6 = (Function0) objX7;
                                boolean zY8 = composer2.y(certificateActivity2);
                                Object objX8 = composer2.x();
                                if (zY8 || objX8 == composer$Companion$Empty$1) {
                                    objX8 = new wk(certificateActivity2, 0);
                                    composer2.q(objX8);
                                }
                                CertificateNavHostKt.a(navHostControllerA, certificateViewModel, booleanExtra, function0, function2, function1, function3, function4, function5, function6, (Function1) objX8, composer2, 0);
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer), composer, 6);
                } else {
                    composer.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
