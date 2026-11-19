package defpackage;

import com.vuitton.android.presentation.screen.options.accessibility.AccessibilityPreferencesViewModel;
import com.vuitton.android.presentation.screen.options.accessibility.models.AccessibilityPreferencesTrackingUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class j2 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71262b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AccessibilityPreferencesViewModel f71263c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ j2(AccessibilityPreferencesViewModel accessibilityPreferencesViewModel, Function0 function0, int i2) {
        this.f71262b = i2;
        this.f71263c = accessibilityPreferencesViewModel;
        this.d = function0;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f71262b;
        Function0 function0 = this.d;
        AccessibilityPreferencesViewModel accessibilityPreferencesViewModel = this.f71263c;
        switch (i2) {
            case 0:
                accessibilityPreferencesViewModel.I8(AccessibilityPreferencesTrackingUiModel.Close.f59727a);
                function0.mo47invoke();
                break;
            default:
                accessibilityPreferencesViewModel.I8(AccessibilityPreferencesTrackingUiModel.OpenStatement.f59730a);
                function0.mo47invoke();
                break;
        }
        return Unit.f71739a;
    }
}
