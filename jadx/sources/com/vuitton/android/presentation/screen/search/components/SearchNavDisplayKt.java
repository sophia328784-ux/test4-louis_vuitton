package com.vuitton.android.presentation.screen.search.components;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
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
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import com.vuitton.android.presentation.screen.plp.viewmodels.PSPViewModel;
import com.vuitton.android.presentation.screen.search.SearchViewModel;
import defpackage.c4;
import defpackage.cj;
import defpackage.kx;
import defpackage.lf;
import defpackage.x0;
import defpackage.yt0;
import defpackage.zt0;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SearchNavDisplayKt {
    public static final void a(NavBackStack navBackStack, boolean z, SearchViewModel searchViewModel, PSPViewModel pSPViewModel, QuickAccessFiltersViewModel quickAccessFiltersViewModel, ContributionLinkNavigator contributionLinkNavigator, Function1 function1, Function0 function0, Function0 function2, Function0 function3, Function0 function4, String str, Function0 function5, Composer composer, int i2) {
        navBackStack.getClass();
        searchViewModel.getClass();
        pSPViewModel.getClass();
        quickAccessFiltersViewModel.getClass();
        contributionLinkNavigator.getClass();
        function1.getClass();
        function0.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        GapComposer gapComposerH = composer.h(-1112557013);
        int i3 = i2 | (gapComposerH.K(navBackStack) ? 4 : 2) | (gapComposerH.b(z) ? 32 : 16) | (gapComposerH.K(searchViewModel) ? 256 : 128) | (gapComposerH.K(pSPViewModel) ? 2048 : 1024) | (gapComposerH.K(quickAccessFiltersViewModel) ? 16384 : 8192) | (gapComposerH.y(contributionLinkNavigator) ? 131072 : 65536) | (gapComposerH.y(function1) ? 1048576 : 524288) | (gapComposerH.y(function0) ? 8388608 : 4194304) | (gapComposerH.y(function2) ? 67108864 : 33554432) | (gapComposerH.y(function3) ? PKIFailureInfo.duplicateCertReq : 268435456);
        int i4 = (gapComposerH.y(function4) ? (char) 4 : (char) 2) | (gapComposerH.K(str) ? ' ' : (char) 16) | (gapComposerH.y(function5) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, ((i3 & 306783379) == 306783378 && (i4 & 147) == 146) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z2 = ((i4 & 112) == 32) | ((i3 & 7168) == 2048);
            int i5 = i3 & 14;
            boolean z3 = z2 | (i5 == 4);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z3 || objX == composer$Companion$Empty$1) {
                objX = new SearchNavDisplayKt$SearchNavDisplay$1$1(str, pSPViewModel, navBackStack, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, str, (Function2) objX);
            List listP = CollectionsKt.P(SaveableStateHolderNavEntryDecoratorKt.a(gapComposerH), ViewModelStoreNavEntryDecoratorKt.a(gapComposerH));
            gapComposerH.L(279606813);
            EntryProviderScope entryProviderScope = new EntryProviderScope(new Function1() { // from class: com.vuitton.android.presentation.screen.search.components.SearchNavDisplayKt$SearchNavDisplay$$inlined$entryProvider$default$1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    throw new IllegalStateException(cj.i(obj, "Unknown screen "));
                }
            });
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-1785955615, new c4(searchViewModel, contributionLinkNavigator, z, function4, function5, pSPViewModel, navBackStack, function1), gapComposerH);
            SearchNavDisplayKt$SearchNavDisplay$lambda$1$$inlined$entry$default$1 searchNavDisplayKt$SearchNavDisplay$lambda$1$$inlined$entry$default$1 = new Function1<SearchRoutes.Search, Object>() { // from class: com.vuitton.android.presentation.screen.search.components.SearchNavDisplayKt$SearchNavDisplay$lambda$1$$inlined$entry$default$1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return obj.toString();
                }
            };
            final Map mapC = MapsKt.c();
            ReflectionFactory reflectionFactory = Reflection.f71922a;
            entryProviderScope.a(reflectionFactory.b(SearchRoutes.Search.class), searchNavDisplayKt$SearchNavDisplay$lambda$1$$inlined$entry$default$1, new Function1<SearchRoutes.Search, Map<String, ? extends Object>>() { // from class: com.vuitton.android.presentation.screen.search.components.SearchNavDisplayKt$SearchNavDisplay$lambda$1$$inlined$entry$default$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return mapC;
                }
            }, composableLambdaImplB);
            ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(-1055128229, new lf(pSPViewModel, quickAccessFiltersViewModel, function3, str, function4, navBackStack, function0, function2, 8), gapComposerH);
            SearchNavDisplayKt$SearchNavDisplay$lambda$1$$inlined$entry$default$3 searchNavDisplayKt$SearchNavDisplay$lambda$1$$inlined$entry$default$3 = new Function1<SearchRoutes.PSP, Object>() { // from class: com.vuitton.android.presentation.screen.search.components.SearchNavDisplayKt$SearchNavDisplay$lambda$1$$inlined$entry$default$3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return obj.toString();
                }
            };
            final Map mapC2 = MapsKt.c();
            entryProviderScope.a(reflectionFactory.b(SearchRoutes.PSP.class), searchNavDisplayKt$SearchNavDisplay$lambda$1$$inlined$entry$default$3, new Function1<SearchRoutes.PSP, Map<String, ? extends Object>>() { // from class: com.vuitton.android.presentation.screen.search.components.SearchNavDisplayKt$SearchNavDisplay$lambda$1$$inlined$entry$default$4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return mapC2;
                }
            }, composableLambdaImplB2);
            androidx.navigation3.runtime.a aVar = new androidx.navigation3.runtime.a(entryProviderScope);
            gapComposerH.Z(false);
            boolean z4 = i5 == 4;
            Object objX2 = gapComposerH.x();
            if (z4 || objX2 == composer$Companion$Empty$1) {
                objX2 = new x0(navBackStack, 14);
                gapComposerH.q(objX2);
            }
            Function0 function6 = (Function0) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new yt0(18);
                gapComposerH.q(objX3);
            }
            Function1 function7 = (Function1) objX3;
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = new yt0(19);
                gapComposerH.q(objX4);
            }
            Function1 function8 = (Function1) objX4;
            Object objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = new zt0(12);
                gapComposerH.q(objX5);
            }
            Function2 function9 = (Function2) objX5;
            NavBackStack.Companion companion = NavBackStack.INSTANCE;
            NavDisplayKt.c(navBackStack, null, null, function6, listP, null, null, function7, function8, function9, aVar, gapComposerH, 805306368 | i5);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kx(navBackStack, z, searchViewModel, pSPViewModel, quickAccessFiltersViewModel, contributionLinkNavigator, function1, function0, function2, function3, function4, str, function5, i2);
        }
    }
}
