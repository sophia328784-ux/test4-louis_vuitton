package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.presentation.screen.mylv.models.MarketingUserConsentsUiModel;
import com.vuitton.android.presentation.screen.mylv.models.UserConsentsUiModel;
import com.vuitton.android.presentation.screen.options.settings.components.ProfileSettingRowKt;
import com.vuitton.android.presentation.screen.options.settings.components.SettingsComposableKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class iv0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71206b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ UserConsentsUiModel f71207c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f71208e;

    public /* synthetic */ iv0(UserConsentsUiModel userConsentsUiModel, boolean z, boolean z2) {
        this.f71207c = userConsentsUiModel;
        this.d = z;
        this.f71208e = z2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f71206b;
        boolean z = this.f71208e;
        boolean z2 = this.d;
        UserConsentsUiModel userConsentsUiModel = this.f71207c;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Modifier modifierG = n00.g("ProfileCard$lambda$0", "contactPrivacySettings_contactPhone_text");
                    String strC = StringResources_androidKt.c(composer, R.string.mylv_myprofile_settingsbrick_contactbyphone);
                    MutableState mutableState = userConsentsUiModel.f59457b;
                    ProfileSettingRowKt.a(modifierG, strC, Boolean.valueOf(((MarketingUserConsentsUiModel) mutableState.getF10755b()).f59406a), composer, 0, 0);
                    ProfileSettingRowKt.a(n00.g("ProfileCard$lambda$0", "contactPrivacySettings_contactSMS_text"), StringResources_androidKt.c(composer, R.string.mylv_myprofile_settingsbrick_contactbysms), Boolean.valueOf(((MarketingUserConsentsUiModel) mutableState.getF10755b()).d), composer, 0, 0);
                    ProfileSettingRowKt.a(n00.g("ProfileCard$lambda$0", "contactPrivacySettings_contactMail_text"), StringResources_androidKt.c(composer, R.string.mylv_myprofile_settingsbrick_contactbymail), Boolean.valueOf(((MarketingUserConsentsUiModel) mutableState.getF10755b()).f59407b), composer, 0, 0);
                    ProfileSettingRowKt.a(n00.g("ProfileCard$lambda$0", "contactPrivacySettings_newsletter_text"), StringResources_androidKt.c(composer, R.string.mylv_myprofile_settingsbrick_newsletter), Boolean.valueOf(((MarketingUserConsentsUiModel) mutableState.getF10755b()).f59408c), composer, 0, 0);
                    if (z2) {
                        composer.L(-1809433779);
                        ProfileSettingRowKt.a(ModifierExtKt.e(new DTFunctionNameModifier("ProfileCard$lambda$0"), "editContactPrivacySettings_contactByMarketingSms_text"), StringResources_androidKt.c(composer, R.string.mylv_settings_lva_sms_title), ((MarketingUserConsentsUiModel) mutableState.getF10755b()).f59409e, composer, 0, 0);
                        composer.F();
                    } else {
                        composer.L(-1809128181);
                        composer.F();
                    }
                    if (z) {
                        composer = composer;
                        composer.L(-1809074768);
                        ProfileSettingRowKt.a(ModifierExtKt.e(new DTFunctionNameModifier("ProfileCard$lambda$0"), "editContactPrivacySettings_contactByEmailTracking_text"), StringResources_androidKt.c(composer, R.string.cnil_email_tracking_consent_title), ((MarketingUserConsentsUiModel) mutableState.getF10755b()).g, composer, 0, 0);
                        composer.F();
                    } else {
                        composer = composer;
                        composer.L(-1808772053);
                        composer.F();
                    }
                } else {
                    composer.D();
                }
                break;
            default:
                ((Integer) obj2).getClass();
                SettingsComposableKt.c(userConsentsUiModel, z2, z, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ iv0(UserConsentsUiModel userConsentsUiModel, boolean z, boolean z2, int i2) {
        this.f71207c = userConsentsUiModel;
        this.d = z;
        this.f71208e = z2;
    }
}
