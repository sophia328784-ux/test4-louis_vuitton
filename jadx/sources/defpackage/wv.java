package defpackage;

import com.vuitton.android.presentation.screen.options.settings.SettingsViewModel;
import com.vuitton.android.presentation.screen.options.settings.models.SettingsTrackingUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class wv implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80951b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SettingsViewModel f80952c;

    public /* synthetic */ wv(SettingsViewModel settingsViewModel, int i2) {
        this.f80951b = i2;
        this.f80952c = settingsViewModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f80951b;
        SettingsViewModel settingsViewModel = this.f80952c;
        switch (i2) {
            case 0:
                settingsViewModel.cc(SettingsTrackingUiModel.MissingPhoneNumberBottomSheetScreen.f60061a);
                break;
            case 1:
                settingsViewModel.cc(SettingsTrackingUiModel.CloseMissingPhoneNumberBottomSheetEvent.f60053a);
                break;
            case 2:
                settingsViewModel.cc(SettingsTrackingUiModel.ViaPartnersClickEvent.f60066a);
                break;
            default:
                settingsViewModel.cc(SettingsTrackingUiModel.GoogleCustomerMatchBottomSheetScreen.f60060a);
                break;
        }
        return Unit.f71739a;
    }
}
