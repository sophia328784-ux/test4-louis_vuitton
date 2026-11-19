package com.vuitton.android.presentation.screen.osa.list.components;

import android.content.Context;
import androidx.activity.compose.BackHandlerKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVLoadingOverlayKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVStandardTopBarKt;
import com.vuitton.android.presentation.screen.osa.list.OsaListViewModel;
import com.vuitton.android.presentation.screen.osa.list.models.OsaListViewState;
import defpackage.kj0;
import defpackage.kw;
import defpackage.n00;
import defpackage.r1;
import defpackage.rh0;
import defpackage.u00;
import defpackage.x60;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003¨\u0006\u0006²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\u0012\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\nX\u008a\u0084\u0002²\u0006\u0012\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;", "viewState", "Lkotlin/Function0;", "", "currentOnBackPressed", "currentOnBookAppointmentClicked", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OsaListComposableKt {
    /* JADX WARN: Code duplicated, block: B:109:0x0266  */
    /* JADX WARN: Code duplicated, block: B:110:0x0273  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v33 */
    /* JADX WARN: Type inference failed for: r0v37, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r0v38 */
    public static final void a(OsaListViewModel osaListViewModel, Function0 function0, Function0 function1, Function2 function2, Function1 function3, Composer composer, int i2) {
        GapComposer gapComposer;
        Object obj;
        int i3;
        Function0 function4;
        ?? r0;
        int i4;
        GapComposer gapComposer2;
        int i5;
        SnackbarHostState snackbarHostState;
        OsaListViewModel osaListViewModel2 = osaListViewModel;
        osaListViewModel2.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(-1312855302);
        int i6 = i2 | (gapComposerH.K(osaListViewModel2) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(function3) ? 16384 : 8192);
        if (gapComposerH.p(i6 & 1, (i6 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(osaListViewModel2.getU(), gapComposerH);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX = gapComposerH.x();
            Object obj2 = Composer.Companion.f7939a;
            if (objX == obj2) {
                objX = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState2 = (SnackbarHostState) objX;
            Unit unit = Unit.f71739a;
            int i7 = i6 & 14;
            boolean zY = (i7 == 4) | gapComposerH.y(context);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == obj2) {
                objX2 = new OsaListComposableKt$OsaListComposable$1$1(osaListViewModel2, snackbarHostState2, context, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX2);
            MutableState mutableStateL = SnapshotStateKt.l(function0, gapComposerH);
            boolean zK = gapComposerH.K(mutableStateL);
            Object objX3 = gapComposerH.x();
            if (zK || objX3 == obj2) {
                objX3 = new u00(14, mutableStateL);
                gapComposerH.q(objX3);
            }
            BackHandlerKt.a(false, (Function0) objX3, gapComposerH, 0, 1);
            Object objX4 = gapComposerH.x();
            if (objX4 == obj2) {
                Object composableLambdaImpl = new ComposableLambdaImpl(1119853779, true, new r1(8, mutableStateL));
                gapComposerH.q(composableLambdaImpl);
                objX4 = composableLambdaImpl;
            }
            Function2 function5 = (Function2) objX4;
            MutableState mutableStateL2 = SnapshotStateKt.l(function1, gapComposerH);
            boolean z = i7 == 4;
            Object objX5 = gapComposerH.x();
            if (z || objX5 == obj2) {
                objX5 = new rh0(osaListViewModel2, mutableStateL2, 10);
                gapComposerH.q(objX5);
            }
            Function0 function6 = (Function0) objX5;
            if (((OsaListViewState) mutableStateB.getF10755b()).d) {
                gapComposerH.L(-1298864845);
                boolean z2 = i7 == 4;
                Object objX6 = gapComposerH.x();
                if (z2 || objX6 == obj2) {
                    i5 = 54;
                    snackbarHostState = snackbarHostState2;
                    Object osaListComposableKt$OsaListComposable$3$1 = new OsaListComposableKt$OsaListComposable$3$1(0, osaListViewModel2, OsaListViewModel.class, "getAppointmentList", "getAppointmentList()V", 0);
                    gapComposerH.q(osaListComposableKt$OsaListComposable$3$1);
                    objX6 = osaListComposableKt$OsaListComposable$3$1;
                } else {
                    snackbarHostState = snackbarHostState2;
                    i5 = 54;
                }
                OsaListErrorScreenKt.a(snackbarHostState, function5, (Function0) ((KFunction) objX6), gapComposerH, i5);
                gapComposerH.Z(false);
            } else if (((OsaListViewState) mutableStateB.getF10755b()).f60907c) {
                gapComposerH.L(-1298678411);
                OsaListLoadingScreenKt.a(snackbarHostState2, function5, gapComposerH, 54);
                gapComposerH.Z(false);
            } else {
                if (((OsaListViewState) mutableStateB.getF10755b()).f60909f.isEmpty() && ((OsaListViewState) mutableStateB.getF10755b()).f60908e.isEmpty() && !((OsaListViewState) mutableStateB.getF10755b()).f60907c) {
                    gapComposerH.L(-1298399194);
                    OsaListEmptyScreenKt.a(snackbarHostState2, function5, function6, gapComposerH, 54);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-1298142669);
                    OsaListViewState osaListViewState = (OsaListViewState) mutableStateB.getF10755b();
                    boolean z3 = i7 == 4;
                    Object objX7 = gapComposerH.x();
                    if (z3 || objX7 == obj2) {
                        obj = obj2;
                        i3 = i7;
                        function4 = function6;
                        Object osaListComposableKt$OsaListComposable$4$1 = new OsaListComposableKt$OsaListComposable$4$1(1, osaListViewModel, OsaListViewModel.class, "setAppointmentToCancel", "setAppointmentToCancel(Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;)V", 0);
                        gapComposerH.q(osaListComposableKt$OsaListComposable$4$1);
                        objX7 = osaListComposableKt$OsaListComposable$4$1;
                    } else {
                        obj = obj2;
                        i3 = i7;
                        function4 = function6;
                    }
                    Function1 function7 = (Function1) ((KFunction) objX7);
                    boolean z4 = i3 == 4;
                    Object objX8 = gapComposerH.x();
                    if (z4 || objX8 == obj) {
                        osaListViewModel2 = osaListViewModel;
                        Object osaListComposableKt$OsaListComposable$5$1 = new OsaListComposableKt$OsaListComposable$5$1(0, osaListViewModel2, OsaListViewModel.class, "cancelAppointment", "cancelAppointment()V", 0);
                        gapComposerH.q(osaListComposableKt$OsaListComposable$5$1);
                        objX8 = osaListComposableKt$OsaListComposable$5$1;
                    } else {
                        osaListViewModel2 = osaListViewModel;
                    }
                    Function0 function8 = (Function0) ((KFunction) objX8);
                    boolean z5 = i3 == 4;
                    Object objX9 = gapComposerH.x();
                    if (z5 || objX9 == obj) {
                        objX9 = new x60(osaListViewModel2, 23);
                        gapComposerH.q(objX9);
                    }
                    r0 = 0;
                    i4 = 1;
                    OsaListScreenKt.a(osaListViewState, function5, snackbarHostState2, function4, function2, function7, function8, function3, (Function0) objX9, gapComposerH, (57344 & (i6 << 3)) | 432 | ((i6 << 9) & 29360128));
                    GapComposer gapComposer3 = gapComposerH;
                    gapComposer3.Z(false);
                    gapComposer2 = gapComposer3;
                }
                if (((OsaListViewState) mutableStateB.getF10755b()).f60906b) {
                    gapComposer2.L(-1297439930);
                    LVLoadingOverlayKt.a(r0, gapComposer2, r0, i4);
                    gapComposer2.Z(r0);
                    gapComposer = gapComposer2;
                } else {
                    gapComposer2.L(-1297407256);
                    gapComposer2.Z(r0);
                    gapComposer = gapComposer2;
                }
            }
            osaListViewModel2 = osaListViewModel;
            gapComposer2 = gapComposerH;
            r0 = 0;
            i4 = 1;
            if (((OsaListViewState) mutableStateB.getF10755b()).f60906b) {
                gapComposer2.L(-1297439930);
                LVLoadingOverlayKt.a(r0, gapComposer2, r0, i4);
                gapComposer2.Z(r0);
                gapComposer = gapComposer2;
            } else {
                gapComposer2.L(-1297407256);
                gapComposer2.Z(r0);
                gapComposer = gapComposer2;
            }
        } else {
            GapComposer gapComposer4 = gapComposerH;
            gapComposer4.D();
            gapComposer = gapComposer4;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kj0(osaListViewModel2, function0, function1, function2, function3, i2, 0);
        }
    }

    public static final void b(Function0 function0, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(1554740954);
        int i3 = (gapComposerH.y(function0) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(gapComposerH, R.string.mylv_dashboard_osa), null, null, function0, null, null, null, null, gapComposerH, (i3 << 18) & 3670016, 0, 4023);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kw(i2, 25, function0);
        }
    }
}
