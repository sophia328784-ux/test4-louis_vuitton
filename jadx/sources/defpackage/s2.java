package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationActivity;
import com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModel;
import com.vuitton.android.presentation.screen.authentication.accountactivation.components.AccountActivationComposableKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class s2 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79689b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AccountActivationActivity f79690c;

    public /* synthetic */ s2(AccountActivationActivity accountActivationActivity, int i2) {
        this.f79689b = i2;
        this.f79690c = accountActivationActivity;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f79689b;
        AccountActivationActivity accountActivationActivity = this.f79690c;
        int i3 = 2;
        int i4 = 1;
        Composer composer = (Composer) obj;
        int iIntValue = ((Integer) obj2).intValue();
        switch (i2) {
            case 0:
                AccountActivationActivity.Companion companion = AccountActivationActivity.r;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(589653066, new s2(accountActivationActivity, i4), composer), composer, 48);
                } else {
                    composer.D();
                }
                break;
            default:
                AccountActivationActivity.Companion companion2 = AccountActivationActivity.r;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    AccountActivationViewModel accountActivationViewModel = (AccountActivationViewModel) accountActivationActivity.q.getF71699b();
                    boolean zY = composer.y(accountActivationActivity);
                    Object objX = composer.x();
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (zY || objX == composer$Companion$Empty$1) {
                        objX = new w1(accountActivationActivity, i3);
                        composer.q(objX);
                    }
                    Function0 function0 = (Function0) objX;
                    boolean zY2 = composer.y(accountActivationActivity);
                    Object objX2 = composer.x();
                    if (zY2 || objX2 == composer$Companion$Empty$1) {
                        objX2 = new c1(accountActivationActivity, 3);
                        composer.q(objX2);
                    }
                    AccountActivationComposableKt.a(accountActivationViewModel, function0, (Function1) objX2, composer, 0);
                } else {
                    composer.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
