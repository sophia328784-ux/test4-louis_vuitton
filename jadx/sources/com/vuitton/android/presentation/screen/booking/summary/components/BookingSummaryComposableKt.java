package com.vuitton.android.presentation.screen.booking.summary.components;

import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.lifecycle.compose.FlowExtKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModel;
import com.vuitton.android.presentation.screen.booking.summary.components.bottomsheets.ExitWarningBottomSheetContentKt;
import com.vuitton.android.presentation.screen.booking.summary.components.bottomsheets.ExpirationBottomSheetContentKt;
import com.vuitton.android.presentation.screen.booking.summary.models.BookingSummaryTrackingUiModel;
import com.vuitton.android.presentation.screen.booking.summary.models.PreBookViewState;
import com.vuitton.android.presentation.screen.booking.summary.models.SummaryBottomSheet;
import com.vuitton.foundation.model.domain.model.booking.ExperienceId;
import com.vuitton.foundation.model.domain.model.booking.PreBookId;
import defpackage.k;
import defpackage.nf;
import defpackage.q;
import defpackage.qg;
import defpackage.re;
import defpackage.tf;
import defpackage.w;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0004²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0003\u001a\u0004\u0018\u00010\u00028\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState;", "viewState", "Lcom/vuitton/android/presentation/screen/booking/summary/models/SummaryBottomSheet;", "bottomSheet", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingSummaryComposableKt {
    public static final void a(PrebookSummaryViewModel prebookSummaryViewModel, SnackbarHostState snackbarHostState, final Function0 function0, final Function2 function2, Function1 function1, Composer composer, int i2) {
        GapComposer gapComposer;
        int i3;
        boolean z;
        final PrebookSummaryViewModel prebookSummaryViewModel2 = prebookSummaryViewModel;
        prebookSummaryViewModel2.getClass();
        snackbarHostState.getClass();
        function0.getClass();
        function2.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(323579133);
        int i4 = i2 | (gapComposerH.K(prebookSummaryViewModel2) ? 4 : 2) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192);
        if (gapComposerH.p(i4 & 1, (i4 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateC = FlowExtKt.c(prebookSummaryViewModel2.getQ(), null, gapComposerH, 0, 7);
            Unit unit = Unit.f71739a;
            int i5 = i4 & 14;
            boolean z2 = i5 == 4;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z2 || objX == composer$Companion$Empty$1) {
                objX = new BookingSummaryComposableKt$BookingSummaryComposable$1$1(prebookSummaryViewModel2, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            final MutableState mutableStateC2 = FlowExtKt.c(prebookSummaryViewModel2.getU(), null, gapComposerH, 0, 7);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new re(28);
                gapComposerH.q(objX2);
            }
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(48, 5, gapComposerH, (Function1) objX2);
            boolean zK = ((i4 & 896) == 256) | (i5 == 4) | gapComposerH.K(mutableStateC);
            Object objX3 = gapComposerH.x();
            if (zK || objX3 == composer$Companion$Empty$1) {
                objX3 = new q(prebookSummaryViewModel2, function0, mutableStateC, 17);
                gapComposerH.q(objX3);
            }
            Function0 function3 = (Function0) objX3;
            SummaryBottomSheet summaryBottomSheet = (SummaryBottomSheet) mutableStateC2.getF10755b();
            boolean zK2 = gapComposerH.K(mutableStateC2) | gapComposerH.y(lVModalBottomSheetStateF);
            Object objX4 = gapComposerH.x();
            if (zK2 || objX4 == composer$Companion$Empty$1) {
                objX4 = new BookingSummaryComposableKt$BookingSummaryComposable$2$1(mutableStateC2, lVModalBottomSheetStateF, null);
                gapComposerH.q(objX4);
            }
            EffectsKt.e(gapComposerH, summaryBottomSheet, (Function2) objX4);
            PreBookViewState preBookViewState = (PreBookViewState) mutableStateC.getF10755b();
            boolean z3 = i5 == 4;
            Object objX5 = gapComposerH.x();
            if (z3 || objX5 == composer$Companion$Empty$1) {
                i3 = i5;
                BookingSummaryComposableKt$BookingSummaryComposable$3$1 bookingSummaryComposableKt$BookingSummaryComposable$3$1 = new BookingSummaryComposableKt$BookingSummaryComposable$3$1(0, prebookSummaryViewModel, PrebookSummaryViewModel.class, "getPrebookSummary", "getPrebookSummary()V", 0);
                prebookSummaryViewModel2 = prebookSummaryViewModel;
                gapComposerH.q(bookingSummaryComposableKt$BookingSummaryComposable$3$1);
                objX5 = bookingSummaryComposableKt$BookingSummaryComposable$3$1;
            } else {
                i3 = i5;
            }
            Function0 function4 = (Function0) ((KFunction) objX5);
            boolean z4 = (i3 == 4) | ((i4 & 7168) == 2048);
            Object objX6 = gapComposerH.x();
            if (z4 || objX6 == composer$Companion$Empty$1) {
                objX6 = new Function2<ExperienceId, PreBookId, Unit>() { // from class: com.vuitton.android.presentation.screen.booking.summary.components.BookingSummaryComposableKt$BookingSummaryComposable$4$1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        String str = ((ExperienceId) obj).f66755a;
                        PreBookId preBookId = (PreBookId) obj2;
                        String str2 = preBookId != null ? preBookId.f66774a : null;
                        str.getClass();
                        prebookSummaryViewModel2.S3(new BookingSummaryTrackingUiModel.ModifyEvent(str));
                        function2.invoke(new ExperienceId(str), str2 != null ? new PreBookId(str2) : null);
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX6);
            }
            Function2 function5 = (Function2) objX6;
            boolean z5 = i3 == 4;
            Object objX7 = gapComposerH.x();
            if (z5 || objX7 == composer$Companion$Empty$1) {
                objX7 = new Function2<PreBookId, ExperienceId, Unit>() { // from class: com.vuitton.android.presentation.screen.booking.summary.components.BookingSummaryComposableKt$BookingSummaryComposable$5$1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        String str = ((PreBookId) obj).f66774a;
                        String str2 = ((ExperienceId) obj2).f66755a;
                        str.getClass();
                        str2.getClass();
                        BookingSummaryTrackingUiModel.DeleteConfirmationEvent deleteConfirmationEvent = new BookingSummaryTrackingUiModel.DeleteConfirmationEvent(str2);
                        PrebookSummaryViewModel prebookSummaryViewModel3 = prebookSummaryViewModel2;
                        prebookSummaryViewModel3.S3(deleteConfirmationEvent);
                        prebookSummaryViewModel3.w4(str);
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX7);
            }
            Function2 function6 = (Function2) objX7;
            boolean z6 = i3 == 4;
            Object objX8 = gapComposerH.x();
            if (z6 || objX8 == composer$Companion$Empty$1) {
                objX8 = new Function1<ExperienceId, Unit>() { // from class: com.vuitton.android.presentation.screen.booking.summary.components.BookingSummaryComposableKt$BookingSummaryComposable$6$1
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        String str = ((ExperienceId) obj).f66755a;
                        str.getClass();
                        prebookSummaryViewModel2.S3(new BookingSummaryTrackingUiModel.DeleteIntentionEvent(str));
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX8);
            }
            Function1 function7 = (Function1) objX8;
            boolean z7 = i3 == 4;
            Object objX9 = gapComposerH.x();
            if (z7 || objX9 == composer$Companion$Empty$1) {
                z = false;
                objX9 = new qg(prebookSummaryViewModel2, 0);
                gapComposerH.q(objX9);
            } else {
                z = false;
            }
            Function0 function8 = (Function0) objX9;
            boolean z8 = (i3 != 4 ? z : true) | ((57344 & i4) == 16384 ? true : z);
            Object objX10 = gapComposerH.x();
            if (z8 || objX10 == composer$Companion$Empty$1) {
                objX10 = new k(prebookSummaryViewModel2, function1, 28);
                gapComposerH.q(objX10);
            }
            BookingSummaryScreenKt.a(preBookViewState, snackbarHostState, function3, function4, function5, function6, function7, function8, (Function1) objX10, gapComposerH, 48, 0);
            gapComposer = gapComposerH;
            if (lVModalBottomSheetStateF.a()) {
                gapComposer.L(1842155486);
                String strC = StringResources_androidKt.c(gapComposer, R.string.alt_close);
                boolean zK3 = gapComposer.K(mutableStateC2) | (i3 != 4 ? z : true);
                Object objX11 = gapComposer.x();
                if (zK3 || objX11 == composer$Companion$Empty$1) {
                    objX11 = new tf(prebookSummaryViewModel2, mutableStateC2, 9);
                    gapComposer.q(objX11);
                }
                LVModalBottomSheetKt.b(null, strC, (Function0) objX11, lVModalBottomSheetStateF, null, 0L, false, null, ComposableLambdaKt.b(-1083247474, new Function3() { // from class: com.vuitton.android.presentation.screen.booking.summary.components.a
                    @Override // kotlin.jvm.functions.Function3
                    public final Object A(Object obj, Object obj2, Object obj3) {
                        Composer composer2 = (Composer) obj2;
                        int iIntValue = ((Integer) obj3).intValue();
                        ((ColumnScope) obj).getClass();
                        if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            SummaryBottomSheet summaryBottomSheet2 = (SummaryBottomSheet) mutableStateC2.getF10755b();
                            boolean z9 = summaryBottomSheet2 instanceof SummaryBottomSheet.ExitWarning;
                            PrebookSummaryViewModel prebookSummaryViewModel3 = prebookSummaryViewModel2;
                            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                            if (z9) {
                                composer2.L(1358870294);
                                boolean zY = composer2.y(prebookSummaryViewModel3);
                                Function0 function9 = function0;
                                boolean zK4 = zY | composer2.K(function9);
                                Object objX12 = composer2.x();
                                if (zK4 || objX12 == composer$Companion$Empty$2) {
                                    objX12 = new nf(prebookSummaryViewModel3, function9, 1);
                                    composer2.q(objX12);
                                }
                                Function0 function10 = (Function0) objX12;
                                boolean zY2 = composer2.y(prebookSummaryViewModel3);
                                Object objX13 = composer2.x();
                                if (zY2 || objX13 == composer$Companion$Empty$2) {
                                    objX13 = new qg(prebookSummaryViewModel3, 1);
                                    composer2.q(objX13);
                                }
                                ExitWarningBottomSheetContentKt.a(function10, (Function0) objX13, composer2, 0);
                                composer2.F();
                            } else if (summaryBottomSheet2 instanceof SummaryBottomSheet.ExpiredPrebook) {
                                composer2.L(1359515249);
                                boolean zY3 = composer2.y(prebookSummaryViewModel3);
                                Object objX14 = composer2.x();
                                if (zY3 || objX14 == composer$Companion$Empty$2) {
                                    BookingSummaryComposableKt$BookingSummaryComposable$10$3$1 bookingSummaryComposableKt$BookingSummaryComposable$10$3$1 = new BookingSummaryComposableKt$BookingSummaryComposable$10$3$1(0, prebookSummaryViewModel3, PrebookSummaryViewModel.class, "handlePrebookExpiration", "handlePrebookExpiration()V", 0);
                                    composer2.q(bookingSummaryComposableKt$BookingSummaryComposable$10$3$1);
                                    objX14 = bookingSummaryComposableKt$BookingSummaryComposable$10$3$1;
                                }
                                ExpirationBottomSheetContentKt.a((Function0) ((KFunction) objX14), composer2, 0);
                                composer2.F();
                            } else {
                                composer2.L(1359697746);
                                composer2.F();
                            }
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposer), gapComposer, (LVModalBottomSheetState.f48797e << 9) | 100663296, 241);
                gapComposer.Z(z);
            } else {
                gapComposer.L(1843490501);
                gapComposer.Z(z);
            }
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w((Object) prebookSummaryViewModel2, (Object) snackbarHostState, (Object) function0, (Object) function2, function1, i2, 9);
        }
    }
}
