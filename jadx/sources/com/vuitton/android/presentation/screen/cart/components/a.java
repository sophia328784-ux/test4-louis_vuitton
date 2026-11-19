package com.vuitton.android.presentation.screen.cart.components;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import com.vuitton.android.presentation.screen.cart.mocks.NativeCartMockKt;
import com.vuitton.android.presentation.screen.cart.models.NativeCartViewState;
import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceViewModelImpl;
import defpackage.un;
import defpackage.wn;
import defpackage.yn;
import defpackage.zn;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a implements Function2 {
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Composer composer = (Composer) obj;
        int iIntValue = ((Integer) obj2).intValue();
        ComposableSingletons$NativeCartFilledScreenKt composableSingletons$NativeCartFilledScreenKt = ComposableSingletons$NativeCartFilledScreenKt.f54991a;
        if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            NativeCartViewState nativeCartViewState = NativeCartMockKt.f55129b;
            ReinsuranceViewModelImpl.ReinsuranceState.Empty empty = ReinsuranceViewModelImpl.ReinsuranceState.Empty.f63422a;
            Object objX = composer.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new wn(18);
                composer.q(objX);
            }
            Function1 function1 = (Function1) objX;
            Object objX2 = composer.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new yn(8);
                composer.q(objX2);
            }
            Function0 function0 = (Function0) objX2;
            Object objX3 = composer.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new yn(9);
                composer.q(objX3);
            }
            Function0 function2 = (Function0) objX3;
            Object objX4 = composer.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = new yn(10);
                composer.q(objX4);
            }
            Function0 function3 = (Function0) objX4;
            Object objX5 = composer.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = new yn(11);
                composer.q(objX5);
            }
            Function0 function4 = (Function0) objX5;
            Object objX6 = composer.x();
            if (objX6 == composer$Companion$Empty$1) {
                objX6 = new wn(16);
                composer.q(objX6);
            }
            Function1 function5 = (Function1) objX6;
            Object objX7 = composer.x();
            if (objX7 == composer$Companion$Empty$1) {
                objX7 = new yn(7);
                composer.q(objX7);
            }
            Function0 function6 = (Function0) objX7;
            Object objX8 = composer.x();
            if (objX8 == composer$Companion$Empty$1) {
                objX8 = new zn(5);
                composer.q(objX8);
            }
            Function2 function7 = (Function2) objX8;
            Object objX9 = composer.x();
            if (objX9 == composer$Companion$Empty$1) {
                objX9 = new wn(17);
                composer.q(objX9);
            }
            Function1 function8 = (Function1) objX9;
            Object objX10 = composer.x();
            if (objX10 == composer$Companion$Empty$1) {
                objX10 = new un(25);
                composer.q(objX10);
            }
            Function3 function9 = (Function3) objX10;
            Object objX11 = composer.x();
            if (objX11 == composer$Companion$Empty$1) {
                objX11 = ComposableSingletons$NativeCartFilledScreenKt$lambda$437486907$1$11$1.f54993b;
                composer.q(objX11);
            }
            Function1 function10 = (Function1) objX11;
            Object objX12 = composer.x();
            if (objX12 == composer$Companion$Empty$1) {
                objX12 = ComposableSingletons$NativeCartFilledScreenKt$lambda$437486907$1$12$1.f54994b;
                composer.q(objX12);
            }
            Function1 function11 = (Function1) objX12;
            Object objX13 = composer.x();
            if (objX13 == composer$Companion$Empty$1) {
                objX13 = new wn(19);
                composer.q(objX13);
            }
            Function1 function12 = (Function1) objX13;
            Object objX14 = composer.x();
            if (objX14 == composer$Companion$Empty$1) {
                objX14 = new wn(20);
                composer.q(objX14);
            }
            Function1 function13 = (Function1) objX14;
            Object objX15 = composer.x();
            if (objX15 == composer$Companion$Empty$1) {
                objX15 = new wn(21);
                composer.q(objX15);
            }
            NativeCartFilledScreenKt.b(null, nativeCartViewState, null, empty, function1, function0, function2, function3, function4, function5, function6, function7, function8, function9, function10, function11, function12, function13, (Function1) objX15, composer, 920350080, 115043766, 1);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }
}
