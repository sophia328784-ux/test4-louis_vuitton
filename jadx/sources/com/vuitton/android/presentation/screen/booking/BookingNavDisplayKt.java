package com.vuitton.android.presentation.screen.booking;

import android.content.Context;
import androidx.activity.compose.ActivityResultRegistryKt;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.hilt.lifecycle.viewmodel.compose.HiltViewModelKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import androidx.lifecycle.viewmodel.navigation3.ViewModelStoreNavEntryDecorator;
import androidx.lifecycle.viewmodel.navigation3.ViewModelStoreNavEntryDecoratorKt;
import androidx.navigation3.runtime.EntryProviderScope;
import androidx.navigation3.runtime.NavBackStack;
import androidx.navigation3.runtime.NavEntryDecorator;
import androidx.navigation3.runtime.SaveableStateHolderNavEntryDecorator;
import androidx.navigation3.runtime.SaveableStateHolderNavEntryDecoratorKt;
import androidx.navigation3.ui.NavDisplayKt;
import com.vuitton.android.presentation.screen.booking.confirmation.BookingConfirmationViewModel;
import com.vuitton.android.presentation.screen.booking.confirmation.BookingConfirmationViewModelImpl;
import com.vuitton.android.presentation.screen.booking.confirmation.components.BookingConfirmationComposableKt;
import com.vuitton.android.presentation.screen.booking.form.BookingExperienceViewModel;
import com.vuitton.android.presentation.screen.booking.form.BookingExperienceViewModelImpl;
import com.vuitton.android.presentation.screen.booking.form.components.BookingReservationComposableKt;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormUiModel;
import com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModel;
import com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModelImpl;
import com.vuitton.android.presentation.screen.booking.summary.components.BookingSummaryComposableKt;
import com.vuitton.foundation.model.domain.model.booking.BookingId;
import com.vuitton.foundation.model.domain.model.booking.ExperienceId;
import com.vuitton.foundation.model.domain.model.booking.PreBookId;
import dagger.hilt.android.internal.lifecycle.HiltViewModelFactory;
import dagger.hilt.android.lifecycle.HiltViewModelExtensions;
import defpackage.c1;
import defpackage.cj;
import defpackage.eg;
import defpackage.f1;
import defpackage.md;
import defpackage.n0;
import defpackage.n00;
import defpackage.r;
import defpackage.re;
import defpackage.t;
import defpackage.u;
import defpackage.x0;
import defpackage.y0;
import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.flow.StateFlow;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingNavDisplayKt {
    public static final void a(final NavBackStack navBackStack, final Function1 function1, final Function0 function0, Composer composer, int i2) {
        GapComposer gapComposer;
        int i3;
        final PrebookSummaryViewModel prebookSummaryViewModel;
        char c2;
        navBackStack.getClass();
        function1.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-970104221);
        int i4 = i2 | (gapComposerH.K(navBackStack) ? 4 : 2) | (gapComposerH.y(function1) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128);
        if (gapComposerH.p(i4 & 1, (i4 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(gapComposerH);
            if (viewModelStoreOwnerA == null) {
                md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                return;
            }
            gapComposer = gapComposerH;
            HiltViewModelFactory hiltViewModelFactoryA = HiltViewModelKt.a(viewModelStoreOwnerA, gapComposer);
            CreationExtras defaultViewModelCreationExtras = viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c;
            ReflectionFactory reflectionFactory = Reflection.f71922a;
            PrebookSummaryViewModel prebookSummaryViewModel2 = (PrebookSummaryViewModel) ViewModelKt.a(reflectionFactory.b(PrebookSummaryViewModelImpl.class), viewModelStoreOwnerA, null, hiltViewModelFactoryA, defaultViewModelCreationExtras, gapComposer);
            Context context = (Context) gapComposer.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX = gapComposer.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = n00.b(gapComposer);
            }
            final SnackbarHostState snackbarHostState = (SnackbarHostState) objX;
            Unit unit = Unit.f71739a;
            boolean zY = gapComposer.y(prebookSummaryViewModel2) | gapComposer.y(context);
            Object objX2 = gapComposer.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new BookingNavDisplayKt$BookingNavDisplay$1$1(prebookSummaryViewModel2, snackbarHostState, context, null);
                gapComposer.q(objX2);
            }
            EffectsKt.e(gapComposer, unit, (Function2) objX2);
            int i5 = i4 & 14;
            boolean z = i5 == 4;
            Object objX3 = gapComposer.x();
            if (z || objX3 == composer$Companion$Empty$1) {
                objX3 = new x0(navBackStack, 2);
                gapComposer.q(objX3);
            }
            Function0 function2 = (Function0) objX3;
            ActivityResultContracts$StartActivityForResult activityResultContracts$StartActivityForResult = new ActivityResultContracts$StartActivityForResult();
            boolean zK = gapComposer.K(function2) | ((i4 & 896) == 256);
            Object objX4 = gapComposer.x();
            if (zK || objX4 == composer$Companion$Empty$1) {
                i3 = 0;
                objX4 = new eg(function2, function0, 0);
                gapComposer.q(objX4);
            } else {
                i3 = 0;
            }
            ManagedActivityResultLauncher managedActivityResultLauncherA = ActivityResultRegistryKt.a(activityResultContracts$StartActivityForResult, (Function1) objX4, gapComposer, i3);
            boolean zY2 = (i5 == 4) | gapComposer.y(prebookSummaryViewModel2) | gapComposer.K(function2) | gapComposer.y(managedActivityResultLauncherA) | gapComposer.y(context);
            Object objX5 = gapComposer.x();
            if (zY2 || objX5 == composer$Companion$Empty$1) {
                prebookSummaryViewModel = prebookSummaryViewModel2;
                c2 = 0;
                BookingNavDisplayKt$BookingNavDisplay$2$1 bookingNavDisplayKt$BookingNavDisplay$2$1 = new BookingNavDisplayKt$BookingNavDisplay$2$1(prebookSummaryViewModel, navBackStack, function2, managedActivityResultLauncherA, context, null);
                gapComposer.q(bookingNavDisplayKt$BookingNavDisplay$2$1);
                objX5 = bookingNavDisplayKt$BookingNavDisplay$2$1;
            } else {
                prebookSummaryViewModel = prebookSummaryViewModel2;
                c2 = 0;
            }
            EffectsKt.e(gapComposer, unit, (Function2) objX5);
            SaveableStateHolderNavEntryDecorator saveableStateHolderNavEntryDecoratorA = SaveableStateHolderNavEntryDecoratorKt.a(gapComposer);
            ViewModelStoreNavEntryDecorator viewModelStoreNavEntryDecoratorA = ViewModelStoreNavEntryDecoratorKt.a(gapComposer);
            NavEntryDecorator[] navEntryDecoratorArr = new NavEntryDecorator[2];
            navEntryDecoratorArr[c2] = saveableStateHolderNavEntryDecoratorA;
            navEntryDecoratorArr[1] = viewModelStoreNavEntryDecoratorA;
            List listP = CollectionsKt.P(navEntryDecoratorArr);
            gapComposer.L(-262149412);
            EntryProviderScope entryProviderScope = new EntryProviderScope(new Function1() { // from class: com.vuitton.android.presentation.screen.booking.BookingNavDisplayKt$BookingNavDisplay$$inlined$entryProvider$default$1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    throw new IllegalStateException(cj.i(obj, "Unknown screen "));
                }
            });
            final int i6 = 0;
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-1906606517, new Function3() { // from class: com.vuitton.android.presentation.screen.booking.b
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    int i7 = i6;
                    Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                    final NavBackStack navBackStack2 = navBackStack;
                    switch (i7) {
                        case 0:
                            BookingRoutes.Reservation reservation = (BookingRoutes.Reservation) obj;
                            Composer composer2 = (Composer) obj2;
                            int iIntValue = ((Integer) obj3).intValue();
                            reservation.getClass();
                            if ((iIntValue & 6) == 0) {
                                iIntValue |= composer2.K(reservation) ? 4 : 2;
                            }
                            if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                boolean z2 = (iIntValue & 14) == 4;
                                Object objX6 = composer2.x();
                                if (z2 || objX6 == composer$Companion$Empty$2) {
                                    objX6 = new c1(reservation, 22);
                                    composer2.q(objX6);
                                }
                                Function1 function3 = (Function1) objX6;
                                ViewModelStoreOwner viewModelStoreOwnerA2 = LocalViewModelStoreOwner.a(composer2);
                                if (viewModelStoreOwnerA2 == null) {
                                    md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                                    return null;
                                }
                                BookingExperienceViewModel bookingExperienceViewModel = (BookingExperienceViewModel) ViewModelKt.a(Reflection.f71922a.b(BookingExperienceViewModelImpl.class), viewModelStoreOwnerA2, null, HiltViewModelKt.a(viewModelStoreOwnerA2, composer2), viewModelStoreOwnerA2 instanceof HasDefaultViewModelProviderFactory ? HiltViewModelExtensions.a(((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA2).getDefaultViewModelCreationExtras(), function3) : HiltViewModelExtensions.a(CreationExtras.Empty.f13578c, function3), composer2);
                                final PrebookSummaryViewModel prebookSummaryViewModel3 = prebookSummaryViewModel;
                                StateFlow s = prebookSummaryViewModel3.getS();
                                boolean zY3 = composer2.y(prebookSummaryViewModel3);
                                Object objX7 = composer2.x();
                                if (zY3 || objX7 == composer$Companion$Empty$2) {
                                    BookingNavDisplayKt$BookingNavDisplay$3$1$1$1 bookingNavDisplayKt$BookingNavDisplay$3$1$1$1 = new BookingNavDisplayKt$BookingNavDisplay$3$1$1$1(1, prebookSummaryViewModel3, PrebookSummaryViewModel.class, "addPreBook", "addPreBook(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;)V", 0);
                                    composer2.q(bookingNavDisplayKt$BookingNavDisplay$3$1$1$1);
                                    objX7 = bookingNavDisplayKt$BookingNavDisplay$3$1$1$1;
                                }
                                Function1 function4 = (Function1) ((KFunction) objX7);
                                boolean zY4 = composer2.y(prebookSummaryViewModel3);
                                Object objX8 = composer2.x();
                                if (zY4 || objX8 == composer$Companion$Empty$2) {
                                    objX8 = new Function3<PreBookId, BookingId, BookingFormUiModel, Unit>() { // from class: com.vuitton.android.presentation.screen.booking.BookingNavDisplayKt$BookingNavDisplay$3$1$2$1
                                        @Override // kotlin.jvm.functions.Function3
                                        public final Object A(Object obj4, Object obj5, Object obj6) {
                                            PreBookId preBookId = (PreBookId) obj4;
                                            String str = preBookId != null ? preBookId.f66774a : null;
                                            BookingFormUiModel bookingFormUiModel = (BookingFormUiModel) obj6;
                                            bookingFormUiModel.getClass();
                                            if (str != null) {
                                                prebookSummaryViewModel3.qc(str, bookingFormUiModel);
                                            }
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer2.q(objX8);
                                }
                                Function3 function5 = (Function3) objX8;
                                boolean zY5 = composer2.y(navBackStack2);
                                Function0 function6 = function0;
                                boolean zK2 = zY5 | composer2.K(function6);
                                Object objX9 = composer2.x();
                                if (zK2 || objX9 == composer$Companion$Empty$2) {
                                    objX9 = new y0(navBackStack2, function6, 3);
                                    composer2.q(objX9);
                                }
                                BookingReservationComposableKt.a(bookingExperienceViewModel, s, snackbarHostState, function4, function5, function6, (Function0) objX9, function1, composer2, KyberEngine.KyberPolyBytes);
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        default:
                            Composer composer3 = (Composer) obj2;
                            int iIntValue2 = ((Integer) obj3).intValue();
                            ((BookingRoutes.Summary) obj).getClass();
                            if (composer3.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                boolean zY6 = composer3.y(navBackStack2);
                                final PrebookSummaryViewModel prebookSummaryViewModel4 = prebookSummaryViewModel;
                                boolean zY7 = zY6 | composer3.y(prebookSummaryViewModel4);
                                Object objX10 = composer3.x();
                                if (zY7 || objX10 == composer$Companion$Empty$2) {
                                    objX10 = new Function2<ExperienceId, PreBookId, Unit>() { // from class: com.vuitton.android.presentation.screen.booking.BookingNavDisplayKt$BookingNavDisplay$3$2$1$1
                                        @Override // kotlin.jvm.functions.Function2
                                        public final Object invoke(Object obj4, Object obj5) {
                                            String str = ((ExperienceId) obj4).f66755a;
                                            PreBookId preBookId = (PreBookId) obj5;
                                            String str2 = preBookId != null ? preBookId.f66774a : null;
                                            str.getClass();
                                            navBackStack2.a(new BookingRoutes.Reservation(str, str2, false, 4, null));
                                            prebookSummaryViewModel4.q5();
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer3.q(objX10);
                                }
                                Function2 function7 = (Function2) objX10;
                                boolean zY8 = composer3.y(navBackStack2) | composer3.y(prebookSummaryViewModel4);
                                Function1 function8 = function1;
                                boolean zK3 = zY8 | composer3.K(function8);
                                Object objX11 = composer3.x();
                                if (zK3 || objX11 == composer$Companion$Empty$2) {
                                    objX11 = new n0(navBackStack2, prebookSummaryViewModel4, function8, 8);
                                    composer3.q(objX11);
                                }
                                BookingSummaryComposableKt.a(prebookSummaryViewModel4, snackbarHostState, function0, function7, (Function1) objX11, composer3, 48);
                            } else {
                                composer3.D();
                            }
                            return Unit.f71739a;
                    }
                }
            }, gapComposer);
            BookingNavDisplayKt$BookingNavDisplay$lambda$5$$inlined$entry$default$1 bookingNavDisplayKt$BookingNavDisplay$lambda$5$$inlined$entry$default$1 = new Function1<BookingRoutes.Reservation, Object>() { // from class: com.vuitton.android.presentation.screen.booking.BookingNavDisplayKt$BookingNavDisplay$lambda$5$$inlined$entry$default$1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return obj.toString();
                }
            };
            final Map mapC = MapsKt.c();
            entryProviderScope.a(reflectionFactory.b(BookingRoutes.Reservation.class), bookingNavDisplayKt$BookingNavDisplay$lambda$5$$inlined$entry$default$1, new Function1<BookingRoutes.Reservation, Map<String, ? extends Object>>() { // from class: com.vuitton.android.presentation.screen.booking.BookingNavDisplayKt$BookingNavDisplay$lambda$5$$inlined$entry$default$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return mapC;
                }
            }, composableLambdaImplB);
            Boolean bool = Boolean.TRUE;
            final Map mapH = MapsKt.h(new Pair("scale_transition", bool));
            final int i7 = 1;
            PrebookSummaryViewModel prebookSummaryViewModel3 = prebookSummaryViewModel;
            entryProviderScope.a(reflectionFactory.b(BookingRoutes.Summary.class), new Function1<BookingRoutes.Summary, Object>() { // from class: com.vuitton.android.presentation.screen.booking.BookingNavDisplayKt$BookingNavDisplay$lambda$5$$inlined$entry$default$3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return obj.toString();
                }
            }, new Function1<BookingRoutes.Summary, Map<String, ? extends Object>>() { // from class: com.vuitton.android.presentation.screen.booking.BookingNavDisplayKt$BookingNavDisplay$lambda$5$$inlined$entry$default$4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return mapH;
                }
            }, ComposableLambdaKt.b(2065442714, new Function3() { // from class: com.vuitton.android.presentation.screen.booking.b
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    int i8 = i7;
                    Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                    final NavBackStack navBackStack2 = navBackStack;
                    switch (i8) {
                        case 0:
                            BookingRoutes.Reservation reservation = (BookingRoutes.Reservation) obj;
                            Composer composer2 = (Composer) obj2;
                            int iIntValue = ((Integer) obj3).intValue();
                            reservation.getClass();
                            if ((iIntValue & 6) == 0) {
                                iIntValue |= composer2.K(reservation) ? 4 : 2;
                            }
                            if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                boolean z2 = (iIntValue & 14) == 4;
                                Object objX6 = composer2.x();
                                if (z2 || objX6 == composer$Companion$Empty$2) {
                                    objX6 = new c1(reservation, 22);
                                    composer2.q(objX6);
                                }
                                Function1 function3 = (Function1) objX6;
                                ViewModelStoreOwner viewModelStoreOwnerA2 = LocalViewModelStoreOwner.a(composer2);
                                if (viewModelStoreOwnerA2 == null) {
                                    md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                                    return null;
                                }
                                BookingExperienceViewModel bookingExperienceViewModel = (BookingExperienceViewModel) ViewModelKt.a(Reflection.f71922a.b(BookingExperienceViewModelImpl.class), viewModelStoreOwnerA2, null, HiltViewModelKt.a(viewModelStoreOwnerA2, composer2), viewModelStoreOwnerA2 instanceof HasDefaultViewModelProviderFactory ? HiltViewModelExtensions.a(((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA2).getDefaultViewModelCreationExtras(), function3) : HiltViewModelExtensions.a(CreationExtras.Empty.f13578c, function3), composer2);
                                final PrebookSummaryViewModel prebookSummaryViewModel4 = prebookSummaryViewModel;
                                StateFlow s = prebookSummaryViewModel4.getS();
                                boolean zY3 = composer2.y(prebookSummaryViewModel4);
                                Object objX7 = composer2.x();
                                if (zY3 || objX7 == composer$Companion$Empty$2) {
                                    BookingNavDisplayKt$BookingNavDisplay$3$1$1$1 bookingNavDisplayKt$BookingNavDisplay$3$1$1$1 = new BookingNavDisplayKt$BookingNavDisplay$3$1$1$1(1, prebookSummaryViewModel4, PrebookSummaryViewModel.class, "addPreBook", "addPreBook(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;)V", 0);
                                    composer2.q(bookingNavDisplayKt$BookingNavDisplay$3$1$1$1);
                                    objX7 = bookingNavDisplayKt$BookingNavDisplay$3$1$1$1;
                                }
                                Function1 function4 = (Function1) ((KFunction) objX7);
                                boolean zY4 = composer2.y(prebookSummaryViewModel4);
                                Object objX8 = composer2.x();
                                if (zY4 || objX8 == composer$Companion$Empty$2) {
                                    objX8 = new Function3<PreBookId, BookingId, BookingFormUiModel, Unit>() { // from class: com.vuitton.android.presentation.screen.booking.BookingNavDisplayKt$BookingNavDisplay$3$1$2$1
                                        @Override // kotlin.jvm.functions.Function3
                                        public final Object A(Object obj4, Object obj5, Object obj6) {
                                            PreBookId preBookId = (PreBookId) obj4;
                                            String str = preBookId != null ? preBookId.f66774a : null;
                                            BookingFormUiModel bookingFormUiModel = (BookingFormUiModel) obj6;
                                            bookingFormUiModel.getClass();
                                            if (str != null) {
                                                prebookSummaryViewModel4.qc(str, bookingFormUiModel);
                                            }
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer2.q(objX8);
                                }
                                Function3 function5 = (Function3) objX8;
                                boolean zY5 = composer2.y(navBackStack2);
                                Function0 function6 = function0;
                                boolean zK2 = zY5 | composer2.K(function6);
                                Object objX9 = composer2.x();
                                if (zK2 || objX9 == composer$Companion$Empty$2) {
                                    objX9 = new y0(navBackStack2, function6, 3);
                                    composer2.q(objX9);
                                }
                                BookingReservationComposableKt.a(bookingExperienceViewModel, s, snackbarHostState, function4, function5, function6, (Function0) objX9, function1, composer2, KyberEngine.KyberPolyBytes);
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        default:
                            Composer composer3 = (Composer) obj2;
                            int iIntValue2 = ((Integer) obj3).intValue();
                            ((BookingRoutes.Summary) obj).getClass();
                            if (composer3.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                boolean zY6 = composer3.y(navBackStack2);
                                final PrebookSummaryViewModel prebookSummaryViewModel5 = prebookSummaryViewModel;
                                boolean zY7 = zY6 | composer3.y(prebookSummaryViewModel5);
                                Object objX10 = composer3.x();
                                if (zY7 || objX10 == composer$Companion$Empty$2) {
                                    objX10 = new Function2<ExperienceId, PreBookId, Unit>() { // from class: com.vuitton.android.presentation.screen.booking.BookingNavDisplayKt$BookingNavDisplay$3$2$1$1
                                        @Override // kotlin.jvm.functions.Function2
                                        public final Object invoke(Object obj4, Object obj5) {
                                            String str = ((ExperienceId) obj4).f66755a;
                                            PreBookId preBookId = (PreBookId) obj5;
                                            String str2 = preBookId != null ? preBookId.f66774a : null;
                                            str.getClass();
                                            navBackStack2.a(new BookingRoutes.Reservation(str, str2, false, 4, null));
                                            prebookSummaryViewModel5.q5();
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer3.q(objX10);
                                }
                                Function2 function7 = (Function2) objX10;
                                boolean zY8 = composer3.y(navBackStack2) | composer3.y(prebookSummaryViewModel5);
                                Function1 function8 = function1;
                                boolean zK3 = zY8 | composer3.K(function8);
                                Object objX11 = composer3.x();
                                if (zK3 || objX11 == composer$Companion$Empty$2) {
                                    objX11 = new n0(navBackStack2, prebookSummaryViewModel5, function8, 8);
                                    composer3.q(objX11);
                                }
                                BookingSummaryComposableKt.a(prebookSummaryViewModel5, snackbarHostState, function0, function7, (Function1) objX11, composer3, 48);
                            } else {
                                composer3.D();
                            }
                            return Unit.f71739a;
                    }
                }
            }, gapComposer));
            final Map mapH2 = MapsKt.h(new Pair("scale_transition", bool));
            entryProviderScope.a(reflectionFactory.b(BookingRoutes.Confirmation.class), new Function1<BookingRoutes.Confirmation, Object>() { // from class: com.vuitton.android.presentation.screen.booking.BookingNavDisplayKt$BookingNavDisplay$lambda$5$$inlined$entry$default$5
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return obj.toString();
                }
            }, new Function1<BookingRoutes.Confirmation, Map<String, ? extends Object>>() { // from class: com.vuitton.android.presentation.screen.booking.BookingNavDisplayKt$BookingNavDisplay$lambda$5$$inlined$entry$default$6
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return mapH2;
                }
            }, ComposableLambdaKt.b(242235124, new Function3() { // from class: com.vuitton.android.presentation.screen.booking.c
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    ((BookingRoutes.Confirmation) obj).getClass();
                    if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        ViewModelStoreOwner viewModelStoreOwnerA2 = LocalViewModelStoreOwner.a(composer2);
                        if (viewModelStoreOwnerA2 == null) {
                            md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                            return null;
                        }
                        BookingConfirmationViewModel bookingConfirmationViewModel = (BookingConfirmationViewModel) ViewModelKt.a(Reflection.f71922a.b(BookingConfirmationViewModelImpl.class), viewModelStoreOwnerA2, null, HiltViewModelKt.a(viewModelStoreOwnerA2, composer2), viewModelStoreOwnerA2 instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA2).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, composer2);
                        final NavBackStack navBackStack2 = navBackStack;
                        boolean zY3 = composer2.y(navBackStack2);
                        Object objX6 = composer2.x();
                        if (zY3 || objX6 == Composer.Companion.f7939a) {
                            objX6 = new Function1<BookingId, Unit>() { // from class: com.vuitton.android.presentation.screen.booking.BookingNavDisplayKt$BookingNavDisplay$3$3$1$1
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj4) {
                                    String str = ((BookingId) obj4).f66743a;
                                    str.getClass();
                                    navBackStack2.a(new BookingRoutes.Pass(str, null));
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(objX6);
                        }
                        BookingConfirmationComposableKt.a(bookingConfirmationViewModel, function0, (Function1) objX6, composer2, 0);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposer));
            ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(-1858883366, new r((Object) prebookSummaryViewModel3, (Object) snackbarHostState, (Object) navBackStack, (Function) function0, 3), gapComposer);
            BookingNavDisplayKt$BookingNavDisplay$lambda$5$$inlined$entry$default$7 bookingNavDisplayKt$BookingNavDisplay$lambda$5$$inlined$entry$default$7 = new Function1<BookingRoutes.PersonalInfo, Object>() { // from class: com.vuitton.android.presentation.screen.booking.BookingNavDisplayKt$BookingNavDisplay$lambda$5$$inlined$entry$default$7
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return obj.toString();
                }
            };
            final Map mapC2 = MapsKt.c();
            entryProviderScope.a(reflectionFactory.b(BookingRoutes.PersonalInfo.class), bookingNavDisplayKt$BookingNavDisplay$lambda$5$$inlined$entry$default$7, new Function1<BookingRoutes.PersonalInfo, Map<String, ? extends Object>>() { // from class: com.vuitton.android.presentation.screen.booking.BookingNavDisplayKt$BookingNavDisplay$lambda$5$$inlined$entry$default$8
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return mapC2;
                }
            }, composableLambdaImplB2);
            ComposableLambdaImpl composableLambdaImplB3 = ComposableLambdaKt.b(1833220950, new f1(navBackStack, function0, 10), gapComposer);
            BookingNavDisplayKt$BookingNavDisplay$lambda$5$$inlined$entry$default$9 bookingNavDisplayKt$BookingNavDisplay$lambda$5$$inlined$entry$default$9 = new Function1<BookingRoutes.Pass, Object>() { // from class: com.vuitton.android.presentation.screen.booking.BookingNavDisplayKt$BookingNavDisplay$lambda$5$$inlined$entry$default$9
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return obj.toString();
                }
            };
            final Map mapC3 = MapsKt.c();
            entryProviderScope.a(reflectionFactory.b(BookingRoutes.Pass.class), bookingNavDisplayKt$BookingNavDisplay$lambda$5$$inlined$entry$default$9, new Function1<BookingRoutes.Pass, Map<String, ? extends Object>>() { // from class: com.vuitton.android.presentation.screen.booking.BookingNavDisplayKt$BookingNavDisplay$lambda$5$$inlined$entry$default$10
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return mapC3;
                }
            }, composableLambdaImplB3);
            androidx.navigation3.runtime.a aVar = new androidx.navigation3.runtime.a(entryProviderScope);
            gapComposer.Z(false);
            boolean z2 = i5 == 4;
            Object objX6 = gapComposer.x();
            if (z2 || objX6 == composer$Companion$Empty$1) {
                objX6 = new x0(navBackStack, 4);
                gapComposer.q(objX6);
            }
            Function0 function3 = (Function0) objX6;
            Object objX7 = gapComposer.x();
            if (objX7 == composer$Companion$Empty$1) {
                objX7 = new re(17);
                gapComposer.q(objX7);
            }
            Function1 function4 = (Function1) objX7;
            Object objX8 = gapComposer.x();
            if (objX8 == composer$Companion$Empty$1) {
                objX8 = new re(18);
                gapComposer.q(objX8);
            }
            Function1 function5 = (Function1) objX8;
            Object objX9 = gapComposer.x();
            if (objX9 == composer$Companion$Empty$1) {
                objX9 = new t(19);
                gapComposer.q(objX9);
            }
            Function2 function6 = (Function2) objX9;
            NavBackStack.Companion companion = NavBackStack.INSTANCE;
            NavDisplayKt.c(navBackStack, null, null, function3, listP, null, null, function4, function5, function6, aVar, gapComposer, i5 | 805306368);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u(navBackStack, function1, function0, i2, 14);
        }
    }
}
