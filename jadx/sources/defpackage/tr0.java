package defpackage;

import com.vuitton.android.presentation.screen.repairs.RepairViewModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class tr0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80129b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RepairViewModel f80130c;

    public /* synthetic */ tr0(RepairViewModel repairViewModel, int i2) {
        this.f80129b = i2;
        this.f80130c = repairViewModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f80129b;
        RepairViewModel repairViewModel = this.f80130c;
        switch (i2) {
            case 0:
                repairViewModel.c();
                break;
            default:
                repairViewModel.c();
                break;
        }
        return Unit.f71739a;
    }
}
