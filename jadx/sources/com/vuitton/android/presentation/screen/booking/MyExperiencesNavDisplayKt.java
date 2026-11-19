package com.vuitton.android.presentation.screen.booking;

import android.content.Context;
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
import androidx.lifecycle.viewmodel.navigation3.ViewModelStoreNavEntryDecoratorKt;
import androidx.navigation3.runtime.EntryProviderScope;
import androidx.navigation3.runtime.NavBackStack;
import androidx.navigation3.runtime.SaveableStateHolderNavEntryDecoratorKt;
import androidx.navigation3.ui.NavDisplayKt;
import com.vuitton.android.presentation.screen.booking.details.components.BookingDetailsComposableKt;
import com.vuitton.android.presentation.screen.booking.list.BookingListViewModelImpl;
import com.vuitton.android.presentation.screen.booking.pass.BookingPassViewModel;
import com.vuitton.android.presentation.screen.booking.pass.BookingPassViewModelImpl;
import com.vuitton.android.presentation.screen.booking.pass.components.BookingPassComposableKt;
import com.vuitton.foundation.model.domain.model.booking.BookingId;
import com.vuitton.foundation.model.domain.model.booking.ExperienceId;
import dagger.hilt.android.lifecycle.HiltViewModelExtensions;
import defpackage.ba0;
import defpackage.cj;
import defpackage.md;
import defpackage.n00;
import defpackage.n50;
import defpackage.od0;
import defpackage.tb0;
import defpackage.uv;
import defpackage.x0;
import defpackage.y0;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class MyExperiencesNavDisplayKt {
    public static final void a(final BookingListViewModelImpl bookingListViewModelImpl, final NavBackStack navBackStack, Function1 function1, final Function0 function0, Composer composer, int i2) {
        final BookingListViewModelImpl bookingListViewModelImpl2;
        navBackStack.getClass();
        function1.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1673325000);
        int i3 = (gapComposerH.y(function0) ? 2048 : 1024) | i2 | (gapComposerH.K(bookingListViewModelImpl) ? 4 : 2) | (gapComposerH.K(navBackStack) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = n00.b(gapComposerH);
            }
            final SnackbarHostState snackbarHostState = (SnackbarHostState) objX;
            Unit unit = Unit.f71739a;
            int i4 = i3 & 14;
            boolean zY = (i4 == 4) | gapComposerH.y(context);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$1$1(bookingListViewModelImpl, snackbarHostState, context, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX2);
            int i5 = i3 & 112;
            boolean z = (i4 == 4) | (i5 == 32) | ((i3 & 896) == 256);
            Object objX3 = gapComposerH.x();
            if (z || objX3 == composer$Companion$Empty$1) {
                objX3 = new MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$2$1(bookingListViewModelImpl, navBackStack, function1, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX3);
            List listP = CollectionsKt.P(SaveableStateHolderNavEntryDecoratorKt.a(gapComposerH), ViewModelStoreNavEntryDecoratorKt.a(gapComposerH));
            gapComposerH.L(-1747497168);
            EntryProviderScope entryProviderScope = new EntryProviderScope(new Function1() { // from class: com.vuitton.android.presentation.screen.booking.MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$$inlined$entryProvider$default$1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    throw new IllegalStateException(cj.i(obj, "Unknown screen "));
                }
            });
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(954255608, new d(bookingListViewModelImpl, snackbarHostState, navBackStack, function1, function0), gapComposerH);
            MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$lambda$3$$inlined$entry$default$1 myExperiencesNavDisplayKt$MyExperiencesNavDisplay$lambda$3$$inlined$entry$default$1 = new Function1<MyBookingsRoutes.List, Object>() { // from class: com.vuitton.android.presentation.screen.booking.MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$lambda$3$$inlined$entry$default$1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return obj.toString();
                }
            };
            final Map mapC = MapsKt.c();
            ReflectionFactory reflectionFactory = Reflection.f71922a;
            entryProviderScope.a(reflectionFactory.b(MyBookingsRoutes.List.class), myExperiencesNavDisplayKt$MyExperiencesNavDisplay$lambda$3$$inlined$entry$default$1, new Function1<MyBookingsRoutes.List, Map<String, ? extends Object>>() { // from class: com.vuitton.android.presentation.screen.booking.MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$lambda$3$$inlined$entry$default$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return mapC;
                }
            }, composableLambdaImplB);
            ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(-36234115, new Function3() { // from class: com.vuitton.android.presentation.screen.booking.e
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    MyBookingsRoutes.Details details = (MyBookingsRoutes.Details) obj;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    details.getClass();
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= composer2.K(details) ? 4 : 2;
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        BookingListViewModelImpl bookingListViewModelImpl3 = bookingListViewModelImpl;
                        StateFlow stateFlow = bookingListViewModelImpl3.q;
                        String str = details.f54328a;
                        final NavBackStack navBackStack2 = navBackStack;
                        boolean zY2 = composer2.y(navBackStack2);
                        Object objX4 = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                        if (zY2 || objX4 == composer$Companion$Empty$2) {
                            objX4 = new od0(navBackStack2);
                            composer2.q(objX4);
                        }
                        Function1 function2 = (Function1) objX4;
                        boolean zY3 = composer2.y(navBackStack2);
                        Function0 function3 = function0;
                        boolean zK = zY3 | composer2.K(function3);
                        Object objX5 = composer2.x();
                        if (zK || objX5 == composer$Companion$Empty$2) {
                            objX5 = new y0(navBackStack2, function3, 10);
                            composer2.q(objX5);
                        }
                        Function0 function4 = (Function0) objX5;
                        boolean zY4 = composer2.y(navBackStack2);
                        Object objX6 = composer2.x();
                        if (zY4 || objX6 == composer$Companion$Empty$2) {
                            objX6 = new Function2<BookingId, ExperienceId, Unit>() { // from class: com.vuitton.android.presentation.screen.booking.MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$3$2$3$1
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj4, Object obj5) {
                                    String str2 = ((BookingId) obj4).f66743a;
                                    String str3 = ((ExperienceId) obj5).f66755a;
                                    str2.getClass();
                                    str3.getClass();
                                    navBackStack2.a(new MyBookingsRoutes.Pass(str2, str3, null));
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(objX6);
                        }
                        BookingDetailsComposableKt.a(bookingListViewModelImpl3, stateFlow, str, snackbarHostState, function2, function4, (Function2) objX6, composer2, 3072);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH);
            MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$lambda$3$$inlined$entry$default$3 myExperiencesNavDisplayKt$MyExperiencesNavDisplay$lambda$3$$inlined$entry$default$3 = new Function1<MyBookingsRoutes.Details, Object>() { // from class: com.vuitton.android.presentation.screen.booking.MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$lambda$3$$inlined$entry$default$3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return obj.toString();
                }
            };
            final Map mapC2 = MapsKt.c();
            entryProviderScope.a(reflectionFactory.b(MyBookingsRoutes.Details.class), myExperiencesNavDisplayKt$MyExperiencesNavDisplay$lambda$3$$inlined$entry$default$3, new Function1<MyBookingsRoutes.Details, Map<String, ? extends Object>>() { // from class: com.vuitton.android.presentation.screen.booking.MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$lambda$3$$inlined$entry$default$4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return mapC2;
                }
            }, composableLambdaImplB2);
            bookingListViewModelImpl2 = bookingListViewModelImpl;
            ComposableLambdaImpl composableLambdaImplB3 = ComposableLambdaKt.b(924746508, new d(bookingListViewModelImpl, snackbarHostState, navBackStack, function0, function1), gapComposerH);
            MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$lambda$3$$inlined$entry$default$5 myExperiencesNavDisplayKt$MyExperiencesNavDisplay$lambda$3$$inlined$entry$default$5 = new Function1<MyBookingsRoutes.Modify, Object>() { // from class: com.vuitton.android.presentation.screen.booking.MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$lambda$3$$inlined$entry$default$5
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return obj.toString();
                }
            };
            final Map mapC3 = MapsKt.c();
            entryProviderScope.a(reflectionFactory.b(MyBookingsRoutes.Modify.class), myExperiencesNavDisplayKt$MyExperiencesNavDisplay$lambda$3$$inlined$entry$default$5, new Function1<MyBookingsRoutes.Modify, Map<String, ? extends Object>>() { // from class: com.vuitton.android.presentation.screen.booking.MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$lambda$3$$inlined$entry$default$6
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return mapC3;
                }
            }, composableLambdaImplB3);
            ComposableLambdaImpl composableLambdaImplB4 = ComposableLambdaKt.b(-1375604700, new Function3() { // from class: com.vuitton.android.presentation.screen.booking.f
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    MyBookingsRoutes.Pass pass = (MyBookingsRoutes.Pass) obj;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    pass.getClass();
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= composer2.K(pass) ? 4 : 2;
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Unit unit2 = Unit.f71739a;
                        BookingListViewModelImpl bookingListViewModelImpl3 = bookingListViewModelImpl2;
                        int i6 = iIntValue & 14;
                        boolean zY2 = composer2.y(bookingListViewModelImpl3) | (i6 == 4);
                        Object objX4 = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                        if (zY2 || objX4 == composer$Companion$Empty$2) {
                            objX4 = new MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$3$4$1$1(bookingListViewModelImpl3, pass, null);
                            composer2.q(objX4);
                        }
                        EffectsKt.e(composer2, unit2, (Function2) objX4);
                        boolean z2 = i6 == 4;
                        Object objX5 = composer2.x();
                        if (z2 || objX5 == composer$Companion$Empty$2) {
                            objX5 = new tb0(pass, 7);
                            composer2.q(objX5);
                        }
                        Function1 function2 = (Function1) objX5;
                        ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(composer2);
                        if (viewModelStoreOwnerA == null) {
                            md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                            return null;
                        }
                        BookingPassViewModel bookingPassViewModel = (BookingPassViewModel) ViewModelKt.a(Reflection.f71922a.b(BookingPassViewModelImpl.class), viewModelStoreOwnerA, null, HiltViewModelKt.a(viewModelStoreOwnerA, composer2), viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? HiltViewModelExtensions.a(((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras(), function2) : HiltViewModelExtensions.a(CreationExtras.Empty.f13578c, function2), composer2);
                        NavBackStack navBackStack2 = navBackStack;
                        boolean zY3 = composer2.y(navBackStack2);
                        Function0 function3 = function0;
                        boolean zK = zY3 | composer2.K(function3);
                        Object objX6 = composer2.x();
                        if (zK || objX6 == composer$Companion$Empty$2) {
                            objX6 = new y0(navBackStack2, function3, 11);
                            composer2.q(objX6);
                        }
                        BookingPassComposableKt.a(bookingPassViewModel, (Function0) objX6, composer2, 0);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH);
            MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$lambda$3$$inlined$entry$default$7 myExperiencesNavDisplayKt$MyExperiencesNavDisplay$lambda$3$$inlined$entry$default$7 = new Function1<MyBookingsRoutes.Pass, Object>() { // from class: com.vuitton.android.presentation.screen.booking.MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$lambda$3$$inlined$entry$default$7
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return obj.toString();
                }
            };
            final Map mapC4 = MapsKt.c();
            entryProviderScope.a(reflectionFactory.b(MyBookingsRoutes.Pass.class), myExperiencesNavDisplayKt$MyExperiencesNavDisplay$lambda$3$$inlined$entry$default$7, new Function1<MyBookingsRoutes.Pass, Map<String, ? extends Object>>() { // from class: com.vuitton.android.presentation.screen.booking.MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$lambda$3$$inlined$entry$default$8
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return mapC4;
                }
            }, composableLambdaImplB4);
            androidx.navigation3.runtime.a aVar = new androidx.navigation3.runtime.a(entryProviderScope);
            gapComposerH.Z(false);
            boolean z2 = i5 == 32;
            Object objX4 = gapComposerH.x();
            if (z2 || objX4 == composer$Companion$Empty$1) {
                objX4 = new x0(navBackStack, 6);
                gapComposerH.q(objX4);
            }
            Function0 function2 = (Function0) objX4;
            Object objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = new ba0(16);
                gapComposerH.q(objX5);
            }
            Function1 function3 = (Function1) objX5;
            Object objX6 = gapComposerH.x();
            if (objX6 == composer$Companion$Empty$1) {
                objX6 = new ba0(17);
                gapComposerH.q(objX6);
            }
            Function1 function4 = (Function1) objX6;
            Object objX7 = gapComposerH.x();
            if (objX7 == composer$Companion$Empty$1) {
                objX7 = new n50(15);
                gapComposerH.q(objX7);
            }
            Function2 function5 = (Function2) objX7;
            NavBackStack.Companion companion = NavBackStack.INSTANCE;
            NavDisplayKt.c(navBackStack, null, null, function2, listP, null, null, function3, function4, function5, aVar, gapComposerH, 805306368 | ((i3 >> 3) & 14));
        } else {
            bookingListViewModelImpl2 = bookingListViewModelImpl;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new uv((Object) bookingListViewModelImpl2, (Object) navBackStack, (Object) function1, function0, i2, 8);
        }
    }
}
