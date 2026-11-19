package com.vuitton.android.presentation.screen.repairs.list.components;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.options.dispatch.models.InAppDispatchMockKt;
import com.vuitton.android.presentation.screen.repairs.mocks.RepairsBffMockKt;
import com.vuitton.android.presentation.screen.repairs.mocks.RepairsMockKt;
import com.vuitton.android.presentation.screen.repairs.models.RepairFeatureFlags;
import com.vuitton.android.presentation.screen.repairs.models.RepairsViewState;
import com.vuitton.android.presentation.screen.repairs.models.bff.RepairsBffViewState;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.eo;
import defpackage.go;
import defpackage.io;
import defpackage.jo;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f63974b;

    public /* synthetic */ a(int i2) {
        this.f63974b = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f63974b;
        int i3 = 9;
        int i4 = 8;
        int i5 = 20;
        int i6 = 29;
        int i7 = 28;
        int i8 = 5;
        int i9 = 4;
        int i10 = 6;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        int i11 = 7;
        int i12 = 2;
        int i13 = 3;
        int i14 = 1;
        int i15 = 0;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                ComposableSingletons$RepairListBffScreenKt composableSingletons$RepairListBffScreenKt = ComposableSingletons$RepairListBffScreenKt.f63905a;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    InAppDispatch inAppDispatch = InAppDispatchMockKt.f59833a;
                    EmptyList emptyList = EmptyList.f71768b;
                    RepairsBffViewState repairsBffViewState = new RepairsBffViewState(inAppDispatch, false, false, emptyList, emptyList, null, null, null, false, null, new RepairFeatureFlags(true, true, false, false, false, 28, null), null, 3046, null);
                    ContactUsUiModel contactUsUiModel = new ContactUsUiModel(false, null, null, null, null, null, null, null, false, false, false, null, 4095, null);
                    LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, composer, null);
                    ComposableLambdaImpl composableLambdaImpl = ComposableSingletons$RepairListBffScreenKt.f63907c;
                    Object objX = composer.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new go(12);
                        composer.q(objX);
                    }
                    Function0 function0 = (Function0) objX;
                    Object objX2 = composer.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new eo(21);
                        composer.q(objX2);
                    }
                    Function1 function1 = (Function1) objX2;
                    Object objX3 = composer.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = new eo(22);
                        composer.q(objX3);
                    }
                    Function1 function2 = (Function1) objX3;
                    Object objX4 = composer.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = ComposableSingletons$RepairListBffScreenKt$lambda$1640917754$1$4$1.f63912b;
                        composer.q(objX4);
                    }
                    Function1 function3 = (Function1) objX4;
                    Object objX5 = composer.x();
                    if (objX5 == composer$Companion$Empty$1) {
                        objX5 = ComposableSingletons$RepairListBffScreenKt$lambda$1640917754$1$5$1.f63913b;
                        composer.q(objX5);
                    }
                    Function1 function4 = (Function1) objX5;
                    Object objX6 = composer.x();
                    if (objX6 == composer$Companion$Empty$1) {
                        objX6 = new go(13);
                        composer.q(objX6);
                    }
                    Function0 function5 = (Function0) objX6;
                    Object objX7 = composer.x();
                    if (objX7 == composer$Companion$Empty$1) {
                        objX7 = new go(14);
                        composer.q(objX7);
                    }
                    Function0 function6 = (Function0) objX7;
                    Object objX8 = composer.x();
                    if (objX8 == composer$Companion$Empty$1) {
                        objX8 = new eo(23);
                        composer.q(objX8);
                    }
                    Function1 function7 = (Function1) objX8;
                    Object objX9 = composer.x();
                    if (objX9 == composer$Companion$Empty$1) {
                        objX9 = new go(15);
                        composer.q(objX9);
                    }
                    RepairListBffScreenKt.b(repairsBffViewState, contactUsUiModel, lVModalBottomSheetStateF, composableLambdaImpl, function0, function1, function2, function3, function4, function5, function6, function7, (Function0) objX9, composer, (LVModalBottomSheetState.f48797e << 6) | 920349696, 438);
                } else {
                    composer.D();
                }
                break;
            case 1:
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                ComposableSingletons$RepairListBffScreenKt composableSingletons$RepairListBffScreenKt2 = ComposableSingletons$RepairListBffScreenKt.f63905a;
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    InAppDispatch inAppDispatch2 = InAppDispatchMockKt.f59833a;
                    RepairsBffViewState repairsBffViewState2 = RepairsBffMockKt.f63975a;
                    RepairsBffViewState repairsBffViewState3 = new RepairsBffViewState(inAppDispatch2, false, false, repairsBffViewState2.d, repairsBffViewState2.f64086e, null, null, null, false, null, new RepairFeatureFlags(false, true, false, false, false, 29, null), null, 3046, null);
                    ContactUsUiModel contactUsUiModel2 = new ContactUsUiModel(false, null, null, null, null, null, null, null, false, false, false, null, 4095, null);
                    LVModalBottomSheetState lVModalBottomSheetStateF2 = LVModalBottomSheetKt.f(0, 7, composer2, null);
                    ComposableLambdaImpl composableLambdaImpl2 = ComposableSingletons$RepairListBffScreenKt.d;
                    Object objX10 = composer2.x();
                    if (objX10 == composer$Companion$Empty$1) {
                        objX10 = new go(19);
                        composer2.q(objX10);
                    }
                    Function0 function8 = (Function0) objX10;
                    Object objX11 = composer2.x();
                    if (objX11 == composer$Companion$Empty$1) {
                        objX11 = new eo(26);
                        composer2.q(objX11);
                    }
                    Function1 function9 = (Function1) objX11;
                    Object objX12 = composer2.x();
                    if (objX12 == composer$Companion$Empty$1) {
                        objX12 = new eo(27);
                        composer2.q(objX12);
                    }
                    Function1 function10 = (Function1) objX12;
                    Object objX13 = composer2.x();
                    if (objX13 == composer$Companion$Empty$1) {
                        objX13 = ComposableSingletons$RepairListBffScreenKt$lambda$1544678005$1$4$1.f63916b;
                        composer2.q(objX13);
                    }
                    Function1 function11 = (Function1) objX13;
                    Object objX14 = composer2.x();
                    if (objX14 == composer$Companion$Empty$1) {
                        objX14 = ComposableSingletons$RepairListBffScreenKt$lambda$1544678005$1$5$1.f63917b;
                        composer2.q(objX14);
                    }
                    Function1 function12 = (Function1) objX14;
                    Object objX15 = composer2.x();
                    if (objX15 == composer$Companion$Empty$1) {
                        objX15 = new go(i8);
                        composer2.q(objX15);
                    }
                    Function0 function13 = (Function0) objX15;
                    Object objX16 = composer2.x();
                    if (objX16 == composer$Companion$Empty$1) {
                        objX16 = new go(i10);
                        composer2.q(objX16);
                    }
                    Function0 function14 = (Function0) objX16;
                    Object objX17 = composer2.x();
                    if (objX17 == composer$Companion$Empty$1) {
                        objX17 = new eo(16);
                        composer2.q(objX17);
                    }
                    Function1 function15 = (Function1) objX17;
                    Object objX18 = composer2.x();
                    if (objX18 == composer$Companion$Empty$1) {
                        objX18 = new go(i11);
                        composer2.q(objX18);
                    }
                    RepairListBffScreenKt.b(repairsBffViewState3, contactUsUiModel2, lVModalBottomSheetStateF2, composableLambdaImpl2, function8, function9, function10, function11, function12, function13, function14, function15, (Function0) objX18, composer2, (LVModalBottomSheetState.f48797e << 6) | 920349696, 438);
                } else {
                    composer2.D();
                }
                break;
            case 2:
                Composer composer3 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                ComposableSingletons$RepairListBffScreenKt composableSingletons$RepairListBffScreenKt3 = ComposableSingletons$RepairListBffScreenKt.f63905a;
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    RepairsBffViewState repairsBffViewState4 = new RepairsBffViewState(InAppDispatchMockKt.f59833a, false, false, RepairsBffMockKt.f63975a.d, EmptyList.f71768b, null, null, null, false, null, null, null, 4070, null);
                    ContactUsUiModel contactUsUiModel3 = new ContactUsUiModel(false, null, null, null, null, null, null, null, false, false, false, null, 4095, null);
                    LVModalBottomSheetState lVModalBottomSheetStateF3 = LVModalBottomSheetKt.f(0, 7, composer3, null);
                    ComposableLambdaImpl composableLambdaImpl3 = ComposableSingletons$RepairListBffScreenKt.f63908e;
                    Object objX19 = composer3.x();
                    if (objX19 == composer$Companion$Empty$1) {
                        objX19 = new go(i4);
                        composer3.q(objX19);
                    }
                    Function0 function16 = (Function0) objX19;
                    Object objX20 = composer3.x();
                    if (objX20 == composer$Companion$Empty$1) {
                        objX20 = new eo(17);
                        composer3.q(objX20);
                    }
                    Function1 function17 = (Function1) objX20;
                    Object objX21 = composer3.x();
                    if (objX21 == composer$Companion$Empty$1) {
                        objX21 = new eo(18);
                        composer3.q(objX21);
                    }
                    Function1 function18 = (Function1) objX21;
                    Object objX22 = composer3.x();
                    if (objX22 == composer$Companion$Empty$1) {
                        objX22 = ComposableSingletons$RepairListBffScreenKt$lambda$1809062664$1$4$1.f63914b;
                        composer3.q(objX22);
                    }
                    Function1 function19 = (Function1) objX22;
                    Object objX23 = composer3.x();
                    if (objX23 == composer$Companion$Empty$1) {
                        objX23 = ComposableSingletons$RepairListBffScreenKt$lambda$1809062664$1$5$1.f63915b;
                        composer3.q(objX23);
                    }
                    Function1 function20 = (Function1) objX23;
                    Object objX24 = composer3.x();
                    if (objX24 == composer$Companion$Empty$1) {
                        objX24 = new go(i3);
                        composer3.q(objX24);
                    }
                    Function0 function21 = (Function0) objX24;
                    Object objX25 = composer3.x();
                    if (objX25 == composer$Companion$Empty$1) {
                        objX25 = new go(10);
                        composer3.q(objX25);
                    }
                    Function0 function22 = (Function0) objX25;
                    Object objX26 = composer3.x();
                    if (objX26 == composer$Companion$Empty$1) {
                        objX26 = new eo(19);
                        composer3.q(objX26);
                    }
                    Function1 function23 = (Function1) objX26;
                    Object objX27 = composer3.x();
                    if (objX27 == composer$Companion$Empty$1) {
                        objX27 = new go(11);
                        composer3.q(objX27);
                    }
                    RepairListBffScreenKt.b(repairsBffViewState4, contactUsUiModel3, lVModalBottomSheetStateF3, composableLambdaImpl3, function16, function17, function18, function19, function20, function21, function22, function23, (Function0) objX27, composer3, (LVModalBottomSheetState.f48797e << 6) | 920349696, 438);
                } else {
                    composer3.D();
                }
                break;
            case 3:
                Composer composer4 = (Composer) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                ComposableSingletons$RepairListBffScreenKt composableSingletons$RepairListBffScreenKt4 = ComposableSingletons$RepairListBffScreenKt.f63905a;
                if (composer4.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    RepairsBffViewState repairsBffViewState5 = new RepairsBffViewState(InAppDispatchMockKt.f59833a, false, false, EmptyList.f71768b, RepairsBffMockKt.f63975a.f64086e, null, null, null, false, null, null, null, 4070, null);
                    ContactUsUiModel contactUsUiModel4 = new ContactUsUiModel(false, null, null, null, null, null, null, null, false, false, false, null, 4095, null);
                    LVModalBottomSheetState lVModalBottomSheetStateF4 = LVModalBottomSheetKt.f(0, 7, composer4, null);
                    ComposableLambdaImpl composableLambdaImpl4 = ComposableSingletons$RepairListBffScreenKt.f63909f;
                    Object objX28 = composer4.x();
                    if (objX28 == composer$Companion$Empty$1) {
                        objX28 = new go(i9);
                        composer4.q(objX28);
                    }
                    Function0 function24 = (Function0) objX28;
                    Object objX29 = composer4.x();
                    if (objX29 == composer$Companion$Empty$1) {
                        objX29 = new eo(i5);
                        composer4.q(objX29);
                    }
                    Function1 function25 = (Function1) objX29;
                    Object objX30 = composer4.x();
                    if (objX30 == composer$Companion$Empty$1) {
                        objX30 = new eo(24);
                        composer4.q(objX30);
                    }
                    Function1 function26 = (Function1) objX30;
                    Object objX31 = composer4.x();
                    if (objX31 == composer$Companion$Empty$1) {
                        objX31 = ComposableSingletons$RepairListBffScreenKt$lambda$1562100513$1$4$1.f63910b;
                        composer4.q(objX31);
                    }
                    Function1 function27 = (Function1) objX31;
                    Object objX32 = composer4.x();
                    if (objX32 == composer$Companion$Empty$1) {
                        objX32 = ComposableSingletons$RepairListBffScreenKt$lambda$1562100513$1$5$1.f63911b;
                        composer4.q(objX32);
                    }
                    Function1 function28 = (Function1) objX32;
                    Object objX33 = composer4.x();
                    if (objX33 == composer$Companion$Empty$1) {
                        objX33 = new go(16);
                        composer4.q(objX33);
                    }
                    Function0 function29 = (Function0) objX33;
                    Object objX34 = composer4.x();
                    if (objX34 == composer$Companion$Empty$1) {
                        objX34 = new go(17);
                        composer4.q(objX34);
                    }
                    Function0 function30 = (Function0) objX34;
                    Object objX35 = composer4.x();
                    if (objX35 == composer$Companion$Empty$1) {
                        objX35 = new eo(25);
                        composer4.q(objX35);
                    }
                    Function1 function31 = (Function1) objX35;
                    Object objX36 = composer4.x();
                    if (objX36 == composer$Companion$Empty$1) {
                        objX36 = new go(18);
                        composer4.q(objX36);
                    }
                    RepairListBffScreenKt.b(repairsBffViewState5, contactUsUiModel4, lVModalBottomSheetStateF4, composableLambdaImpl4, function24, function25, function26, function27, function28, function29, function30, function31, (Function0) objX36, composer4, (LVModalBottomSheetState.f48797e << 6) | 920349696, 438);
                } else {
                    composer4.D();
                }
                break;
            case 4:
                Composer composer5 = (Composer) obj;
                int iIntValue5 = ((Integer) obj2).intValue();
                ComposableSingletons$RepairListScreenKt composableSingletons$RepairListScreenKt = ComposableSingletons$RepairListScreenKt.f63921a;
                if (composer5.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    InAppDispatch inAppDispatch3 = InAppDispatchMockKt.f59833a;
                    EmptyList emptyList2 = EmptyList.f71768b;
                    RepairsViewState repairsViewState = new RepairsViewState(inAppDispatch3, false, false, emptyList2, emptyList2, null, null, null, false, null, false, null, new RepairFeatureFlags(true, true, false, false, false, 28, null), null, 12262, null);
                    ContactUsUiModel contactUsUiModel5 = new ContactUsUiModel(false, null, null, null, null, null, null, null, false, false, false, null, 4095, null);
                    LVModalBottomSheetState lVModalBottomSheetStateF5 = LVModalBottomSheetKt.f(0, 7, composer5, null);
                    ComposableLambdaImpl composableLambdaImpl5 = ComposableSingletons$RepairListScreenKt.f63923c;
                    Object objX37 = composer5.x();
                    if (objX37 == composer$Companion$Empty$1) {
                        objX37 = new go(24);
                        composer5.q(objX37);
                    }
                    Function0 function32 = (Function0) objX37;
                    Object objX38 = composer5.x();
                    if (objX38 == composer$Companion$Empty$1) {
                        objX38 = new eo(i6);
                        composer5.q(objX38);
                    }
                    Function1 function33 = (Function1) objX38;
                    Object objX39 = composer5.x();
                    if (objX39 == composer$Companion$Empty$1) {
                        objX39 = new io(i15);
                        composer5.q(objX39);
                    }
                    Function1 function34 = (Function1) objX39;
                    Object objX40 = composer5.x();
                    if (objX40 == composer$Companion$Empty$1) {
                        objX40 = ComposableSingletons$RepairListScreenKt$lambda$121696786$1$4$1.f63926b;
                        composer5.q(objX40);
                    }
                    Function1 function35 = (Function1) objX40;
                    Object objX41 = composer5.x();
                    if (objX41 == composer$Companion$Empty$1) {
                        objX41 = ComposableSingletons$RepairListScreenKt$lambda$121696786$1$5$1.f63927b;
                        composer5.q(objX41);
                    }
                    Function1 function36 = (Function1) objX41;
                    Object objX42 = composer5.x();
                    if (objX42 == composer$Companion$Empty$1) {
                        objX42 = new go(25);
                        composer5.q(objX42);
                    }
                    Function0 function37 = (Function0) objX42;
                    Object objX43 = composer5.x();
                    if (objX43 == composer$Companion$Empty$1) {
                        objX43 = new go(26);
                        composer5.q(objX43);
                    }
                    Function0 function38 = (Function0) objX43;
                    Object objX44 = composer5.x();
                    if (objX44 == composer$Companion$Empty$1) {
                        objX44 = new io(i14);
                        composer5.q(objX44);
                    }
                    Function1 function39 = (Function1) objX44;
                    Object objX45 = composer5.x();
                    if (objX45 == composer$Companion$Empty$1) {
                        objX45 = new go(27);
                        composer5.q(objX45);
                    }
                    RepairListScreenKt.c(repairsViewState, lVModalBottomSheetStateF5, contactUsUiModel5, composableLambdaImpl5, function32, function33, function34, function35, function36, function37, function38, function39, (Function0) objX45, composer5, (LVModalBottomSheetState.f48797e << 3) | 920349696, 438);
                } else {
                    composer5.D();
                }
                break;
            case 5:
                Composer composer6 = (Composer) obj;
                int iIntValue6 = ((Integer) obj2).intValue();
                ComposableSingletons$RepairListScreenKt composableSingletons$RepairListScreenKt2 = ComposableSingletons$RepairListScreenKt.f63921a;
                if (composer6.p(iIntValue6 & 1, (iIntValue6 & 3) != 2)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    InAppDispatch inAppDispatch4 = InAppDispatchMockKt.f59833a;
                    RepairsViewState repairsViewState2 = RepairsMockKt.f63976a;
                    RepairsViewState repairsViewState3 = new RepairsViewState(inAppDispatch4, false, false, repairsViewState2.d, repairsViewState2.f64016e, null, null, null, false, null, false, null, new RepairFeatureFlags(false, true, false, false, false, 29, null), null, 12262, null);
                    ContactUsUiModel contactUsUiModel6 = new ContactUsUiModel(false, null, null, null, null, null, null, null, false, false, false, null, 4095, null);
                    LVModalBottomSheetState lVModalBottomSheetStateF6 = LVModalBottomSheetKt.f(0, 7, composer6, null);
                    ComposableLambdaImpl composableLambdaImpl6 = ComposableSingletons$RepairListScreenKt.d;
                    Object objX46 = composer6.x();
                    if (objX46 == composer$Companion$Empty$1) {
                        objX46 = new jo(i8);
                        composer6.q(objX46);
                    }
                    Function0 function40 = (Function0) objX46;
                    Object objX47 = composer6.x();
                    if (objX47 == composer$Companion$Empty$1) {
                        objX47 = new io(i4);
                        composer6.q(objX47);
                    }
                    Function1 function41 = (Function1) objX47;
                    Object objX48 = composer6.x();
                    if (objX48 == composer$Companion$Empty$1) {
                        objX48 = new io(i3);
                        composer6.q(objX48);
                    }
                    Function1 function42 = (Function1) objX48;
                    Object objX49 = composer6.x();
                    if (objX49 == composer$Companion$Empty$1) {
                        objX49 = ComposableSingletons$RepairListScreenKt$lambda$92358367$1$4$1.f63932b;
                        composer6.q(objX49);
                    }
                    Function1 function43 = (Function1) objX49;
                    Object objX50 = composer6.x();
                    if (objX50 == composer$Companion$Empty$1) {
                        objX50 = ComposableSingletons$RepairListScreenKt$lambda$92358367$1$5$1.f63933b;
                        composer6.q(objX50);
                    }
                    Function1 function44 = (Function1) objX50;
                    Object objX51 = composer6.x();
                    if (objX51 == composer$Companion$Empty$1) {
                        objX51 = new go(21);
                        composer6.q(objX51);
                    }
                    Function0 function45 = (Function0) objX51;
                    Object objX52 = composer6.x();
                    if (objX52 == composer$Companion$Empty$1) {
                        objX52 = new go(22);
                        composer6.q(objX52);
                    }
                    Function0 function46 = (Function0) objX52;
                    Object objX53 = composer6.x();
                    if (objX53 == composer$Companion$Empty$1) {
                        objX53 = new eo(i7);
                        composer6.q(objX53);
                    }
                    Function1 function47 = (Function1) objX53;
                    Object objX54 = composer6.x();
                    if (objX54 == composer$Companion$Empty$1) {
                        objX54 = new go(23);
                        composer6.q(objX54);
                    }
                    RepairListScreenKt.c(repairsViewState3, lVModalBottomSheetStateF6, contactUsUiModel6, composableLambdaImpl6, function40, function41, function42, function43, function44, function45, function46, function47, (Function0) objX54, composer6, (LVModalBottomSheetState.f48797e << 3) | 920349696, 438);
                } else {
                    composer6.D();
                }
                break;
            case 6:
                Composer composer7 = (Composer) obj;
                int iIntValue7 = ((Integer) obj2).intValue();
                ComposableSingletons$RepairListScreenKt composableSingletons$RepairListScreenKt3 = ComposableSingletons$RepairListScreenKt.f63921a;
                if (composer7.p(1 & iIntValue7, (iIntValue7 & 3) != 2)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    RepairsViewState repairsViewState4 = new RepairsViewState(InAppDispatchMockKt.f59833a, false, false, RepairsMockKt.f63976a.d, EmptyList.f71768b, null, null, null, false, null, false, null, null, null, 16358, null);
                    ContactUsUiModel contactUsUiModel7 = new ContactUsUiModel(false, null, null, null, null, null, null, null, false, false, false, null, 4095, null);
                    LVModalBottomSheetState lVModalBottomSheetStateF7 = LVModalBottomSheetKt.f(0, 7, composer7, null);
                    ComposableLambdaImpl composableLambdaImpl7 = ComposableSingletons$RepairListScreenKt.f63924e;
                    Object objX55 = composer7.x();
                    if (objX55 == composer$Companion$Empty$1) {
                        objX55 = new go(i5);
                        composer7.q(objX55);
                    }
                    Function0 function48 = (Function0) objX55;
                    Object objX56 = composer7.x();
                    if (objX56 == composer$Companion$Empty$1) {
                        objX56 = new io(i12);
                        composer7.q(objX56);
                    }
                    Function1 function49 = (Function1) objX56;
                    Object objX57 = composer7.x();
                    if (objX57 == composer$Companion$Empty$1) {
                        objX57 = new io(i10);
                        composer7.q(objX57);
                    }
                    Function1 function50 = (Function1) objX57;
                    Object objX58 = composer7.x();
                    if (objX58 == composer$Companion$Empty$1) {
                        objX58 = ComposableSingletons$RepairListScreenKt$lambda$382604092$1$4$1.f63928b;
                        composer7.q(objX58);
                    }
                    Function1 function51 = (Function1) objX58;
                    Object objX59 = composer7.x();
                    if (objX59 == composer$Companion$Empty$1) {
                        objX59 = ComposableSingletons$RepairListScreenKt$lambda$382604092$1$5$1.f63929b;
                        composer7.q(objX59);
                    }
                    Function1 function52 = (Function1) objX59;
                    Object objX60 = composer7.x();
                    if (objX60 == composer$Companion$Empty$1) {
                        objX60 = new jo(i12);
                        composer7.q(objX60);
                    }
                    Function0 function53 = (Function0) objX60;
                    Object objX61 = composer7.x();
                    if (objX61 == composer$Companion$Empty$1) {
                        objX61 = new jo(i13);
                        composer7.q(objX61);
                    }
                    Function0 function54 = (Function0) objX61;
                    Object objX62 = composer7.x();
                    if (objX62 == composer$Companion$Empty$1) {
                        objX62 = new io(i11);
                        composer7.q(objX62);
                    }
                    Function1 function55 = (Function1) objX62;
                    Object objX63 = composer7.x();
                    if (objX63 == composer$Companion$Empty$1) {
                        objX63 = new jo(i9);
                        composer7.q(objX63);
                    }
                    RepairListScreenKt.c(repairsViewState4, lVModalBottomSheetStateF7, contactUsUiModel7, composableLambdaImpl7, function48, function49, function50, function51, function52, function53, function54, function55, (Function0) objX63, composer7, (LVModalBottomSheetState.f48797e << 3) | 920349696, 438);
                } else {
                    composer7.D();
                }
                break;
            default:
                Composer composer8 = (Composer) obj;
                int iIntValue8 = ((Integer) obj2).intValue();
                ComposableSingletons$RepairListScreenKt composableSingletons$RepairListScreenKt4 = ComposableSingletons$RepairListScreenKt.f63921a;
                if (composer8.p(iIntValue8 & 1, (iIntValue8 & 3) != 2)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    RepairsViewState repairsViewState5 = new RepairsViewState(InAppDispatchMockKt.f59833a, false, false, EmptyList.f71768b, RepairsMockKt.f63976a.f64016e, null, null, null, false, null, false, null, null, null, 16358, null);
                    ContactUsUiModel contactUsUiModel8 = new ContactUsUiModel(false, null, null, null, null, null, null, null, false, false, false, null, 4095, null);
                    LVModalBottomSheetState lVModalBottomSheetStateF8 = LVModalBottomSheetKt.f(0, 7, composer8, null);
                    ComposableLambdaImpl composableLambdaImpl8 = ComposableSingletons$RepairListScreenKt.f63925f;
                    Object objX64 = composer8.x();
                    if (objX64 == composer$Companion$Empty$1) {
                        objX64 = new go(i7);
                        composer8.q(objX64);
                    }
                    Function0 function56 = (Function0) objX64;
                    Object objX65 = composer8.x();
                    if (objX65 == composer$Companion$Empty$1) {
                        objX65 = new io(i13);
                        composer8.q(objX65);
                    }
                    Function1 function57 = (Function1) objX65;
                    Object objX66 = composer8.x();
                    if (objX66 == composer$Companion$Empty$1) {
                        objX66 = new io(i9);
                        composer8.q(objX66);
                    }
                    Function1 function58 = (Function1) objX66;
                    Object objX67 = composer8.x();
                    if (objX67 == composer$Companion$Empty$1) {
                        objX67 = ComposableSingletons$RepairListScreenKt$lambda$883170485$1$4$1.f63930b;
                        composer8.q(objX67);
                    }
                    Function1 function59 = (Function1) objX67;
                    Object objX68 = composer8.x();
                    if (objX68 == composer$Companion$Empty$1) {
                        objX68 = ComposableSingletons$RepairListScreenKt$lambda$883170485$1$5$1.f63931b;
                        composer8.q(objX68);
                    }
                    Function1 function60 = (Function1) objX68;
                    Object objX69 = composer8.x();
                    if (objX69 == composer$Companion$Empty$1) {
                        objX69 = new go(i6);
                        composer8.q(objX69);
                    }
                    Function0 function61 = (Function0) objX69;
                    Object objX70 = composer8.x();
                    if (objX70 == composer$Companion$Empty$1) {
                        objX70 = new jo(i15);
                        composer8.q(objX70);
                    }
                    Function0 function62 = (Function0) objX70;
                    Object objX71 = composer8.x();
                    if (objX71 == composer$Companion$Empty$1) {
                        objX71 = new io(i8);
                        composer8.q(objX71);
                    }
                    Function1 function63 = (Function1) objX71;
                    Object objX72 = composer8.x();
                    if (objX72 == composer$Companion$Empty$1) {
                        objX72 = new jo(i14);
                        composer8.q(objX72);
                    }
                    RepairListScreenKt.c(repairsViewState5, lVModalBottomSheetStateF8, contactUsUiModel8, composableLambdaImpl8, function56, function57, function58, function59, function60, function61, function62, function63, (Function0) objX72, composer8, (LVModalBottomSheetState.f48797e << 3) | 920349696, 438);
                } else {
                    composer8.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
