package defpackage;

import com.vuitton.android.presentation.screen.options.settings.SettingsViewModel;
import com.vuitton.android.presentation.screen.options.settings.models.SettingsTrackingUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class aw implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20643b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f20644c;
    public final /* synthetic */ SettingsViewModel d;

    public /* synthetic */ aw(Function0 function0, SettingsViewModel settingsViewModel) {
        this.f20643b = 1;
        this.f20644c = function0;
        this.d = settingsViewModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f20643b;
        Function0 function0 = this.f20644c;
        SettingsViewModel settingsViewModel = this.d;
        switch (i2) {
            case 0:
                settingsViewModel.v1();
                function0.mo47invoke();
                break;
            case 1:
                function0.mo47invoke();
                settingsViewModel.cc(SettingsTrackingUiModel.OpenProfileClickEvent.f60063a);
                break;
            default:
                settingsViewModel.cc(SettingsTrackingUiModel.PrivacyPolicyClickEvent.f60064a);
                function0.mo47invoke();
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ aw(SettingsViewModel settingsViewModel, Function0 function0, int i2) {
        this.f20643b = i2;
        this.d = settingsViewModel;
        this.f20644c = function0;
    }
}
