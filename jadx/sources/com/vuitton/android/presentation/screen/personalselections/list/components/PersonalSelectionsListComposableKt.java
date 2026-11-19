package com.vuitton.android.presentation.screen.personalselections.list.components;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVStandardTopBarKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.contact.compose.ContactUsBottomSheetKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.extensions.ResourcesExtKt;
import com.vuitton.android.presentation.screen.personalselections.list.models.PersonalSelectionsListUiModel;
import com.vuitton.android.presentation.screen.personalselections.list.models.PersonalSelectionsListViewState;
import defpackage.bl;
import defpackage.d21;
import defpackage.il;
import defpackage.kj0;
import defpackage.o60;
import defpackage.p9;
import defpackage.tj;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PersonalSelectionsListComposableKt {
    /* JADX WARN: Code duplicated, block: B:56:0x018f  */
    /* JADX WARN: Code duplicated, block: B:57:0x0192  */
    /* JADX WARN: Code duplicated, block: B:61:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:64:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:65:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:68:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:72:0x01d1  */
    public static final void a(final PersonalSelectionsListViewState personalSelectionsListViewState, final ContactUsUiModel contactUsUiModel, final Function3 function3, Function0 function0, Function0 function1, Function2 function2, Function1 function4, Function0 function5, final Function0 function6, Composer composer, int i2) {
        GapComposer gapComposer;
        LVModalBottomSheetState lVModalBottomSheetState;
        Function3 function7;
        int i3;
        int i4;
        boolean z;
        boolean zD;
        Object objX;
        boolean z2;
        boolean z3;
        Object objX2;
        personalSelectionsListViewState.getClass();
        contactUsUiModel.getClass();
        function3.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        GapComposer gapComposerH = composer.h(-1930980540);
        int i5 = i2 | (gapComposerH.K(personalSelectionsListViewState) ? 4 : 2) | (gapComposerH.K(contactUsUiModel) ? 32 : 16) | (gapComposerH.y(function3) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function2) ? 131072 : 65536) | (gapComposerH.y(function4) ? 1048576 : 524288) | (gapComposerH.y(function5) ? 8388608 : 4194304) | (gapComposerH.y(function6) ? 67108864 : 33554432);
        if (gapComposerH.p(i5 & 1, (38347923 & i5) != 38347922)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            LVModalBottomSheetState lVModalBottomSheetStateF2 = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            PaddingValues paddingValuesE = WindowInsetsKt.e(WindowInsets_androidKt.c(gapComposerH), gapComposerH);
            Pair pair = new Pair(Integer.valueOf((int) ResourcesExtKt.b(paddingValuesE.getF5031b())), Integer.valueOf((int) ResourcesExtKt.b(paddingValuesE.getD())));
            final int iIntValue = ((Number) pair.f71705b).intValue();
            final int iIntValue2 = ((Number) pair.f71706c).intValue();
            if (personalSelectionsListViewState instanceof PersonalSelectionsListViewState.Loading) {
                gapComposerH.L(-246399131);
                PersonalSelectionsListLoadingScreenKt.a(gapComposerH, 0);
                gapComposerH.Z(false);
                function7 = function3;
                i3 = iIntValue;
                lVModalBottomSheetState = lVModalBottomSheetStateF;
            } else {
                if (personalSelectionsListViewState instanceof PersonalSelectionsListViewState.Error) {
                    gapComposerH.L(-246395859);
                    Function2 function8 = new Function2() { // from class: com.vuitton.android.presentation.screen.personalselections.list.components.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            Composer composer2 = (Composer) obj;
                            int iIntValue3 = ((Integer) obj2).intValue();
                            if (composer2.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                String strC = StringResources_androidKt.c(composer2, R.string.services_my_personal_selections_title);
                                LVModalBottomSheetState lVModalBottomSheetState2 = lVModalBottomSheetStateF;
                                boolean zY = composer2.y(lVModalBottomSheetState2);
                                Object objX3 = composer2.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                if (zY || objX3 == composer$Companion$Empty$1) {
                                    PersonalSelectionsListComposableKt$PersonalSelectionsListComposable$2$1$1 personalSelectionsListComposableKt$PersonalSelectionsListComposable$2$1$1 = new PersonalSelectionsListComposableKt$PersonalSelectionsListComposable$2$1$1(0, lVModalBottomSheetState2, LVModalBottomSheetState.class, "show", "show()V", 0);
                                    composer2.q(personalSelectionsListComposableKt$PersonalSelectionsListComposable$2$1$1);
                                    objX3 = personalSelectionsListComposableKt$PersonalSelectionsListComposable$2$1$1;
                                }
                                Function0 function9 = (Function0) ((KFunction) objX3);
                                Function3 function10 = function3;
                                boolean zK = composer2.K(function10);
                                int i6 = iIntValue;
                                boolean zD2 = zK | composer2.d(i6);
                                int i7 = iIntValue2;
                                boolean zD3 = zD2 | composer2.d(i7);
                                Object objX4 = composer2.x();
                                if (zD3 || objX4 == composer$Companion$Empty$1) {
                                    objX4 = new tj(function10, i6, i7, 12);
                                    composer2.q(objX4);
                                }
                                PersonalSelectionsListComposableKt.b(strC, contactUsUiModel, function9, (Function1) objX4, function6, composer2, 0);
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    };
                    iIntValue2 = iIntValue2;
                    PersonalSelectionsListErrorScreenKt.a(ComposableLambdaKt.b(-2135018015, function8, gapComposerH), function5, gapComposerH, ((i5 >> 18) & 112) | 6);
                    gapComposerH.Z(false);
                    i3 = iIntValue;
                    lVModalBottomSheetState = lVModalBottomSheetStateF;
                    function7 = function3;
                } else {
                    if (!(personalSelectionsListViewState instanceof PersonalSelectionsListViewState.Success)) {
                        throw d21.u(gapComposerH, -246399605, false);
                    }
                    gapComposerH.L(-246375803);
                    i5 = i5;
                    lVModalBottomSheetState = lVModalBottomSheetStateF;
                    function7 = function3;
                    i3 = iIntValue;
                    int i6 = i5 >> 9;
                    gapComposerH = gapComposerH;
                    i4 = iIntValue2;
                    PersonalSelectionsListScreenKt.d(ComposableLambdaKt.b(1033609574, new Function2() { // from class: com.vuitton.android.presentation.screen.personalselections.list.components.b
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            int i7;
                            int i8;
                            Composer composer2 = (Composer) obj;
                            int iIntValue3 = ((Integer) obj2).intValue();
                            if (composer2.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                PersonalSelectionsListUiModel personalSelectionsListUiModel = ((PersonalSelectionsListViewState.Success) personalSelectionsListViewState).f62647a;
                                if (!personalSelectionsListUiModel.f62643a.isEmpty() && !personalSelectionsListUiModel.f62644b.isEmpty()) {
                                    i7 = 1161362152;
                                    i8 = R.string.services_my_personal_selections_title;
                                } else if (personalSelectionsListUiModel.f62643a.isEmpty()) {
                                    i7 = 1161371641;
                                    i8 = R.string.services_my_personal_selections_advisor_curation_title;
                                } else {
                                    i7 = 1161367249;
                                    i8 = R.string.services_my_personal_selections_in_store_title;
                                }
                                String strK = o60.k(composer2, i7, i8, composer2);
                                LVModalBottomSheetState lVModalBottomSheetState2 = lVModalBottomSheetStateF;
                                boolean zY = composer2.y(lVModalBottomSheetState2);
                                Object objX3 = composer2.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                if (zY || objX3 == composer$Companion$Empty$1) {
                                    PersonalSelectionsListComposableKt$PersonalSelectionsListComposable$3$1$1 personalSelectionsListComposableKt$PersonalSelectionsListComposable$3$1$1 = new PersonalSelectionsListComposableKt$PersonalSelectionsListComposable$3$1$1(0, lVModalBottomSheetState2, LVModalBottomSheetState.class, "show", "show()V", 0);
                                    composer2.q(personalSelectionsListComposableKt$PersonalSelectionsListComposable$3$1$1);
                                    objX3 = personalSelectionsListComposableKt$PersonalSelectionsListComposable$3$1$1;
                                }
                                Function0 function9 = (Function0) ((KFunction) objX3);
                                Function3 function10 = function3;
                                boolean zK = composer2.K(function10);
                                int i9 = iIntValue;
                                boolean zD2 = zK | composer2.d(i9);
                                int i10 = iIntValue2;
                                boolean zD3 = zD2 | composer2.d(i10);
                                Object objX4 = composer2.x();
                                if (zD3 || objX4 == composer$Companion$Empty$1) {
                                    objX4 = new tj(function10, i9, i10, 11);
                                    composer2.q(objX4);
                                }
                                PersonalSelectionsListComposableKt.b(strK, contactUsUiModel, function9, (Function1) objX4, function6, composer2, 0);
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH), ((PersonalSelectionsListViewState.Success) personalSelectionsListViewState).f62647a, function2, function4, gapComposerH, (i6 & 7168) | (i6 & 896) | 6);
                    gapComposerH.Z(false);
                }
                if ((i5 & 896) == 256) {
                    z = true;
                } else {
                    z = false;
                }
                zD = z | gapComposerH.d(i3) | gapComposerH.d(i4);
                objX = gapComposerH.x();
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (zD || objX == composer$Companion$Empty$1) {
                    objX = new tj(function7, i3, i4, 10);
                    gapComposerH.q(objX);
                }
                Function1 function9 = (Function1) objX;
                if ((57344 & i5) == 16384) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                z3 = z2 | ((i5 & 7168) == 2048);
                objX2 = gapComposerH.x();
                if (z3 || objX2 == composer$Companion$Empty$1) {
                    objX2 = new il(function1, function0, 13);
                    gapComposerH.q(objX2);
                }
                int i7 = LVModalBottomSheetState.f48797e;
                GapComposer gapComposer2 = gapComposerH;
                ContactUsBottomSheetKt.a(contactUsUiModel, lVModalBottomSheetState, lVModalBottomSheetStateF2, function9, (Function0) objX2, gapComposer2, ((i5 >> 3) & 14) | (i7 << 3) | (i7 << 6));
                gapComposer = gapComposer2;
            }
            i4 = iIntValue2;
            if ((i5 & 896) == 256) {
                z = true;
            } else {
                z = false;
            }
            zD = z | gapComposerH.d(i3) | gapComposerH.d(i4);
            objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (zD) {
                objX = new tj(function7, i3, i4, 10);
                gapComposerH.q(objX);
            } else {
                objX = new tj(function7, i3, i4, 10);
                gapComposerH.q(objX);
            }
            Function1 function10 = (Function1) objX;
            if ((57344 & i5) == 16384) {
                z2 = true;
            } else {
                z2 = false;
            }
            z3 = z2 | ((i5 & 7168) == 2048);
            objX2 = gapComposerH.x();
            if (z3) {
                objX2 = new il(function1, function0, 13);
                gapComposerH.q(objX2);
            } else {
                objX2 = new il(function1, function0, 13);
                gapComposerH.q(objX2);
            }
            int i8 = LVModalBottomSheetState.f48797e;
            GapComposer gapComposer3 = gapComposerH;
            ContactUsBottomSheetKt.a(contactUsUiModel, lVModalBottomSheetState, lVModalBottomSheetStateF2, function10, (Function0) objX2, gapComposer3, ((i5 >> 3) & 14) | (i8 << 3) | (i8 << 6));
            gapComposer = gapComposer3;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new p9(personalSelectionsListViewState, contactUsUiModel, function3, function0, function1, function2, function4, function5, function6, i2);
        }
    }

    public static final void b(String str, ContactUsUiModel contactUsUiModel, Function0 function0, Function1 function1, Function0 function2, Composer composer, int i2) {
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(1761938562);
        int i3 = i2 | (gapComposerH.K(str) ? 4 : 2) | (gapComposerH.K(contactUsUiModel) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            LVStandardTopBarKt.a(null, null, false, str, null, null, function2, ComposableLambdaKt.b(-2103214783, new bl(contactUsUiModel, function0, function1, 1), gapComposerH), null, null, null, gapComposer, ((i3 << 9) & 7168) | 12582912 | ((i3 << 6) & 3670016), 0, 3895);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kj0((Object) str, (Object) contactUsUiModel, function0, function1, function2, i2, 7);
        }
    }
}
