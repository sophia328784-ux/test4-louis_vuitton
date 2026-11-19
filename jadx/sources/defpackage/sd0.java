package defpackage;

import com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class sd0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79775b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MyInformationViewModel f79776c;

    public /* synthetic */ sd0(MyInformationViewModel myInformationViewModel, int i2) {
        this.f79775b = i2;
        this.f79776c = myInformationViewModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f79775b;
        MyInformationViewModel myInformationViewModel = this.f79776c;
        switch (i2) {
            case 0:
                myInformationViewModel.z3();
                myInformationViewModel.Y7();
                break;
            default:
                myInformationViewModel.z3();
                myInformationViewModel.Y7();
                break;
        }
        return Unit.f71739a;
    }
}
