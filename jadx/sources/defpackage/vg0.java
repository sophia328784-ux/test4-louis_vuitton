package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.presentation.screen.onboarding.OnboardingActivity;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class vg0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80579b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OnboardingActivity f80580c;

    public /* synthetic */ vg0(OnboardingActivity onboardingActivity, int i2) {
        this.f80579b = 2;
        this.f80580c = onboardingActivity;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f80579b;
        byte b2 = 0;
        OnboardingActivity onboardingActivity = this.f80580c;
        int i3 = 1;
        Composer composer = (Composer) obj;
        Integer num = (Integer) obj2;
        switch (i2) {
            case 0:
                int iIntValue = num.intValue();
                OnboardingActivity.Companion companion = OnboardingActivity.t;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(1627212068, new vg0(onboardingActivity, i3, b2), composer), composer, 48);
                } else {
                    composer.D();
                }
                break;
            case 1:
                int iIntValue2 = num.intValue();
                OnboardingActivity.Companion companion2 = OnboardingActivity.t;
                if (composer.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    onboardingActivity.I(composer, 0);
                } else {
                    composer.D();
                }
                break;
            default:
                num.getClass();
                OnboardingActivity.Companion companion3 = OnboardingActivity.t;
                onboardingActivity.I(composer, RecomposeScopeImplKt.a(1));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ vg0(OnboardingActivity onboardingActivity, int i2, byte b2) {
        this.f80579b = i2;
        this.f80580c = onboardingActivity;
    }
}
