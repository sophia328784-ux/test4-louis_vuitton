package com.vuitton.android.presentation.screen.booking.personalinfo.infoform.components;

import android.content.Context;
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
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.lifecycle.compose.FlowExtKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.booking.common.models.BookingCTAState;
import com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModel;
import com.vuitton.android.presentation.screen.booking.personalinfo.models.BookingPersonalInfoViewState;
import com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModel;
import com.vuitton.android.presentation.screen.booking.summary.models.SummaryBottomSheet;
import com.vuitton.foundation.model.domain.model.booking.BookingExternalContentType;
import defpackage.ef;
import defpackage.g1;
import defpackage.je;
import defpackage.k;
import defpackage.l0;
import defpackage.nf;
import defpackage.of;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0006²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0005\u001a\u0004\u0018\u00010\u00048\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;", "viewState", "Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;", "prebookCTAState", "Lcom/vuitton/android/presentation/screen/booking/summary/models/SummaryBottomSheet;", "bottomSheet", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingInfoFormComposableKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f54703a;

        static {
            int[] iArr = new int[BookingExternalContentType.values().length];
            try {
                iArr[BookingExternalContentType.PDF.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BookingExternalContentType.WEBVIEW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f54703a = iArr;
        }
    }

    public static final void a(BookingPersonalInfoViewModel bookingPersonalInfoViewModel, PrebookSummaryViewModel prebookSummaryViewModel, SnackbarHostState snackbarHostState, Function0 function0, Function0 function1, Composer composer, int i2) {
        GapComposer gapComposer;
        boolean z;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Function0 function2;
        int i3;
        boolean z2;
        boolean z3;
        bookingPersonalInfoViewModel.getClass();
        prebookSummaryViewModel.getClass();
        snackbarHostState.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-451899789);
        int i4 = i2 | (gapComposerH.K(bookingPersonalInfoViewModel) ? 4 : 2) | (gapComposerH.K(prebookSummaryViewModel) ? 32 : 16) | (gapComposerH.K(snackbarHostState) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192);
        if (gapComposerH.p(i4 & 1, (i4 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Unit unit = Unit.f71739a;
            int i5 = i4 & 14;
            boolean z4 = i5 == 4;
            Object objX = gapComposerH.x();
            boolean z5 = z4;
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (z5 || objX == composer$Companion$Empty$2) {
                objX = new BookingInfoFormComposableKt$BookingInfoFormComposable$1$1(bookingPersonalInfoViewModel, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            MutableState mutableStateC = FlowExtKt.c(bookingPersonalInfoViewModel.getV(), null, gapComposerH, 0, 7);
            MutableState mutableStateC2 = FlowExtKt.c(prebookSummaryViewModel.getS(), null, gapComposerH, 0, 7);
            SummaryBottomSheet summaryBottomSheet = (SummaryBottomSheet) FlowExtKt.c(prebookSummaryViewModel.getU(), null, gapComposerH, 0, 7).getF10755b();
            SummaryBottomSheet.BookingConflict bookingConflict = summaryBottomSheet instanceof SummaryBottomSheet.BookingConflict ? (SummaryBottomSheet.BookingConflict) summaryBottomSheet : null;
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            boolean zK = gapComposerH.K(bookingConflict) | gapComposerH.y(lVModalBottomSheetStateF);
            Object objX2 = gapComposerH.x();
            if (zK || objX2 == composer$Companion$Empty$2) {
                objX2 = new BookingInfoFormComposableKt$BookingInfoFormComposable$2$1(bookingConflict, lVModalBottomSheetStateF, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, bookingConflict, (Function2) objX2);
            int i6 = i4 & 112;
            boolean z6 = ((i4 & 57344) == 16384) | (i6 == 32);
            Object objX3 = gapComposerH.x();
            if (z6 || objX3 == composer$Companion$Empty$2) {
                z = false;
                objX3 = new nf(prebookSummaryViewModel, function1, 0);
                gapComposerH.q(objX3);
            } else {
                z = false;
            }
            Function0 function3 = (Function0) objX3;
            BookingPersonalInfoViewState bookingPersonalInfoViewState = (BookingPersonalInfoViewState) mutableStateC.getF10755b();
            BookingCTAState bookingCTAState = (BookingCTAState) mutableStateC2.getF10755b();
            boolean z7 = i5 != 4 ? z : true;
            Object objX4 = gapComposerH.x();
            if (z7 || objX4 == composer$Companion$Empty$2) {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                function2 = function3;
                i3 = i5;
                BookingInfoFormComposableKt$BookingInfoFormComposable$3$1 bookingInfoFormComposableKt$BookingInfoFormComposable$3$1 = new BookingInfoFormComposableKt$BookingInfoFormComposable$3$1(2, bookingPersonalInfoViewModel, BookingPersonalInfoViewModel.class, "onFieldUpdated", "onFieldUpdated(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V", 0);
                gapComposerH.q(bookingInfoFormComposableKt$BookingInfoFormComposable$3$1);
                objX4 = bookingInfoFormComposableKt$BookingInfoFormComposable$3$1;
            } else {
                function2 = function3;
                i3 = i5;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
            }
            Function2 function4 = (Function2) ((KFunction) objX4);
            boolean zY = gapComposerH.y(r21) | (i3 == 4);
            Object objX5 = gapComposerH.x();
            if (zY || objX5 == composer$Companion$Empty$1) {
                objX5 = new k(bookingPersonalInfoViewModel, r21, 20);
                gapComposerH.q(objX5);
            }
            Function1 function5 = (Function1) objX5;
            boolean zY2 = gapComposerH.y(r21);
            Object objX6 = gapComposerH.x();
            if (zY2 || objX6 == composer$Companion$Empty$1) {
                z2 = true;
                objX6 = new je(r21, 1);
                gapComposerH.q(objX6);
            } else {
                z2 = true;
            }
            Function0 function6 = (Function0) objX6;
            boolean zY3 = gapComposerH.y(r21);
            Object objX7 = gapComposerH.x();
            if (zY3 || objX7 == composer$Companion$Empty$1) {
                objX7 = new ef(r21, 3);
                gapComposerH.q(objX7);
            }
            Function1 function7 = (Function1) objX7;
            boolean z8 = i3 != 4 ? false : z2;
            Object objX8 = gapComposerH.x();
            if (z8 || objX8 == composer$Companion$Empty$1) {
                z3 = z2;
                BookingInfoFormComposableKt$BookingInfoFormComposable$7$1 bookingInfoFormComposableKt$BookingInfoFormComposable$7$1 = new BookingInfoFormComposableKt$BookingInfoFormComposable$7$1(0, bookingPersonalInfoViewModel, BookingPersonalInfoViewModel.class, "loadForm", "loadForm()V", 0);
                gapComposerH.q(bookingInfoFormComposableKt$BookingInfoFormComposable$7$1);
                objX8 = bookingInfoFormComposableKt$BookingInfoFormComposable$7$1;
            } else {
                z3 = z2;
            }
            Function0 function8 = (Function0) ((KFunction) objX8);
            boolean z9 = i3 != 4 ? false : z3;
            if (i6 != 32) {
                z3 = false;
            }
            boolean z10 = z9 | z3;
            Object objX9 = gapComposerH.x();
            if (z10 || objX9 == composer$Companion$Empty$1) {
                objX9 = new l0(bookingPersonalInfoViewModel, prebookSummaryViewModel, 28);
                gapComposerH.q(objX9);
            }
            SummaryBottomSheet.BookingConflict bookingConflict2 = bookingConflict;
            BookingInfoFormScreenKt.a(bookingPersonalInfoViewState, bookingCTAState, snackbarHostState, function4, function5, function6, function7, function0, function8, (Function0) objX9, gapComposerH, (i4 & 896) | ((i4 << 12) & 29360128));
            gapComposer = gapComposerH;
            if (lVModalBottomSheetStateF.a()) {
                gapComposer.L(-2116947020);
                Function0 function9 = function2;
                LVModalBottomSheetKt.b(null, StringResources_androidKt.c(gapComposer, R.string.alt_close), function9, lVModalBottomSheetStateF, null, 0L, false, null, ComposableLambdaKt.b(223647042, new g1(bookingConflict2, context, function9, 4), gapComposer), gapComposer, (LVModalBottomSheetState.f48797e << 9) | 100663296, 241);
                gapComposer.Z(false);
            } else {
                gapComposer.L(-2116484593);
                gapComposer.Z(false);
            }
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new of(bookingPersonalInfoViewModel, prebookSummaryViewModel, snackbarHostState, function0, function1, i2, 0);
        }
    }
}
