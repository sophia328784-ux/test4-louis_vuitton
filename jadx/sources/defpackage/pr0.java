package defpackage;

import com.vuitton.android.presentation.screen.repairs.RepairBffViewModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class pr0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78916b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RepairBffViewModel f78917c;

    public /* synthetic */ pr0(RepairBffViewModel repairBffViewModel, int i2) {
        this.f78916b = i2;
        this.f78917c = repairBffViewModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f78916b;
        RepairBffViewModel repairBffViewModel = this.f78917c;
        switch (i2) {
            case 0:
                repairBffViewModel.c();
                break;
            case 1:
                repairBffViewModel.c();
                break;
            default:
                repairBffViewModel.c();
                break;
        }
        return Unit.f71739a;
    }
}
