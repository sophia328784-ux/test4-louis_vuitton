package defpackage;

import com.vuitton.android.presentation.screen.main.MainActivityViewModel;
import com.vuitton.android.presentation.screen.main.models.MainActivityUiEvent;
import com.vuitton.android.presentation.screen.main.models.MainTopLevelDestination;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class qb0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79066b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MainActivityViewModel f79067c;

    public /* synthetic */ qb0(MainActivityViewModel mainActivityViewModel, int i2) {
        this.f79066b = i2;
        this.f79067c = mainActivityViewModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f79066b) {
            case 0:
                this.f79067c.k2(true);
                break;
            case 1:
                this.f79067c.F6(new MainActivityUiEvent.NavigateToTopLevelDestination(MainTopLevelDestination.CATALOG, null));
                break;
            default:
                this.f79067c.f0();
                break;
        }
        return Unit.f71739a;
    }
}
