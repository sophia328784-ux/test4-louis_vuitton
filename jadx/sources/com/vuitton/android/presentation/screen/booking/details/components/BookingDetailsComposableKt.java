package com.vuitton.android.presentation.screen.booking.details.components;

import android.content.Context;
import androidx.compose.material3.ModalBottomSheetProperties;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.lifecycle.compose.FlowExtKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.booking.common.models.BookingCTAState;
import com.vuitton.android.presentation.screen.booking.list.BookingListViewModelImpl;
import com.vuitton.android.presentation.screen.booking.list.models.BookingListViewState;
import com.vuitton.android.presentation.screen.booking.list.models.BookingUiModel;
import com.vuitton.android.presentation.screen.booking.list.models.ExperienceBottomSheet;
import com.vuitton.android.presentation.screen.booking.list.models.MyExperiencesTrackingUiModel;
import com.vuitton.foundation.model.domain.model.booking.BookingId;
import com.vuitton.foundation.model.domain.model.booking.ExperienceId;
import defpackage.ef;
import defpackage.hf;
import defpackage.j6;
import defpackage.k;
import defpackage.n00;
import defpackage.o;
import defpackage.p0;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\b²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\f\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0007\u001a\u0004\u0018\u00010\u00068\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/list/models/BookingListViewState;", "viewState", "Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;", "ctaState", "", "currentIsLoading", "Lcom/vuitton/android/presentation/screen/booking/list/models/ExperienceBottomSheet;", "bottomSheet", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingDetailsComposableKt {
    public static final void a(final BookingListViewModelImpl bookingListViewModelImpl, StateFlow stateFlow, String str, SnackbarHostState snackbarHostState, final Function1 function1, Function0 function0, final Function2 function2, Composer composer, int i2) {
        GapComposer gapComposer;
        Object next;
        boolean z;
        String str2;
        stateFlow.getClass();
        str.getClass();
        snackbarHostState.getClass();
        function1.getClass();
        function0.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(-796835397);
        int i3 = i2 | (gapComposerH.K(bookingListViewModelImpl) ? 4 : 2) | (gapComposerH.y(stateFlow) ? 32 : 16) | (gapComposerH.K(str) ? 256 : 128) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function0) ? 131072 : 65536) | (gapComposerH.y(function2) ? 1048576 : 524288);
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            MutableState mutableStateC = FlowExtKt.c(bookingListViewModelImpl.w, null, gapComposerH, 0, 7);
            MutableState mutableStateC2 = FlowExtKt.c(stateFlow, null, gapComposerH, (i3 >> 3) & 14, 7);
            Iterator it = ((BookingListViewState) mutableStateC.getF10755b()).d.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                } else {
                    next = it.next();
                    str2 = ((BookingUiModel) next).f54614a;
                    BookingId.Companion companion = BookingId.INSTANCE;
                }
            } while (!str2.equals(str));
            BookingUiModel bookingUiModel = (BookingUiModel) next;
            boolean z2 = ((BookingCTAState) mutableStateC2.getF10755b()) == BookingCTAState.LOADING;
            MutableState mutableStateL = SnapshotStateKt.l(Boolean.valueOf(z2), gapComposerH);
            MutableState mutableStateC3 = FlowExtKt.c(bookingListViewModelImpl.u, null, gapComposerH, 0, 7);
            boolean zK = gapComposerH.K(mutableStateL);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$1) {
                objX = new j6(10, mutableStateL);
                gapComposerH.q(objX);
            }
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 5, gapComposerH, (Function1) objX);
            ExperienceBottomSheet experienceBottomSheet = (ExperienceBottomSheet) mutableStateC3.getF10755b();
            boolean zK2 = gapComposerH.K(mutableStateC3) | gapComposerH.y(lVModalBottomSheetStateF);
            Object objX2 = gapComposerH.x();
            if (zK2 || objX2 == composer$Companion$Empty$1) {
                objX2 = new BookingDetailsComposableKt$BookingDetailsComposable$1$1(mutableStateC3, lVModalBottomSheetStateF, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, experienceBottomSheet, (Function2) objX2);
            int i4 = i3 & 14;
            boolean zY = gapComposerH.y(bookingUiModel) | (i4 == 4);
            Object objX3 = gapComposerH.x();
            if (zY || objX3 == composer$Companion$Empty$1) {
                objX3 = new BookingDetailsComposableKt$BookingDetailsComposable$2$1(bookingUiModel, bookingListViewModelImpl, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, bookingUiModel, (Function2) objX3);
            List list = ((BookingListViewState) mutableStateC.getF10755b()).d;
            boolean zY2 = (i4 == 4) | gapComposerH.y(context);
            Object objX4 = gapComposerH.x();
            if (zY2 || objX4 == composer$Companion$Empty$1) {
                objX4 = new k(bookingListViewModelImpl, context, 19);
                gapComposerH.q(objX4);
            }
            Function1 function3 = (Function1) objX4;
            boolean z3 = ((i3 & 3670016) == 1048576) | (i4 == 4);
            Object objX5 = gapComposerH.x();
            if (z3 || objX5 == composer$Companion$Empty$1) {
                objX5 = new Function2<BookingId, ExperienceId, Unit>() { // from class: com.vuitton.android.presentation.screen.booking.details.components.BookingDetailsComposableKt$BookingDetailsComposable$4$1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        String str3 = ((BookingId) obj).f66743a;
                        String str4 = ((ExperienceId) obj2).f66755a;
                        str3.getClass();
                        str4.getClass();
                        bookingListViewModelImpl.zc(new MyExperiencesTrackingUiModel.ViewPassClickEvent(str4));
                        function2.invoke(new BookingId(str3), new ExperienceId(str4));
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX5);
            }
            Function2 function4 = (Function2) objX5;
            boolean z4 = i4 == 4;
            Object objX6 = gapComposerH.x();
            if (z4 || objX6 == composer$Companion$Empty$1) {
                objX6 = new Function2<BookingId, ExperienceId, Unit>() { // from class: com.vuitton.android.presentation.screen.booking.details.components.BookingDetailsComposableKt$BookingDetailsComposable$5$1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        String str3 = ((BookingId) obj).f66743a;
                        String str4 = ((ExperienceId) obj2).f66755a;
                        str3.getClass();
                        str4.getClass();
                        MyExperiencesTrackingUiModel.DeleteClickEvent deleteClickEvent = new MyExperiencesTrackingUiModel.DeleteClickEvent(str4);
                        BookingListViewModelImpl bookingListViewModelImpl2 = bookingListViewModelImpl;
                        bookingListViewModelImpl2.zc(deleteClickEvent);
                        bookingListViewModelImpl2.Ac(new ExperienceBottomSheet.CancelWarning(str3, null));
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX6);
            }
            Function2 function5 = (Function2) objX6;
            boolean z5 = (i4 == 4) | ((i3 & 57344) == 16384);
            Object objX7 = gapComposerH.x();
            if (z5 || objX7 == composer$Companion$Empty$1) {
                objX7 = new Function2<BookingUiModel, ExperienceId, Unit>() { // from class: com.vuitton.android.presentation.screen.booking.details.components.BookingDetailsComposableKt$BookingDetailsComposable$6$1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        BookingUiModel bookingUiModel2 = (BookingUiModel) obj;
                        String str3 = ((ExperienceId) obj2).f66755a;
                        bookingUiModel2.getClass();
                        str3.getClass();
                        bookingListViewModelImpl.zc(new MyExperiencesTrackingUiModel.ModifyClickEvent(str3));
                        function1.invoke(bookingUiModel2);
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX7);
            }
            Function2 function6 = (Function2) objX7;
            boolean zY3 = gapComposerH.y(context);
            Object objX8 = gapComposerH.x();
            if (zY3 || objX8 == composer$Companion$Empty$1) {
                objX8 = new ef(context, 1);
                gapComposerH.q(objX8);
            }
            Function1 function7 = (Function1) objX8;
            boolean zY4 = gapComposerH.y(context);
            Object objX9 = gapComposerH.x();
            if (zY4 || objX9 == composer$Companion$Empty$1) {
                objX9 = new ef(context, 2);
                gapComposerH.q(objX9);
            }
            int i5 = ((i3 >> 9) & 896) | 805306368;
            boolean z6 = z2;
            BookingDetailsScreenKt.e(bookingUiModel, list, function0, function3, function4, function5, function6, function7, (Function1) objX9, snackbarHostState, gapComposerH, i5);
            gapComposer = gapComposerH;
            if (lVModalBottomSheetStateF.a()) {
                gapComposer.L(-235622344);
                Object objX10 = gapComposer.x();
                if (objX10 == composer$Companion$Empty$1) {
                    objX10 = n00.b(gapComposer);
                }
                SnackbarHostState snackbarHostState2 = (SnackbarHostState) objX10;
                Unit unit = Unit.f71739a;
                boolean zY5 = gapComposer.y(context) | (i4 == 4);
                Object objX11 = gapComposer.x();
                if (zY5 || objX11 == composer$Companion$Empty$1) {
                    objX11 = new BookingDetailsComposableKt$BookingDetailsComposable$9$1(bookingListViewModelImpl, snackbarHostState2, context, null);
                    gapComposer.q(objX11);
                }
                EffectsKt.e(gapComposer, unit, (Function2) objX11);
                boolean z7 = !z6;
                ModalBottomSheetProperties modalBottomSheetProperties = new ModalBottomSheetProperties(z7, z7);
                String strC = StringResources_androidKt.c(gapComposer, R.string.alt_close);
                boolean zB = gapComposer.b(z6) | (i4 == 4);
                Object objX12 = gapComposer.x();
                if (zB || objX12 == composer$Companion$Empty$1) {
                    z = false;
                    objX12 = new hf(z6, bookingListViewModelImpl, 0);
                    gapComposer.q(objX12);
                } else {
                    z = false;
                }
                LVModalBottomSheetKt.b(null, strC, (Function0) objX12, lVModalBottomSheetStateF, null, 0L, false, modalBottomSheetProperties, ComposableLambdaKt.b(-1747210678, new p0(snackbarHostState2, mutableStateC3, mutableStateC, bookingListViewModelImpl, str, mutableStateC2), gapComposer), gapComposer, (LVModalBottomSheetState.f48797e << 9) | 100663296, 113);
                gapComposer = gapComposer;
                gapComposer.Z(z);
            } else {
                gapComposer.L(-233639801);
                gapComposer.Z(false);
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o(bookingListViewModelImpl, stateFlow, str, snackbarHostState, function1, function0, function2, i2);
        }
    }
}
