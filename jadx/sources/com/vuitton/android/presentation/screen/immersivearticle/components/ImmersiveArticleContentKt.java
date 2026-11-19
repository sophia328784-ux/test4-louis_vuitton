package com.vuitton.android.presentation.screen.immersivearticle.components;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.compose.foundation.FocusableKt;
import androidx.compose.foundation.OverscrollFactory;
import androidx.compose.foundation.OverscrollKt;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxWithConstraintsKt;
import androidx.compose.foundation.layout.BoxWithConstraintsScope;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ComputedProvidableCompositionLocal;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.accompanist.systemuicontroller.AndroidSystemUiController;
import com.google.accompanist.systemuicontroller.SystemUiControllerKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.common.editorial.models.CarouselSItemUiModel;
import com.vuitton.android.presentation.compose.components.LVNotificationKt;
import com.vuitton.android.presentation.compose.components.ScrollProgressTrackerKt;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.model.common.A11ySettings;
import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleHelper;
import com.vuitton.android.presentation.screen.immersivearticle.components.ComposableSingletons$ImmersiveArticleContentKt;
import com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticle3DAssetKt;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleAssetViewKt;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleAuthenticationViewKt;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleCarouselViewKt;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleCtaListViewKt;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleEventViewKt;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleExpansionListViewKt;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleFashionShowViewKt;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleProductListViewKt;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleProductTabsViewKt;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleProductViewKt;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleSliderKt;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleTextViewKt;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleVideoCtaViewKt;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleVideoViewKt;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleWallpaperViewKt;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.AssetArticleSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.CarouselArticleSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.CtaListArticleSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticle3dSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleAuthenticationSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleEventSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleExpansionListUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleFashionShowSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleNavigationType;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleProductListSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleProductTabsSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSizeCardUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSlideUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSliderUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleTrackingUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleType;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleViewState;
import com.vuitton.android.presentation.screen.immersivearticle.models.ProductsArticleSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.SectionThemeUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.TextArticleSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.VideoArticleSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.VideoCtaArticleSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.WallpaperArticleSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.WallpaperDownloadStateUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ScreenshotUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsBottomSheet;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortPriceUiModel;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import defpackage.f30;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0006¨\u0006\u0006²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0004\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0005\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "isAutoSwipeActivated", "isZoomGestureDetected", "has3DFocus", "isScrollEnabled", "isNotificationDragged", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ImmersiveArticleContentKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f58386a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f58387b;

    static {
        Dp.Companion companion = Dp.f11004c;
        f58386a = 88.0f;
        f58387b = 60.0f;
    }

    public static final void a(final ImmersiveArticleViewState immersiveArticleViewState, final PermissionsUiModel permissionsUiModel, final float f2, final String str, final ImmersiveArticleType immersiveArticleType, final SnapshotStateList snapshotStateList, final Function0 function0, final Function0 function1, final Function0 function2, final Function0 function3, final Function0 function4, final Function0 function5, final Function1 function6, final Function0 function7, final Function0 function8, final Function1 function9, final Function1 function10, final Function0 function11, final Function1 function12, final Function1 function13, final Function1 function14, final Function1 function15, final Function2 function16, final Function1 function17, final Function1 function18, Composer composer, final int i2) {
        GapComposer gapComposer;
        immersiveArticleViewState.getClass();
        permissionsUiModel.getClass();
        immersiveArticleType.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        function8.getClass();
        function9.getClass();
        function10.getClass();
        function11.getClass();
        function12.getClass();
        function13.getClass();
        function14.getClass();
        function15.getClass();
        function16.getClass();
        function17.getClass();
        function18.getClass();
        GapComposer gapComposerH = composer.h(83536897);
        int i3 = i2 | (gapComposerH.y(immersiveArticleViewState) ? 4 : 2) | (gapComposerH.y(permissionsUiModel) ? 32 : 16) | (gapComposerH.c(f2) ? 256 : 128) | (gapComposerH.K(str) ? 2048 : 1024) | (gapComposerH.d(immersiveArticleType.ordinal()) ? 16384 : 8192) | (gapComposerH.y(snapshotStateList) ? 131072 : 65536) | (gapComposerH.y(function0) ? 1048576 : 524288) | (gapComposerH.y(function1) ? 8388608 : 4194304) | (gapComposerH.y(function2) ? 67108864 : 33554432) | (gapComposerH.y(function3) ? 536870912 : 268435456);
        int i4 = (gapComposerH.y(function4) ? 4 : 2) | (gapComposerH.y(function5) ? 32 : 16) | (gapComposerH.y(function6) ? 256 : 128) | (gapComposerH.y(function7) ? 2048 : 1024) | (gapComposerH.y(function8) ? 16384 : 8192) | (gapComposerH.y(function9) ? 131072 : 65536) | (gapComposerH.y(function10) ? 1048576 : 524288) | (gapComposerH.y(function11) ? 8388608 : 4194304) | (gapComposerH.y(function12) ? 67108864 : 33554432) | (gapComposerH.y(function13) ? 536870912 : 268435456);
        boolean z = true;
        if (gapComposerH.p(i3 & 1, ((i3 & 306783379) == 306783378 && (i4 & 306783379) == 306783378 && ((((((gapComposerH.y(function14) ? (char) 4 : (char) 2) | (gapComposerH.y(function15) ? ' ' : (char) 16)) | (gapComposerH.y(function16) ? 256 : 128)) | (gapComposerH.y(function17) ? 2048 : 1024)) | (gapComposerH.y(function18) ? (char) 16384 : (char) 8192)) & 9363) == 9362) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            final Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                ReflectionFactory reflectionFactory = Reflection.f71922a;
                objX = CollectionsKt.P(reflectionFactory.b(TextArticleSectionUiModel.class), reflectionFactory.b(CtaListArticleSectionUiModel.class), reflectionFactory.b(ImmersiveArticleExpansionListUiModel.class), reflectionFactory.b(ProductsArticleSectionUiModel.class), reflectionFactory.b(ImmersiveArticleSlideUiModel.class));
                gapComposerH.q(objX);
            }
            final List list = (List) objX;
            boolean zK = gapComposerH.K(snapshotStateList);
            Object objX2 = gapComposerH.x();
            if (zK || objX2 == composer$Companion$Empty$1) {
                if (!(CollectionsKt.firstOrNull(snapshotStateList) instanceof ImmersiveArticle3dSectionUiModel) && !(CollectionsKt.N(snapshotStateList) instanceof ImmersiveArticle3dSectionUiModel)) {
                    z = false;
                }
                objX2 = Boolean.valueOf(z);
                gapComposerH.q(objX2);
            }
            final boolean zBooleanValue = ((Boolean) objX2).booleanValue();
            PermissionsBottomSheet permissionsBottomSheet = permissionsUiModel.f62372a;
            boolean zY = gapComposerH.y(permissionsUiModel) | gapComposerH.y(lVModalBottomSheetStateF);
            Object objX3 = gapComposerH.x();
            if (zY || objX3 == composer$Companion$Empty$1) {
                objX3 = new ImmersiveArticleContentKt$ImmersiveArticleContent$1$1(permissionsUiModel, lVModalBottomSheetStateF, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, permissionsBottomSheet, (Function2) objX3);
            BoxWithConstraintsKt.a(null, null, false, ComposableLambdaKt.b(-1634441001, new Function3() { // from class: e30
                /* JADX WARN: Multi-variable type inference failed */
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    OverscrollFactory overscrollFactory;
                    int i5;
                    final BoxWithConstraintsScope boxWithConstraintsScope = (BoxWithConstraintsScope) obj;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    float f3 = ImmersiveArticleContentKt.f58386a;
                    boxWithConstraintsScope.getClass();
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= composer2.K(boxWithConstraintsScope) ? 4 : 2;
                    }
                    int i6 = 1;
                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        final LazyListState lazyListStateA = LazyListStateKt.a(0, composer2, 3);
                        Object[] objArr = new Object[0];
                        Object objX4 = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                        if (objX4 == composer$Companion$Empty$2) {
                            objX4 = new m10(13);
                            composer2.q(objX4);
                        }
                        final MutableState mutableState = (MutableState) RememberSaveableKt.d(objArr, (Function0) objX4, composer2, 48);
                        Object[] objArr2 = new Object[0];
                        Object objX5 = composer2.x();
                        if (objX5 == composer$Companion$Empty$2) {
                            objX5 = new m10(14);
                            composer2.q(objX5);
                        }
                        final MutableState mutableState2 = (MutableState) RememberSaveableKt.d(objArr2, (Function0) objX5, composer2, 48);
                        Object[] objArr3 = new Object[0];
                        Object objX6 = composer2.x();
                        if (objX6 == composer$Companion$Empty$2) {
                            objX6 = new m10(15);
                            composer2.q(objX6);
                        }
                        final MutableState mutableState3 = (MutableState) RememberSaveableKt.d(objArr3, (Function0) objX6, composer2, 48);
                        Object objX7 = composer2.x();
                        if (objX7 == composer$Companion$Empty$2) {
                            objX7 = SnapshotStateKt.e(new t1(mutableState2, mutableState3, i6));
                            composer2.q(objX7);
                        }
                        final State state = (State) objX7;
                        ComputedProvidableCompositionLocal computedProvidableCompositionLocal = OverscrollKt.f4285a;
                        if (zBooleanValue) {
                            composer2.L(412859174);
                            composer2.F();
                            overscrollFactory = null;
                        } else {
                            composer2.L(1260245086);
                            overscrollFactory = (OverscrollFactory) composer2.k(computedProvidableCompositionLocal);
                            composer2.F();
                        }
                        ProvidedValue providedValueC = computedProvidableCompositionLocal.c(overscrollFactory);
                        final Function1 function19 = function18;
                        final String str2 = str;
                        final ImmersiveArticleType immersiveArticleType2 = immersiveArticleType;
                        final SnapshotStateList snapshotStateList2 = snapshotStateList;
                        final Function1 function20 = function12;
                        final Function1 function21 = function14;
                        final ImmersiveArticleViewState immersiveArticleViewState2 = immersiveArticleViewState;
                        final Function0 function22 = function3;
                        final Context context2 = context;
                        final PermissionsUiModel permissionsUiModel2 = permissionsUiModel;
                        final Function1 function23 = function10;
                        final Function1 function24 = function9;
                        final Function1 function25 = function13;
                        final Function1 function26 = function15;
                        final Function0 function27 = function0;
                        final Function1 function28 = function6;
                        final Function0 function29 = function1;
                        final Function0 function30 = function2;
                        final Function2 function31 = function16;
                        final Function1 function32 = function17;
                        final List list2 = list;
                        final float f4 = f2;
                        CompositionLocalKt.a(providedValueC, ComposableLambdaKt.b(2043243927, new Function2() { // from class: h30
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj4, Object obj5) {
                                Composer composer3 = (Composer) obj4;
                                int iIntValue2 = ((Integer) obj5).intValue();
                                float f5 = ImmersiveArticleContentKt.f58386a;
                                int i7 = 2;
                                if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                    final Function1 function33 = function19;
                                    boolean zK2 = composer3.K(function33);
                                    final String str3 = str2;
                                    boolean zK3 = zK2 | composer3.K(str3);
                                    final ImmersiveArticleType immersiveArticleType3 = immersiveArticleType2;
                                    boolean zD = zK3 | composer3.d(immersiveArticleType3.ordinal());
                                    Object objX8 = composer3.x();
                                    Composer$Companion$Empty$1 composer$Companion$Empty$3 = Composer.Companion.f7939a;
                                    if (zD || objX8 == composer$Companion$Empty$3) {
                                        objX8 = new jx(function33, str3, immersiveArticleType3, 5);
                                        composer3.q(objX8);
                                    }
                                    LazyListState lazyListState = lazyListStateA;
                                    ScrollProgressTrackerKt.c(lazyListState, (Function1) objX8, composer3, 0);
                                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ImmersiveArticleContent_01WpQAk$lambda$3$11");
                                    final BoxWithConstraintsScope boxWithConstraintsScope2 = boxWithConstraintsScope;
                                    Modifier modifierB = ModifierExtKt.b(FocusableKt.a(SizeKt.f(dTFunctionNameModifier, boxWithConstraintsScope2.i())), immersiveArticleType3 == ImmersiveArticleType.SEO_LANDING_PAGE, new bw(f4, i7), composer3, 0);
                                    boolean zBooleanValue2 = ((Boolean) state.getF10755b()).booleanValue();
                                    boolean zK4 = composer3.K(boxWithConstraintsScope2);
                                    final SnapshotStateList snapshotStateList3 = snapshotStateList2;
                                    boolean zY2 = zK4 | composer3.y(snapshotStateList3);
                                    final Function1 function34 = function20;
                                    boolean zK5 = zY2 | composer3.K(function34);
                                    final Function1 function35 = function21;
                                    boolean zK6 = zK5 | composer3.K(function35);
                                    final ImmersiveArticleViewState immersiveArticleViewState3 = immersiveArticleViewState2;
                                    boolean zY3 = zK6 | composer3.y(immersiveArticleViewState3);
                                    final Function0 function36 = function22;
                                    boolean zK7 = zY3 | composer3.K(function36);
                                    final Context context3 = context2;
                                    boolean zD2 = composer3.d(immersiveArticleType3.ordinal()) | zK7 | composer3.y(context3);
                                    final MutableState mutableState4 = mutableState2;
                                    boolean zK8 = zD2 | composer3.K(mutableState4);
                                    final PermissionsUiModel permissionsUiModel3 = permissionsUiModel2;
                                    boolean zY4 = zK8 | composer3.y(permissionsUiModel3);
                                    final Function1 function37 = function23;
                                    boolean zK9 = zY4 | composer3.K(function37);
                                    final Function1 function38 = function24;
                                    boolean zK10 = zK9 | composer3.K(function38) | composer3.K(function33) | composer3.K(str3);
                                    final MutableState mutableState5 = mutableState;
                                    boolean zK11 = zK10 | composer3.K(mutableState5);
                                    final Function1 function39 = function25;
                                    boolean zK12 = zK11 | composer3.K(function39);
                                    final Function1 function40 = function26;
                                    boolean zK13 = zK12 | composer3.K(function40);
                                    final MutableState mutableState6 = mutableState3;
                                    boolean zK14 = zK13 | composer3.K(mutableState6);
                                    final Function0 function41 = function27;
                                    boolean zK15 = zK14 | composer3.K(function41);
                                    final Function1 function42 = function28;
                                    boolean zK16 = zK15 | composer3.K(function42);
                                    final Function0 function43 = function29;
                                    boolean zK17 = zK16 | composer3.K(function43);
                                    final Function0 function44 = function30;
                                    boolean zK18 = zK17 | composer3.K(function44);
                                    final Function2 function45 = function31;
                                    boolean zK19 = zK18 | composer3.K(function45);
                                    final Function1 function46 = function32;
                                    boolean zK20 = zK19 | composer3.K(function46);
                                    final List list3 = list2;
                                    boolean zY5 = zK20 | composer3.y(list3);
                                    Object objX9 = composer3.x();
                                    if (zY5 || objX9 == composer$Companion$Empty$3) {
                                        Function1 function47 = new Function1() { // from class: d30
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object invoke(Object obj6) {
                                                LazyListScope lazyListScope = (LazyListScope) obj6;
                                                float f6 = ImmersiveArticleContentKt.f58386a;
                                                lazyListScope.getClass();
                                                final SnapshotStateList snapshotStateList4 = snapshotStateList3;
                                                int size = snapshotStateList4.size();
                                                Function1<Integer, Object> function48 = new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt$ImmersiveArticleContent_01WpQAk$lambda$3$11$2$0$$inlined$itemsIndexed$default$2
                                                    @Override // kotlin.jvm.functions.Function1
                                                    public final Object invoke(Object obj7) {
                                                        snapshotStateList4.get(((Number) obj7).intValue());
                                                        return null;
                                                    }
                                                };
                                                final Function1 function49 = function34;
                                                final Function1 function50 = function35;
                                                final ImmersiveArticleViewState immersiveArticleViewState4 = immersiveArticleViewState3;
                                                final Function0 function51 = function36;
                                                final Context context4 = context3;
                                                final ImmersiveArticleType immersiveArticleType4 = immersiveArticleType3;
                                                final MutableState mutableState7 = mutableState4;
                                                final PermissionsUiModel permissionsUiModel4 = permissionsUiModel3;
                                                final Function1 function52 = function37;
                                                final Function1 function53 = function38;
                                                final Function1 function54 = function33;
                                                final String str4 = str3;
                                                final MutableState mutableState8 = mutableState5;
                                                final BoxWithConstraintsScope boxWithConstraintsScope3 = boxWithConstraintsScope2;
                                                final Function1 function55 = function39;
                                                final Function1 function56 = function40;
                                                final MutableState mutableState9 = mutableState6;
                                                final Function0 function57 = function41;
                                                final Function1 function58 = function42;
                                                final Function0 function59 = function43;
                                                final Function0 function60 = function44;
                                                final Function2 function61 = function45;
                                                final Function1 function62 = function46;
                                                lazyListScope.h(size, null, function48, new ComposableLambdaImpl(2039820996, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt$ImmersiveArticleContent_01WpQAk$lambda$3$11$2$0$$inlined$itemsIndexed$default$3
                                                    @Override // kotlin.jvm.functions.Function4
                                                    public final Object g(Object obj7, Object obj8, Object obj9, Object obj10) {
                                                        int i8;
                                                        LazyItemScope lazyItemScope = (LazyItemScope) obj7;
                                                        int iIntValue3 = ((Number) obj8).intValue();
                                                        Composer composer4 = (Composer) obj9;
                                                        int iIntValue4 = ((Number) obj10).intValue();
                                                        if ((iIntValue4 & 6) == 0) {
                                                            i8 = (composer4.K(lazyItemScope) ? 4 : 2) | iIntValue4;
                                                        } else {
                                                            i8 = iIntValue4;
                                                        }
                                                        if ((iIntValue4 & 48) == 0) {
                                                            i8 |= composer4.d(iIntValue3) ? 32 : 16;
                                                        }
                                                        if (composer4.p(i8 & 1, (i8 & 147) != 146)) {
                                                            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                                            int i9 = i8 & 126;
                                                            ImmersiveArticleSectionUiModel immersiveArticleSectionUiModel = (ImmersiveArticleSectionUiModel) snapshotStateList4.get(iIntValue3);
                                                            composer4.L(-357420325);
                                                            boolean z2 = immersiveArticleSectionUiModel instanceof VideoCtaArticleSectionUiModel;
                                                            BoxWithConstraintsScope boxWithConstraintsScope4 = boxWithConstraintsScope3;
                                                            final Function0 function63 = function51;
                                                            final Function1 function64 = function50;
                                                            ImmersiveArticleViewState immersiveArticleViewState5 = immersiveArticleViewState4;
                                                            Composer$Companion$Empty$1 composer$Companion$Empty$4 = Composer.Companion.f7939a;
                                                            if (z2) {
                                                                composer4.L(-357937375);
                                                                final Function1 function65 = function49;
                                                                boolean zK21 = composer4.K(function65) | composer4.K(function64);
                                                                Object objX10 = composer4.x();
                                                                if (zK21 || objX10 == composer$Companion$Empty$4) {
                                                                    objX10 = new Function1<VideoCtaArticleSectionUiModel, Unit>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$onCtaClicked$1$1
                                                                        @Override // kotlin.jvm.functions.Function1
                                                                        public final Object invoke(Object obj11) {
                                                                            ContributionLinkUiModel contributionLinkUiModel;
                                                                            VideoCtaArticleSectionUiModel videoCtaArticleSectionUiModel = (VideoCtaArticleSectionUiModel) obj11;
                                                                            videoCtaArticleSectionUiModel.getClass();
                                                                            String str5 = videoCtaArticleSectionUiModel.f58842b;
                                                                            int iHashCode = str5.hashCode();
                                                                            Function1 function66 = function64;
                                                                            if (iHashCode != -2043259422) {
                                                                                if (iHashCode != 700737918) {
                                                                                    if (iHashCode == 1331779006 && str5.equals("video-cta")) {
                                                                                        function65.invoke(videoCtaArticleSectionUiModel);
                                                                                    }
                                                                                } else if (str5.equals("deep-link-cta") && (contributionLinkUiModel = videoCtaArticleSectionUiModel.f58848j) != null) {
                                                                                    function66.invoke(new ImmersiveArticleNavigationType.OnContributionLinkClick(contributionLinkUiModel));
                                                                                }
                                                                            } else if (str5.equals("look-cta")) {
                                                                                function66.invoke(new ImmersiveArticleNavigationType.OnLookModuleCtaClick(videoCtaArticleSectionUiModel));
                                                                            }
                                                                            return Unit.f71739a;
                                                                        }
                                                                    };
                                                                    composer4.q(objX10);
                                                                }
                                                                final Function1 function66 = (Function1) objX10;
                                                                final VideoCtaArticleSectionUiModel videoCtaArticleSectionUiModel = (VideoCtaArticleSectionUiModel) immersiveArticleSectionUiModel;
                                                                Modifier modifierB2 = ImmersiveArticleContentKt.b(boxWithConstraintsScope4, videoCtaArticleSectionUiModel.g);
                                                                boolean zK22 = composer4.K(immersiveArticleSectionUiModel) | composer4.K(function66);
                                                                Object objX11 = composer4.x();
                                                                if (zK22 || objX11 == composer$Companion$Empty$4) {
                                                                    objX11 = new Function1<SemanticsPropertyReceiver, Unit>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$1$1
                                                                        @Override // kotlin.jvm.functions.Function1
                                                                        public final Object invoke(Object obj11) {
                                                                            SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj11;
                                                                            semanticsPropertyReceiver.getClass();
                                                                            Role.f10289b.getClass();
                                                                            SemanticsPropertiesKt.o(semanticsPropertyReceiver, 0);
                                                                            final VideoCtaArticleSectionUiModel videoCtaArticleSectionUiModel2 = videoCtaArticleSectionUiModel;
                                                                            SemanticsPropertiesKt.i(semanticsPropertyReceiver, videoCtaArticleSectionUiModel2.f58844e + ", " + videoCtaArticleSectionUiModel2.f58843c);
                                                                            final Function1 function67 = function66;
                                                                            SemanticsPropertiesKt.e(semanticsPropertyReceiver, null, new Function0<Boolean>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$1$1.1
                                                                                @Override // kotlin.jvm.functions.Function0
                                                                                /* JADX INFO: renamed from: invoke */
                                                                                public final Object mo47invoke() {
                                                                                    function67.invoke(videoCtaArticleSectionUiModel2);
                                                                                    return Boolean.TRUE;
                                                                                }
                                                                            });
                                                                            return Unit.f71739a;
                                                                        }
                                                                    };
                                                                    composer4.q(objX11);
                                                                }
                                                                Modifier modifierB3 = SemanticsModifierKt.b(modifierB2, false, (Function1) objX11);
                                                                boolean z3 = immersiveArticleViewState5.f58806j.f51775a;
                                                                boolean zK23 = composer4.K(function63);
                                                                Object objX12 = composer4.x();
                                                                if (zK23 || objX12 == composer$Companion$Empty$4) {
                                                                    objX12 = new Function0<Unit>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$2$1
                                                                        @Override // kotlin.jvm.functions.Function0
                                                                        /* JADX INFO: renamed from: invoke */
                                                                        public final Object mo47invoke() {
                                                                            function63.mo47invoke();
                                                                            return Unit.f71739a;
                                                                        }
                                                                    };
                                                                    composer4.q(objX12);
                                                                }
                                                                Function0 function67 = (Function0) objX12;
                                                                boolean zK24 = composer4.K(function63);
                                                                Object objX13 = composer4.x();
                                                                if (zK24 || objX13 == composer$Companion$Empty$4) {
                                                                    objX13 = new Function0<Unit>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$3$1
                                                                        @Override // kotlin.jvm.functions.Function0
                                                                        /* JADX INFO: renamed from: invoke */
                                                                        public final Object mo47invoke() {
                                                                            function63.mo47invoke();
                                                                            return Unit.f71739a;
                                                                        }
                                                                    };
                                                                    composer4.q(objX13);
                                                                }
                                                                ImmersiveArticleVideoCtaViewKt.b(modifierB3, videoCtaArticleSectionUiModel, iIntValue3, z3, function66, function67, (Function0) objX13, composer4, (i9 << 3) & 896);
                                                                composer4 = composer4;
                                                                composer4.F();
                                                            } else {
                                                                boolean z4 = immersiveArticleSectionUiModel instanceof AssetArticleSectionUiModel;
                                                                final MutableState mutableState10 = mutableState7;
                                                                final Context context5 = context4;
                                                                if (z4) {
                                                                    composer4.L(-355474828);
                                                                    final AssetArticleSectionUiModel assetArticleSectionUiModel = (AssetArticleSectionUiModel) immersiveArticleSectionUiModel;
                                                                    Modifier modifierB4 = ImmersiveArticleContentKt.b(boxWithConstraintsScope4, assetArticleSectionUiModel.g);
                                                                    boolean zK25 = composer4.K(immersiveArticleSectionUiModel) | composer4.y(context5);
                                                                    Object objX14 = composer4.x();
                                                                    if (zK25 || objX14 == composer$Companion$Empty$4) {
                                                                        objX14 = new Function1<SemanticsPropertyReceiver, Unit>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$4$1
                                                                            @Override // kotlin.jvm.functions.Function1
                                                                            public final Object invoke(Object obj11) {
                                                                                String strH;
                                                                                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj11;
                                                                                semanticsPropertyReceiver.getClass();
                                                                                AssetArticleSectionUiModel assetArticleSectionUiModel2 = assetArticleSectionUiModel;
                                                                                String str5 = assetArticleSectionUiModel2.f58624e;
                                                                                String str6 = assetArticleSectionUiModel2.f58623c;
                                                                                if (StringKtExtKt.g(str6) || StringKtExtKt.g(str5)) {
                                                                                    strH = tr.h(str5, ", ", str6);
                                                                                } else {
                                                                                    strH = context5.getString(R.string.alt_no_caption_content);
                                                                                    strH.getClass();
                                                                                }
                                                                                SemanticsPropertiesKt.i(semanticsPropertyReceiver, strH);
                                                                                return Unit.f71739a;
                                                                            }
                                                                        };
                                                                        composer4.q(objX14);
                                                                    }
                                                                    Modifier modifierB5 = SemanticsModifierKt.b(modifierB4, false, (Function1) objX14);
                                                                    boolean z5 = immersiveArticleViewState5.f58806j.f51775a;
                                                                    boolean zK26 = composer4.K(function63);
                                                                    Object objX15 = composer4.x();
                                                                    if (zK26 || objX15 == composer$Companion$Empty$4) {
                                                                        objX15 = new Function0<Unit>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$5$1
                                                                            @Override // kotlin.jvm.functions.Function0
                                                                            /* JADX INFO: renamed from: invoke */
                                                                            public final Object mo47invoke() {
                                                                                function63.mo47invoke();
                                                                                return Unit.f71739a;
                                                                            }
                                                                        };
                                                                        composer4.q(objX15);
                                                                    }
                                                                    Function0 function68 = (Function0) objX15;
                                                                    boolean zK27 = composer4.K(mutableState10);
                                                                    Object objX16 = composer4.x();
                                                                    if (zK27 || objX16 == composer$Companion$Empty$4) {
                                                                        objX16 = new Function1<Boolean, Unit>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$6$1
                                                                            @Override // kotlin.jvm.functions.Function1
                                                                            public final Object invoke(Object obj11) {
                                                                                Boolean bool = (Boolean) obj11;
                                                                                bool.booleanValue();
                                                                                float f7 = ImmersiveArticleContentKt.f58386a;
                                                                                mutableState10.setValue(bool);
                                                                                return Unit.f71739a;
                                                                            }
                                                                        };
                                                                        composer4.q(objX16);
                                                                    }
                                                                    ImmersiveArticleAssetViewKt.b(modifierB5, assetArticleSectionUiModel, iIntValue3, immersiveArticleType4, z5, function68, (Function1) objX16, composer4, (i9 << 3) & 896);
                                                                    composer4 = composer4;
                                                                    composer4.F();
                                                                } else if (immersiveArticleSectionUiModel instanceof VideoArticleSectionUiModel) {
                                                                    composer4.L(-354165016);
                                                                    VideoArticleSectionUiModel videoArticleSectionUiModel = (VideoArticleSectionUiModel) immersiveArticleSectionUiModel;
                                                                    Modifier modifierB6 = ImmersiveArticleContentKt.b(boxWithConstraintsScope4, videoArticleSectionUiModel.f58839b);
                                                                    boolean zY6 = composer4.y(context5);
                                                                    Object objX17 = composer4.x();
                                                                    if (zY6 || objX17 == composer$Companion$Empty$4) {
                                                                        objX17 = new Function1<SemanticsPropertyReceiver, Unit>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$7$1
                                                                            @Override // kotlin.jvm.functions.Function1
                                                                            public final Object invoke(Object obj11) {
                                                                                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj11;
                                                                                semanticsPropertyReceiver.getClass();
                                                                                String string = context5.getString(R.string.alt_no_caption_content);
                                                                                string.getClass();
                                                                                SemanticsPropertiesKt.i(semanticsPropertyReceiver, string);
                                                                                return Unit.f71739a;
                                                                            }
                                                                        };
                                                                        composer4.q(objX17);
                                                                    }
                                                                    ImmersiveArticleVideoViewKt.a(SemanticsModifierKt.b(modifierB6, false, (Function1) objX17), videoArticleSectionUiModel, immersiveArticleViewState5.f58806j.f51775a, composer4, 0);
                                                                    composer4.F();
                                                                } else {
                                                                    boolean z6 = immersiveArticleSectionUiModel instanceof TextArticleSectionUiModel;
                                                                    Modifier.Companion companion = Modifier.Companion.f8607b;
                                                                    final Function1 function69 = function53;
                                                                    final Function1 function70 = function52;
                                                                    final PermissionsUiModel permissionsUiModel5 = permissionsUiModel4;
                                                                    if (z6) {
                                                                        composer4.L(-353564980);
                                                                        Modifier modifierO = FocusableKt.c(companion, null, 3).o(SizeKt.f5052c);
                                                                        final TextArticleSectionUiModel textArticleSectionUiModel = (TextArticleSectionUiModel) immersiveArticleSectionUiModel;
                                                                        boolean z7 = permissionsUiModel5.d && permissionsUiModel5.f62374c;
                                                                        ImmersiveArticleSectionUiModel immersiveArticleSectionUiModel2 = (ImmersiveArticleSectionUiModel) CollectionsKt.G(iIntValue3 + 1, snapshotStateList4);
                                                                        float f7 = ImmersiveArticleContentKt.f58386a;
                                                                        NextSectionProductTabs nextSectionProductTabs = immersiveArticleSectionUiModel2 instanceof ImmersiveArticleProductTabsSectionUiModel ? new NextSectionProductTabs(!((ImmersiveArticleProductTabsSectionUiModel) immersiveArticleSectionUiModel2).f58706c.f58703a.isEmpty()) : null;
                                                                        boolean zK28 = composer4.K(immersiveArticleSectionUiModel) | composer4.y(permissionsUiModel5) | composer4.K(function70) | composer4.K(function69) | composer4.K(function64);
                                                                        Object objX18 = composer4.x();
                                                                        if (zK28 || objX18 == composer$Companion$Empty$4) {
                                                                            final Function1 function71 = function53;
                                                                            final Function1 function72 = function50;
                                                                            final PermissionsUiModel permissionsUiModel6 = permissionsUiModel4;
                                                                            final Function1 function73 = function52;
                                                                            objX18 = new Function1<ContributionLinkUiModel, Unit>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$8$1
                                                                                @Override // kotlin.jvm.functions.Function1
                                                                                public final Object invoke(Object obj11) {
                                                                                    ContributionLinkUiModel contributionLinkUiModel = (ContributionLinkUiModel) obj11;
                                                                                    String str5 = textArticleSectionUiModel.f58827a;
                                                                                    contributionLinkUiModel.getClass();
                                                                                    if (contributionLinkUiModel instanceof ContributionLinkUiModel.PushNotification) {
                                                                                        PermissionsUiModel permissionsUiModel7 = permissionsUiModel6;
                                                                                        if (permissionsUiModel7.d && permissionsUiModel7.f62374c) {
                                                                                            function73.invoke(str5);
                                                                                        } else {
                                                                                            function71.invoke(str5);
                                                                                        }
                                                                                    } else {
                                                                                        function72.invoke(new ImmersiveArticleNavigationType.OnContributionLinkClick(contributionLinkUiModel));
                                                                                    }
                                                                                    return Unit.f71739a;
                                                                                }
                                                                            };
                                                                            composer4.q(objX18);
                                                                        }
                                                                        ImmersiveArticleTextViewKt.a(modifierO, textArticleSectionUiModel, z7, immersiveArticleType4, nextSectionProductTabs, (Function1) objX18, composer4, 6);
                                                                        composer4 = composer4;
                                                                        composer4.F();
                                                                    } else {
                                                                        boolean z8 = immersiveArticleSectionUiModel instanceof CtaListArticleSectionUiModel;
                                                                        final Function1 function74 = function54;
                                                                        final String str5 = str4;
                                                                        final ImmersiveArticleType immersiveArticleType5 = immersiveArticleType4;
                                                                        if (z8) {
                                                                            composer4.L(-351598402);
                                                                            FillElement fillElement = SizeKt.f5052c;
                                                                            final CtaListArticleSectionUiModel ctaListArticleSectionUiModel = (CtaListArticleSectionUiModel) immersiveArticleSectionUiModel;
                                                                            boolean z9 = permissionsUiModel5.d && permissionsUiModel5.f62374c;
                                                                            boolean z10 = immersiveArticleType5 == ImmersiveArticleType.SEO_LANDING_PAGE;
                                                                            boolean zK29 = composer4.K(immersiveArticleSectionUiModel) | composer4.y(permissionsUiModel5) | composer4.K(function70) | composer4.K(function69) | composer4.K(function64) | composer4.K(function74) | composer4.K(str5) | composer4.d(immersiveArticleType5.ordinal());
                                                                            Object objX19 = composer4.x();
                                                                            if (zK29 || objX19 == composer$Companion$Empty$4) {
                                                                                final String str6 = str4;
                                                                                final ImmersiveArticleType immersiveArticleType6 = immersiveArticleType4;
                                                                                final PermissionsUiModel permissionsUiModel7 = permissionsUiModel4;
                                                                                final Function1 function75 = function52;
                                                                                final Function1 function76 = function53;
                                                                                final Function1 function77 = function50;
                                                                                final Function1 function78 = function54;
                                                                                objX19 = new Function1<Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$9$1
                                                                                    @Override // kotlin.jvm.functions.Function1
                                                                                    public final Object invoke(Object obj11) {
                                                                                        int iIntValue5 = ((Number) obj11).intValue();
                                                                                        CtaListArticleSectionUiModel ctaListArticleSectionUiModel2 = ctaListArticleSectionUiModel;
                                                                                        String str7 = ctaListArticleSectionUiModel2.f58633a;
                                                                                        List list4 = ctaListArticleSectionUiModel2.f58635c;
                                                                                        if (((ContributionLinkUiModel) ((Pair) list4.get(iIntValue5)).f71706c) instanceof ContributionLinkUiModel.PushNotification) {
                                                                                            PermissionsUiModel permissionsUiModel8 = permissionsUiModel7;
                                                                                            if (permissionsUiModel8.d && permissionsUiModel8.f62374c) {
                                                                                                function75.invoke(str7);
                                                                                            } else {
                                                                                                function76.invoke(str7);
                                                                                            }
                                                                                        } else {
                                                                                            function77.invoke(new ImmersiveArticleNavigationType.OnContributionLinkClick((ContributionLinkUiModel) ((Pair) list4.get(iIntValue5)).f71706c));
                                                                                            function78.invoke(new ImmersiveArticleTrackingUiModel.CtaListClickEvent(str6, ctaListArticleSectionUiModel2.f58633a, immersiveArticleType6, (String) ((Pair) list4.get(iIntValue5)).f71705b, iIntValue5));
                                                                                        }
                                                                                        return Unit.f71739a;
                                                                                    }
                                                                                };
                                                                                composer4.q(objX19);
                                                                            }
                                                                            ImmersiveArticleCtaListViewKt.a(fillElement, ctaListArticleSectionUiModel, z9, z10, (Function1) objX19, composer4, 6);
                                                                            composer4.F();
                                                                        } else if (immersiveArticleSectionUiModel instanceof CarouselArticleSectionUiModel) {
                                                                            composer4.L(-349205636);
                                                                            CarouselArticleSectionUiModel carouselArticleSectionUiModel = (CarouselArticleSectionUiModel) immersiveArticleSectionUiModel;
                                                                            A11ySettings a11ySettings = immersiveArticleViewState5.f58806j;
                                                                            boolean z11 = a11ySettings.f51775a;
                                                                            boolean z12 = a11ySettings.f51777c;
                                                                            float f8 = ImmersiveArticleContentKt.f58386a;
                                                                            final MutableState mutableState11 = mutableState8;
                                                                            boolean z13 = ((Boolean) mutableState11.getF10755b()).booleanValue() && !immersiveArticleViewState5.f58806j.f51777c;
                                                                            ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel = carouselArticleSectionUiModel.f58631c;
                                                                            float fA = immersiveArticleSizeCardUiModel != null ? ImmersiveArticleHelper.a(immersiveArticleSizeCardUiModel) : 0.8f;
                                                                            boolean zK30 = composer4.K(mutableState10);
                                                                            Object objX20 = composer4.x();
                                                                            if (zK30 || objX20 == composer$Companion$Empty$4) {
                                                                                objX20 = new Function1<Boolean, Unit>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$11$1
                                                                                    @Override // kotlin.jvm.functions.Function1
                                                                                    public final Object invoke(Object obj11) {
                                                                                        Boolean bool = (Boolean) obj11;
                                                                                        bool.booleanValue();
                                                                                        float f9 = ImmersiveArticleContentKt.f58386a;
                                                                                        mutableState10.setValue(bool);
                                                                                        return Unit.f71739a;
                                                                                    }
                                                                                };
                                                                                composer4.q(objX20);
                                                                            }
                                                                            Function1 function79 = (Function1) objX20;
                                                                            boolean zK31 = composer4.K(mutableState11);
                                                                            Object objX21 = composer4.x();
                                                                            if (zK31 || objX21 == composer$Companion$Empty$4) {
                                                                                objX21 = new Function0<Unit>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$12$1
                                                                                    @Override // kotlin.jvm.functions.Function0
                                                                                    /* JADX INFO: renamed from: invoke */
                                                                                    public final Object mo47invoke() {
                                                                                        float f9 = ImmersiveArticleContentKt.f58386a;
                                                                                        mutableState11.setValue(Boolean.FALSE);
                                                                                        return Unit.f71739a;
                                                                                    }
                                                                                };
                                                                                composer4.q(objX21);
                                                                            }
                                                                            ImmersiveArticleCarouselViewKt.b(null, carouselArticleSectionUiModel, fA, z11, function79, z13, z12, (Function0) objX21, composer4, 0);
                                                                            composer4 = composer4;
                                                                            composer4.F();
                                                                        } else if (immersiveArticleSectionUiModel instanceof WallpaperArticleSectionUiModel) {
                                                                            composer4.L(-348324120);
                                                                            Modifier modifierF = SizeKt.f(companion, boxWithConstraintsScope4.i());
                                                                            final WallpaperArticleSectionUiModel wallpaperArticleSectionUiModel = (WallpaperArticleSectionUiModel) immersiveArticleSectionUiModel;
                                                                            boolean zK32 = composer4.K(immersiveArticleSectionUiModel);
                                                                            final Function1 function80 = function55;
                                                                            boolean zK33 = zK32 | composer4.K(function80);
                                                                            Object objX22 = composer4.x();
                                                                            if (zK33 || objX22 == composer$Companion$Empty$4) {
                                                                                objX22 = new Function0<Unit>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$13$1
                                                                                    @Override // kotlin.jvm.functions.Function0
                                                                                    /* JADX INFO: renamed from: invoke */
                                                                                    public final Object mo47invoke() {
                                                                                        WallpaperArticleSectionUiModel wallpaperArticleSectionUiModel2 = wallpaperArticleSectionUiModel;
                                                                                        MutableState mutableState12 = wallpaperArticleSectionUiModel2.f58855h;
                                                                                        mutableState12.setValue(WallpaperDownloadStateUiModel.a((WallpaperDownloadStateUiModel) mutableState12.getF10755b(), true, 5));
                                                                                        function80.invoke(wallpaperArticleSectionUiModel2);
                                                                                        return Unit.f71739a;
                                                                                    }
                                                                                };
                                                                                composer4.q(objX22);
                                                                            }
                                                                            ImmersiveArticleWallpaperViewKt.a(modifierF, wallpaperArticleSectionUiModel, (Function0) objX22, composer4, 0);
                                                                            composer4.F();
                                                                        } else if (immersiveArticleSectionUiModel instanceof ProductsArticleSectionUiModel) {
                                                                            composer4.L(-347544811);
                                                                            final ProductsArticleSectionUiModel productsArticleSectionUiModel = (ProductsArticleSectionUiModel) immersiveArticleSectionUiModel;
                                                                            boolean z14 = immersiveArticleViewState5.f58806j.f51775a;
                                                                            ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel2 = productsArticleSectionUiModel.f58816f;
                                                                            float fA2 = immersiveArticleSizeCardUiModel2 != null ? ImmersiveArticleHelper.a(immersiveArticleSizeCardUiModel2) : 0.6666667f;
                                                                            boolean zK34 = composer4.K(immersiveArticleSectionUiModel);
                                                                            final Function1 function81 = function56;
                                                                            boolean zK35 = zK34 | composer4.K(function81);
                                                                            Object objX23 = composer4.x();
                                                                            if (zK35 || objX23 == composer$Companion$Empty$4) {
                                                                                objX23 = new Function1<Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$15$1
                                                                                    @Override // kotlin.jvm.functions.Function1
                                                                                    public final Object invoke(Object obj11) {
                                                                                        ProductsArticleSectionUiModel.ImmersiveProductUiModel immersiveProductUiModel;
                                                                                        int iIntValue5 = ((Number) obj11).intValue();
                                                                                        List list4 = productsArticleSectionUiModel.f58813b;
                                                                                        if (list4 != null && (immersiveProductUiModel = (ProductsArticleSectionUiModel.ImmersiveProductUiModel) list4.get(iIntValue5)) != null) {
                                                                                            function81.invoke(immersiveProductUiModel);
                                                                                        }
                                                                                        return Unit.f71739a;
                                                                                    }
                                                                                };
                                                                                composer4.q(objX23);
                                                                            }
                                                                            Function1 function82 = (Function1) objX23;
                                                                            boolean zK36 = composer4.K(immersiveArticleSectionUiModel) | composer4.K(function64) | composer4.K(function74) | composer4.K(str5) | composer4.d(immersiveArticleType5.ordinal());
                                                                            Object objX24 = composer4.x();
                                                                            if (zK36 || objX24 == composer$Companion$Empty$4) {
                                                                                final String str7 = str4;
                                                                                final ImmersiveArticleType immersiveArticleType7 = immersiveArticleType4;
                                                                                final Function1 function83 = function50;
                                                                                final Function1 function84 = function54;
                                                                                Function1<Integer, Unit> function85 = new Function1<Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$16$1
                                                                                    @Override // kotlin.jvm.functions.Function1
                                                                                    public final Object invoke(Object obj11) {
                                                                                        ProductsArticleSectionUiModel.ImmersiveProductUiModel immersiveProductUiModel;
                                                                                        int iIntValue5 = ((Number) obj11).intValue();
                                                                                        ProductsArticleSectionUiModel productsArticleSectionUiModel2 = productsArticleSectionUiModel;
                                                                                        List list4 = productsArticleSectionUiModel2.f58813b;
                                                                                        if (list4 != null && (immersiveProductUiModel = (ProductsArticleSectionUiModel.ImmersiveProductUiModel) list4.get(iIntValue5)) != null) {
                                                                                            String str8 = immersiveProductUiModel.f58817a;
                                                                                            function83.invoke(new ImmersiveArticleNavigationType.OnProductModuleClick(str8, null));
                                                                                            String str9 = productsArticleSectionUiModel2.f58812a;
                                                                                            SkuIdUiModel.f61763c.getClass();
                                                                                            SkuIdUiModel.Companion.b(str8);
                                                                                            ProductsArticleSectionUiModel.ProductInfoUiModel productInfoUiModel = immersiveProductUiModel.f58819c;
                                                                                            function84.invoke(new ImmersiveArticleTrackingUiModel.ProductClickEvent(str7, str9, immersiveArticleType7, str8, productInfoUiModel != null ? productInfoUiModel.f58822c : null, null));
                                                                                        }
                                                                                        return Unit.f71739a;
                                                                                    }
                                                                                };
                                                                                composer4.q(function85);
                                                                                objX24 = function85;
                                                                            }
                                                                            ImmersiveArticleProductViewKt.a(null, productsArticleSectionUiModel, z14, fA2, function82, (Function1) objX24, composer4, 0);
                                                                            composer4 = composer4;
                                                                            composer4.F();
                                                                        } else if (immersiveArticleSectionUiModel instanceof ImmersiveArticle3dSectionUiModel) {
                                                                            composer4.L(-345887706);
                                                                            Lv3dViewerUiModel lv3dViewerUiModel = immersiveArticleViewState5.f58802e;
                                                                            boolean z15 = immersiveArticleViewState5.f58803f;
                                                                            final MutableState mutableState12 = mutableState9;
                                                                            boolean zK37 = composer4.K(mutableState12);
                                                                            Object objX25 = composer4.x();
                                                                            if (zK37 || objX25 == composer$Companion$Empty$4) {
                                                                                objX25 = new Function1<Boolean, Unit>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$17$1
                                                                                    @Override // kotlin.jvm.functions.Function1
                                                                                    public final Object invoke(Object obj11) {
                                                                                        Boolean bool = (Boolean) obj11;
                                                                                        bool.booleanValue();
                                                                                        float f9 = ImmersiveArticleContentKt.f58386a;
                                                                                        mutableState12.setValue(bool);
                                                                                        return Unit.f71739a;
                                                                                    }
                                                                                };
                                                                                composer4.q(objX25);
                                                                            }
                                                                            Function1 function86 = (Function1) objX25;
                                                                            boolean zK38 = composer4.K(str5) | composer4.d(immersiveArticleType5.ordinal()) | composer4.K(immersiveArticleSectionUiModel);
                                                                            Object objX26 = composer4.x();
                                                                            if (zK38 || objX26 == composer$Companion$Empty$4) {
                                                                                final ImmersiveArticle3dSectionUiModel immersiveArticle3dSectionUiModel = (ImmersiveArticle3dSectionUiModel) immersiveArticleSectionUiModel;
                                                                                objX26 = new Function0<Unit>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$18$1
                                                                                    @Override // kotlin.jvm.functions.Function0
                                                                                    /* JADX INFO: renamed from: invoke */
                                                                                    public final Object mo47invoke() {
                                                                                        SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
                                                                                        String str8 = immersiveArticle3dSectionUiModel.f58638b;
                                                                                        companion2.getClass();
                                                                                        SkuIdUiModel.Companion.b(str8);
                                                                                        new ImmersiveArticleTrackingUiModel.On3DTouchedEvent(str5, immersiveArticleType5, str8, null);
                                                                                        return Unit.f71739a;
                                                                                    }
                                                                                };
                                                                                composer4.q(objX26);
                                                                            }
                                                                            Function0 function87 = (Function0) objX26;
                                                                            boolean zK39 = composer4.K(function74) | composer4.K(str5) | composer4.d(immersiveArticleType5.ordinal()) | composer4.K(immersiveArticleSectionUiModel);
                                                                            Object objX27 = composer4.x();
                                                                            if (zK39 || objX27 == composer$Companion$Empty$4) {
                                                                                final ImmersiveArticle3dSectionUiModel immersiveArticle3dSectionUiModel2 = (ImmersiveArticle3dSectionUiModel) immersiveArticleSectionUiModel;
                                                                                objX27 = new Function0<Unit>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$19$1
                                                                                    @Override // kotlin.jvm.functions.Function0
                                                                                    /* JADX INFO: renamed from: invoke */
                                                                                    public final Object mo47invoke() {
                                                                                        SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
                                                                                        String str8 = immersiveArticle3dSectionUiModel2.f58638b;
                                                                                        companion2.getClass();
                                                                                        SkuIdUiModel.Companion.b(str8);
                                                                                        function74.invoke(new ImmersiveArticleTrackingUiModel.On3DZoomEvent(str5, immersiveArticleType5, str8, null));
                                                                                        return Unit.f71739a;
                                                                                    }
                                                                                };
                                                                                composer4.q(objX27);
                                                                            }
                                                                            ImmersiveArticle3DAssetKt.a(null, lv3dViewerUiModel, z15, function86, function57, function58, function87, (Function0) objX27, composer4, 0);
                                                                            composer4 = composer4;
                                                                            composer4.F();
                                                                        } else if (immersiveArticleSectionUiModel instanceof ImmersiveArticleExpansionListUiModel) {
                                                                            composer4.L(-344361638);
                                                                            Modifier modifierD = SizeKt.d(companion, 1.0f);
                                                                            ImmersiveArticleExpansionListUiModel immersiveArticleExpansionListUiModel = (ImmersiveArticleExpansionListUiModel) immersiveArticleSectionUiModel;
                                                                            boolean zK40 = composer4.K(function74) | composer4.K(str5) | composer4.d(immersiveArticleType5.ordinal());
                                                                            Object objX28 = composer4.x();
                                                                            if (zK40 || objX28 == composer$Companion$Empty$4) {
                                                                                objX28 = new Function2<Integer, String, Unit>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$20$1
                                                                                    @Override // kotlin.jvm.functions.Function2
                                                                                    public final Object invoke(Object obj11, Object obj12) {
                                                                                        int iIntValue5 = ((Number) obj11).intValue();
                                                                                        String str8 = (String) obj12;
                                                                                        str8.getClass();
                                                                                        function74.invoke(new ImmersiveArticleTrackingUiModel.ExpansionListToggleEvent(str5, immersiveArticleType5, str8, iIntValue5, true));
                                                                                        return Unit.f71739a;
                                                                                    }
                                                                                };
                                                                                composer4.q(objX28);
                                                                            }
                                                                            Function2 function88 = (Function2) objX28;
                                                                            boolean zK41 = composer4.K(function74) | composer4.K(str5) | composer4.d(immersiveArticleType5.ordinal());
                                                                            Object objX29 = composer4.x();
                                                                            if (zK41 || objX29 == composer$Companion$Empty$4) {
                                                                                objX29 = new Function2<Integer, String, Unit>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$21$1
                                                                                    @Override // kotlin.jvm.functions.Function2
                                                                                    public final Object invoke(Object obj11, Object obj12) {
                                                                                        int iIntValue5 = ((Number) obj11).intValue();
                                                                                        String str8 = (String) obj12;
                                                                                        str8.getClass();
                                                                                        function74.invoke(new ImmersiveArticleTrackingUiModel.ExpansionListToggleEvent(str5, immersiveArticleType5, str8, iIntValue5, false));
                                                                                        return Unit.f71739a;
                                                                                    }
                                                                                };
                                                                                composer4.q(objX29);
                                                                            }
                                                                            ImmersiveArticleExpansionListViewKt.b(modifierD, immersiveArticleExpansionListUiModel, function88, (Function2) objX29, composer4, 6);
                                                                            composer4 = composer4;
                                                                            composer4.F();
                                                                        } else if (immersiveArticleSectionUiModel instanceof ImmersiveArticleSliderUiModel) {
                                                                            composer4.L(-342735099);
                                                                            ImmersiveArticleSliderUiModel immersiveArticleSliderUiModel = (ImmersiveArticleSliderUiModel) immersiveArticleSectionUiModel;
                                                                            List list4 = immersiveArticleSliderUiModel.d;
                                                                            String str8 = immersiveArticleSliderUiModel.f58714a;
                                                                            String str9 = immersiveArticleSliderUiModel.f58715b;
                                                                            String str10 = immersiveArticleSliderUiModel.f58716c;
                                                                            SectionThemeUiModel sectionThemeUiModel = immersiveArticleSliderUiModel.f58717e;
                                                                            str8.getClass();
                                                                            str9.getClass();
                                                                            list4.getClass();
                                                                            ImmersiveArticleSliderUiModel immersiveArticleSliderUiModel2 = new ImmersiveArticleSliderUiModel(str8, str9, str10, list4, sectionThemeUiModel);
                                                                            boolean z16 = immersiveArticleViewState5.f58806j.f51775a;
                                                                            boolean zK42 = composer4.K(function64);
                                                                            Object objX30 = composer4.x();
                                                                            if (zK42 || objX30 == composer$Companion$Empty$4) {
                                                                                objX30 = new Function1<ContributionLinkUiModel, Unit>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$22$1
                                                                                    @Override // kotlin.jvm.functions.Function1
                                                                                    public final Object invoke(Object obj11) {
                                                                                        ContributionLinkUiModel contributionLinkUiModel = (ContributionLinkUiModel) obj11;
                                                                                        contributionLinkUiModel.getClass();
                                                                                        function64.invoke(new ImmersiveArticleNavigationType.OnContributionLinkClick(contributionLinkUiModel));
                                                                                        return Unit.f71739a;
                                                                                    }
                                                                                };
                                                                                composer4.q(objX30);
                                                                            }
                                                                            ImmersiveArticleSliderKt.b(immersiveArticleSliderUiModel2, z16, (Function1) objX30, function54, immersiveArticleType4, composer4, 0);
                                                                            composer4.F();
                                                                        } else if (immersiveArticleSectionUiModel instanceof ImmersiveArticleProductTabsSectionUiModel) {
                                                                            composer4.L(-341896363);
                                                                            final ImmersiveArticleProductTabsSectionUiModel immersiveArticleProductTabsSectionUiModel = (ImmersiveArticleProductTabsSectionUiModel) immersiveArticleSectionUiModel;
                                                                            boolean zK43 = composer4.K(function64) | composer4.K(function74) | composer4.K(str5) | composer4.K(immersiveArticleSectionUiModel) | composer4.d(immersiveArticleType5.ordinal());
                                                                            Object objX31 = composer4.x();
                                                                            if (zK43 || objX31 == composer$Companion$Empty$4) {
                                                                                final String str11 = str4;
                                                                                final ImmersiveArticleType immersiveArticleType8 = immersiveArticleType4;
                                                                                final Function1 function89 = function50;
                                                                                final Function1 function90 = function54;
                                                                                Function2<CarouselSItemUiModel, Integer, Unit> function91 = new Function2<CarouselSItemUiModel, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$23$1
                                                                                    @Override // kotlin.jvm.functions.Function2
                                                                                    public final Object invoke(Object obj11, Object obj12) {
                                                                                        CarouselSItemUiModel carouselSItemUiModel = (CarouselSItemUiModel) obj11;
                                                                                        ((Number) obj12).intValue();
                                                                                        carouselSItemUiModel.getClass();
                                                                                        String str12 = carouselSItemUiModel.f50796a;
                                                                                        function89.invoke(new ImmersiveArticleNavigationType.OnProductModuleClick(str12, null));
                                                                                        String str13 = immersiveArticleProductTabsSectionUiModel.f58704a;
                                                                                        SkuIdUiModel.f61763c.getClass();
                                                                                        SkuIdUiModel.Companion.b(str12);
                                                                                        ProductShortPriceUiModel productShortPriceUiModel = carouselSItemUiModel.f50799e;
                                                                                        function90.invoke(new ImmersiveArticleTrackingUiModel.ProductClickEvent(str11, str13, immersiveArticleType8, str12, productShortPriceUiModel != null ? productShortPriceUiModel.f62982b : null, null));
                                                                                        return Unit.f71739a;
                                                                                    }
                                                                                };
                                                                                composer4.q(function91);
                                                                                objX31 = function91;
                                                                            }
                                                                            Function2 function92 = (Function2) objX31;
                                                                            boolean zK44 = composer4.K(function64);
                                                                            Object objX32 = composer4.x();
                                                                            if (zK44 || objX32 == composer$Companion$Empty$4) {
                                                                                objX32 = new Function1<ContributionLinkUiModel, Unit>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$24$1
                                                                                    @Override // kotlin.jvm.functions.Function1
                                                                                    public final Object invoke(Object obj11) {
                                                                                        ContributionLinkUiModel contributionLinkUiModel = (ContributionLinkUiModel) obj11;
                                                                                        contributionLinkUiModel.getClass();
                                                                                        function64.invoke(new ImmersiveArticleNavigationType.OnContributionLinkClick(contributionLinkUiModel));
                                                                                        return Unit.f71739a;
                                                                                    }
                                                                                };
                                                                                composer4.q(objX32);
                                                                            }
                                                                            Function1 function93 = (Function1) objX32;
                                                                            boolean zK45 = composer4.K(immersiveArticleSectionUiModel) | composer4.K(function74) | composer4.K(str5) | composer4.d(immersiveArticleType5.ordinal());
                                                                            Object objX33 = composer4.x();
                                                                            if (zK45 || objX33 == composer$Companion$Empty$4) {
                                                                                objX33 = new Function1<String, Unit>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$25$1
                                                                                    @Override // kotlin.jvm.functions.Function1
                                                                                    public final Object invoke(Object obj11) {
                                                                                        String str12 = (String) obj11;
                                                                                        str12.getClass();
                                                                                        function74.invoke(new ImmersiveArticleTrackingUiModel.ProductsTabsTabClickedEvent(str5, immersiveArticleProductTabsSectionUiModel.f58704a, immersiveArticleType5, str12));
                                                                                        return Unit.f71739a;
                                                                                    }
                                                                                };
                                                                                composer4.q(objX33);
                                                                            }
                                                                            ImmersiveArticleProductTabsViewKt.a(null, immersiveArticleProductTabsSectionUiModel, immersiveArticleType4, function92, function93, (Function1) objX33, composer4, 0);
                                                                            composer4 = composer4;
                                                                            composer4.F();
                                                                        } else if (immersiveArticleSectionUiModel instanceof ImmersiveArticleProductListSectionUiModel) {
                                                                            composer4.L(-339826989);
                                                                            ImmersiveArticleProductListSectionUiModel immersiveArticleProductListSectionUiModel = (ImmersiveArticleProductListSectionUiModel) immersiveArticleSectionUiModel;
                                                                            boolean zK46 = composer4.K(function64);
                                                                            Object objX34 = composer4.x();
                                                                            if (zK46 || objX34 == composer$Companion$Empty$4) {
                                                                                objX34 = new Function1<SkuIdUiModel, Unit>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$26$1
                                                                                    @Override // kotlin.jvm.functions.Function1
                                                                                    public final Object invoke(Object obj11) {
                                                                                        String str12 = ((SkuIdUiModel) obj11).f61764b;
                                                                                        str12.getClass();
                                                                                        function64.invoke(new ImmersiveArticleNavigationType.OnProductModuleClick(str12, null));
                                                                                        return Unit.f71739a;
                                                                                    }
                                                                                };
                                                                                composer4.q(objX34);
                                                                            }
                                                                            ImmersiveArticleProductListViewKt.a(null, immersiveArticleProductListSectionUiModel, (Function1) objX34, composer4, 0);
                                                                            composer4.F();
                                                                        } else if (immersiveArticleSectionUiModel instanceof ImmersiveArticleAuthenticationSectionUiModel) {
                                                                            composer4.L(-339172672);
                                                                            if (immersiveArticleViewState5.f58805i) {
                                                                                composer4.L(-338799649);
                                                                                composer4.F();
                                                                            } else {
                                                                                composer4.L(-339114857);
                                                                                ImmersiveArticleAuthenticationViewKt.a(null, (ImmersiveArticleAuthenticationSectionUiModel) immersiveArticleSectionUiModel, function59, function60, composer4, 0);
                                                                                composer4 = composer4;
                                                                                composer4.F();
                                                                            }
                                                                            composer4.F();
                                                                        } else {
                                                                            boolean z17 = immersiveArticleSectionUiModel instanceof ImmersiveArticleFashionShowSectionUiModel;
                                                                            final Function1 function94 = function62;
                                                                            if (z17) {
                                                                                composer4.L(-338642944);
                                                                                final ImmersiveArticleFashionShowSectionUiModel immersiveArticleFashionShowSectionUiModel = (ImmersiveArticleFashionShowSectionUiModel) immersiveArticleSectionUiModel;
                                                                                A11ySettings a11ySettings2 = immersiveArticleViewState5.f58806j;
                                                                                boolean zY7 = composer4.y(permissionsUiModel5) | composer4.K(function70) | composer4.K(immersiveArticleSectionUiModel) | composer4.K(function69);
                                                                                Object objX35 = composer4.x();
                                                                                if (zY7 || objX35 == composer$Companion$Empty$4) {
                                                                                    objX35 = new Function0<Unit>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$27$1
                                                                                        @Override // kotlin.jvm.functions.Function0
                                                                                        /* JADX INFO: renamed from: invoke */
                                                                                        public final Object mo47invoke() {
                                                                                            String str12 = immersiveArticleFashionShowSectionUiModel.f58672a;
                                                                                            PermissionsUiModel permissionsUiModel8 = permissionsUiModel5;
                                                                                            if (permissionsUiModel8.d && permissionsUiModel8.f62374c) {
                                                                                                function70.invoke(str12);
                                                                                            } else {
                                                                                                function69.invoke(str12);
                                                                                            }
                                                                                            return Unit.f71739a;
                                                                                        }
                                                                                    };
                                                                                    composer4.q(objX35);
                                                                                }
                                                                                Function0 function95 = (Function0) objX35;
                                                                                boolean zK47 = composer4.K(function94) | composer4.K(immersiveArticleSectionUiModel);
                                                                                Object objX36 = composer4.x();
                                                                                if (zK47 || objX36 == composer$Companion$Empty$4) {
                                                                                    objX36 = new Function0<Unit>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$28$1
                                                                                        @Override // kotlin.jvm.functions.Function0
                                                                                        /* JADX INFO: renamed from: invoke */
                                                                                        public final Object mo47invoke() {
                                                                                            function94.invoke(immersiveArticleFashionShowSectionUiModel.f58672a);
                                                                                            return Unit.f71739a;
                                                                                        }
                                                                                    };
                                                                                    composer4.q(objX36);
                                                                                }
                                                                                ImmersiveArticleFashionShowViewKt.a(immersiveArticleFashionShowSectionUiModel, a11ySettings2, function61, function95, (Function0) objX36, composer4, 0);
                                                                                composer4.F();
                                                                            } else if (immersiveArticleSectionUiModel instanceof ImmersiveArticleEventSectionUiModel) {
                                                                                composer4.L(-337634235);
                                                                                final ImmersiveArticleEventSectionUiModel immersiveArticleEventSectionUiModel = (ImmersiveArticleEventSectionUiModel) immersiveArticleSectionUiModel;
                                                                                A11ySettings a11ySettings3 = immersiveArticleViewState5.f58806j;
                                                                                boolean zY8 = composer4.y(permissionsUiModel5) | composer4.K(function70) | composer4.K(immersiveArticleSectionUiModel) | composer4.K(function69);
                                                                                Object objX37 = composer4.x();
                                                                                if (zY8 || objX37 == composer$Companion$Empty$4) {
                                                                                    objX37 = new Function0<Unit>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$29$1
                                                                                        @Override // kotlin.jvm.functions.Function0
                                                                                        /* JADX INFO: renamed from: invoke */
                                                                                        public final Object mo47invoke() {
                                                                                            String str12 = immersiveArticleEventSectionUiModel.f58656a;
                                                                                            PermissionsUiModel permissionsUiModel8 = permissionsUiModel5;
                                                                                            if (permissionsUiModel8.d && permissionsUiModel8.f62374c) {
                                                                                                function70.invoke(str12);
                                                                                            } else {
                                                                                                function69.invoke(str12);
                                                                                            }
                                                                                            return Unit.f71739a;
                                                                                        }
                                                                                    };
                                                                                    composer4.q(objX37);
                                                                                }
                                                                                Function0 function96 = (Function0) objX37;
                                                                                boolean zK48 = composer4.K(function94) | composer4.K(immersiveArticleSectionUiModel);
                                                                                Object objX38 = composer4.x();
                                                                                if (zK48 || objX38 == composer$Companion$Empty$4) {
                                                                                    objX38 = new Function0<Unit>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$30$1
                                                                                        @Override // kotlin.jvm.functions.Function0
                                                                                        /* JADX INFO: renamed from: invoke */
                                                                                        public final Object mo47invoke() {
                                                                                            function94.invoke(immersiveArticleEventSectionUiModel.f58656a);
                                                                                            return Unit.f71739a;
                                                                                        }
                                                                                    };
                                                                                    composer4.q(objX38);
                                                                                }
                                                                                ImmersiveArticleEventViewKt.a(immersiveArticleEventSectionUiModel, a11ySettings3, function96, (Function0) objX38, null, composer4, 0);
                                                                                composer4.F();
                                                                            } else {
                                                                                composer4.L(-336778728);
                                                                                composer4.F();
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                            composer4.F();
                                                        } else {
                                                            composer4.D();
                                                        }
                                                        return Unit.f71739a;
                                                    }
                                                }));
                                                ImmersiveArticleSectionUiModel immersiveArticleSectionUiModel = (ImmersiveArticleSectionUiModel) CollectionsKt.N(snapshotStateList4);
                                                if (immersiveArticleSectionUiModel != null) {
                                                    if (list3.contains(Reflection.f71922a.b(immersiveArticleSectionUiModel.getClass()))) {
                                                        LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(-743498041, true, new d3(immersiveArticleViewState4, 22)), 3);
                                                    }
                                                }
                                                ComposableSingletons$ImmersiveArticleContentKt.f58359a.getClass();
                                                LazyListScope.f(lazyListScope, null, ComposableSingletons$ImmersiveArticleContentKt.f58360b, 3);
                                                return Unit.f71739a;
                                            }
                                        };
                                        composer3.q(function47);
                                        objX9 = function47;
                                    }
                                    LazyDslKt.a(modifierB, lazyListState, null, null, null, null, zBooleanValue2, null, (Function1) objX9, composer3, 0, 380);
                                } else {
                                    composer3.D();
                                }
                                return Unit.f71739a;
                            }
                        }, composer2), composer2, 56);
                        ScreenshotUiModel screenshotUiModel = immersiveArticleViewState2.d;
                        Bitmap bitmap = screenshotUiModel.f61746b;
                        boolean z2 = screenshotUiModel.f61745a;
                        Object objX8 = composer2.x();
                        if (objX8 == composer$Companion$Empty$2) {
                            objX8 = SnapshotStateKt.g(Boolean.FALSE);
                            composer2.q(objX8);
                        }
                        MutableState mutableState4 = (MutableState) objX8;
                        Object objX9 = composer2.x();
                        if (objX9 == composer$Companion$Empty$2) {
                            i5 = 1;
                            objX9 = new c30(i5, mutableState4);
                            composer2.q(objX9);
                        } else {
                            i5 = 1;
                        }
                        ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(1127789252, new g1(21, immersiveArticleViewState2, bitmap, function5), composer2);
                        Function0 function33 = function8;
                        LVNotificationKt.a(z2, true, false, null, (Function1) objX9, function33, function33, composableLambdaImplB, composer2, 12607536, 12);
                        AndroidSystemUiController androidSystemUiControllerA = SystemUiControllerKt.a(composer2);
                        Color.f8866b.getClass();
                        androidSystemUiControllerA.a(Color.f8870h, (z2 || ((Boolean) mutableState4.getF10755b()).booleanValue()) ? i5 : 0, SystemUiControllerKt.f27786b);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 3072, 7);
            if (lVModalBottomSheetStateF.a()) {
                gapComposerH.L(1889802543);
                LVModalBottomSheetKt.b(null, StringResources_androidKt.c(gapComposerH, R.string.alt_close), function7, lVModalBottomSheetStateF, null, 0L, false, null, ComposableLambdaKt.b(615082706, new f30(permissionsUiModel, context, function11, function4, 0), gapComposerH), gapComposerH, ((i4 >> 3) & 896) | 100663296 | (LVModalBottomSheetState.f48797e << 9), 241);
                gapComposer = gapComposerH;
                gapComposer.Z(false);
            } else {
                gapComposer = gapComposerH;
                gapComposer.L(1890748353);
                gapComposer.Z(false);
            }
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(permissionsUiModel, f2, str, immersiveArticleType, snapshotStateList, function0, function1, function2, function3, function4, function5, function6, function7, function8, function9, function10, function11, function12, function13, function14, function15, function16, function17, function18, i2) { // from class: g30

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ PermissionsUiModel f69264c;
                public final /* synthetic */ float d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ String f69265e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ ImmersiveArticleType f69266f;
                public final /* synthetic */ SnapshotStateList g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ Function0 f69267h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ Function0 f69268i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public final /* synthetic */ Function0 f69269j;

                /* JADX INFO: renamed from: k, reason: collision with root package name */
                public final /* synthetic */ Function0 f69270k;
                public final /* synthetic */ Function0 l;
                public final /* synthetic */ Function0 m;
                public final /* synthetic */ Function1 n;
                public final /* synthetic */ Function0 o;
                public final /* synthetic */ Function0 p;
                public final /* synthetic */ Function1 q;
                public final /* synthetic */ Function1 r;
                public final /* synthetic */ Function0 s;
                public final /* synthetic */ Function1 t;
                public final /* synthetic */ Function1 u;
                public final /* synthetic */ Function1 v;
                public final /* synthetic */ Function1 w;
                public final /* synthetic */ Function2 x;
                public final /* synthetic */ Function1 y;
                public final /* synthetic */ Function1 z;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    ImmersiveArticleContentKt.a(this.f69263b, this.f69264c, this.d, this.f69265e, this.f69266f, this.g, this.f69267h, this.f69268i, this.f69269j, this.f69270k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.u, this.v, this.w, this.x, this.y, this.z, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final Modifier b(BoxWithConstraintsScope boxWithConstraintsScope, ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel) {
        ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel2 = ImmersiveArticleSizeCardUiModel.FULLSCREEN;
        Modifier.Companion companion = Modifier.Companion.f8607b;
        return immersiveArticleSizeCardUiModel == immersiveArticleSizeCardUiModel2 ? SizeKt.f(companion, boxWithConstraintsScope.i()) : AspectRatioKt.a(companion, ImmersiveArticleHelper.a(immersiveArticleSizeCardUiModel), false);
    }
}
