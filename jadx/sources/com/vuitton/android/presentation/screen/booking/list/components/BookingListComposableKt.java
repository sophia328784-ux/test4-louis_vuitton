package com.vuitton.android.presentation.screen.booking.list.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.lifecycle.compose.FlowExtKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.templates.LVEmptyViewKt;
import com.vuitton.android.presentation.compose.components.ProgressViewKt;
import com.vuitton.android.presentation.screen.booking.list.BookingListViewModel;
import com.vuitton.android.presentation.screen.booking.list.BookingListViewModelImpl;
import com.vuitton.android.presentation.screen.booking.list.models.BookingListViewState;
import com.vuitton.android.presentation.screen.booking.list.models.MyExperiencesTrackingUiModel;
import com.vuitton.foundation.model.domain.model.booking.BookingId;
import com.vuitton.foundation.model.domain.model.booking.ExperienceId;
import defpackage.a4;
import defpackage.g0;
import defpackage.pq0;
import defpackage.qd;
import defpackage.sf;
import defpackage.w;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/list/models/BookingListViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingListComposableKt {
    public static final void a(final BookingListViewModelImpl bookingListViewModelImpl, SnackbarHostState snackbarHostState, final Function1 function1, final Function1 function2, Function0 function0, Composer composer, int i2) {
        GapComposer gapComposer;
        snackbarHostState.getClass();
        function1.getClass();
        function2.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-205177945);
        int i3 = i2 | (gapComposerH.K(bookingListViewModelImpl) ? 4 : 2) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final MutableState mutableStateC = FlowExtKt.c(bookingListViewModelImpl.w, null, gapComposerH, 0, 7);
            String strC = StringResources_androidKt.c(gapComposerH, R.string.booking_my_experiences_title);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("BookingListComposable");
            boolean zK = gapComposerH.K(strC);
            Object objX = gapComposerH.x();
            if (zK || objX == Composer.Companion.f7939a) {
                objX = new a4(strC, 9);
                gapComposerH.q(objX);
            }
            gapComposer = gapComposerH;
            ScaffoldKt.a(SemanticsModifierKt.b(dTFunctionNameModifier, false, (Function1) objX), ComposableLambdaKt.b(-2089324949, new qd(4, strC, function0), gapComposerH), null, ComposableLambdaKt.b(-1843517075, new g0(snackbarHostState, 12), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-115337290, new Function3() { // from class: com.vuitton.android.presentation.screen.booking.list.components.a
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    PaddingValues paddingValues = (PaddingValues) obj;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    paddingValues.getClass();
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Modifier modifierO = new DTFunctionNameModifier("BookingListComposable$lambda$4").o(SizeKt.f5052c);
                        long j2 = LVAppDesignKitTheme.c(composer2).f48361b.f48375b;
                        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
                        Modifier modifierH = PaddingKt.h(BackgroundKt.b(modifierO, j2, rectangleShapeKt$RectangleShape$1), paddingValues);
                        Alignment.f8582a.getClass();
                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        int iHashCode = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                        ComposeUiNode.b0.getClass();
                        Function0 function3 = ComposeUiNode.Companion.f9641b;
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function3);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                        Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                        Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                        State state = mutableStateC;
                        if (((BookingListViewState) state.getF10755b()).f54611b) {
                            ProgressViewKt.a(BoxScopeInstance.f4938a.g(pq0.j(-1239500631, composer2, "BookingListComposable$lambda$4"), Alignment.Companion.f8587f), 0L, false, composer2, 0, 6);
                            composer2.F();
                        } else {
                            boolean z = ((BookingListViewState) state.getF10755b()).f54612c;
                            final BookingListViewModelImpl bookingListViewModelImpl2 = bookingListViewModelImpl;
                            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                            if (z) {
                                Modifier modifierE = ModifierExtKt.e(BackgroundKt.b(pq0.j(-1239497077, composer2, "BookingListComposable$lambda$4"), LVAppDesignKitTheme.c(composer2).f48361b.f48375b, rectangleShapeKt$RectangleShape$1), "personalSelectionsDetail_error_view");
                                String strC2 = StringResources_androidKt.c(composer2, R.string.loader_error_message_title);
                                String strC3 = StringResources_androidKt.c(composer2, R.string.loader_error_message);
                                String strC4 = StringResources_androidKt.c(composer2, R.string.button_try_again);
                                boolean zY = composer2.y(bookingListViewModelImpl2);
                                Object objX2 = composer2.x();
                                if (zY || objX2 == composer$Companion$Empty$1) {
                                    BookingListComposableKt$BookingListComposable$4$1$1$1 bookingListComposableKt$BookingListComposable$4$1$1$1 = new BookingListComposableKt$BookingListComposable$4$1$1$1(0, bookingListViewModelImpl2, BookingListViewModel.class, "fetchExperiences", "fetchExperiences()V", 0);
                                    composer2.q(bookingListComposableKt$BookingListComposable$4$1$1$1);
                                    objX2 = bookingListComposableKt$BookingListComposable$4$1$1$1;
                                }
                                LVEmptyViewKt.e(modifierE, null, strC2, strC3, null, strC4, (Function0) ((KFunction) objX2), composer2, 0, 114);
                                composer2 = composer2;
                                composer2.F();
                            } else {
                                composer2.L(230898392);
                                Unit unit = Unit.f71739a;
                                boolean zY2 = composer2.y(bookingListViewModelImpl2);
                                Object objX3 = composer2.x();
                                if (zY2 || objX3 == composer$Companion$Empty$1) {
                                    objX3 = new BookingListComposableKt$BookingListComposable$4$1$2$1(bookingListViewModelImpl2, null);
                                    composer2.q(objX3);
                                }
                                EffectsKt.e(composer2, unit, (Function2) objX3);
                                BookingListViewState bookingListViewState = (BookingListViewState) state.getF10755b();
                                boolean zY3 = composer2.y(bookingListViewModelImpl2);
                                final Function1 function4 = function1;
                                boolean zK2 = zY3 | composer2.K(function4);
                                Object objX4 = composer2.x();
                                if (zK2 || objX4 == composer$Companion$Empty$1) {
                                    objX4 = new Function2<BookingId, ExperienceId, Unit>() { // from class: com.vuitton.android.presentation.screen.booking.list.components.BookingListComposableKt$BookingListComposable$4$1$3$1
                                        @Override // kotlin.jvm.functions.Function2
                                        public final Object invoke(Object obj4, Object obj5) {
                                            String str = ((BookingId) obj4).f66743a;
                                            String str2 = ((ExperienceId) obj5).f66755a;
                                            str.getClass();
                                            str2.getClass();
                                            bookingListViewModelImpl2.zc(new MyExperiencesTrackingUiModel.MyExperienceClickEvent(str2));
                                            function4.invoke(new BookingId(str));
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer2.q(objX4);
                                }
                                Function2 function5 = (Function2) objX4;
                                boolean zY4 = composer2.y(bookingListViewModelImpl2);
                                Function1 function6 = function2;
                                boolean zK3 = zY4 | composer2.K(function6);
                                Object objX5 = composer2.x();
                                if (zK3 || objX5 == composer$Companion$Empty$1) {
                                    objX5 = new sf(bookingListViewModelImpl2, function6, 0);
                                    composer2.q(objX5);
                                }
                                BookingListScreenKt.a(bookingListViewState, function5, (Function1) objX5, composer2, 0);
                                composer2.F();
                            }
                        }
                        composer2.r();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposer, 805309488, 500);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w((Object) bookingListViewModelImpl, (Object) snackbarHostState, function1, function2, (Object) function0, i2, 8);
        }
    }
}
