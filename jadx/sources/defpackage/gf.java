package defpackage;

import androidx.compose.foundation.layout.RowScope;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.res.StringResources_androidKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationPushCardContent;
import com.vuitton.android.designkit.ui.theme.molecules.LVPushCardKt;
import com.vuitton.android.designkit.ui.theme.templates.LVEmptyViewKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.booking.confirmation.components.BookingConfirmationScreenKt;
import com.vuitton.android.presentation.screen.booking.confirmation.models.BookingConfirmationViewState;
import com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DistantRepairBottomSheetDatePickerKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairCalendarViewState;
import com.vuitton.android.presentation.screen.pdp.components.PdpReferencesRowKt;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpCustomizationContainerKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ConfigurationUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.instore.components.PersonalSelectionsInStoreComposableKt;
import com.vuitton.android.presentation.screen.personalselections.detail.instore.models.PersonalSelectionsInStoreViewState;
import com.vuitton.foundation.model.domain.model.product.universal.ProductBackground;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class gf implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69384b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f69385c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f69386e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f69387f;
    public final /* synthetic */ int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f69388h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f69389i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f69390j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f69391k;

    public /* synthetic */ gf(RowScope rowScope, ConfigurationPushCardContent configurationPushCardContent, Painter painter, Function2 function2, String str, String str2, String str3, int i2, int i3) {
        this.f69384b = 3;
        this.f69388h = rowScope;
        this.f69386e = configurationPushCardContent;
        this.f69389i = painter;
        this.f69385c = function2;
        this.d = str;
        this.f69390j = str2;
        this.f69391k = str3;
        this.f69387f = i2;
        this.g = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f69384b;
        Object obj3 = this.f69389i;
        int i3 = this.f69387f;
        Object obj4 = this.f69385c;
        Object obj5 = this.f69391k;
        Object obj6 = this.f69386e;
        Object obj7 = this.d;
        Object obj8 = this.f69390j;
        Object obj9 = this.f69388h;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                BookingConfirmationScreenKt.d((BookingConfirmationViewState) obj9, (Function0) obj6, (Function0) obj3, (Function1) obj7, (Function1) obj8, (Function2) obj4, (Function1) obj5, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1), this.g);
                break;
            case 1:
                ((Integer) obj2).getClass();
                DistantRepairBottomSheetDatePickerKt.a((String) obj9, (DistantRepairCalendarViewState) obj3, (SnackbarHostState) obj8, (Function2) obj4, (Function1) obj7, (Function0) obj6, (String) obj5, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1), this.g);
                break;
            case 2:
                ((Integer) obj2).getClass();
                LVEmptyViewKt.e((Modifier) obj9, (SnackbarHostState) obj7, (String) obj8, (String) obj5, (Function0) obj6, (String) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1), this.g);
                break;
            case 3:
                ((Integer) obj2).getClass();
                LVPushCardKt.b((RowScope) obj9, (ConfigurationPushCardContent) obj6, (Painter) obj3, (Function2) obj4, (String) obj7, (String) obj8, (String) obj5, (Composer) obj, RecomposeScopeImplKt.a(1 | i3), this.g);
                break;
            case 4:
                ((Integer) obj2).getClass();
                PdpCustomizationContainerKt.b((Modifier) obj9, (ConfigurationUiModel) obj6, (String) obj3, (String) obj7, (String) obj8, (String) obj5, (Function2) obj4, (Composer) obj, RecomposeScopeImplKt.a(1 | i3), this.g);
                break;
            case 5:
                ((Integer) obj2).getClass();
                PdpReferencesRowKt.a((Modifier) obj9, (String) obj6, (ProductBackground) obj3, (String) obj7, (String) obj8, (List) obj5, (String) obj4, (Composer) obj, RecomposeScopeImplKt.a(1 | i3), this.g);
                break;
            default:
                PersonalSelectionsInStoreViewState personalSelectionsInStoreViewState = (PersonalSelectionsInStoreViewState) obj9;
                ContactUsUiModel contactUsUiModel = (ContactUsUiModel) obj8;
                Function1 function1 = (Function1) obj7;
                Function0 function0 = (Function0) obj6;
                LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj5;
                Function3 function3 = (Function3) obj4;
                Function0 function2 = (Function0) obj3;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(1 & iIntValue, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    String strC = StringResources_androidKt.c(composer, ((PersonalSelectionsInStoreViewState.Success) personalSelectionsInStoreViewState).f62557a.getTitleRes());
                    boolean zK = composer.K(function1) | composer.K(function0);
                    Object objX = composer.x();
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (zK || objX == composer$Companion$Empty$1) {
                        objX = new wz(function1, function0, 8);
                        composer.q(objX);
                    }
                    Function0 function4 = (Function0) objX;
                    boolean zY = composer.y(lVModalBottomSheetState);
                    Object objX2 = composer.x();
                    if (zY || objX2 == composer$Companion$Empty$1) {
                        objX2 = new t8(lVModalBottomSheetState, 13);
                        composer.q(objX2);
                    }
                    Function0 function5 = (Function0) objX2;
                    boolean zK2 = composer.K(function3) | composer.d(i3);
                    int i4 = this.g;
                    boolean zD = zK2 | composer.d(i4);
                    Object objX3 = composer.x();
                    if (zD || objX3 == composer$Companion$Empty$1) {
                        objX3 = new tj(function3, i3, i4, 7);
                        composer.q(objX3);
                    }
                    PersonalSelectionsInStoreComposableKt.a(strC, contactUsUiModel, function4, function5, (Function1) objX3, function2, composer, 0);
                } else {
                    composer.D();
                }
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ gf(Modifier modifier, SnackbarHostState snackbarHostState, String str, String str2, Function0 function0, String str3, Function0 function1, int i2, int i3) {
        this.f69384b = 2;
        this.f69388h = modifier;
        this.d = snackbarHostState;
        this.f69390j = str;
        this.f69391k = str2;
        this.f69386e = function0;
        this.f69385c = str3;
        this.f69389i = function1;
        this.f69387f = i2;
        this.g = i3;
    }

    public /* synthetic */ gf(Modifier modifier, Object obj, Object obj2, String str, String str2, Object obj3, Object obj4, int i2, int i3, int i4) {
        this.f69384b = i4;
        this.f69388h = modifier;
        this.f69386e = obj;
        this.f69389i = obj2;
        this.d = str;
        this.f69390j = str2;
        this.f69391k = obj3;
        this.f69385c = obj4;
        this.f69387f = i2;
        this.g = i3;
    }

    public /* synthetic */ gf(BookingConfirmationViewState bookingConfirmationViewState, Function0 function0, Function0 function1, Function1 function2, Function1 function3, Function2 function4, Function1 function5, int i2, int i3) {
        this.f69384b = 0;
        this.f69388h = bookingConfirmationViewState;
        this.f69386e = function0;
        this.f69389i = function1;
        this.d = function2;
        this.f69390j = function3;
        this.f69385c = function4;
        this.f69391k = function5;
        this.f69387f = i2;
        this.g = i3;
    }

    public /* synthetic */ gf(PersonalSelectionsInStoreViewState personalSelectionsInStoreViewState, ContactUsUiModel contactUsUiModel, Function1 function1, Function0 function0, LVModalBottomSheetState lVModalBottomSheetState, Function3 function3, int i2, int i3, Function0 function2) {
        this.f69384b = 6;
        this.f69388h = personalSelectionsInStoreViewState;
        this.f69390j = contactUsUiModel;
        this.d = function1;
        this.f69386e = function0;
        this.f69391k = lVModalBottomSheetState;
        this.f69385c = function3;
        this.f69387f = i2;
        this.g = i3;
        this.f69389i = function2;
    }

    public /* synthetic */ gf(String str, DistantRepairCalendarViewState distantRepairCalendarViewState, SnackbarHostState snackbarHostState, Function2 function2, Function1 function1, Function0 function0, String str2, int i2, int i3) {
        this.f69384b = 1;
        this.f69388h = str;
        this.f69389i = distantRepairCalendarViewState;
        this.f69390j = snackbarHostState;
        this.f69385c = function2;
        this.d = function1;
        this.f69386e = function0;
        this.f69391k = str2;
        this.f69387f = i2;
        this.g = i3;
    }
}
