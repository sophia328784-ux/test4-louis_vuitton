package com.vuitton.android.presentation.screen.catalog.thematicplp.components;

import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeItemUiModel;
import defpackage.lr0;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f55419b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f55420c;
    public final /* synthetic */ ThemeItemUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function2 f55421e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function2 f55422f;

    public /* synthetic */ a(boolean z, ThemeItemUiModel themeItemUiModel, Function2 function2, Function2 function3) {
        this.f55420c = z;
        this.d = themeItemUiModel;
        this.f55421e = function2;
        this.f55422f = function3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f55419b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        final Function2 function2 = this.f55422f;
        final Function2 function3 = this.f55421e;
        final ThemeItemUiModel themeItemUiModel = this.d;
        boolean z = this.f55420c;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                composer.L(-1284978813);
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("RegularGridItem$lambda$1");
                Boolean boolValueOf = Boolean.valueOf(z);
                boolean zK = composer.K(function3) | composer.y(themeItemUiModel) | composer.K(function2);
                Object objX = composer.x();
                if (zK || objX == composer$Companion$Empty$1) {
                    objX = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.catalog.thematicplp.components.RegularGridItemKt$RegularGridItem$2$1$1
                        @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                        public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                            Function2 function4 = function3;
                            ThemeItemUiModel themeItemUiModel2 = themeItemUiModel;
                            Object objE = TapGestureDetectorKt.e(pointerInputScope, new lr0(function4, themeItemUiModel2, 0), null, null, new lr0(function2, themeItemUiModel2, 1), continuation, 6);
                            return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                        }
                    };
                    composer.q(objX);
                }
                Modifier modifierA = SuspendingPointerInputFilterKt.a(dTFunctionNameModifier, boolValueOf, (PointerInputEventHandler) objX);
                composer.F();
                return modifierA;
            default:
                float f2 = StaggeredGridItemKt.f55396a;
                composer.L(-1050858942);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("StaggeredGridItem$lambda$1");
                Boolean boolValueOf2 = Boolean.valueOf(z);
                boolean zY = composer.y(themeItemUiModel) | composer.K(function3) | composer.K(function2);
                Object objX2 = composer.x();
                if (zY || objX2 == composer$Companion$Empty$1) {
                    objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.catalog.thematicplp.components.StaggeredGridItemKt$StaggeredGridItem$2$1$1
                        @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                        public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                            ThemeItemUiModel themeItemUiModel2 = themeItemUiModel;
                            Object objE = TapGestureDetectorKt.e(pointerInputScope, new lr0(themeItemUiModel2, function3), null, null, new lr0(function2, themeItemUiModel2, 3), continuation, 6);
                            return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                        }
                    };
                    composer.q(objX2);
                }
                Modifier modifierA2 = SuspendingPointerInputFilterKt.a(dTFunctionNameModifier2, boolValueOf2, (PointerInputEventHandler) objX2);
                composer.F();
                return modifierA2;
        }
    }

    public /* synthetic */ a(boolean z, Function2 function2, ThemeItemUiModel themeItemUiModel, Function2 function3) {
        this.f55420c = z;
        this.f55421e = function2;
        this.d = themeItemUiModel;
        this.f55422f = function3;
    }
}
