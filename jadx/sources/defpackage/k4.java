package defpackage;

import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.material3.DatePickerColors;
import androidx.compose.material3.DatePickerFormatter;
import androidx.compose.material3.DatePickerKt;
import androidx.compose.material3.SelectableDates;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.internal.CalendarModel;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.navigation.NavHostController;
import androidx.navigation.compose.NavHostKt;
import com.vuitton.android.presentation.contact.compose.ContactUsModalBottomSheetKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModel;
import com.vuitton.android.presentation.screen.account.addressautocomplete.components.AddressAutocompleteComposableKt;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.AddressAutocompleteScreenContext;
import com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModel;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthEntryPoint;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.cart.NativeCartNavHostKt;
import com.vuitton.android.presentation.screen.cart.NativeCartViewModel;
import com.vuitton.android.presentation.screen.cart.models.CartPreviousScreen;
import com.vuitton.android.presentation.screen.catalog.components.CatalogSubcategoryScreenKt;
import com.vuitton.android.presentation.screen.catalog.models.CatalogViewState;
import com.vuitton.android.presentation.screen.catalog.models.CategoryUiModel;
import com.vuitton.android.presentation.screen.certificates.components.list.CertificateScreenKt;
import com.vuitton.android.presentation.screen.certificates.components.nfc.CertificateNfcScanScreenKt;
import com.vuitton.android.presentation.screen.certificates.model.CertificateViewState;
import com.vuitton.android.presentation.screen.certificates.nfc.model.CertificateNfcScanViewState;
import com.vuitton.android.presentation.screen.distantrepairs.form.formsections.DistantRepairProductComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethod;
import com.vuitton.android.presentation.screen.osa.list.components.OsaListScreenKt;
import com.vuitton.android.presentation.screen.osa.list.models.OsaListViewState;
import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceViewModel;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.ranges.IntRange;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class k4 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71552b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f71553c;
    public final /* synthetic */ Function d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f71554e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f71555f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f71556h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f71557i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f71558j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f71559k;
    public final /* synthetic */ Object l;

    public /* synthetic */ k4(NavHostController navHostController, String str, Modifier modifier, Alignment alignment, Function1 function1, Function1 function2, Function1 function3, Function1 function4, Function1 function5, int i2) {
        this.f71552b = 8;
        this.f71555f = navHostController;
        this.f71556h = str;
        this.g = modifier;
        this.f71553c = alignment;
        this.d = function1;
        this.f71557i = function2;
        this.f71558j = function3;
        this.f71559k = function4;
        this.l = function5;
        this.f71554e = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f71552b;
        int i3 = this.f71554e;
        Object obj3 = this.l;
        Object obj4 = this.f71559k;
        Object obj5 = this.f71558j;
        Function function = this.d;
        Object obj6 = this.f71557i;
        Object obj7 = this.f71553c;
        Object obj8 = this.f71556h;
        Object obj9 = this.g;
        Object obj10 = this.f71555f;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                AddressAutocompleteComposableKt.a((AddressEditorViewModel) obj10, (AddressAutocompleteViewModel) obj9, (Function0) obj7, (String) obj8, (String) obj6, (AddressAutocompleteScreenContext) obj5, (TrackingAuthOrigin) obj4, (TrackingAuthEntryPoint) obj3, (Function1) function, (Composer) obj, RecomposeScopeImplKt.a(196609), this.f71554e);
                break;
            case 1:
                ((Integer) obj2).getClass();
                CatalogSubcategoryScreenKt.a((Modifier) obj10, (CatalogViewState) obj9, (CategoryUiModel) obj8, (Function0) obj7, (Function1) function, (Function1) obj6, (Function1) obj5, (Function1) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 2:
                ((Integer) obj2).getClass();
                CertificateNfcScanScreenKt.a((CertificateNfcScanViewState) obj10, (Function0) obj7, (Function3) obj9, (Function0) obj8, (Function0) obj6, (Function0) obj5, (Function0) obj4, (Function0) obj3, (Function0) function, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 3:
                ((Integer) obj2).getClass();
                CertificateScreenKt.b((Modifier) obj10, (ComposableLambdaImpl) obj9, (SnackbarHostState) obj8, (CertificateViewState.Success) obj6, (Function0) obj7, (Function1) function, (Function1) obj5, (Function1) obj4, (Function2) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 4:
                ((Integer) obj2).intValue();
                ContactUsModalBottomSheetKt.a((ContactUsUiModel) obj10, (Function0) obj7, (Function0) obj9, (Function0) obj8, (Function0) obj6, (Function0) obj5, (Function0) obj4, (Function0) obj3, (Function0) function, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 5:
                ((Integer) obj2).getClass();
                DatePickerKt.g((LazyListState) obj10, (Long) obj9, (Function1) function, (Function1) obj7, (CalendarModel) obj8, (IntRange) obj6, (DatePickerFormatter) obj5, (SelectableDates) obj4, (DatePickerColors) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 6:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                DistantRepairProductComponentKt.b((DistantRepairContactMethod) obj10, (String) obj8, (List) obj9, this.f71554e, (List) obj6, (Function1) function, (Function1) obj5, (Function1) obj4, (Function1) obj3, (Function0) obj7, (Composer) obj, iA);
                break;
            case 7:
                ((Integer) obj2).getClass();
                NativeCartNavHostKt.a((NativeCartViewModel) obj10, (ReinsuranceViewModel) obj9, (CartPreviousScreen) obj8, (Function0) obj7, (Function2) obj6, (Function1) function, (Function0) obj5, (Function1) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 8:
                ((Integer) obj2).getClass();
                NavHostKt.c((NavHostController) obj10, (String) obj8, (Modifier) obj9, (Alignment) obj7, (Function1) function, (Function1) obj6, (Function1) obj5, (Function1) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            default:
                ((Integer) obj2).intValue();
                OsaListScreenKt.a((OsaListViewState) obj10, (Function2) obj9, (SnackbarHostState) obj8, (Function0) obj7, (Function2) obj6, (Function1) function, (Function0) obj5, (Function1) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ k4(Modifier modifier, ComposableLambdaImpl composableLambdaImpl, SnackbarHostState snackbarHostState, CertificateViewState.Success success, Function0 function0, Function1 function1, Function1 function2, Function1 function3, Function2 function4, int i2) {
        this.f71552b = 3;
        this.f71555f = modifier;
        this.g = composableLambdaImpl;
        this.f71556h = snackbarHostState;
        this.f71557i = success;
        this.f71553c = function0;
        this.d = function1;
        this.f71558j = function2;
        this.f71559k = function3;
        this.l = function4;
        this.f71554e = i2;
    }

    public /* synthetic */ k4(Modifier modifier, CatalogViewState catalogViewState, CategoryUiModel categoryUiModel, Function0 function0, Function1 function1, Function1 function2, Function1 function3, Function1 function4, Function0 function5, int i2) {
        this.f71552b = 1;
        this.f71555f = modifier;
        this.g = catalogViewState;
        this.f71556h = categoryUiModel;
        this.f71553c = function0;
        this.d = function1;
        this.f71557i = function2;
        this.f71558j = function3;
        this.f71559k = function4;
        this.l = function5;
        this.f71554e = i2;
    }

    public /* synthetic */ k4(LazyListState lazyListState, Long l, Function1 function1, Function1 function2, CalendarModel calendarModel, IntRange intRange, DatePickerFormatter datePickerFormatter, SelectableDates selectableDates, DatePickerColors datePickerColors, int i2) {
        this.f71552b = 5;
        this.f71555f = lazyListState;
        this.g = l;
        this.d = function1;
        this.f71553c = function2;
        this.f71556h = calendarModel;
        this.f71557i = intRange;
        this.f71558j = datePickerFormatter;
        this.f71559k = selectableDates;
        this.l = datePickerColors;
        this.f71554e = i2;
    }

    public /* synthetic */ k4(AddressEditorViewModel addressEditorViewModel, AddressAutocompleteViewModel addressAutocompleteViewModel, Function0 function0, String str, String str2, AddressAutocompleteScreenContext addressAutocompleteScreenContext, TrackingAuthOrigin trackingAuthOrigin, TrackingAuthEntryPoint trackingAuthEntryPoint, Function1 function1, int i2, int i3) {
        this.f71552b = 0;
        this.f71555f = addressEditorViewModel;
        this.g = addressAutocompleteViewModel;
        this.f71553c = function0;
        this.f71556h = str;
        this.f71557i = str2;
        this.f71558j = addressAutocompleteScreenContext;
        this.f71559k = trackingAuthOrigin;
        this.l = trackingAuthEntryPoint;
        this.d = function1;
        this.f71554e = i3;
    }

    public /* synthetic */ k4(DistantRepairContactMethod distantRepairContactMethod, String str, List list, int i2, List list2, Function1 function1, Function1 function2, Function1 function3, Function1 function4, Function0 function0, int i3) {
        this.f71552b = 6;
        this.f71555f = distantRepairContactMethod;
        this.f71556h = str;
        this.g = list;
        this.f71554e = i2;
        this.f71557i = list2;
        this.d = function1;
        this.f71558j = function2;
        this.f71559k = function3;
        this.l = function4;
        this.f71553c = function0;
    }

    public /* synthetic */ k4(Object obj, Object obj2, Object obj3, Function0 function0, Function2 function2, Function1 function1, Function0 function3, Function1 function4, Function function, int i2, int i3) {
        this.f71552b = i3;
        this.f71555f = obj;
        this.g = obj2;
        this.f71556h = obj3;
        this.f71553c = function0;
        this.f71557i = function2;
        this.d = function1;
        this.f71558j = function3;
        this.f71559k = function4;
        this.l = function;
        this.f71554e = i2;
    }

    public /* synthetic */ k4(Object obj, Function0 function0, Function function, Function0 function1, Function0 function2, Function0 function3, Function0 function4, Function0 function5, Function0 function6, int i2, int i3) {
        this.f71552b = i3;
        this.f71555f = obj;
        this.f71553c = function0;
        this.g = function;
        this.f71556h = function1;
        this.f71557i = function2;
        this.f71558j = function3;
        this.f71559k = function4;
        this.l = function5;
        this.d = function6;
        this.f71554e = i2;
    }
}
