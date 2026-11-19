package com.vuitton.android.presentation.screen.main.components;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.navigation.NavHostController;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVMainCompositionLocalProviderKt;
import com.vuitton.android.presentation.link.builder.PassAppLinkBuilder;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel;
import com.vuitton.android.presentation.screen.authentication.welcome.WelcomeViewModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import com.vuitton.android.presentation.screen.main.MainActivityRouter;
import com.vuitton.android.presentation.screen.main.MainActivityViewModel;
import com.vuitton.android.presentation.screen.main.MainNavigationState;
import com.vuitton.android.presentation.screen.main.models.MainTopLevelDestination;
import defpackage.nb0;
import defpackage.rb0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.SharedFlow;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\b²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u00048\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0007\u001a\u00020\u00068\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;", "viewState", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;", "filterViewState", "Landroidx/compose/ui/geometry/Rect;", "aiButtonBounds", "", "showCircularReveal", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class MainActivityComposableKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f59106a;

        static {
            int[] iArr = new int[MainTopLevelDestination.values().length];
            try {
                iArr[MainTopLevelDestination.FEED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[MainTopLevelDestination.CATALOG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[MainTopLevelDestination.SERVICES.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[MainTopLevelDestination.WISHLIST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[MainTopLevelDestination.CART.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f59106a = iArr;
        }
    }

    public static final void a(MainActivityViewModel mainActivityViewModel, WelcomeViewModel welcomeViewModel, QuickAccessFiltersViewModel quickAccessFiltersViewModel, AuthenticationViewModel authenticationViewModel, SharedFlow sharedFlow, MainNavigationState mainNavigationState, LVModalBottomSheetState lVModalBottomSheetState, MainActivityRouter mainActivityRouter, NavHostController navHostController, ContributionLinkNavigator contributionLinkNavigator, PassAppLinkBuilder passAppLinkBuilder, MainActivityBottomSheetType mainActivityBottomSheetType, Function0 function0, Function0 function1, Function0 function2, Function1 function3, Function0 function4, Function0 function5, Function0 function6, Function3 function7, Composer composer, int i2) {
        int i3;
        SharedFlow sharedFlow2;
        GapComposer gapComposer;
        mainActivityViewModel.getClass();
        quickAccessFiltersViewModel.getClass();
        sharedFlow.getClass();
        lVModalBottomSheetState.getClass();
        navHostController.getClass();
        passAppLinkBuilder.getClass();
        mainActivityBottomSheetType.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        GapComposer gapComposerH = composer.h(1436764511);
        if ((i2 & 6) == 0) {
            i3 = ((i2 & 8) == 0 ? gapComposerH.K(mainActivityViewModel) : gapComposerH.y(mainActivityViewModel) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= (i2 & 64) == 0 ? gapComposerH.K(welcomeViewModel) : gapComposerH.y(welcomeViewModel) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= (i2 & 512) == 0 ? gapComposerH.K(quickAccessFiltersViewModel) : gapComposerH.y(quickAccessFiltersViewModel) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= (i2 & 4096) == 0 ? gapComposerH.K(authenticationViewModel) : gapComposerH.y(authenticationViewModel) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            sharedFlow2 = sharedFlow;
            i3 |= gapComposerH.y(sharedFlow2) ? 16384 : 8192;
        } else {
            sharedFlow2 = sharedFlow;
        }
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i3 |= gapComposerH.K(mainNavigationState) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i3 |= (i2 & PKIFailureInfo.badSenderNonce) == 0 ? gapComposerH.K(lVModalBottomSheetState) : gapComposerH.y(lVModalBottomSheetState) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i3 |= gapComposerH.y(mainActivityRouter) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i3 |= gapComposerH.y(navHostController) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i3 |= gapComposerH.y(contributionLinkNavigator) ? 536870912 : 268435456;
        }
        char c2 = 1024;
        int i4 = 0 | (gapComposerH.y(passAppLinkBuilder) ? (char) 4 : (char) 2) | (gapComposerH.K(mainActivityBottomSheetType) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128);
        if (gapComposerH.y(function1)) {
            c2 = 2048;
        }
        if (gapComposerH.p(i3 & 1, ((i3 & 306783379) == 306783378 && (((((((i4 | c2) | (gapComposerH.y(function2) ? (char) 16384 : (char) 8192)) | (gapComposerH.y(function4) ? (char) 0 : (char) 0)) | (gapComposerH.y(function5) ? (char) 0 : (char) 0)) | (gapComposerH.y(function6) ? (char) 0 : (char) 0)) | (gapComposerH.y(function7) ? (char) 0 : (char) 0)) & 306783379) == 306783378) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            LVMainCompositionLocalProviderKt.a(ComposableLambdaKt.b(1154822973, new nb0(mainActivityViewModel, quickAccessFiltersViewModel, mainNavigationState, function5, function1, function0, function4, navHostController, contributionLinkNavigator, sharedFlow2, function7, function6, passAppLinkBuilder, authenticationViewModel, welcomeViewModel, mainActivityRouter, lVModalBottomSheetState, mainActivityBottomSheetType, function3, function2), gapComposer), gapComposer, 6);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rb0(mainActivityViewModel, welcomeViewModel, quickAccessFiltersViewModel, authenticationViewModel, sharedFlow, mainNavigationState, lVModalBottomSheetState, mainActivityRouter, navHostController, contributionLinkNavigator, passAppLinkBuilder, mainActivityBottomSheetType, function0, function1, function2, function3, function4, function5, function6, function7, i2);
        }
    }
}
