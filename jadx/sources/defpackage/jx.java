package defpackage;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.view.View;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.material3.OutlinedTextFieldKt;
import androidx.compose.material3.RippleKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.semantics.CollectionItemInfo;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.compose.LifecycleResumePauseEffectScope;
import androidx.lifecycle.compose.LifecycleStartStopEffectScope;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController;
import androidx.navigation.NavHostController;
import androidx.navigation.fragment.FragmentNavigator;
import com.google.android.filament.Material;
import com.google.android.filament.MaterialInstance;
import com.google.android.filament.gltfio.AssetLoader;
import com.google.android.filament.gltfio.FilamentAsset;
import com.lightup.sdk.animation.CreatorProject;
import com.sightcall.libraries.archi.nucleus.NucleusReducerBuilder;
import com.sightcall.livetranslation.domain.LiveTranslationInteractorImpl;
import com.sightcall.livetranslation.domain.LiveTranslationRepository;
import com.sightcall.livetranslation.domain.LiveTranslationSettings;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.RowItemCenterPosition;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.applink.SwapDispatchUiModel;
import com.vuitton.android.presentation.common.hotcontent.models.HotContentItemUiModel;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.screen.cart.NativeCartViewModel;
import com.vuitton.android.presentation.screen.cart.models.CartItemUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartTrackingUiModel;
import com.vuitton.android.presentation.screen.catalog.models.PLPEntryUiModel;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpPresetAdapter;
import com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.MeshResources;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.ModelViewer;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.Lv3dCardViewerComposableKt;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.Lv3dCardViewerHelper;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.Lv3dCardViewerUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerComposableKt;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerHelper;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleProductTabsUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleTrackingUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleType;
import com.vuitton.android.presentation.screen.main.MainActivity;
import com.vuitton.android.presentation.screen.main.components.MainActivityBottomSheetType;
import com.vuitton.android.presentation.screen.options.notifications.components.ComposableSingletons$NotificationPreferencesKt;
import com.vuitton.android.presentation.screen.options.notifications.models.NotificationsPreference;
import com.vuitton.android.presentation.screen.options.notifications.models.NotificationsPreferencesViewState;
import com.vuitton.android.presentation.screen.orders.components.exchange.ReturnOrExchangeRoute;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeViewState;
import com.vuitton.android.presentation.screen.orders.models.OrderStatusUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderTrackingUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderViewState;
import com.vuitton.android.presentation.screen.orders.models.TransactionItemUiModel;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModel;
import com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel;
import com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModel;
import com.vuitton.android.presentation.screen.pdp.PdpActivity;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationConfigurationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFiltersCategoryUiModel;
import com.vuitton.android.presentation.screen.search.components.ComposableSingletons$HistoryComposableKt;
import com.vuitton.android.presentation.screen.search.models.HistoryItemUiModel;
import com.vuitton.android.presentation.screen.search.models.HistoryUiModel;
import com.vuitton.foundation.model.domain.model.account.notifications.NotificationPreferenceType;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.o60;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.math.MathKt;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class jx implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71488b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f71489c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f71490e;

    public /* synthetic */ jx(Context context, PagerState pagerState, MutableState mutableState) {
        this.f71488b = 4;
        this.d = context;
        this.f71489c = pagerState;
        this.f71490e = mutableState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Intent intentB;
        String str;
        TransactionItemUiModel transactionItemUiModel;
        int i2 = this.f71488b;
        int iA = 0;
        Object obj2 = this.f71490e;
        Object obj3 = this.d;
        Object obj4 = this.f71489c;
        switch (i2) {
            case 0:
                ContributionLinkNavigator contributionLinkNavigator = (ContributionLinkNavigator) obj4;
                Context context = (Context) obj3;
                ManagedActivityResultLauncher managedActivityResultLauncher = (ManagedActivityResultLauncher) obj2;
                ContributionLinkUiModel contributionLinkUiModel = (ContributionLinkUiModel) obj;
                if (contributionLinkUiModel != null) {
                    AppCompatActivity appCompatActivityB = ContextExtKt.b(context);
                    appCompatActivityB.getClass();
                    ContributionLinkNavigator.a(contributionLinkNavigator, appCompatActivityB, contributionLinkUiModel, null, null, contributionLinkUiModel instanceof ContributionLinkUiModel.Monogram ? managedActivityResultLauncher : null, 12);
                }
                return Unit.f71739a;
            case 1:
                LayoutDirection layoutDirection = (LayoutDirection) obj4;
                Map map = (Map) obj3;
                ProductFiltersCategoryUiModel productFiltersCategoryUiModel = (ProductFiltersCategoryUiModel) obj2;
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) obj;
                layoutCoordinates.getClass();
                LayoutCoordinates layoutCoordinatesD0 = layoutCoordinates.d0();
                iA = layoutCoordinatesD0 != null ? (int) (layoutCoordinatesD0.a() >> 32) : 0;
                float fIntBitsToFloat = Float.intBitsToFloat((int) (LayoutCoordinatesKt.d(layoutCoordinates) >> 32)) + (((int) (layoutCoordinates.a() >> 32)) / 2);
                if (layoutDirection == LayoutDirection.Rtl) {
                    fIntBitsToFloat = iA - fIntBitsToFloat;
                }
                map.put(productFiltersCategoryUiModel.f62970a, new RowItemCenterPosition((int) fIntBitsToFloat));
                return Unit.f71739a;
            case 2:
                FragmentNavigator fragmentNavigator = (FragmentNavigator) obj4;
                Fragment fragment = (Fragment) obj3;
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj2;
                LifecycleOwner lifecycleOwner = (LifecycleOwner) obj;
                ArrayList arrayList = fragmentNavigator.g;
                if (arrayList == null || !arrayList.isEmpty()) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        if (Intrinsics.c(((Pair) it.next()).f71705b, fragment.getTag())) {
                            iA = 1;
                        }
                    }
                }
                if (lifecycleOwner != null && iA == 0) {
                    Lifecycle f13561b = fragment.getViewLifecycleOwner().getF13561b();
                    if (f13561b.getF13454i().a(Lifecycle.State.CREATED)) {
                        f13561b.a((LifecycleObserver) fragmentNavigator.f18305i.invoke(navBackStackEntry));
                    }
                }
                return Unit.f71739a;
            case 3:
                final Function2 function2 = (Function2) obj3;
                final Function1 function1 = (Function1) obj2;
                LazyListScope lazyListScope = (LazyListScope) obj;
                lazyListScope.getClass();
                ComposableSingletons$HistoryComposableKt.f64161a.getClass();
                LazyListScope.f(lazyListScope, null, ComposableSingletons$HistoryComposableKt.f64162b, 3);
                final List list = ((HistoryUiModel) obj4).f64248a;
                lazyListScope.h(list.size(), null, new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.search.components.HistoryComposableKt$HistoryComposable$lambda$0$0$3$0$$inlined$itemsIndexed$default$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj5) {
                        list.get(((Number) obj5).intValue());
                        return null;
                    }
                }, new ComposableLambdaImpl(2039820996, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.search.components.HistoryComposableKt$HistoryComposable$lambda$0$0$3$0$$inlined$itemsIndexed$default$3
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj5, Object obj6, Object obj7, Object obj8) {
                        int i3;
                        LazyItemScope lazyItemScope = (LazyItemScope) obj5;
                        final int iIntValue = ((Number) obj6).intValue();
                        Composer composer = (Composer) obj7;
                        int iIntValue2 = ((Number) obj8).intValue();
                        if ((iIntValue2 & 6) == 0) {
                            i3 = (composer.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                        } else {
                            i3 = iIntValue2;
                        }
                        if ((iIntValue2 & 48) == 0) {
                            i3 |= composer.d(iIntValue) ? 32 : 16;
                        }
                        if (composer.p(i3 & 1, (i3 & 147) != 146)) {
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            final HistoryItemUiModel historyItemUiModel = (HistoryItemUiModel) list.get(iIntValue);
                            composer.L(-753977246);
                            ProvidedValue providedValueC = RippleKt.f7164a.c(SearchScreenComposableKt.b(composer));
                            final Function2 function3 = function2;
                            final Function1 function4 = function1;
                            CompositionLocalKt.a(providedValueC, ComposableLambdaKt.b(1461278294, new Function2<Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.search.components.HistoryComposableKt$HistoryComposable$1$1$4$1$1$1
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj9, Object obj10) {
                                    Composer composer2 = (Composer) obj9;
                                    int iIntValue3 = ((Number) obj10).intValue();
                                    if (composer2.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                        HistoryItemUiModel historyItemUiModel2 = historyItemUiModel;
                                        boolean z = historyItemUiModel2 instanceof HistoryItemUiModel.HistoryProductUiModel;
                                        Modifier.Companion companion = Modifier.Companion.f8607b;
                                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                        final int i4 = iIntValue;
                                        if (z) {
                                            composer2.L(-846723547);
                                            boolean zD = composer2.d(i4);
                                            Object objX = composer2.x();
                                            if (zD || objX == composer$Companion$Empty$1) {
                                                objX = new Function1<SemanticsPropertyReceiver, Unit>() { // from class: com.vuitton.android.presentation.screen.search.components.HistoryComposableKt$HistoryComposable$1$1$4$1$1$1$1$1
                                                    @Override // kotlin.jvm.functions.Function1
                                                    public final Object invoke(Object obj11) {
                                                        SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj11;
                                                        semanticsPropertyReceiver.getClass();
                                                        SemanticsPropertiesKt.g(semanticsPropertyReceiver, new CollectionItemInfo(i4, 1, 0, 1));
                                                        return Unit.f71739a;
                                                    }
                                                };
                                                composer2.q(objX);
                                            }
                                            Modifier modifierB = SemanticsModifierKt.b(companion, false, (Function1) objX);
                                            HistoryItemUiModel.HistoryProductUiModel historyProductUiModel = (HistoryItemUiModel.HistoryProductUiModel) historyItemUiModel2;
                                            final Function2 function5 = function3;
                                            boolean zK = composer2.K(function5) | composer2.d(i4);
                                            Object objX2 = composer2.x();
                                            if (zK || objX2 == composer$Companion$Empty$1) {
                                                objX2 = new Function1<HistoryItemUiModel.HistoryProductUiModel, Unit>() { // from class: com.vuitton.android.presentation.screen.search.components.HistoryComposableKt$HistoryComposable$1$1$4$1$1$1$2$1
                                                    @Override // kotlin.jvm.functions.Function1
                                                    public final Object invoke(Object obj11) {
                                                        HistoryItemUiModel.HistoryProductUiModel historyProductUiModel2 = (HistoryItemUiModel.HistoryProductUiModel) obj11;
                                                        historyProductUiModel2.getClass();
                                                        function5.invoke(historyProductUiModel2, Integer.valueOf(i4));
                                                        return Unit.f71739a;
                                                    }
                                                };
                                                composer2.q(objX2);
                                            }
                                            HistoryComposableKt.b(modifierB, historyProductUiModel, (Function1) objX2, composer2, 0, 0);
                                            composer2.F();
                                        } else {
                                            if (!(historyItemUiModel2 instanceof HistoryItemUiModel.HistoryResearchUiModel)) {
                                                throw o60.v(composer2, -165863198);
                                            }
                                            composer2.L(-846071896);
                                            boolean zD2 = composer2.d(i4);
                                            Object objX3 = composer2.x();
                                            if (zD2 || objX3 == composer$Companion$Empty$1) {
                                                objX3 = new Function1<SemanticsPropertyReceiver, Unit>() { // from class: com.vuitton.android.presentation.screen.search.components.HistoryComposableKt$HistoryComposable$1$1$4$1$1$1$3$1
                                                    @Override // kotlin.jvm.functions.Function1
                                                    public final Object invoke(Object obj11) {
                                                        SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj11;
                                                        semanticsPropertyReceiver.getClass();
                                                        SemanticsPropertiesKt.g(semanticsPropertyReceiver, new CollectionItemInfo(i4, 1, 0, 1));
                                                        return Unit.f71739a;
                                                    }
                                                };
                                                composer2.q(objX3);
                                            }
                                            HistoryComposableKt.c(SemanticsModifierKt.b(companion, false, (Function1) objX3), (HistoryItemUiModel.HistoryResearchUiModel) historyItemUiModel2, function4, composer2, 0, 0);
                                            composer2.F();
                                        }
                                    } else {
                                        composer2.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }, composer), composer, 56);
                            composer.F();
                        } else {
                            composer.D();
                        }
                        return Unit.f71739a;
                    }
                }));
                LazyListScope.f(lazyListScope, null, ComposableSingletons$HistoryComposableKt.f64163c, 3);
                return Unit.f71739a;
            case 4:
                Context context2 = (Context) obj3;
                PagerState pagerState = (PagerState) obj4;
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                String str2 = (String) ((MutableState) obj2).getF10755b();
                String string = StringsKt.w(str2) ? null : str2;
                if (string == null) {
                    string = context2.getString(R.string.alt_no_caption_content);
                    string.getClass();
                }
                SemanticsPropertiesKt.i(semanticsPropertyReceiver, string + ", " + context2.getString(R.string.alt_tab, Integer.valueOf(pagerState.k() + 1), Integer.valueOf(pagerState.o())));
                return Unit.f71739a;
            case 5:
                int iIntValue = ((Integer) obj).intValue();
                float f2 = ImmersiveArticleContentKt.f58386a;
                ((Function1) obj4).invoke(new ImmersiveArticleTrackingUiModel.ScrollPercentageReachedEvent((String) obj3, (ImmersiveArticleType) obj2, iIntValue));
                return Unit.f71739a;
            case 6:
                int iIntValue2 = ((Integer) obj).intValue();
                ((Function1) obj4).invoke(((ImmersiveArticleProductTabsUiModel) ((List) obj3).get(iIntValue2)).f58708b);
                ((MutableIntState) obj2).i(iIntValue2);
                return Unit.f71739a;
            case 7:
                GraphicsLayerScope graphicsLayerScope = (GraphicsLayerScope) obj;
                graphicsLayerScope.getClass();
                graphicsLayerScope.d(((Number) ((Function0) obj4).mo47invoke()).floatValue());
                graphicsLayerScope.g(((MutableFloatState) obj2).a() * ((Number) ((Function0) obj3).mo47invoke()).floatValue());
                return Unit.f71739a;
            case 8:
                LayoutDirection layoutDirection2 = (LayoutDirection) obj4;
                Map map2 = (Map) obj3;
                String str3 = (String) obj2;
                LayoutCoordinates layoutCoordinates2 = (LayoutCoordinates) obj;
                layoutCoordinates2.getClass();
                LayoutCoordinates layoutCoordinatesD1 = layoutCoordinates2.d0();
                iA = layoutCoordinatesD1 != null ? (int) (layoutCoordinatesD1.a() >> 32) : 0;
                float fIntBitsToFloat2 = Float.intBitsToFloat((int) (LayoutCoordinatesKt.d(layoutCoordinates2) >> 32)) + (((int) (layoutCoordinates2.a() >> 32)) / 2);
                if (layoutDirection2 == LayoutDirection.Rtl) {
                    fIntBitsToFloat2 = iA - fIntBitsToFloat2;
                }
                map2.put(str3, new RowItemCenterPosition((int) fIntBitsToFloat2));
                return Unit.f71739a;
            case 9:
                TextLayoutResult textLayoutResult = (TextLayoutResult) obj4;
                AnnotatedString annotatedString = (AnnotatedString) obj3;
                Function0 function0 = (Function0) obj2;
                Offset offset = (Offset) obj;
                if (textLayoutResult != null) {
                    int iG = textLayoutResult.f10553b.g(offset.f8808a);
                    if (((AnnotatedString.Range) CollectionsKt.firstOrNull(annotatedString.c(iG, iG, "link"))) != null) {
                        function0.mo47invoke();
                    }
                }
                return Unit.f71739a;
            case 10:
                final LifecycleOwner lifecycleOwner2 = (LifecycleOwner) obj4;
                final bn bnVar = new bn((Lifecycle.Event) obj3, (MutableState) obj2, 2);
                lifecycleOwner2.getF13561b().a(bnVar);
                return new DisposableEffectResult() { // from class: androidx.lifecycle.compose.LifecycleEffectKt$LifecycleEventEffect$lambda$1$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        lifecycleOwner2.getF13561b().d(bnVar);
                    }
                };
            case 11:
                final LifecycleOwner lifecycleOwner3 = (LifecycleOwner) obj4;
                final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                final n90 n90Var = new n90((LifecycleResumePauseEffectScope) obj3, ref$ObjectRef, (Function1) obj2, 0);
                lifecycleOwner3.getF13561b().a(n90Var);
                return new DisposableEffectResult() { // from class: androidx.lifecycle.compose.LifecycleEffectKt$LifecycleResumeEffectImpl$lambda$0$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        lifecycleOwner3.getF13561b().d(n90Var);
                    }
                };
            case 12:
                final LifecycleOwner lifecycleOwner4 = (LifecycleOwner) obj4;
                final Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
                final n90 n90Var2 = new n90((LifecycleStartStopEffectScope) obj3, ref$ObjectRef2, (Function1) obj2, 1);
                lifecycleOwner4.getF13561b().a(n90Var2);
                return new DisposableEffectResult() { // from class: androidx.lifecycle.compose.LifecycleEffectKt$LifecycleStartEffectImpl$lambda$0$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        lifecycleOwner4.getF13561b().d(n90Var2);
                        LifecycleStopOrDisposeEffectResult lifecycleStopOrDisposeEffectResult = (LifecycleStopOrDisposeEffectResult) ref$ObjectRef2.f71921b;
                        if (lifecycleStopOrDisposeEffectResult != null) {
                            lifecycleStopOrDisposeEffectResult.a();
                        }
                    }
                };
            case 13:
                int i3 = LightUpPresetAdapter.PresetViewHolder.d;
                ((View) obj).getClass();
                ((LightUpPresetAdapter) obj4).f56142b.invoke((CreatorProject) obj3, Integer.valueOf(((LightUpPresetAdapter.PresetViewHolder) obj2).getBindingAdapterPosition()));
                return Unit.f71739a;
            case 14:
                final LiveData liveData = (LiveData) obj4;
                final zi ziVar = new zi((MutableState) obj2, 2);
                liveData.observe((LifecycleOwner) obj3, ziVar);
                return new DisposableEffectResult() { // from class: androidx.compose.runtime.livedata.LiveDataAdapterKt$observeAsState$lambda$1$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        liveData.removeObserver(ziVar);
                    }
                };
            case 15:
                return LiveTranslationInteractorImpl.reducerConfigurator$lambda$0((LiveTranslationInteractorImpl) obj4, (LiveTranslationSettings.Enabled) obj3, (LiveTranslationRepository) obj2, (NucleusReducerBuilder) obj);
            case 16:
                final LifecycleEventObserver lifecycleEventObserver = (LifecycleEventObserver) obj4;
                final Lv3dCardViewerHelper lv3dCardViewerHelper = (Lv3dCardViewerHelper) obj2;
                Lv3dCardViewerUiModel lv3dCardViewerUiModel = Lv3dCardViewerComposableKt.f58553a;
                ((DisposableEffectScope) obj).getClass();
                final Lifecycle f13561b2 = ((LifecycleOwner) ((MutableState) obj3).getF10755b()).getF13561b();
                f13561b2.a(lifecycleEventObserver);
                return new DisposableEffectResult() { // from class: com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.Lv3dCardViewerComposableKt$Lv3dCardViewerComposable$lambda$31$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        Lv3dCardViewerHelper lv3dCardViewerHelper2 = lv3dCardViewerHelper;
                        ModelViewer modelViewer = lv3dCardViewerHelper2.r;
                        lv3dCardViewerHelper2.q.removeFrameCallback(lv3dCardViewerHelper2.T);
                        ValueAnimator valueAnimator = lv3dCardViewerHelper2.P;
                        valueAnimator.removeAllUpdateListeners();
                        valueAnimator.cancel();
                        ValueAnimator valueAnimator2 = lv3dCardViewerHelper2.Q;
                        valueAnimator2.removeAllUpdateListeners();
                        valueAnimator2.cancel();
                        MeshResources meshResources = lv3dCardViewerHelper2.F;
                        if (meshResources != null) {
                            meshResources.a(modelViewer);
                        }
                        lv3dCardViewerHelper2.F = null;
                        MaterialInstance materialInstance = lv3dCardViewerHelper2.E;
                        if (materialInstance != null) {
                            modelViewer.f58516b.r(materialInstance);
                        }
                        Material material = lv3dCardViewerHelper2.D;
                        if (material != null) {
                            modelViewer.f58516b.q(material);
                        }
                        Lv3dCardViewerHelperKt.f58574a.clear();
                        Lv3dCardViewerHelperKt.f58575b.clear();
                        modelViewer.a();
                        f13561b2.d(lifecycleEventObserver);
                    }
                };
            case 17:
                final LifecycleEventObserver lifecycleEventObserver2 = (LifecycleEventObserver) obj4;
                final Lv3dViewerHelper lv3dViewerHelper = (Lv3dViewerHelper) obj2;
                Lv3dViewerUiModel lv3dViewerUiModel = Lv3dViewerComposableKt.f58587a;
                ((DisposableEffectScope) obj).getClass();
                final Lifecycle f13561b3 = ((LifecycleOwner) ((MutableState) obj3).getF10755b()).getF13561b();
                f13561b3.a(lifecycleEventObserver2);
                return new DisposableEffectResult() { // from class: com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerComposableKt$Internal3dComponent$lambda$10$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        Lv3dViewerHelper lv3dViewerHelper2 = lv3dViewerHelper;
                        ModelViewer modelViewer = lv3dViewerHelper2.r;
                        lv3dViewerHelper2.q.removeFrameCallback(lv3dViewerHelper2.l0);
                        lv3dViewerHelper2.I.cancel();
                        ValueAnimator valueAnimator = lv3dViewerHelper2.L;
                        valueAnimator.removeAllListeners();
                        valueAnimator.cancel();
                        FilamentAsset filamentAsset = lv3dViewerHelper2.d0;
                        if (filamentAsset != null && lv3dViewerHelper2.e0 != null) {
                            modelViewer.f58520h.d(filamentAsset.a());
                            AssetLoader assetLoader = lv3dViewerHelper2.e0;
                            if (assetLoader == null) {
                                Intrinsics.h("assetLoader");
                                throw null;
                            }
                            FilamentAsset filamentAsset2 = lv3dViewerHelper2.d0;
                            if (filamentAsset2 == null) {
                                Intrinsics.h("shoeAsset");
                                throw null;
                            }
                            assetLoader.c(filamentAsset2);
                        }
                        MeshResources meshResources = lv3dViewerHelper2.H;
                        if (meshResources != null) {
                            meshResources.a(modelViewer);
                        }
                        lv3dViewerHelper2.H = null;
                        MaterialInstance materialInstance = lv3dViewerHelper2.G;
                        if (materialInstance != null) {
                            modelViewer.f58516b.r(materialInstance);
                        }
                        Material material = lv3dViewerHelper2.F;
                        if (material != null) {
                            modelViewer.f58516b.q(material);
                        }
                        modelViewer.a();
                        f13561b3.d(lifecycleEventObserver2);
                    }
                };
            case 18:
                final LifecycleEventObserver lifecycleEventObserver3 = (LifecycleEventObserver) obj3;
                final ExoPlayer exoPlayer = (ExoPlayer) obj2;
                ((DisposableEffectScope) obj).getClass();
                final Lifecycle f13561b4 = ((LifecycleOwner) ((MutableState) obj4).getF10755b()).getF13561b();
                f13561b4.a(lifecycleEventObserver3);
                return new DisposableEffectResult() { // from class: com.vuitton.android.presentation.compose.LvVideoPlayerKt$LvVideoPlayer$lambda$21$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        exoPlayer.release();
                        f13561b4.d(lifecycleEventObserver3);
                    }
                };
            case 19:
                MainActivityBottomSheetType.ChangeLocaleBottomSheet changeLocaleBottomSheet = new MainActivityBottomSheetType.ChangeLocaleBottomSheet((SwapDispatchUiModel) obj);
                MainActivity.Companion companion = MainActivity.L;
                ((MutableState) obj2).setValue(changeLocaleBottomSheet);
                ((MainActivity) obj4).I().f1();
                ((LVModalBottomSheetState) obj3).e();
                return Unit.f71739a;
            case 20:
                Function2 function3 = (Function2) obj4;
                Function0 function4 = (Function0) obj3;
                Function1 function5 = (Function1) obj2;
                HotContentItemUiModel hotContentItemUiModel = (HotContentItemUiModel) obj;
                hotContentItemUiModel.getClass();
                if (hotContentItemUiModel instanceof HotContentItemUiModel.Order) {
                    HotContentItemUiModel.Order order = (HotContentItemUiModel.Order) hotContentItemUiModel;
                    function3.invoke(order.f50893a, order.f50894b);
                } else if (hotContentItemUiModel instanceof HotContentItemUiModel.StoreAppointment) {
                    function4.mo47invoke();
                } else {
                    if (!(hotContentItemUiModel instanceof HotContentItemUiModel.CareService)) {
                        v40.g();
                        return null;
                    }
                    function5.invoke(((HotContentItemUiModel.CareService) hotContentItemUiModel).f50892a);
                }
                return Unit.f71739a;
            case 21:
                CartItemUiModel cartItemUiModel = (CartItemUiModel) obj4;
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver2, CollectionsKt.K(CollectionsKt.X((String) obj2, CollectionsKt.Y(CollectionsKt.P(cartItemUiModel.f55144a, cartItemUiModel.f55149h), (ArrayList) obj3)), null, null, null, null, 63));
                return Unit.f71739a;
            case 22:
                Context context3 = (Context) obj3;
                ManagedActivityResultLauncher managedActivityResultLauncher2 = (ManagedActivityResultLauncher) obj2;
                CartItemUiModel cartItemUiModel2 = (CartItemUiModel) obj;
                cartItemUiModel2.getClass();
                ((NativeCartViewModel) obj4).W9(new CartTrackingUiModel.GoToProductClick(cartItemUiModel2));
                CustomizationConfigurationUiModel customizationConfigurationUiModel = cartItemUiModel2.B;
                String str4 = cartItemUiModel2.f55144a;
                if (customizationConfigurationUiModel != null) {
                    CustomizationIdUiModel customizationIdUiModel = customizationConfigurationUiModel.f61669c;
                    PdpActivity.D.getClass();
                    intentB = PdpActivity.Companion.c(context3, str4, customizationIdUiModel);
                } else {
                    PdpActivity.D.getClass();
                    intentB = PdpActivity.Companion.b(context3, str4);
                }
                managedActivityResultLauncher2.a(intentB);
                return Unit.f71739a;
            case 23:
                NotificationsPreferencesViewState notificationsPreferencesViewState = (NotificationsPreferencesViewState) obj4;
                Function2 function6 = (Function2) obj3;
                Function0 function7 = (Function0) obj2;
                LazyListScope lazyListScope2 = (LazyListScope) obj;
                lazyListScope2.getClass();
                ComposableSingletons$NotificationPreferencesKt.f59903a.getClass();
                LazyListScope.f(lazyListScope2, null, ComposableSingletons$NotificationPreferencesKt.f59904b, 3);
                for (Map.Entry entry : notificationsPreferencesViewState.f59958a.entrySet()) {
                    LazyListScope.f(lazyListScope2, null, new ComposableLambdaImpl(-954173042, true, new n4(15, (NotificationsPreference) entry.getValue(), notificationsPreferencesViewState, (NotificationPreferenceType) entry.getKey(), function6, function7)), 3);
                }
                return Unit.f71739a;
            case 24:
                Function4 function8 = (Function4) obj4;
                OrderViewState orderViewState = (OrderViewState) obj3;
                OrderStatusUiModel orderStatusUiModel = (OrderStatusUiModel) obj2;
                List list2 = (List) obj;
                list2.getClass();
                function8.g(list2, orderViewState.f60376c, orderViewState.d, orderStatusUiModel != null ? orderStatusUiModel.f60327e : null);
                return Unit.f71739a;
            case 25:
                OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel = (OrderReturnOrExchangeViewModel) obj4;
                NavHostController navHostController = (NavHostController) obj3;
                String str5 = (String) obj;
                str5.getClass();
                OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel = ((OrderReturnOrExchangeViewState) ((State) obj2).getF10755b()).l;
                if (orderReturnOrExchangeItemUiModel == null || (transactionItemUiModel = orderReturnOrExchangeItemUiModel.f60302a) == null) {
                    str = null;
                } else {
                    str = transactionItemUiModel.g;
                    SkuIdUiModel.f61763c.getClass();
                    SkuIdUiModel.Companion.b(str);
                }
                orderReturnOrExchangeViewModel.c0(new OrderTrackingUiModel.ConfirmVariationClick(CollectionsKt.Q(str != null ? new SkuId(str) : null)));
                orderReturnOrExchangeViewModel.E2();
                NavController.d(navHostController, new ReturnOrExchangeRoute.ExchangeReview(str5), null, 6);
                return Unit.f71739a;
            case 26:
                final OsaLocationFormViewModel osaLocationFormViewModel = (OsaLocationFormViewModel) obj4;
                final OsaReasonsFormViewModel osaReasonsFormViewModel = (OsaReasonsFormViewModel) obj3;
                final OsaContactFormViewModel osaContactFormViewModel = (OsaContactFormViewModel) obj2;
                ((DisposableEffectScope) obj).getClass();
                return new DisposableEffectResult() { // from class: com.vuitton.android.presentation.screen.osa.OsaNavDisplayKt$OsaNavDisplay$lambda$0$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        osaLocationFormViewModel.t();
                        osaReasonsFormViewModel.t();
                        osaContactFormViewModel.t();
                    }
                };
            case 27:
                PaddingValues paddingValues = (PaddingValues) obj3;
                Alignment.Horizontal horizontal = (Alignment.Horizontal) obj2;
                ContentDrawScope contentDrawScope = (ContentDrawScope) obj;
                float f3 = OutlinedTextFieldKt.f7123a;
                long j2 = ((Size) ((Function0) obj4).mo47invoke()).f8822a;
                float fIntBitsToFloat3 = Float.intBitsToFloat((int) (j2 >> 32));
                if (fIntBitsToFloat3 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    float fU1 = contentDrawScope.u1(OutlinedTextFieldKt.f7123a);
                    float fU2 = contentDrawScope.u1(paddingValues.b(contentDrawScope.getLayoutDirection()));
                    float fA = horizontal.a(MathKt.c(fIntBitsToFloat3), MathKt.c((Float.intBitsToFloat((int) (contentDrawScope.b() >> 32)) - fU2) - contentDrawScope.u1(paddingValues.c(contentDrawScope.getLayoutDirection()))), contentDrawScope.getLayoutDirection()) + fU2;
                    float f4 = fIntBitsToFloat3 / 2.0f;
                    float f5 = fA + f4;
                    float f6 = (f5 - f4) - fU1;
                    float f7 = f6 < Call.Parameters.DEFAULT_CAMERA_ZOOM ? 0.0f : f6;
                    float f8 = f5 + f4 + fU1;
                    float fIntBitsToFloat4 = Float.intBitsToFloat((int) (contentDrawScope.b() >> 32));
                    float f9 = f8 > fIntBitsToFloat4 ? fIntBitsToFloat4 : f8;
                    float fIntBitsToFloat5 = Float.intBitsToFloat((int) (BodyPartID.bodyIdMax & j2));
                    float f10 = (-fIntBitsToFloat5) / 2.0f;
                    float f11 = fIntBitsToFloat5 / 2.0f;
                    ClipOp.f8864a.getClass();
                    CanvasDrawScope$drawContext$1 f8996c = contentDrawScope.getF8996c();
                    long jD = f8996c.d();
                    f8996c.a().p();
                    try {
                        f8996c.f9001a.a(f7, f10, f9, f11, 0);
                        contentDrawScope.R1();
                    } finally {
                        pq0.y(f8996c, jD);
                    }
                } else {
                    contentDrawScope.R1();
                }
                return Unit.f71739a;
            case 28:
                List list3 = (List) obj4;
                PLPEntryUiModel pLPEntryUiModel = (PLPEntryUiModel) list3.get(((Integer) obj).intValue());
                ((MutableIntState) obj2).i(list3.indexOf(pLPEntryUiModel));
                ((Function2) obj3).invoke(pLPEntryUiModel, Boolean.FALSE);
                return Unit.f71739a;
            default:
                String str6 = (String) obj3;
                Bitmap bitmap = (Bitmap) obj;
                bitmap.getClass();
                ((Function2) obj4).invoke(bitmap, str6);
                ((Function1) obj2).invoke(str6);
                return Unit.f71739a;
        }
    }

    public /* synthetic */ jx(Object obj, Object obj2, Object obj3, int i2) {
        this.f71488b = i2;
        this.f71489c = obj;
        this.d = obj2;
        this.f71490e = obj3;
    }
}
