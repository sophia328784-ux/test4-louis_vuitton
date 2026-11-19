package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.navigation3.runtime.NavBackStack;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoNavDisplayKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.components.PersonalSelectionsCurationAdvisorComposableKt;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.models.PersonalSelectionsCurationAdvisorProductState;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.models.PersonalSelectionsCurationAdvisorViewState;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class oe implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76757b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f76758c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f76759e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f76760f;
    public final /* synthetic */ Function0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Function0 f76761h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Function0 f76762i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Function1 f76763j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Function1 f76764k;
    public final /* synthetic */ Function1 l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Function p;
    public final /* synthetic */ Function q;
    public final /* synthetic */ Function r;
    public final /* synthetic */ Function s;
    public final /* synthetic */ Function t;

    public /* synthetic */ oe(NavBackStack navBackStack, BeautyVtoViewModel beautyVtoViewModel, PermissionsViewModel permissionsViewModel, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Function1 function4, Function0 function5, Function0 function6, Function0 function7, Function0 function8, Function0 function9, Function1 function10, Function0 function11, Function0 function12, Function0 function13, Function1 function14, int i2) {
        this.m = navBackStack;
        this.n = beautyVtoViewModel;
        this.o = permissionsViewModel;
        this.f76758c = function0;
        this.d = function1;
        this.f76759e = function2;
        this.f76760f = function3;
        this.f76763j = function4;
        this.g = function5;
        this.f76761h = function6;
        this.f76762i = function7;
        this.p = function8;
        this.q = function9;
        this.f76764k = function10;
        this.r = function11;
        this.s = function12;
        this.t = function13;
        this.l = function14;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f76757b;
        Function function = this.t;
        Function function2 = this.s;
        Function function3 = this.r;
        Function function4 = this.q;
        Function function5 = this.p;
        Object obj3 = this.o;
        Object obj4 = this.n;
        Object obj5 = this.m;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                BeautyVtoNavDisplayKt.a((NavBackStack) obj5, (BeautyVtoViewModel) obj4, (PermissionsViewModel) obj3, this.f76758c, this.d, this.f76759e, this.f76760f, this.f76763j, this.g, this.f76761h, this.f76762i, (Function0) function5, (Function0) function4, this.f76764k, (Function0) function3, (Function0) function2, (Function0) function, this.l, (Composer) obj, iA);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(1);
                PersonalSelectionsCurationAdvisorComposableKt.a((PersonalSelectionsCurationAdvisorViewState) obj5, (PersonalSelectionsCurationAdvisorProductState) obj4, (ContactUsUiModel) obj3, (Function3) function5, this.f76758c, this.d, this.f76759e, this.f76760f, this.g, this.f76761h, this.f76762i, this.f76763j, this.f76764k, this.l, (Function1) function4, (Function1) function3, (Function1) function2, (Function1) function, (Composer) obj, iA2);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ oe(PersonalSelectionsCurationAdvisorViewState personalSelectionsCurationAdvisorViewState, PersonalSelectionsCurationAdvisorProductState personalSelectionsCurationAdvisorProductState, ContactUsUiModel contactUsUiModel, Function3 function3, Function0 function0, Function0 function1, Function0 function2, Function0 function4, Function0 function5, Function0 function6, Function0 function7, Function1 function8, Function1 function9, Function1 function10, Function1 function11, Function1 function12, Function1 function13, Function1 function14, int i2) {
        this.m = personalSelectionsCurationAdvisorViewState;
        this.n = personalSelectionsCurationAdvisorProductState;
        this.o = contactUsUiModel;
        this.p = function3;
        this.f76758c = function0;
        this.d = function1;
        this.f76759e = function2;
        this.f76760f = function4;
        this.g = function5;
        this.f76761h = function6;
        this.f76762i = function7;
        this.f76763j = function8;
        this.f76764k = function9;
        this.l = function10;
        this.q = function11;
        this.r = function12;
        this.s = function13;
        this.t = function14;
    }
}
