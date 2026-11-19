package defpackage;

import androidx.compose.material3.SheetValue;
import com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModel;
import com.vuitton.android.presentation.screen.options.notifications.models.NotificationsPreferencesBottomSheet;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class pg0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78852b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NotificationsPreferencesViewModel f78853c;

    public /* synthetic */ pg0(NotificationsPreferencesViewModel notificationsPreferencesViewModel, int i2) {
        this.f78852b = i2;
        this.f78853c = notificationsPreferencesViewModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f78852b;
        NotificationsPreferencesViewModel notificationsPreferencesViewModel = this.f78853c;
        switch (i2) {
            case 0:
                notificationsPreferencesViewModel.M();
                break;
            default:
                notificationsPreferencesViewModel.m3(NotificationsPreferencesBottomSheet.NoOptInCustomization.f59947e);
                SheetValue sheetValue = SheetValue.Hidden;
                break;
        }
        return Unit.f71739a;
    }
}
