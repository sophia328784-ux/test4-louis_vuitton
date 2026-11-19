package defpackage;

import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.screen.distantrepairs.form.formsections.DistantRepairContactComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.StepState;
import com.vuitton.android.presentation.screen.distantrepairs.models.PhoneNumber;
import com.vuitton.android.presentation.screen.distantrepairs.models.Step2StateUIModel;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.components.PersonalSelectionsCurationAdvisorScreenKt;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.models.PersonalSelectionsCurationAdvisorProductState;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.models.PersonalSelectionsCurationAdvisorViewState;
import java.util.ArrayList;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class du implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68662b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f68663c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f68664e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function f68665f;
    public final /* synthetic */ Function1 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Function f68666h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Function1 f68667i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f68668j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f68669k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;

    public /* synthetic */ du(Modifier modifier, PersonalSelectionsCurationAdvisorViewState.Success success, PersonalSelectionsCurationAdvisorProductState personalSelectionsCurationAdvisorProductState, PagerState pagerState, boolean z, Function1 function1, Function1 function2, Function1 function3, Function1 function4, Function1 function5, Function1 function6, Function2 function7, int i2) {
        this.f68668j = modifier;
        this.f68669k = success;
        this.f68663c = personalSelectionsCurationAdvisorProductState;
        this.d = pagerState;
        this.f68664e = z;
        this.g = function1;
        this.f68667i = function2;
        this.m = function3;
        this.l = function4;
        this.f68665f = function5;
        this.f68666h = function6;
        this.n = function7;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f68662b) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                DistantRepairContactComponentKt.e((StepState) this.f68668j, (Step2StateUIModel) this.f68669k, (String) this.f68663c, this.f68664e, (String) this.d, (FormUiModel) this.l, (Function3) this.f68665f, this.g, this.f68667i, (Function0) this.f68666h, (Function1) this.m, (Function2) this.n, (Composer) obj, iA);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(1);
                DistantRepairContactComponentKt.b((String) this.f68663c, (PhoneNumber) this.f68668j, (ArrayList) this.f68669k, (String) this.d, (String) this.l, (String) this.m, (String) this.n, this.f68664e, (Function3) this.f68665f, this.g, (Function0) this.f68666h, this.f68667i, (Composer) obj, iA2);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(7);
                PersonalSelectionsCurationAdvisorScreenKt.b((Modifier) this.f68668j, (PersonalSelectionsCurationAdvisorViewState.Success) this.f68669k, (PersonalSelectionsCurationAdvisorProductState) this.f68663c, (PagerState) this.d, this.f68664e, this.g, this.f68667i, (Function1) this.m, (Function1) this.l, (Function1) this.f68665f, (Function1) this.f68666h, (Function2) this.n, (Composer) obj, iA3);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ du(StepState stepState, Step2StateUIModel step2StateUIModel, String str, boolean z, String str2, FormUiModel formUiModel, Function3 function3, Function1 function1, Function1 function2, Function0 function0, Function1 function4, Function2 function5, int i2) {
        this.f68668j = stepState;
        this.f68669k = step2StateUIModel;
        this.f68663c = str;
        this.f68664e = z;
        this.d = str2;
        this.l = formUiModel;
        this.f68665f = function3;
        this.g = function1;
        this.f68667i = function2;
        this.f68666h = function0;
        this.m = function4;
        this.n = function5;
    }

    public /* synthetic */ du(String str, PhoneNumber phoneNumber, ArrayList arrayList, String str2, String str3, String str4, String str5, boolean z, Function3 function3, Function1 function1, Function0 function0, Function1 function2, int i2) {
        this.f68663c = str;
        this.f68668j = phoneNumber;
        this.f68669k = arrayList;
        this.d = str2;
        this.l = str3;
        this.m = str4;
        this.n = str5;
        this.f68664e = z;
        this.f68665f = function3;
        this.g = function1;
        this.f68666h = function0;
        this.f68667i = function2;
    }
}
