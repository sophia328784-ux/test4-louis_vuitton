package defpackage;

import com.vuitton.android.presentation.screen.privacy.PrivacyViewModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class mp0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76335b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PrivacyViewModel f76336c;

    public /* synthetic */ mp0(PrivacyViewModel privacyViewModel, int i2) {
        this.f76335b = i2;
        this.f76336c = privacyViewModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f76335b;
        PrivacyViewModel privacyViewModel = this.f76336c;
        switch (i2) {
            case 0:
                privacyViewModel.xc(false);
                break;
            case 1:
                privacyViewModel.za(false);
                break;
            case 2:
                privacyViewModel.xc(true);
                break;
            case 3:
                privacyViewModel.za(true);
                break;
            case 4:
                privacyViewModel.xc(true);
                break;
            default:
                privacyViewModel.za(true);
                break;
        }
        return Unit.f71739a;
    }
}
