package com.vuitton.android.presentation.screen.booking.personalinfo;

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
import androidx.lifecycle.viewmodel.navigation3.ViewModelStoreNavEntryDecoratorKt;
import androidx.navigation3.runtime.EntryProviderScope;
import androidx.navigation3.runtime.NavBackStack;
import androidx.navigation3.runtime.NavKey;
import androidx.navigation3.runtime.RememberNavBackStackKt;
import androidx.navigation3.runtime.SaveableStateHolderNavEntryDecoratorKt;
import androidx.navigation3.runtime.a;
import androidx.navigation3.ui.NavDisplayKt;
import com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModel;
import defpackage.cj;
import defpackage.of;
import defpackage.p0;
import defpackage.r;
import defpackage.re;
import defpackage.t;
import defpackage.x0;
import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingPersonalInfoNavDisplayKt {
    public static final void a(BookingPersonalInfoViewModel bookingPersonalInfoViewModel, PrebookSummaryViewModel prebookSummaryViewModel, SnackbarHostState snackbarHostState, Function0 function0, Function0 function1, Composer composer, int i2) {
        SnackbarHostState snackbarHostState2;
        bookingPersonalInfoViewModel.getClass();
        prebookSummaryViewModel.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(1106483123);
        int i3 = i2 | (gapComposerH.K(bookingPersonalInfoViewModel) ? 4 : 2) | (gapComposerH.K(prebookSummaryViewModel) ? 32 : 16) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            NavBackStack navBackStackA = RememberNavBackStackKt.a(new NavKey[]{bookingPersonalInfoViewModel.V8() ? BookingPersonalInfoRoutes.InfoForm.INSTANCE : BookingPersonalInfoRoutes.AccountStatus.INSTANCE}, gapComposerH);
            Unit unit = Unit.f71739a;
            boolean zY = ((i3 & 14) == 4) | gapComposerH.y(context);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                snackbarHostState2 = snackbarHostState;
                objX = new BookingPersonalInfoNavDisplayKt$BookingPersonalInfoNavDisplay$2$1(bookingPersonalInfoViewModel, snackbarHostState2, context, null);
                gapComposerH.q(objX);
            } else {
                snackbarHostState2 = snackbarHostState;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            List listP = CollectionsKt.P(SaveableStateHolderNavEntryDecoratorKt.a(gapComposerH), ViewModelStoreNavEntryDecoratorKt.a(gapComposerH));
            gapComposerH.L(-1821568833);
            EntryProviderScope entryProviderScope = new EntryProviderScope(new Function1() { // from class: com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoNavDisplayKt$BookingPersonalInfoNavDisplay$$inlined$entryProvider$default$1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    throw new IllegalStateException(cj.i(obj, "Unknown screen "));
                }
            });
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(1301333310, new r((Object) bookingPersonalInfoViewModel, (Object) snackbarHostState2, (Object) navBackStackA, (Function) function0, 4), gapComposerH);
            BookingPersonalInfoNavDisplayKt$BookingPersonalInfoNavDisplay$lambda$2$$inlined$entry$default$1 bookingPersonalInfoNavDisplayKt$BookingPersonalInfoNavDisplay$lambda$2$$inlined$entry$default$1 = new Function1<BookingPersonalInfoRoutes.AccountStatus, Object>() { // from class: com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoNavDisplayKt$BookingPersonalInfoNavDisplay$lambda$2$$inlined$entry$default$1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return obj.toString();
                }
            };
            final Map mapC = MapsKt.c();
            ReflectionFactory reflectionFactory = Reflection.f71922a;
            entryProviderScope.a(reflectionFactory.b(BookingPersonalInfoRoutes.AccountStatus.class), bookingPersonalInfoNavDisplayKt$BookingPersonalInfoNavDisplay$lambda$2$$inlined$entry$default$1, new Function1<BookingPersonalInfoRoutes.AccountStatus, Map<String, ? extends Object>>() { // from class: com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoNavDisplayKt$BookingPersonalInfoNavDisplay$lambda$2$$inlined$entry$default$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return mapC;
                }
            }, composableLambdaImplB);
            ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(-862424354, new p0(bookingPersonalInfoViewModel, prebookSummaryViewModel, snackbarHostState, navBackStackA, function0, function1, 4), gapComposerH);
            BookingPersonalInfoNavDisplayKt$BookingPersonalInfoNavDisplay$lambda$2$$inlined$entry$default$3 bookingPersonalInfoNavDisplayKt$BookingPersonalInfoNavDisplay$lambda$2$$inlined$entry$default$3 = new Function1<BookingPersonalInfoRoutes.InfoForm, Object>() { // from class: com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoNavDisplayKt$BookingPersonalInfoNavDisplay$lambda$2$$inlined$entry$default$3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return obj.toString();
                }
            };
            final Map mapC2 = MapsKt.c();
            entryProviderScope.a(reflectionFactory.b(BookingPersonalInfoRoutes.InfoForm.class), bookingPersonalInfoNavDisplayKt$BookingPersonalInfoNavDisplay$lambda$2$$inlined$entry$default$3, new Function1<BookingPersonalInfoRoutes.InfoForm, Map<String, ? extends Object>>() { // from class: com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoNavDisplayKt$BookingPersonalInfoNavDisplay$lambda$2$$inlined$entry$default$4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return mapC2;
                }
            }, composableLambdaImplB2);
            a aVar = new a(entryProviderScope);
            gapComposerH.Z(false);
            boolean zY2 = gapComposerH.y(navBackStackA);
            Object objX2 = gapComposerH.x();
            if (zY2 || objX2 == composer$Companion$Empty$1) {
                objX2 = new x0(navBackStackA, 5);
                gapComposerH.q(objX2);
            }
            Function0 function2 = (Function0) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new re(20);
                gapComposerH.q(objX3);
            }
            Function1 function3 = (Function1) objX3;
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = new re(21);
                gapComposerH.q(objX4);
            }
            Function1 function4 = (Function1) objX4;
            Object objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = new t(20);
                gapComposerH.q(objX5);
            }
            NavBackStack.Companion companion = NavBackStack.INSTANCE;
            NavDisplayKt.c(navBackStackA, null, null, function2, listP, null, null, function3, function4, (Function2) objX5, aVar, gapComposerH, 805306368);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new of(bookingPersonalInfoViewModel, prebookSummaryViewModel, snackbarHostState, function0, function1, i2, 1);
        }
    }
}
