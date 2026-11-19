package defpackage;

import com.vuitton.android.presentation.screen.storemode.StoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.components.catalog.CatalogStoreModeKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class pk implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78868b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ StoreModeViewModel f78869c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ pk(StoreModeViewModel storeModeViewModel, Function0 function0, int i2) {
        this.f78868b = i2;
        this.f78869c = storeModeViewModel;
        this.d = function0;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f78868b;
        Function0 function0 = this.d;
        StoreModeViewModel storeModeViewModel = this.f78869c;
        switch (i2) {
            case 0:
                float f2 = CatalogStoreModeKt.f64850a;
                if (storeModeViewModel.F()) {
                    function0.mo47invoke();
                }
                break;
            case 1:
                storeModeViewModel.G();
                function0.mo47invoke();
                break;
            default:
                storeModeViewModel.G();
                function0.mo47invoke();
                break;
        }
        return Unit.f71739a;
    }
}
