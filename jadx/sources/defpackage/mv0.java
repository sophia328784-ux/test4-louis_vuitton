package defpackage;

import androidx.navigation.NavController;
import androidx.navigation.NavHostController;
import com.vuitton.android.presentation.screen.options.settings.SettingsRoutes;
import com.vuitton.android.presentation.screen.options.settings.SettingsViewModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class mv0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76370b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SettingsViewModel f76371c;
    public final /* synthetic */ NavHostController d;

    public /* synthetic */ mv0(NavHostController navHostController, SettingsViewModel settingsViewModel) {
        this.f76370b = 2;
        this.d = navHostController;
        this.f76371c = settingsViewModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f76370b) {
            case 0:
                this.f76371c.Aa();
                NavController.d(this.d, SettingsRoutes.EditSettings.INSTANCE, null, 6);
                break;
            case 1:
                this.f76371c.Aa();
                NavController.d(this.d, SettingsRoutes.EditConsents.INSTANCE, null, 6);
                break;
            default:
                this.d.e();
                this.f76371c.v1();
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ mv0(SettingsViewModel settingsViewModel, NavHostController navHostController, int i2) {
        this.f76370b = i2;
        this.f76371c = settingsViewModel;
        this.d = navHostController;
    }
}
