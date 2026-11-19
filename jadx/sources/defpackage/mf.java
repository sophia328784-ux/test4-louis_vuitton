package defpackage;

import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.booking.common.models.BookingCTAState;
import com.vuitton.android.presentation.screen.booking.details.components.BookingDetailsScreenKt;
import com.vuitton.android.presentation.screen.booking.list.models.BookingUiModel;
import com.vuitton.android.presentation.screen.booking.personalinfo.infoform.components.BookingInfoFormScreenKt;
import com.vuitton.android.presentation.screen.booking.personalinfo.models.BookingPersonalInfoViewState;
import com.vuitton.android.presentation.screen.catalog.thematicplp.screen.ThematicPlpComposableKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentBffViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import com.vuitton.android.presentation.screen.repairs.components.RepairConfirmAddressBffComposableKt;
import com.vuitton.android.presentation.screen.repairs.components.RepairConfirmAddressComposableKt;
import com.vuitton.android.presentation.screen.repairs.models.RepairsViewState;
import com.vuitton.android.presentation.screen.repairs.models.bff.RepairsBffViewState;
import com.vuitton.android.presentation.screen.services.components.ServicesScreenKt;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.components.TheLookImmersiveArticleDetailScreenKt;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.models.TheLookImmersiveArticleViewState;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class mf implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76259b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f76260c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f76261e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f76262f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f76263h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f76264i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f76265j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f76266k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;

    public /* synthetic */ mf(Modifier modifier, ThematicPlpViewModel thematicPlpViewModel, Function0 function0, Function0 function1, String str, List list, Function1 function2, Function0 function3, String str2, String str3, int i2) {
        this.f76259b = 6;
        this.f76264i = modifier;
        this.g = thematicPlpViewModel;
        this.f76262f = function0;
        this.f76266k = function1;
        this.d = str;
        this.f76265j = list;
        this.f76261e = function2;
        this.l = function3;
        this.m = str2;
        this.f76260c = str3;
        this.f76263h = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f76259b) {
            case 0:
                ((Integer) obj2).getClass();
                BookingDetailsScreenKt.e((BookingUiModel) this.f76264i, (List) this.f76265j, (Function0) this.f76262f, (Function1) this.f76261e, (Function2) this.d, (Function2) this.l, (Function2) this.m, (Function1) this.g, (Function1) this.f76266k, (SnackbarHostState) this.f76260c, (Composer) obj, RecomposeScopeImplKt.a(this.f76263h | 1));
                break;
            case 1:
                ((Integer) obj2).getClass();
                BookingInfoFormScreenKt.a((BookingPersonalInfoViewState) this.f76264i, (BookingCTAState) this.f76265j, (SnackbarHostState) this.f76260c, (Function2) this.d, (Function1) this.f76261e, (Function0) this.f76262f, (Function1) this.g, (Function0) this.f76266k, (Function0) this.l, (Function0) this.m, (Composer) obj, RecomposeScopeImplKt.a(this.f76263h | 1));
                break;
            case 2:
                ((Integer) obj2).getClass();
                RepairConfirmAddressBffComposableKt.c((RepairsBffViewState) this.f76264i, (AssessmentBffViewState) this.f76265j, (SnackbarHostState) this.f76260c, (Function0) this.f76262f, (Function0) this.g, (Function0) this.f76266k, (Function0) this.d, (ContactUsUiModel) this.l, (Function1) this.f76261e, (LVModalBottomSheetState) this.m, (Composer) obj, RecomposeScopeImplKt.a(this.f76263h | 1));
                break;
            case 3:
                ((Integer) obj2).getClass();
                RepairConfirmAddressComposableKt.d((RepairsViewState) this.f76264i, (AssessmentViewState) this.f76265j, (SnackbarHostState) this.f76260c, (Function0) this.f76262f, (Function0) this.g, (Function0) this.f76266k, (Function0) this.d, (ContactUsUiModel) this.l, (Function1) this.f76261e, (LVModalBottomSheetState) this.m, (Composer) obj, RecomposeScopeImplKt.a(this.f76263h | 1));
                break;
            case 4:
                ((Integer) obj2).intValue();
                ServicesScreenKt.e((String) this.f76264i, (String) this.f76265j, (String) this.f76261e, (String) this.g, (String) this.f76266k, (Function0) this.f76262f, (Function0) this.d, (Function0) this.l, (Function0) this.m, (Function0) this.f76260c, (Composer) obj, RecomposeScopeImplKt.a(this.f76263h | 1));
                break;
            case 5:
                ((Integer) obj2).getClass();
                TheLookImmersiveArticleDetailScreenKt.a((TheLookImmersiveArticleViewState) this.f76264i, (String) this.f76265j, (String) this.f76262f, (SharedFlow) this.f76266k, (Function2) this.d, (Function2) this.l, (Function1) this.f76261e, (Function2) this.m, (Function1) this.g, (Function3) this.f76260c, (Composer) obj, RecomposeScopeImplKt.a(this.f76263h | 1));
                break;
            default:
                ((Integer) obj2).getClass();
                ThematicPlpComposableKt.a((Modifier) this.f76264i, (ThematicPlpViewModel) this.g, (Function0) this.f76262f, (Function0) this.f76266k, (String) this.d, (List) this.f76265j, (Function1) this.f76261e, (Function0) this.l, (String) this.m, (String) this.f76260c, (Composer) obj, RecomposeScopeImplKt.a(this.f76263h | 1));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ mf(BookingUiModel bookingUiModel, List list, Function0 function0, Function1 function1, Function2 function2, Function2 function3, Function2 function4, Function1 function5, Function1 function6, SnackbarHostState snackbarHostState, int i2) {
        this.f76259b = 0;
        this.f76264i = bookingUiModel;
        this.f76265j = list;
        this.f76262f = function0;
        this.f76261e = function1;
        this.d = function2;
        this.l = function3;
        this.m = function4;
        this.g = function5;
        this.f76266k = function6;
        this.f76260c = snackbarHostState;
        this.f76263h = i2;
    }

    public /* synthetic */ mf(BookingPersonalInfoViewState bookingPersonalInfoViewState, BookingCTAState bookingCTAState, SnackbarHostState snackbarHostState, Function2 function2, Function1 function1, Function0 function0, Function1 function3, Function0 function4, Function0 function5, Function0 function6, int i2) {
        this.f76259b = 1;
        this.f76264i = bookingPersonalInfoViewState;
        this.f76265j = bookingCTAState;
        this.f76260c = snackbarHostState;
        this.d = function2;
        this.f76261e = function1;
        this.f76262f = function0;
        this.g = function3;
        this.f76266k = function4;
        this.l = function5;
        this.m = function6;
        this.f76263h = i2;
    }

    public /* synthetic */ mf(TheLookImmersiveArticleViewState theLookImmersiveArticleViewState, String str, String str2, SharedFlow sharedFlow, Function2 function2, Function2 function3, Function1 function1, Function2 function4, Function1 function5, Function3 function6, int i2) {
        this.f76259b = 5;
        this.f76264i = theLookImmersiveArticleViewState;
        this.f76265j = str;
        this.f76262f = str2;
        this.f76266k = sharedFlow;
        this.d = function2;
        this.l = function3;
        this.f76261e = function1;
        this.m = function4;
        this.g = function5;
        this.f76260c = function6;
        this.f76263h = i2;
    }

    public /* synthetic */ mf(Object obj, Object obj2, SnackbarHostState snackbarHostState, Function0 function0, Function0 function1, Function0 function2, Function0 function3, ContactUsUiModel contactUsUiModel, Function1 function4, LVModalBottomSheetState lVModalBottomSheetState, int i2, int i3) {
        this.f76259b = i3;
        this.f76264i = obj;
        this.f76265j = obj2;
        this.f76260c = snackbarHostState;
        this.f76262f = function0;
        this.g = function1;
        this.f76266k = function2;
        this.d = function3;
        this.l = contactUsUiModel;
        this.f76261e = function4;
        this.m = lVModalBottomSheetState;
        this.f76263h = i2;
    }

    public /* synthetic */ mf(String str, String str2, String str3, String str4, String str5, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Function0 function4, int i2) {
        this.f76259b = 4;
        this.f76264i = str;
        this.f76265j = str2;
        this.f76261e = str3;
        this.g = str4;
        this.f76266k = str5;
        this.f76262f = function0;
        this.d = function1;
        this.l = function2;
        this.m = function3;
        this.f76260c = function4;
        this.f76263h = i2;
    }
}
