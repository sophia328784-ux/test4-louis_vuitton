package defpackage;

import com.vuitton.android.presentation.applink.AppLinkTrackingUiModel;
import com.vuitton.android.presentation.screen.main.MainActivityViewModel;
import com.vuitton.android.presentation.screen.main.components.MainActivityBottomSheetType;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ob0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76745b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MainActivityViewModel f76746c;
    public final /* synthetic */ MainActivityBottomSheetType d;

    public /* synthetic */ ob0(MainActivityViewModel mainActivityViewModel, MainActivityBottomSheetType mainActivityBottomSheetType) {
        this.f76746c = mainActivityViewModel;
        this.d = mainActivityBottomSheetType;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f76745b;
        MainActivityBottomSheetType mainActivityBottomSheetType = this.d;
        MainActivityViewModel mainActivityViewModel = this.f76746c;
        switch (i2) {
            case 0:
                if (mainActivityBottomSheetType instanceof MainActivityBottomSheetType.ChangeLocaleBottomSheet) {
                    mainActivityViewModel.gb(AppLinkTrackingUiModel.CloseSwapLocaleClickedEvent.f50542a);
                    mainActivityViewModel.k8();
                }
                break;
            default:
                mainActivityViewModel.lb(((MainActivityBottomSheetType.ChangeLocaleBottomSheet) mainActivityBottomSheetType).f59103a.f50547a);
                mainActivityViewModel.gb(AppLinkTrackingUiModel.ChangeLocationClickedEvent.f50541a);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ ob0(MainActivityBottomSheetType mainActivityBottomSheetType, MainActivityViewModel mainActivityViewModel) {
        this.d = mainActivityBottomSheetType;
        this.f76746c = mainActivityViewModel;
    }
}
