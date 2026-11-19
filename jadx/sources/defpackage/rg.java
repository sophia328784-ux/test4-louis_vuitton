package defpackage;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.media3.exoplayer.ExoPlayer;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.screen.authentication.common.components.NativeRegisterPasswordCheckKt;
import com.vuitton.android.presentation.screen.booking.summary.components.SummaryStickyBottomViewKt;
import com.vuitton.android.presentation.screen.booking.summary.models.PreBookSummaryUiModel;
import com.vuitton.android.presentation.screen.booking.summary.models.PreBookViewState;
import com.vuitton.android.presentation.screen.cart.NativeCartViewModel;
import com.vuitton.android.presentation.screen.cart.components.packaging.PackagingComposableKt;
import com.vuitton.android.presentation.screen.cart.components.samples.PerfumeSamplesComposableKt;
import com.vuitton.android.presentation.screen.catalog.components.CatalogCategoryScreenKt;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleVideoViewKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.VideoArticleSectionUiModel;
import com.vuitton.android.presentation.screen.livevideo.LiveVideoActivity;
import com.vuitton.android.presentation.screen.livevideo.LiveVideoViewModel;
import com.vuitton.android.presentation.screen.livevideo.component.LiveVideoComposableKt;
import com.vuitton.android.presentation.screen.livevideo.models.LiveVideoViewState;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderReturnOrExchangeComponentsKt;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeViewState;
import com.vuitton.android.presentation.screen.pdp.components.PdpBottomSheetType;
import com.vuitton.android.presentation.screen.pdp.components.findinstore.FindInStoreHeaderKt;
import com.vuitton.android.presentation.screen.pdp.components.variations.VariationAvailabilityIconOrientation;
import com.vuitton.android.presentation.screen.pdp.components.variations.VariationAvailabilityKt;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTracker;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModelKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.VariationUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductBooleanFilterUiModel;
import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceViewModel;
import com.vuitton.android.presentation.screen.storemode.filters.components.BooleanFilterComponentKt;
import com.vuitton.foundation.model.domain.model.product.universal.VariationType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class rg implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79520b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f79521c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f79522e;

    public /* synthetic */ rg(boolean z, Function0 function0, ReinsuranceViewModel reinsuranceViewModel, int i2) {
        this.f79520b = 9;
        this.f79521c = z;
        this.d = function0;
        this.f79522e = reinsuranceViewModel;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        String str;
        PreBookSummaryUiModel preBookSummaryUiModel;
        PreBookSummaryUiModel preBookSummaryUiModel2;
        PreBookSummaryUiModel preBookSummaryUiModel3;
        List list;
        int i2 = this.f79520b;
        String str2 = null;
        int size = 0;
        size = 0;
        size = 0;
        boolean z = this.f79521c;
        Object obj3 = this.d;
        Object obj4 = this.f79522e;
        switch (i2) {
            case 0:
                PreBookViewState.Success success = (PreBookViewState.Success) obj4;
                Function0 function0 = (Function0) obj3;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    if (success != null && (preBookSummaryUiModel3 = success.f54829a) != null && (list = preBookSummaryUiModel3.f54817a) != null) {
                        size = list.size();
                    }
                    int i3 = size;
                    if (success == null || (preBookSummaryUiModel2 = success.f54829a) == null || (str = preBookSummaryUiModel2.d) == null) {
                        if (success != null && (preBookSummaryUiModel = success.f54829a) != null) {
                            str2 = preBookSummaryUiModel.f54819c;
                        }
                        if (str2 == null) {
                            String str3 = "";
                            str = str3;
                        } else {
                            str = str2;
                        }
                    } else {
                        str = str3;
                    }
                    SummaryStickyBottomViewKt.a(i3, 0, composer, null, str, function0, this.f79521c);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                ((Integer) obj2).getClass();
                BooleanFilterComponentKt.a(z, (ProductBooleanFilterUiModel) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 2:
                ((Integer) obj2).getClass();
                CatalogCategoryScreenKt.b((Modifier) obj4, (AssetUiModel) obj3, z, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 3:
                ((Integer) obj2).getClass();
                FindInStoreHeaderKt.a((Modifier) obj4, z, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 4:
                ((Integer) obj2).getClass();
                ImmersiveArticleVideoViewKt.a((Modifier) obj4, (VideoArticleSectionUiModel) obj3, z, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 5:
                MutableState mutableState = (MutableState) obj4;
                LiveVideoActivity liveVideoActivity = (LiveVideoActivity) obj3;
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                LiveVideoActivity.Companion companion = LiveVideoActivity.q;
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    ExoPlayer exoPlayer = ((LiveVideoViewState) mutableState.getF10755b()).d;
                    if (exoPlayer == null) {
                        composer2.L(760947288);
                        composer2.F();
                    } else {
                        composer2.L(760947289);
                        LiveVideoViewModel liveVideoViewModelB = liveVideoActivity.B();
                        boolean zK = composer2.K(mutableState) | composer2.y(liveVideoActivity);
                        Object objX = composer2.x();
                        if (zK || objX == Composer.Companion.f7939a) {
                            objX = new t30(liveVideoActivity, mutableState, 10);
                            composer2.q(objX);
                        }
                        LiveVideoComposableKt.a(liveVideoViewModelB, exoPlayer, this.f79521c, (Function0) objX, composer2, 0);
                        composer2.F();
                    }
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 6:
                ((Integer) obj2).getClass();
                NativeRegisterPasswordCheckKt.a((Modifier) obj4, (String) obj3, z, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 7:
                ((Integer) obj2).getClass();
                OrderReturnOrExchangeComponentsKt.e(z, (Function1) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 8:
                OrderReturnOrExchangeViewState orderReturnOrExchangeViewState = (OrderReturnOrExchangeViewState) obj4;
                Function0 function1 = (Function0) obj3;
                Composer composer3 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    if (z) {
                        composer3.L(2030232380);
                        composer3.F();
                    } else {
                        composer3.L(2029466463);
                        Modifier modifierI = PaddingKt.i(SizeKt.d(WindowInsetsPadding_androidKt.b(new DTFunctionNameModifier("OrderReturnOrExchangeSelectionScreen$lambda$1")), 1.0f), LVAppDesignKitTheme.l(composer3).f48415c);
                        Alignment.f8582a.getClass();
                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
                        int iHashCode = Long.hashCode(composer3.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer3.n();
                        Modifier modifierC = ComposedModifierKt.c(composer3, modifierI);
                        ComposeUiNode.b0.getClass();
                        Function0 function2 = ComposeUiNode.Companion.f9641b;
                        if (composer3.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer3.B();
                        if (composer3.getS()) {
                            composer3.C(function2);
                        } else {
                            composer3.o();
                        }
                        Updater.c(composer3, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer3, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                        Updater.c(composer3, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(composer3, ComposeUiNode.Companion.f9645h);
                        Updater.c(composer3, modifierC, ComposeUiNode.Companion.d);
                        LVLinkKt.a(null, StringResources_androidKt.c(composer3, orderReturnOrExchangeViewState.f60313i.f60301c ? R.string.exchange_view_policy_link : R.string.return_view_policy_link), false, null, false, function1, composer3, 0, 29);
                        composer3.r();
                        composer3.F();
                    }
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 9:
                ((Integer) obj2).getClass();
                PackagingComposableKt.a(z, (Function0) obj3, (ReinsuranceViewModel) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 10:
                PdpTracker pdpTracker = (PdpTracker) obj4;
                Function1 function3 = (Function1) obj3;
                List list2 = (List) obj;
                VariationType variationType = (VariationType) obj2;
                list2.getClass();
                variationType.getClass();
                List list3 = list2;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(list3, 10));
                Iterator it = list3.iterator();
                while (it.hasNext()) {
                    arrayList.add(new SkuIdUiModel(((VariationUiModel) it.next()).f61767b));
                }
                pdpTracker.getClass();
                pdpTracker.f61585a.a(PdpTrackingUiModelKt.a(new PdpTrackingUiModel.OnMoreVariationClickedEvent(arrayList, variationType), pdpTracker.f61586b, pdpTracker.f61587c, pdpTracker.d));
                function3.invoke(new PdpBottomSheetType.Variations(list2, z));
                return Unit.f71739a;
            case 11:
                ((Integer) obj2).getClass();
                PerfumeSamplesComposableKt.a((NativeCartViewModel) obj4, z, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            default:
                ((Integer) obj2).getClass();
                VariationAvailabilityKt.a((Modifier) obj4, (VariationAvailabilityIconOrientation) obj3, z, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ rg(Object obj, Object obj2, boolean z, int i2) {
        this.f79520b = i2;
        this.f79522e = obj;
        this.d = obj2;
        this.f79521c = z;
    }

    public /* synthetic */ rg(Object obj, boolean z, Function function, int i2, int i3) {
        this.f79520b = i3;
        this.f79522e = obj;
        this.f79521c = z;
        this.d = function;
    }

    public /* synthetic */ rg(boolean z, Object obj, Function0 function0, int i2) {
        this.f79520b = i2;
        this.f79521c = z;
        this.f79522e = obj;
        this.d = function0;
    }

    public /* synthetic */ rg(boolean z, Object obj, Function0 function0, int i2, int i3) {
        this.f79520b = i3;
        this.f79521c = z;
        this.f79522e = obj;
        this.d = function0;
    }

    public /* synthetic */ rg(Modifier modifier, Object obj, boolean z, int i2, int i3) {
        this.f79520b = i3;
        this.f79522e = modifier;
        this.d = obj;
        this.f79521c = z;
    }
}
