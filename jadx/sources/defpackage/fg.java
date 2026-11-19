package defpackage;

import androidx.compose.material3.DatePickerColors;
import androidx.compose.material3.DatePickerDialog_androidKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.window.DialogProperties;
import com.sightcall.core.consent.ConsentViewModel;
import com.sightcall.core.consent.compose.ConsentLayoutKt;
import com.vuitton.android.presentation.screen.booking.form.BookingExperienceViewModel;
import com.vuitton.android.presentation.screen.booking.form.components.BookingReservationComposableKt;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderReturnOrExchangeReasonScreenKt;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeViewState;
import com.vuitton.android.presentation.screen.pdp.bottomsheet.SizeGuideBottomSheetContentKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SizeGuideUiModel;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.product.universal.ProductBackground;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class fg implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69134b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f69135c;
    public final /* synthetic */ Function d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f69136e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f69137f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f69138h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f69139i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f69140j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f69141k;

    public /* synthetic */ fg(BookingExperienceViewModel bookingExperienceViewModel, StateFlow stateFlow, SnackbarHostState snackbarHostState, Function1 function1, Function3 function3, Function0 function0, Function0 function2, Function1 function4, int i2) {
        this.f69137f = bookingExperienceViewModel;
        this.g = stateFlow;
        this.f69138h = snackbarHostState;
        this.f69139i = function1;
        this.f69141k = function3;
        this.f69135c = function0;
        this.d = function2;
        this.f69140j = function4;
        this.f69136e = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f69134b;
        int i3 = this.f69136e;
        Function function = this.d;
        Object obj3 = this.f69141k;
        Object obj4 = this.f69140j;
        Object obj5 = this.f69139i;
        Object obj6 = this.f69138h;
        Object obj7 = this.g;
        Object obj8 = this.f69137f;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(i3 | 1);
                BookingReservationComposableKt.a((BookingExperienceViewModel) obj8, (StateFlow) obj7, (SnackbarHostState) obj6, (Function1) obj5, (Function3) obj3, this.f69135c, (Function0) function, (Function1) obj4, (Composer) obj, iA);
                return Unit.f71739a;
            case 1:
                int iIntValue = ((Integer) obj2).intValue();
                return ConsentLayoutKt.ConsentParentScreen$lambda$2((String) obj8, (String) obj7, (String) obj6, (AnnotatedString) obj5, this.f69135c, (Function0) function, (Function0) obj4, (ConsentViewModel) obj3, this.f69136e, (Composer) obj, iIntValue);
            case 2:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(i3 | 1);
                DatePickerDialog_androidKt.a(this.f69135c, (ComposableLambdaImpl) obj8, (Modifier) obj7, (Function2) obj6, (Shape) obj5, (DatePickerColors) obj4, (DialogProperties) obj3, (ComposableLambdaImpl) function, (Composer) obj, iA2);
                return Unit.f71739a;
            case 3:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(i3 | 1);
                OrderReturnOrExchangeReasonScreenKt.d((OrderReturnOrExchangeViewState) obj8, (Function2) obj7, (Function2) obj6, this.f69135c, (Function0) function, (Function0) obj5, (Function0) obj4, (Function0) obj3, (Composer) obj, iA3);
                return Unit.f71739a;
            default:
                ((Integer) obj2).intValue();
                int iA4 = RecomposeScopeImplKt.a(i3 | 1);
                SizeGuideBottomSheetContentKt.a((String) obj8, (String) obj7, (String) obj6, (SizeGuideUiModel) obj5, (InAppDispatch) obj4, (ProductBackground) obj3, this.f69135c, (Function2) function, (Composer) obj, iA4);
                return Unit.f71739a;
        }
    }

    public /* synthetic */ fg(OrderReturnOrExchangeViewState orderReturnOrExchangeViewState, Function2 function2, Function2 function3, Function0 function0, Function0 function1, Function0 function4, Function0 function5, Function0 function6, int i2) {
        this.f69137f = orderReturnOrExchangeViewState;
        this.g = function2;
        this.f69138h = function3;
        this.f69135c = function0;
        this.d = function1;
        this.f69139i = function4;
        this.f69140j = function5;
        this.f69141k = function6;
        this.f69136e = i2;
    }

    public /* synthetic */ fg(String str, String str2, String str3, AnnotatedString annotatedString, Function0 function0, Function0 function1, Function0 function2, ConsentViewModel consentViewModel, int i2) {
        this.f69137f = str;
        this.g = str2;
        this.f69138h = str3;
        this.f69139i = annotatedString;
        this.f69135c = function0;
        this.d = function1;
        this.f69140j = function2;
        this.f69141k = consentViewModel;
        this.f69136e = i2;
    }

    public /* synthetic */ fg(String str, String str2, String str3, SizeGuideUiModel sizeGuideUiModel, InAppDispatch inAppDispatch, ProductBackground productBackground, Function0 function0, Function2 function2, int i2) {
        this.f69137f = str;
        this.g = str2;
        this.f69138h = str3;
        this.f69139i = sizeGuideUiModel;
        this.f69140j = inAppDispatch;
        this.f69141k = productBackground;
        this.f69135c = function0;
        this.d = function2;
        this.f69136e = i2;
    }

    public /* synthetic */ fg(Function0 function0, ComposableLambdaImpl composableLambdaImpl, Modifier modifier, Function2 function2, Shape shape, DatePickerColors datePickerColors, DialogProperties dialogProperties, ComposableLambdaImpl composableLambdaImpl2, int i2) {
        this.f69135c = function0;
        this.f69137f = composableLambdaImpl;
        this.g = modifier;
        this.f69138h = function2;
        this.f69139i = shape;
        this.f69140j = datePickerColors;
        this.f69141k = dialogProperties;
        this.d = composableLambdaImpl2;
        this.f69136e = i2;
    }
}
