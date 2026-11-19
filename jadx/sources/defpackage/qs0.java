package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.repairs.list.components.RepairListBffScreenKt;
import com.vuitton.android.presentation.screen.repairs.list.components.RepairListScreenKt;
import com.vuitton.android.presentation.screen.repairs.models.RepairsViewState;
import com.vuitton.android.presentation.screen.repairs.models.bff.RepairsBffViewState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class qs0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79148b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LVModalBottomSheetState f79149c;
    public final /* synthetic */ ContactUsUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function3 f79150e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f79151f;
    public final /* synthetic */ Function1 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Function1 f79152h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Function1 f79153i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Function1 f79154j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Function0 f79155k;
    public final /* synthetic */ Function0 l;
    public final /* synthetic */ Function1 m;
    public final /* synthetic */ Function0 n;
    public final /* synthetic */ int o;
    public final /* synthetic */ int p;
    public final /* synthetic */ Object q;

    public /* synthetic */ qs0(RepairsViewState repairsViewState, LVModalBottomSheetState lVModalBottomSheetState, ContactUsUiModel contactUsUiModel, Function3 function3, Function0 function0, Function1 function1, Function1 function2, Function1 function4, Function1 function5, Function0 function6, Function0 function7, Function1 function8, Function0 function9, int i2, int i3) {
        this.q = repairsViewState;
        this.f79149c = lVModalBottomSheetState;
        this.d = contactUsUiModel;
        this.f79150e = function3;
        this.f79151f = function0;
        this.g = function1;
        this.f79152h = function2;
        this.f79153i = function4;
        this.f79154j = function5;
        this.f79155k = function6;
        this.l = function7;
        this.m = function8;
        this.n = function9;
        this.o = i2;
        this.p = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f79148b) {
            case 0:
                ((Integer) obj2).intValue();
                int iA = RecomposeScopeImplKt.a(this.o | 1);
                int iA2 = RecomposeScopeImplKt.a(this.p);
                RepairListBffScreenKt.b((RepairsBffViewState) this.q, this.d, this.f79149c, this.f79150e, this.f79151f, this.g, this.f79152h, this.f79153i, this.f79154j, this.f79155k, this.l, this.m, this.n, (Composer) obj, iA, iA2);
                break;
            default:
                ((Integer) obj2).intValue();
                int iA3 = RecomposeScopeImplKt.a(this.o | 1);
                int iA4 = RecomposeScopeImplKt.a(this.p);
                RepairListScreenKt.c((RepairsViewState) this.q, this.f79149c, this.d, this.f79150e, this.f79151f, this.g, this.f79152h, this.f79153i, this.f79154j, this.f79155k, this.l, this.m, this.n, (Composer) obj, iA3, iA4);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ qs0(RepairsBffViewState repairsBffViewState, ContactUsUiModel contactUsUiModel, LVModalBottomSheetState lVModalBottomSheetState, Function3 function3, Function0 function0, Function1 function1, Function1 function2, Function1 function4, Function1 function5, Function0 function6, Function0 function7, Function1 function8, Function0 function9, int i2, int i3) {
        this.q = repairsBffViewState;
        this.d = contactUsUiModel;
        this.f79149c = lVModalBottomSheetState;
        this.f79150e = function3;
        this.f79151f = function0;
        this.g = function1;
        this.f79152h = function2;
        this.f79153i = function4;
        this.f79154j = function5;
        this.f79155k = function6;
        this.l = function7;
        this.m = function8;
        this.n = function9;
        this.o = i2;
        this.p = i3;
    }
}
