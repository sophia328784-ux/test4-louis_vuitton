package com.vuitton.android.presentation.screen.account.myinformation;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.lifecycle.viewmodel.navigation3.ViewModelStoreNavEntryDecoratorKt;
import androidx.navigation3.runtime.EntryProviderScope;
import androidx.navigation3.runtime.NavBackStack;
import androidx.navigation3.runtime.SaveableStateHolderNavEntryDecoratorKt;
import androidx.navigation3.ui.NavDisplayKt;
import com.vuitton.android.presentation.screen.account.myinformation.components.edition.EditPasswordComposableKt;
import defpackage.ba0;
import defpackage.cj;
import defpackage.n50;
import defpackage.uv;
import defpackage.x0;
import defpackage.y0;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class MyInformationNavDisplayKt {
    public static final void a(final NavBackStack navBackStack, final MyInformationViewModel myInformationViewModel, final Function0 function0, final Function1 function1, Composer composer, int i2) {
        navBackStack.getClass();
        myInformationViewModel.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(2083515299);
        int i3 = i2 | (gapComposerH.K(navBackStack) ? 4 : 2) | (gapComposerH.K(myInformationViewModel) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            List listP = CollectionsKt.P(SaveableStateHolderNavEntryDecoratorKt.a(gapComposerH), ViewModelStoreNavEntryDecoratorKt.a(gapComposerH));
            gapComposerH.L(803464666);
            EntryProviderScope entryProviderScope = new EntryProviderScope(new Function1() { // from class: com.vuitton.android.presentation.screen.account.myinformation.MyInformationNavDisplayKt$MyInformationNavDisplay$$inlined$entryProvider$default$1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    throw new IllegalStateException(cj.i(obj, "Unknown screen "));
                }
            });
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(1628379263, new b(myInformationViewModel, function0, navBackStack), gapComposerH);
            MyInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$1 myInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$1 = new Function1<MyInformationRoute.MyInfo, Object>() { // from class: com.vuitton.android.presentation.screen.account.myinformation.MyInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return obj.toString();
                }
            };
            final Map mapC = MapsKt.c();
            ReflectionFactory reflectionFactory = Reflection.f71922a;
            entryProviderScope.a(reflectionFactory.b(MyInformationRoute.MyInfo.class), myInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$1, new Function1<MyInformationRoute.MyInfo, Map<String, ? extends Object>>() { // from class: com.vuitton.android.presentation.screen.account.myinformation.MyInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return mapC;
                }
            }, composableLambdaImplB);
            ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(-460910368, new b(myInformationViewModel, navBackStack, function0, 1), gapComposerH);
            MyInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$3 myInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$3 = new Function1<MyInformationRoute.EditMyInfo, Object>() { // from class: com.vuitton.android.presentation.screen.account.myinformation.MyInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return obj.toString();
                }
            };
            final Map mapC2 = MapsKt.c();
            entryProviderScope.a(reflectionFactory.b(MyInformationRoute.EditMyInfo.class), myInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$3, new Function1<MyInformationRoute.EditMyInfo, Map<String, ? extends Object>>() { // from class: com.vuitton.android.presentation.screen.account.myinformation.MyInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return mapC2;
                }
            }, composableLambdaImplB2);
            ComposableLambdaImpl composableLambdaImplB3 = ComposableLambdaKt.b(1744596418, new Function3() { // from class: com.vuitton.android.presentation.screen.account.myinformation.c
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    ((MyInformationRoute.EditPassword) obj).getClass();
                    if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        NavBackStack navBackStack2 = navBackStack;
                        boolean zY = composer2.y(navBackStack2);
                        Function0 function2 = function0;
                        boolean zK = zY | composer2.K(function2);
                        Object objX = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (zK || objX == composer$Companion$Empty$1) {
                            objX = new y0(navBackStack2, function2, 13);
                            composer2.q(objX);
                        }
                        Function0 function3 = (Function0) objX;
                        MyInformationViewModel myInformationViewModel2 = myInformationViewModel;
                        boolean zY2 = composer2.y(myInformationViewModel2);
                        Object objX2 = composer2.x();
                        if (zY2 || objX2 == composer$Companion$Empty$1) {
                            MyInformationNavDisplayKt$MyInformationNavDisplay$1$3$2$1 myInformationNavDisplayKt$MyInformationNavDisplay$1$3$2$1 = new MyInformationNavDisplayKt$MyInformationNavDisplay$1$3$2$1(2, myInformationViewModel2, MyInformationViewModel.class, "savePasswordChanges", "savePasswordChanges(Ljava/lang/String;Ljava/lang/String;)V", 0);
                            composer2.q(myInformationNavDisplayKt$MyInformationNavDisplay$1$3$2$1);
                            objX2 = myInformationNavDisplayKt$MyInformationNavDisplay$1$3$2$1;
                        }
                        EditPasswordComposableKt.a(myInformationViewModel2, function3, (Function2) ((KFunction) objX2), function1, composer2, 0);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH);
            MyInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$5 myInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$5 = new Function1<MyInformationRoute.EditPassword, Object>() { // from class: com.vuitton.android.presentation.screen.account.myinformation.MyInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$5
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return obj.toString();
                }
            };
            final Map mapC3 = MapsKt.c();
            entryProviderScope.a(reflectionFactory.b(MyInformationRoute.EditPassword.class), myInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$5, new Function1<MyInformationRoute.EditPassword, Map<String, ? extends Object>>() { // from class: com.vuitton.android.presentation.screen.account.myinformation.MyInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$6
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return mapC3;
                }
            }, composableLambdaImplB3);
            ComposableLambdaImpl composableLambdaImplB4 = ComposableLambdaKt.b(1775423140, new b(myInformationViewModel, navBackStack, function0, 2), gapComposerH);
            MyInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$7 myInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$7 = new Function1<MyInformationRoute.EditTaxId, Object>() { // from class: com.vuitton.android.presentation.screen.account.myinformation.MyInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$7
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return obj.toString();
                }
            };
            final Map mapC4 = MapsKt.c();
            entryProviderScope.a(reflectionFactory.b(MyInformationRoute.EditTaxId.class), myInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$7, new Function1<MyInformationRoute.EditTaxId, Map<String, ? extends Object>>() { // from class: com.vuitton.android.presentation.screen.account.myinformation.MyInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$8
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return mapC4;
                }
            }, composableLambdaImplB4);
            ComposableLambdaImpl composableLambdaImplB5 = ComposableLambdaKt.b(-542944890, new b(myInformationViewModel, navBackStack, function0, 3), gapComposerH);
            MyInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$9 myInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$9 = new Function1<MyInformationRoute.EditBranchId, Object>() { // from class: com.vuitton.android.presentation.screen.account.myinformation.MyInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$9
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return obj.toString();
                }
            };
            final Map mapC5 = MapsKt.c();
            entryProviderScope.a(reflectionFactory.b(MyInformationRoute.EditBranchId.class), myInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$9, new Function1<MyInformationRoute.EditBranchId, Map<String, ? extends Object>>() { // from class: com.vuitton.android.presentation.screen.account.myinformation.MyInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$10
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return mapC5;
                }
            }, composableLambdaImplB5);
            androidx.navigation3.runtime.a aVar = new androidx.navigation3.runtime.a(entryProviderScope);
            gapComposerH.Z(false);
            int i4 = i3 & 14;
            boolean z = i4 == 4;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z || objX == composer$Companion$Empty$1) {
                objX = new x0(navBackStack, 9);
                gapComposerH.q(objX);
            }
            Function0 function2 = (Function0) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new ba0(19);
                gapComposerH.q(objX2);
            }
            Function1 function3 = (Function1) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new ba0(20);
                gapComposerH.q(objX3);
            }
            Function1 function4 = (Function1) objX3;
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = new n50(16);
                gapComposerH.q(objX4);
            }
            NavBackStack.Companion companion = NavBackStack.INSTANCE;
            NavDisplayKt.c(navBackStack, null, null, function2, listP, null, null, function3, function4, (Function2) objX4, aVar, gapComposerH, 805306368 | i4);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new uv(navBackStack, myInformationViewModel, function0, function1, i2);
        }
    }
}
