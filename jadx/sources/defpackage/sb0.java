package defpackage;

import com.vuitton.android.presentation.screen.filter.quickaccess.FiltersDropDownType;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class sb0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79763b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ QuickAccessFiltersViewModel f79764c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ sb0(QuickAccessFiltersViewModel quickAccessFiltersViewModel, Function0 function0, int i2) {
        this.f79763b = i2;
        this.f79764c = quickAccessFiltersViewModel;
        this.d = function0;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f79763b) {
            case 0:
                this.f79764c.o2(FiltersDropDownType.SORT_BY);
                this.d.mo47invoke();
                break;
            case 1:
                this.f79764c.o2(FiltersDropDownType.MORES_FILTERS);
                this.d.mo47invoke();
                break;
            case 2:
                this.f79764c.o2(FiltersDropDownType.SORT_BY);
                this.d.mo47invoke();
                break;
            default:
                this.f79764c.o2(FiltersDropDownType.MORES_FILTERS);
                this.d.mo47invoke();
                break;
        }
        return Unit.f71739a;
    }
}
