package com.vuitton.android.presentation.screen.booking;

import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.hilt.lifecycle.viewmodel.compose.HiltViewModelKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.compose.LifecycleEffectKt;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import androidx.navigation3.runtime.NavBackStack;
import com.vuitton.android.presentation.screen.booking.form.BookingExperienceViewModel;
import com.vuitton.android.presentation.screen.booking.form.BookingExperienceViewModelImpl;
import com.vuitton.android.presentation.screen.booking.form.components.BookingReservationComposableKt;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormUiModel;
import com.vuitton.android.presentation.screen.booking.list.BookingListViewModelImpl;
import com.vuitton.android.presentation.screen.booking.list.components.BookingListComposableKt;
import com.vuitton.foundation.model.domain.model.booking.BookingId;
import com.vuitton.foundation.model.domain.model.booking.PreBookId;
import dagger.hilt.android.lifecycle.HiltViewModelExtensions;
import defpackage.ba0;
import defpackage.jf;
import defpackage.md;
import defpackage.sf;
import defpackage.tb0;
import defpackage.y0;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class d implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f54397b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BookingListViewModelImpl f54398c;
    public final /* synthetic */ SnackbarHostState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ NavBackStack f54399e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f54400f;
    public final /* synthetic */ Function1 g;

    public /* synthetic */ d(BookingListViewModelImpl bookingListViewModelImpl, SnackbarHostState snackbarHostState, NavBackStack navBackStack, Function0 function0, Function1 function1) {
        this.f54398c = bookingListViewModelImpl;
        this.d = snackbarHostState;
        this.f54399e = navBackStack;
        this.f54400f = function0;
        this.g = function1;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2 = this.f54397b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        final NavBackStack navBackStack = this.f54399e;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ((MyBookingsRoutes.List) obj).getClass();
                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Lifecycle.Event event = Lifecycle.Event.ON_RESUME;
                    BookingListViewModelImpl bookingListViewModelImpl = this.f54398c;
                    boolean zY = composer.y(bookingListViewModelImpl);
                    Object objX = composer.x();
                    if (zY || objX == composer$Companion$Empty$1) {
                        objX = new jf(bookingListViewModelImpl, 1);
                        composer.q(objX);
                    }
                    LifecycleEffectKt.a(event, null, (Function0) objX, composer, 6);
                    boolean zY2 = composer.y(navBackStack);
                    Object objX2 = composer.x();
                    if (zY2 || objX2 == composer$Companion$Empty$1) {
                        objX2 = new Function1<BookingId, Unit>() { // from class: com.vuitton.android.presentation.screen.booking.MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$3$1$2$1
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj4) {
                                String str = ((BookingId) obj4).f66743a;
                                str.getClass();
                                navBackStack.a(new MyBookingsRoutes.Details(str, null));
                                return Unit.f71739a;
                            }
                        };
                        composer.q(objX2);
                    }
                    Function1 function1 = (Function1) objX2;
                    boolean zY3 = composer.y(bookingListViewModelImpl);
                    Function1 function2 = this.g;
                    boolean zK = zY3 | composer.K(function2);
                    Object objX3 = composer.x();
                    if (zK || objX3 == composer$Companion$Empty$1) {
                        objX3 = new sf(bookingListViewModelImpl, function2, 1);
                        composer.q(objX3);
                    }
                    BookingListComposableKt.a(bookingListViewModelImpl, this.d, function1, (Function1) objX3, this.f54400f, composer, 48);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            default:
                MyBookingsRoutes.Modify modify = (MyBookingsRoutes.Modify) obj;
                Composer composer2 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                modify.getClass();
                if ((iIntValue2 & 6) == 0) {
                    iIntValue2 |= composer2.K(modify) ? 4 : 2;
                }
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 19) != 18)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    boolean z = (iIntValue2 & 14) == 4;
                    Object objX4 = composer2.x();
                    if (z || objX4 == composer$Companion$Empty$1) {
                        objX4 = new tb0(modify, 8);
                        composer2.q(objX4);
                    }
                    Function1 function3 = (Function1) objX4;
                    ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(composer2);
                    if (viewModelStoreOwnerA == null) {
                        md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                        return null;
                    }
                    BookingExperienceViewModel bookingExperienceViewModel = (BookingExperienceViewModel) ViewModelKt.a(Reflection.f71922a.b(BookingExperienceViewModelImpl.class), viewModelStoreOwnerA, null, HiltViewModelKt.a(viewModelStoreOwnerA, composer2), viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? HiltViewModelExtensions.a(((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras(), function3) : HiltViewModelExtensions.a(CreationExtras.Empty.f13578c, function3), composer2);
                    Unit unit = Unit.f71739a;
                    final BookingListViewModelImpl bookingListViewModelImpl2 = this.f54398c;
                    boolean zY4 = composer2.y(bookingListViewModelImpl2);
                    Object objX5 = composer2.x();
                    if (zY4 || objX5 == composer$Companion$Empty$1) {
                        objX5 = new MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$3$3$1$1(bookingListViewModelImpl2, null);
                        composer2.q(objX5);
                    }
                    EffectsKt.e(composer2, unit, (Function2) objX5);
                    StateFlow stateFlow = bookingListViewModelImpl2.q;
                    Object objX6 = composer2.x();
                    if (objX6 == composer$Companion$Empty$1) {
                        objX6 = new ba0(15);
                        composer2.q(objX6);
                    }
                    Function1 function4 = (Function1) objX6;
                    boolean zY5 = composer2.y(bookingListViewModelImpl2);
                    Object objX7 = composer2.x();
                    if (zY5 || objX7 == composer$Companion$Empty$1) {
                        objX7 = new Function3<PreBookId, BookingId, BookingFormUiModel, Unit>() { // from class: com.vuitton.android.presentation.screen.booking.MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$3$3$3$1
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj4, Object obj5, Object obj6) {
                                BookingId bookingId = (BookingId) obj5;
                                String str = bookingId != null ? bookingId.f66743a : null;
                                BookingFormUiModel bookingFormUiModel = (BookingFormUiModel) obj6;
                                bookingFormUiModel.getClass();
                                if (str != null) {
                                    bookingListViewModelImpl2.Bc(str, bookingFormUiModel);
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer2.q(objX7);
                    }
                    Function3 function5 = (Function3) objX7;
                    boolean zY6 = composer2.y(navBackStack);
                    Function0 function0 = this.f54400f;
                    boolean zK2 = zY6 | composer2.K(function0);
                    Object objX8 = composer2.x();
                    if (zK2 || objX8 == composer$Companion$Empty$1) {
                        objX8 = new y0(navBackStack, function0, 8);
                        composer2.q(objX8);
                    }
                    Function0 function6 = (Function0) objX8;
                    boolean zY7 = composer2.y(navBackStack) | composer2.K(function0);
                    Object objX9 = composer2.x();
                    if (zY7 || objX9 == composer$Companion$Empty$1) {
                        objX9 = new y0(navBackStack, function0, 9);
                        composer2.q(objX9);
                    }
                    BookingReservationComposableKt.a(bookingExperienceViewModel, stateFlow, this.d, function4, function5, function6, (Function0) objX9, this.g, composer2, 3456);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ d(BookingListViewModelImpl bookingListViewModelImpl, SnackbarHostState snackbarHostState, NavBackStack navBackStack, Function1 function1, Function0 function0) {
        this.f54398c = bookingListViewModelImpl;
        this.d = snackbarHostState;
        this.f54399e = navBackStack;
        this.g = function1;
        this.f54400f = function0;
    }
}
