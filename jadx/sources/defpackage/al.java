package defpackage;

import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.screen.certificates.CertificateViewModel;
import com.vuitton.android.presentation.screen.certificates.components.list.CertificateComposableKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairFormBottomSheetScreen;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairFormBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairCalendarViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairFormViewState;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModel;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.components.OsaContactFormComposableKt;
import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonsFormViewState;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class al implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f539b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f540c;
    public final /* synthetic */ Function2 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function f541e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f542f;
    public final /* synthetic */ Function0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Function0 f543h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Function0 f544i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Function f545j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f546k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Function o;
    public final /* synthetic */ Function p;

    public /* synthetic */ al(Modifier modifier, CertificateViewModel certificateViewModel, Function0 function0, Function1 function1, Function1 function2, Function1 function3, Function1 function4, Function1 function5, Function0 function6, Function0 function7, Function1 function8, Function3 function9, Function0 function10, Function2 function11, int i2) {
        this.f546k = modifier;
        this.l = certificateViewModel;
        this.f542f = function0;
        this.f540c = function1;
        this.f541e = function2;
        this.f545j = function3;
        this.m = function4;
        this.n = function5;
        this.g = function6;
        this.f543h = function7;
        this.o = function8;
        this.p = function9;
        this.f544i = function10;
        this.d = function11;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f539b;
        Function function = this.p;
        Function function2 = this.o;
        Object obj3 = this.n;
        Object obj4 = this.m;
        Function function3 = this.f545j;
        Function function4 = this.f541e;
        Object obj5 = this.l;
        Object obj6 = this.f546k;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                CertificateComposableKt.a((Modifier) obj6, (CertificateViewModel) obj5, this.f542f, this.f540c, (Function1) function4, (Function1) function3, (Function1) obj4, (Function1) obj3, this.g, this.f543h, (Function1) function2, (Function3) function, this.f544i, this.d, (Composer) obj, iA);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(3073);
                DistantRepairFormBottomSheetScreenKt.c((DistantRepairFormBottomSheetScreen) obj6, (DistantRepairFormViewState) obj5, (DistantRepairCalendarViewState) obj4, (SnackbarHostState) obj3, this.f540c, this.d, (Function1) function4, this.f542f, this.g, this.f543h, this.f544i, (Function0) function2, (Function0) function, (Function1) function3, (Composer) obj, iA2);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(1);
                OsaContactFormComposableKt.a((OsaContactFormViewModel) obj6, (OsaReasonsFormViewState) obj5, this.f542f, this.g, this.f543h, this.f544i, (Function0) function4, (Function0) function3, this.d, (Function0) obj4, (Function0) obj3, (Function0) function2, (Function0) function, this.f540c, (Composer) obj, iA3);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ al(DistantRepairFormBottomSheetScreen distantRepairFormBottomSheetScreen, DistantRepairFormViewState distantRepairFormViewState, DistantRepairCalendarViewState distantRepairCalendarViewState, SnackbarHostState snackbarHostState, Function1 function1, Function2 function2, Function1 function3, Function0 function0, Function0 function4, Function0 function5, Function0 function6, Function0 function7, Function0 function8, Function1 function9, int i2) {
        this.f546k = distantRepairFormBottomSheetScreen;
        this.l = distantRepairFormViewState;
        this.m = distantRepairCalendarViewState;
        this.n = snackbarHostState;
        this.f540c = function1;
        this.d = function2;
        this.f541e = function3;
        this.f542f = function0;
        this.g = function4;
        this.f543h = function5;
        this.f544i = function6;
        this.o = function7;
        this.p = function8;
        this.f545j = function9;
    }

    public /* synthetic */ al(OsaContactFormViewModel osaContactFormViewModel, OsaReasonsFormViewState osaReasonsFormViewState, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Function0 function4, Function0 function5, Function2 function6, Function0 function7, Function0 function8, Function0 function9, Function0 function10, Function1 function11, int i2) {
        this.f546k = osaContactFormViewModel;
        this.l = osaReasonsFormViewState;
        this.f542f = function0;
        this.g = function1;
        this.f543h = function2;
        this.f544i = function3;
        this.f541e = function4;
        this.f545j = function5;
        this.d = function6;
        this.m = function7;
        this.n = function8;
        this.o = function9;
        this.p = function10;
        this.f540c = function11;
    }
}
