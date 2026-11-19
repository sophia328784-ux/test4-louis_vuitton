package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationActivity;
import com.vuitton.android.presentation.screen.authentication.landing.AccountActivationLandingActivity;
import com.vuitton.android.presentation.screen.authentication.landing.components.AccountActivationLandingComposableKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class v2 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80476b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AccountActivationLandingActivity f80477c;

    public /* synthetic */ v2(AccountActivationLandingActivity accountActivationLandingActivity, int i2) {
        this.f80476b = i2;
        this.f80477c = accountActivationLandingActivity;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f80476b;
        final AccountActivationLandingActivity accountActivationLandingActivity = this.f80477c;
        Object[] objArr = 0;
        final int i3 = 1;
        Composer composer = (Composer) obj;
        int iIntValue = ((Integer) obj2).intValue();
        switch (i2) {
            case 0:
                AccountActivationLandingActivity.Companion companion = AccountActivationLandingActivity.p;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-1143801026, new v2(accountActivationLandingActivity, i3), composer), composer, 48);
                } else {
                    composer.D();
                }
                break;
            default:
                AccountActivationLandingActivity.Companion companion2 = AccountActivationLandingActivity.p;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    boolean zY = composer.y(accountActivationLandingActivity);
                    Object objX = composer.x();
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (zY || objX == composer$Companion$Empty$1) {
                        final Object[] objArr2 = objArr == true ? 1 : 0;
                        objX = new Function0() { // from class: w2
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i4 = objArr2;
                                AccountActivationLandingActivity accountActivationLandingActivity2 = accountActivationLandingActivity;
                                switch (i4) {
                                    case 0:
                                        AccountActivationLandingActivity.Companion companion3 = AccountActivationLandingActivity.p;
                                        String stringExtra = accountActivationLandingActivity2.getIntent().getStringExtra("EXTRA_CID");
                                        if (stringExtra != null) {
                                            AccountActivationActivity.Companion companion4 = AccountActivationActivity.r;
                                            AccountActivationActivity.Companion.TrackingOrigin trackingOrigin = AccountActivationActivity.Companion.TrackingOrigin.LINK;
                                            companion4.getClass();
                                            accountActivationLandingActivity2.startActivity(AccountActivationActivity.Companion.a(accountActivationLandingActivity2, stringExtra, trackingOrigin));
                                            accountActivationLandingActivity2.finish();
                                        }
                                        break;
                                    default:
                                        AccountActivationLandingActivity.Companion companion5 = AccountActivationLandingActivity.p;
                                        accountActivationLandingActivity2.finish();
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer.q(objX);
                    }
                    Function0 function0 = (Function0) objX;
                    boolean zY2 = composer.y(accountActivationLandingActivity);
                    Object objX2 = composer.x();
                    if (zY2 || objX2 == composer$Companion$Empty$1) {
                        objX2 = new Function0() { // from class: w2
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i4 = i3;
                                AccountActivationLandingActivity accountActivationLandingActivity2 = accountActivationLandingActivity;
                                switch (i4) {
                                    case 0:
                                        AccountActivationLandingActivity.Companion companion3 = AccountActivationLandingActivity.p;
                                        String stringExtra = accountActivationLandingActivity2.getIntent().getStringExtra("EXTRA_CID");
                                        if (stringExtra != null) {
                                            AccountActivationActivity.Companion companion4 = AccountActivationActivity.r;
                                            AccountActivationActivity.Companion.TrackingOrigin trackingOrigin = AccountActivationActivity.Companion.TrackingOrigin.LINK;
                                            companion4.getClass();
                                            accountActivationLandingActivity2.startActivity(AccountActivationActivity.Companion.a(accountActivationLandingActivity2, stringExtra, trackingOrigin));
                                            accountActivationLandingActivity2.finish();
                                        }
                                        break;
                                    default:
                                        AccountActivationLandingActivity.Companion companion5 = AccountActivationLandingActivity.p;
                                        accountActivationLandingActivity2.finish();
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer.q(objX2);
                    }
                    AccountActivationLandingComposableKt.a(function0, (Function0) objX2, composer, 0);
                } else {
                    composer.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
