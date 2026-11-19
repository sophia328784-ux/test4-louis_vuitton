package com.vuitton.android.presentation.screen.feed.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.model.calendar.CalendarEventUiModel;
import com.vuitton.android.presentation.model.common.A11ySettings;
import com.vuitton.android.presentation.model.common.FeatureThemeUiModel;
import com.vuitton.android.presentation.screen.feed.models.FeedMocksKt;
import com.vuitton.android.presentation.screen.feed.models.FeedViewState;
import com.vuitton.android.presentation.screen.feed.models.uimodels.FeedUiModel;
import defpackage.rn;
import defpackage.tn;
import defpackage.vn;
import defpackage.wn;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f57850b;

    public /* synthetic */ a(int i2) {
        this.f57850b = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f57850b;
        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        int i3 = 2;
        int i4 = 0;
        int i5 = 1;
        int i6 = 3;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                ComposableSingletons$FeedDiscoverSuccessScreenKt composableSingletons$FeedDiscoverSuccessScreenKt = ComposableSingletons$FeedDiscoverSuccessScreenKt.f57753a;
                if (composer.p(1 & iIntValue, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Modifier modifierO = BackgroundKt.b(new DTFunctionNameModifier("lambda__201538554$lambda$0"), LVAppDesignKitTheme.c(composer).f48361b.f48374a, rectangleShapeKt$RectangleShape$1).o(SizeKt.f5052c);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode = Long.hashCode(composer.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
                    Modifier modifierC = ComposedModifierKt.c(composer, modifierO);
                    ComposeUiNode.b0.getClass();
                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                    if (composer.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer.B();
                    if (composer.getS()) {
                        composer.C(function0);
                    } else {
                        composer.o();
                    }
                    Updater.c(composer, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer, modifierC, ComposeUiNode.Companion.d);
                    LazyListState lazyListStateA = LazyListStateKt.a(0, composer, 3);
                    FeedUiModel feedUiModel = FeedMocksKt.f57919b;
                    A11ySettings a11ySettings = new A11ySettings(false, false, false, 7, null);
                    Object objX = composer.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new rn(24);
                        composer.q(objX);
                    }
                    Function1 function1 = (Function1) objX;
                    Object objX2 = composer.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new tn(9);
                        composer.q(objX2);
                    }
                    Function0 function2 = (Function0) objX2;
                    Object objX3 = composer.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = new rn(25);
                        composer.q(objX3);
                    }
                    Function1 function3 = (Function1) objX3;
                    Object objX4 = composer.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new rn(26);
                        composer.q(objX4);
                    }
                    Function1 function4 = (Function1) objX4;
                    Object objX5 = composer.x();
                    if (objX5 == composer$Companion$Empty$1) {
                        objX5 = new rn(27);
                        composer.q(objX5);
                    }
                    Function1 function5 = (Function1) objX5;
                    Object objX6 = composer.x();
                    if (objX6 == composer$Companion$Empty$1) {
                        objX6 = new rn(28);
                        composer.q(objX6);
                    }
                    Function1 function6 = (Function1) objX6;
                    Object objX7 = composer.x();
                    if (objX7 == composer$Companion$Empty$1) {
                        objX7 = ComposableSingletons$FeedDiscoverSuccessScreenKt$lambda$201538554$1$1$7$1.f57758b;
                        composer.q(objX7);
                    }
                    Function2 function7 = (Function2) objX7;
                    Object objX8 = composer.x();
                    if (objX8 == composer$Companion$Empty$1) {
                        objX8 = ComposableSingletons$FeedDiscoverSuccessScreenKt$lambda$201538554$1$1$8$1.f57759b;
                        composer.q(objX8);
                    }
                    Function2 function8 = (Function2) objX8;
                    Object objX9 = composer.x();
                    if (objX9 == composer$Companion$Empty$1) {
                        objX9 = new rn(29);
                        composer.q(objX9);
                    }
                    FeedDiscoverSuccessScreenKt.a(lazyListStateA, null, feedUiModel, false, false, a11ySettings, function1, function2, function3, function4, function5, function6, function7, function8, (Function1) objX9, composer, 920153088, 28086, 2);
                    composer.r();
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                ComposableSingletons$FeedDiscoverSuccessScreenKt composableSingletons$FeedDiscoverSuccessScreenKt2 = ComposableSingletons$FeedDiscoverSuccessScreenKt.f57753a;
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Modifier modifierO2 = BackgroundKt.b(new DTFunctionNameModifier("lambda__705599680$lambda$0"), LVAppDesignKitTheme.c(composer2).f48361b.f48378f, rectangleShapeKt$RectangleShape$1).o(SizeKt.f5052c);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode2 = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierO2);
                    ComposeUiNode.b0.getClass();
                    Function0 function9 = ComposeUiNode.Companion.f9641b;
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function9);
                    } else {
                        composer2.o();
                    }
                    Updater.c(composer2, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer2, persistentCompositionLocalMapN2, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer2, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                    Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer2, modifierC2, ComposeUiNode.Companion.d);
                    LazyListState lazyListStateA2 = LazyListStateKt.a(0, composer2, 3);
                    FeedUiModel feedUiModel2 = FeedMocksKt.f57919b;
                    A11ySettings a11ySettings2 = new A11ySettings(false, false, false, 7, null);
                    Object objX10 = composer2.x();
                    if (objX10 == composer$Companion$Empty$1) {
                        objX10 = new wn(i4);
                        composer2.q(objX10);
                    }
                    Function1 function10 = (Function1) objX10;
                    Object objX11 = composer2.x();
                    if (objX11 == composer$Companion$Empty$1) {
                        objX11 = new tn(10);
                        composer2.q(objX11);
                    }
                    Function0 function11 = (Function0) objX11;
                    Object objX12 = composer2.x();
                    if (objX12 == composer$Companion$Empty$1) {
                        objX12 = new wn(i5);
                        composer2.q(objX12);
                    }
                    Function1 function12 = (Function1) objX12;
                    Object objX13 = composer2.x();
                    if (objX13 == composer$Companion$Empty$1) {
                        objX13 = new rn(20);
                        composer2.q(objX13);
                    }
                    Function1 function13 = (Function1) objX13;
                    Object objX14 = composer2.x();
                    if (objX14 == composer$Companion$Empty$1) {
                        objX14 = new rn(21);
                        composer2.q(objX14);
                    }
                    Function1 function14 = (Function1) objX14;
                    Object objX15 = composer2.x();
                    if (objX15 == composer$Companion$Empty$1) {
                        objX15 = new rn(22);
                        composer2.q(objX15);
                    }
                    Function1 function15 = (Function1) objX15;
                    Object objX16 = composer2.x();
                    if (objX16 == composer$Companion$Empty$1) {
                        objX16 = ComposableSingletons$FeedDiscoverSuccessScreenKt$lambda$705599680$1$1$7$1.f57760b;
                        composer2.q(objX16);
                    }
                    Function2 function16 = (Function2) objX16;
                    Object objX17 = composer2.x();
                    if (objX17 == composer$Companion$Empty$1) {
                        objX17 = ComposableSingletons$FeedDiscoverSuccessScreenKt$lambda$705599680$1$1$8$1.f57761b;
                        composer2.q(objX17);
                    }
                    Function2 function17 = (Function2) objX17;
                    Object objX18 = composer2.x();
                    if (objX18 == composer$Companion$Empty$1) {
                        objX18 = new rn(23);
                        composer2.q(objX18);
                    }
                    FeedDiscoverSuccessScreenKt.a(lazyListStateA2, null, feedUiModel2, false, false, a11ySettings2, function10, function11, function12, function13, function14, function15, function16, function17, (Function1) objX18, composer2, 920153088, 28086, 2);
                    composer2.r();
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            default:
                Composer composer3 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                ComposableSingletons$FeedForYouSuccessScreenKt composableSingletons$FeedForYouSuccessScreenKt = ComposableSingletons$FeedForYouSuccessScreenKt.f57765a;
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    LazyListState lazyListStateA3 = LazyListStateKt.a(0, composer3, 3);
                    FeedViewState feedViewState = new FeedViewState(FeatureThemeUiModel.LIGHT, null, null, null, null, false, null, null, null, false, null, new CalendarEventUiModel(null, null, null, null, null, null, null, null, null, null, null, null, 4095, null), false, null, null, null, false, null, 260094, null);
                    FeedUiModel feedUiModel3 = new FeedUiModel(EmptyList.f71768b);
                    Object objX19 = composer3.x();
                    if (objX19 == composer$Companion$Empty$1) {
                        objX19 = new wn(5);
                        composer3.q(objX19);
                    }
                    Function1 function18 = (Function1) objX19;
                    Object objX20 = composer3.x();
                    if (objX20 == composer$Companion$Empty$1) {
                        objX20 = new tn(11);
                        composer3.q(objX20);
                    }
                    Function0 function19 = (Function0) objX20;
                    Object objX21 = composer3.x();
                    if (objX21 == composer$Companion$Empty$1) {
                        objX21 = new wn(6);
                        composer3.q(objX21);
                    }
                    Function1 function20 = (Function1) objX21;
                    Object objX22 = composer3.x();
                    if (objX22 == composer$Companion$Empty$1) {
                        objX22 = new wn(7);
                        composer3.q(objX22);
                    }
                    Function1 function21 = (Function1) objX22;
                    Object objX23 = composer3.x();
                    if (objX23 == composer$Companion$Empty$1) {
                        objX23 = new wn(8);
                        composer3.q(objX23);
                    }
                    Function1 function22 = (Function1) objX23;
                    Object objX24 = composer3.x();
                    if (objX24 == composer$Companion$Empty$1) {
                        objX24 = new wn(i3);
                        composer3.q(objX24);
                    }
                    Function1 function23 = (Function1) objX24;
                    Object objX25 = composer3.x();
                    if (objX25 == composer$Companion$Empty$1) {
                        objX25 = new wn(i6);
                        composer3.q(objX25);
                    }
                    Function1 function24 = (Function1) objX25;
                    Object objX26 = composer3.x();
                    if (objX26 == composer$Companion$Empty$1) {
                        objX26 = ComposableSingletons$FeedForYouSuccessScreenKt$lambda$6453700$1$8$1.f57769b;
                        composer3.q(objX26);
                    }
                    Function2 function25 = (Function2) objX26;
                    Object objX27 = composer3.x();
                    if (objX27 == composer$Companion$Empty$1) {
                        objX27 = ComposableSingletons$FeedForYouSuccessScreenKt$lambda$6453700$1$9$1.f57770b;
                        composer3.q(objX27);
                    }
                    Function2 function26 = (Function2) objX27;
                    Object objX28 = composer3.x();
                    if (objX28 == composer$Companion$Empty$1) {
                        objX28 = new vn(i6);
                        composer3.q(objX28);
                    }
                    Function2 function27 = (Function2) objX28;
                    Object objX29 = composer3.x();
                    if (objX29 == composer$Companion$Empty$1) {
                        objX29 = new wn(4);
                        composer3.q(objX29);
                    }
                    FeedForYouSuccessScreenKt.a(lazyListStateA3, feedViewState, feedUiModel3, function18, function19, null, null, true, function20, function21, function22, function23, function24, function25, function26, function27, (Function1) objX29, composer3, 918580224, 1797558, 96);
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
        }
    }
}
