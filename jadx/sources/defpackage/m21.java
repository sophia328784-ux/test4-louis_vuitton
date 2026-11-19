package defpackage;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Canvas;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.arch.core.util.Function;
import androidx.collection.LruCache;
import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionState;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.a;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.gestures.UpdatableAnimationState;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.text.TextLinkScope;
import androidx.compose.material3.internal.TextFieldImplKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.OutlineKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.semantics.CollectionItemInfo;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.font.TypefaceRequest;
import androidx.compose.ui.text.font.TypefaceRequestCache;
import androidx.compose.ui.text.font.TypefaceResult;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.MediatorLiveData;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.ui.CaptionStyleCompat;
import androidx.media3.ui.PlayerControlView;
import androidx.media3.ui.PlayerView;
import androidx.media3.ui.SubtitleView;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.SystemIdInfo;
import androidx.work.impl.model.SystemIdInfoDao_Impl;
import com.sightcall.advancedannotations.domain.drawer.annotation.TextAnnotation;
import com.sightcall.libraries.ui.Views;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationActivity;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.screen.ThemeAnimationState;
import com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModel;
import com.vuitton.android.presentation.screen.connectivity.travel.list.TravelListAdapter;
import com.vuitton.android.presentation.screen.connectivity.tutorial.TutorialAdapter;
import com.vuitton.android.presentation.screen.connectivity.watch.WatchUiModel;
import com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsFragment;
import com.vuitton.android.presentation.screen.connectivity.watch.models.WatchTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.watchface.WatchfacePresentationPagerFragment;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFilterValueUiModel;
import com.vuitton.android.presentation.screen.search.components.ComposableSingletons$TrendingComposableKt;
import com.vuitton.android.presentation.screen.search.models.SearchListState;
import com.vuitton.android.presentation.screen.search.models.TrendingItemUiModel;
import com.vuitton.android.presentation.screen.thankyou.ThankYouActivity;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouScreenKt;
import com.vuitton.android.presentation.screen.thankyou.models.CheckoutConfirmationDetailUiModel;
import com.vuitton.android.presentation.screen.thankyou.models.ThankYouFeedbackUiModel;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleViewModel;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.models.TheLookImmersiveArticleViewState;
import com.vuitton.android.presentation.utils.SemanticUtils;
import com.vuitton.android.presentation.utils.TrackingFrom;
import com.vuitton.foundation.logger.LegacyLogger;
import com.vuitton.foundation.model.domain.model.connectivity.common.Tutorial;
import java.util.ArrayList;
import java.util.List;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class m21 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76153b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f76154c;
    public final /* synthetic */ Object d;

    public /* synthetic */ m21(ProductFilterValueUiModel productFilterValueUiModel, Function2 function2) {
        this.f76153b = 6;
        this.d = productFilterValueUiModel;
        this.f76154c = function2;
    }

    /* JADX WARN: Code duplicated, block: B:120:0x0442  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        TextLayoutResult textLayoutResult;
        final AndroidPath androidPathJ;
        TextLayoutInput textLayoutInput;
        long j2;
        TrackingFrom trackingFrom;
        int i2 = this.f76153b;
        int i3 = 4;
        float fMin = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        switch (i2) {
            case 0:
                AnimationScope animationScope = (AnimationScope) obj;
                ((Function2) this.f76154c).invoke(((SnapshotMutableStateImpl) animationScope.f3813e).getF10755b(), ((TwoWayConverter) this.d).getF4035b().invoke(animationScope.f3814f));
                return Unit.f71739a;
            case 1:
                SystemIdInfoDao_Impl systemIdInfoDao_Impl = (SystemIdInfoDao_Impl) this.f76154c;
                SystemIdInfo systemIdInfo = (SystemIdInfo) this.d;
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                SystemIdInfoDao_Impl.Companion companion = SystemIdInfoDao_Impl.f20496c;
                sQLiteConnection.getClass();
                systemIdInfoDao_Impl.f20498b.c(sQLiteConnection, systemIdInfo);
                return Unit.f71739a;
            case 2:
                return TextAnnotation.content$lambda$0$0((TextAnnotation) this.f76154c, (ViewGroup) this.d, (Canvas) obj);
            case 3:
                Shape shape = (Shape) this.f76154c;
                ColorProducer colorProducer = (ColorProducer) this.d;
                CacheDrawScope cacheDrawScope = (CacheDrawScope) obj;
                float f2 = TextFieldImplKt.f7647a;
                return cacheDrawScope.c(new m21(shape.a(cacheDrawScope.f8706b.b(), cacheDrawScope.f8706b.getLayoutDirection(), cacheDrawScope), colorProducer, i3));
            case 4:
                Outline outline = (Outline) this.f76154c;
                ColorProducer colorProducer2 = (ColorProducer) this.d;
                float f3 = TextFieldImplKt.f7647a;
                OutlineKt.a((DrawScope) obj, outline, colorProducer2.a());
                return Unit.f71739a;
            case 5:
                final MutableState mutableState = (MutableState) this.f76154c;
                final MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) this.d;
                return new DisposableEffectResult() { // from class: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$lambda$0$1$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        MutableState mutableState2 = mutableState;
                        PressInteraction.Press press = (PressInteraction.Press) mutableState2.getF10755b();
                        if (press != null) {
                            PressInteraction.Cancel cancel = new PressInteraction.Cancel(press);
                            MutableInteractionSource mutableInteractionSource2 = mutableInteractionSource;
                            if (mutableInteractionSource2 != null) {
                                mutableInteractionSource2.b(cancel);
                            }
                            mutableState2.setValue(null);
                        }
                    }
                };
            case 6:
                ProductFilterValueUiModel productFilterValueUiModel = (ProductFilterValueUiModel) this.d;
                Function2 function2 = (Function2) this.f76154c;
                ((Boolean) obj).getClass();
                String str = productFilterValueUiModel.d;
                if (str != null) {
                    function2.invoke(productFilterValueUiModel.f62966b, str);
                }
                return Unit.f71739a;
            case 7:
                TextLinkScope textLinkScope = (TextLinkScope) this.f76154c;
                AnnotatedString.Range range = (AnnotatedString.Range) this.d;
                GraphicsLayerScope graphicsLayerScope = (GraphicsLayerScope) obj;
                AnnotatedString annotatedString = textLinkScope.f6015b;
                MutableState mutableState2 = textLinkScope.f6014a;
                TextLayoutResult textLayoutResult2 = (TextLayoutResult) ((SnapshotMutableStateImpl) mutableState2).getF10755b();
                if (Intrinsics.c(annotatedString, (textLayoutResult2 == null || (textLayoutInput = textLayoutResult2.f10552a) == null) ? null : textLayoutInput.f10543a) && (textLayoutResult = (TextLayoutResult) ((SnapshotMutableStateImpl) mutableState2).getF10755b()) != null) {
                    MultiParagraph multiParagraph = textLayoutResult.f10553b;
                    AnnotatedString.Range rangeC = TextLinkScope.c(range, textLayoutResult);
                    if (rangeC == null) {
                        androidPathJ = null;
                    } else {
                        int i4 = rangeC.f10430c;
                        int i5 = rangeC.f10429b;
                        androidPathJ = textLayoutResult.j(i5, i4);
                        Rect rectB = textLayoutResult.b(i5);
                        int i6 = i4 - 1;
                        Rect rectB2 = textLayoutResult.b(i6);
                        if (multiParagraph.d(i5) == multiParagraph.d(i6)) {
                            fMin = Math.min(rectB2.f8811a, rectB.f8811a);
                        }
                        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fMin)) << 32) | (((long) Float.floatToRawIntBits(rectB.f8812b)) & BodyPartID.bodyIdMax);
                        Offset.Companion companion2 = Offset.f8806b;
                        androidPathJ.t(jFloatToRawIntBits ^ (-9223372034707292160L));
                    }
                } else {
                    androidPathJ = null;
                }
                Shape shape2 = androidPathJ != null ? new Shape() { // from class: androidx.compose.foundation.text.TextLinkScope$shapeForRange$1$1
                    @Override // androidx.compose.ui.graphics.Shape
                    public final Outline a(long j3, LayoutDirection layoutDirection, Density density) {
                        return new Outline.Generic(androidPathJ);
                    }
                } : null;
                if (shape2 != null) {
                    graphicsLayerScope.r1(shape2);
                    graphicsLayerScope.o(true);
                }
                return Unit.f71739a;
            case 8:
                List list = (List) this.f76154c;
                List list2 = (List) this.d;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                if (list != null) {
                    int size = list.size();
                    for (int i7 = 0; i7 < size; i7++) {
                        Pair pair = (Pair) list.get(i7);
                        Placeable.PlacementScope.u(placementScope, (Placeable) pair.f71705b, ((IntOffset) pair.f71706c).f11014a);
                    }
                }
                if (list2 != null) {
                    int size2 = list2.size();
                    for (int i8 = 0; i8 < size2; i8++) {
                        Pair pair2 = (Pair) list2.get(i8);
                        Placeable placeable = (Placeable) pair2.f71705b;
                        Function0 function0 = (Function0) pair2.f71706c;
                        if (function0 != null) {
                            j2 = ((IntOffset) function0.mo47invoke()).f11014a;
                        } else {
                            IntOffset.f11012b.getClass();
                            j2 = 0;
                        }
                        Placeable.PlacementScope.u(placementScope, placeable, j2);
                    }
                }
                return Unit.f71739a;
            case 9:
                ThankYouActivity thankYouActivity = (ThankYouActivity) this.f76154c;
                Context context = (Context) this.d;
                String str2 = (String) obj;
                ThankYouActivity.Companion companion3 = ThankYouActivity.q;
                str2.getClass();
                AccountActivationActivity.Companion companion4 = AccountActivationActivity.r;
                AccountActivationActivity.Companion.TrackingOrigin trackingOrigin = AccountActivationActivity.Companion.TrackingOrigin.THANK_YOU_PAGE;
                companion4.getClass();
                thankYouActivity.startActivity(AccountActivationActivity.Companion.a(context, str2, trackingOrigin));
                return Unit.f71739a;
            case 10:
                Function1 function1 = (Function1) this.f76154c;
                ThankYouFeedbackUiModel thankYouFeedbackUiModel = (ThankYouFeedbackUiModel) this.d;
                String str3 = (String) obj;
                str3.getClass();
                function1.invoke(ThankYouFeedbackUiModel.a(thankYouFeedbackUiModel, null, str3, 0, false, 13));
                return Unit.f71739a;
            case 11:
                Context context2 = (Context) this.f76154c;
                CheckoutConfirmationDetailUiModel checkoutConfirmationDetailUiModel = (CheckoutConfirmationDetailUiModel) this.d;
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                float f4 = ThankYouScreenKt.f65243a;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver, SemanticUtils.a(context2, checkoutConfirmationDetailUiModel.f65263k.f65254c.f55159b));
                return Unit.f71739a;
            case 12:
                Function2 function3 = (Function2) this.f76154c;
                TheLookImmersiveArticleViewModel theLookImmersiveArticleViewModel = (TheLookImmersiveArticleViewModel) this.d;
                function3.invoke(((TheLookImmersiveArticleViewState) theLookImmersiveArticleViewModel.getM().getValue()).f65392a, ((TheLookImmersiveArticleViewState) theLookImmersiveArticleViewModel.getM().getValue()).f65395e.get(((Integer) obj).intValue()));
                return Unit.f71739a;
            case 13:
                ThematicPlpViewModel thematicPlpViewModel = (ThematicPlpViewModel) this.f76154c;
                MutableState mutableState3 = (MutableState) this.d;
                ThemeUiModel themeUiModel = (ThemeUiModel) obj;
                if (themeUiModel != null) {
                    thematicPlpViewModel.v7(themeUiModel, (4 & 6) != 0);
                }
                mutableState3.setValue(ThemeAnimationState.Stable.f55498a);
                return Unit.f71739a;
            case 14:
                ((MediatorLiveData) this.f76154c).setValue(((Function) this.d).mo0apply(obj));
                return Unit.f71739a;
            case 15:
                final Transition transition = (Transition) this.f76154c;
                final Transition transition2 = (Transition) this.d;
                transition.f3995j.add(transition2);
                return new DisposableEffectResult() { // from class: androidx.compose.animation.core.TransitionKt$createChildTransitionInternal$lambda$1$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        transition.f3995j.remove(transition2);
                    }
                };
            case 16:
                final Transition transition3 = (Transition) this.f76154c;
                final Transition.DeferredAnimation deferredAnimation = (Transition.DeferredAnimation) this.d;
                return new DisposableEffectResult() { // from class: androidx.compose.animation.core.TransitionKt$createDeferredAnimation$lambda$1$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        Transition.TransitionAnimationState transitionAnimationState;
                        Transition transition4 = transition3;
                        transition4.getClass();
                        Transition.DeferredAnimation.DeferredAnimationData deferredAnimationData = (Transition.DeferredAnimation.DeferredAnimationData) ((SnapshotMutableStateImpl) deferredAnimation.f3999c).getF10755b();
                        if (deferredAnimationData == null || (transitionAnimationState = deferredAnimationData.f4000b) == null) {
                            return;
                        }
                        transition4.f3994i.remove(transitionAnimationState);
                    }
                };
            case 17:
                final TransitionState transitionState = (TransitionState) this.f76154c;
                ((SeekableTransitionState) transitionState).q(new SnapshotStateObserver(new a(Thread.currentThread(), (CoroutineScope) this.d)));
                return new DisposableEffectResult() { // from class: androidx.compose.animation.core.TransitionKt$rememberTransition$lambda$1$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        ((SeekableTransitionState) transitionState).q(null);
                    }
                };
            case 18:
                final Transition transition4 = (Transition) this.f76154c;
                final Transition.TransitionAnimationState transitionAnimationState = (Transition.TransitionAnimationState) this.d;
                transition4.f3994i.add(transitionAnimationState);
                return new DisposableEffectResult() { // from class: androidx.compose.animation.core.TransitionKt$createTransitionAnimation$lambda$1$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        transition4.f3994i.remove(transitionAnimationState);
                    }
                };
            case 19:
                TravelListAdapter travelListAdapter = (TravelListAdapter) this.f76154c;
                TravelListAdapter.FlightViewHolder flightViewHolder = (TravelListAdapter.FlightViewHolder) this.d;
                int i9 = TravelListAdapter.FlightViewHolder.d;
                ((View) obj).getClass();
                Function1 function4 = travelListAdapter.f56430c;
                ArrayList arrayList = travelListAdapter.d;
                int bindingAdapterPosition = flightViewHolder.getBindingAdapterPosition();
                if (travelListAdapter.f56429b) {
                    bindingAdapterPosition--;
                }
                Object obj2 = arrayList.get(bindingAdapterPosition);
                obj2.getClass();
                function4.invoke(obj2);
                return Unit.f71739a;
            case 20:
                TravelListAdapter travelListAdapter2 = (TravelListAdapter) this.f76154c;
                TravelListAdapter.HotelViewHolder hotelViewHolder = (TravelListAdapter.HotelViewHolder) this.d;
                int i10 = TravelListAdapter.HotelViewHolder.d;
                ((View) obj).getClass();
                Function1 function5 = travelListAdapter2.f56430c;
                ArrayList arrayList2 = travelListAdapter2.d;
                int bindingAdapterPosition2 = hotelViewHolder.getBindingAdapterPosition();
                if (travelListAdapter2.f56429b) {
                    bindingAdapterPosition2--;
                }
                Object obj3 = arrayList2.get(bindingAdapterPosition2);
                obj3.getClass();
                function5.invoke(obj3);
                return Unit.f71739a;
            case 21:
                TravelListAdapter travelListAdapter3 = (TravelListAdapter) this.f76154c;
                TravelListAdapter.TrainViewHolder trainViewHolder = (TravelListAdapter.TrainViewHolder) this.d;
                int i11 = TravelListAdapter.TrainViewHolder.d;
                ((View) obj).getClass();
                Function1 function6 = travelListAdapter3.f56430c;
                ArrayList arrayList3 = travelListAdapter3.d;
                int bindingAdapterPosition3 = trainViewHolder.getBindingAdapterPosition();
                if (travelListAdapter3.f56429b) {
                    bindingAdapterPosition3--;
                }
                Object obj4 = arrayList3.get(bindingAdapterPosition3);
                obj4.getClass();
                function6.invoke(obj4);
                return Unit.f71739a;
            case 22:
                SearchListState searchListState = (SearchListState) this.f76154c;
                final Function1 function7 = (Function1) this.d;
                LazyListScope lazyListScope = (LazyListScope) obj;
                lazyListScope.getClass();
                ComposableSingletons$TrendingComposableKt.f64166a.getClass();
                LazyListScope.f(lazyListScope, null, ComposableSingletons$TrendingComposableKt.f64167b, 3);
                if (searchListState instanceof SearchListState.Loading) {
                    LazyListScope.j(lazyListScope, 6, null, null, ComposableSingletons$TrendingComposableKt.f64168c, 6);
                } else if (searchListState instanceof SearchListState.Result) {
                    final List list3 = ((SearchListState.Result) searchListState).f64254b;
                    lazyListScope.h(list3.size(), null, new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.search.components.TrendingComposableKt$TrendingComposable$lambda$0$3$0$$inlined$itemsIndexed$default$2
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj5) {
                            list3.get(((Number) obj5).intValue());
                            return null;
                        }
                    }, new ComposableLambdaImpl(2039820996, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.search.components.TrendingComposableKt$TrendingComposable$lambda$0$3$0$$inlined$itemsIndexed$default$3
                        @Override // kotlin.jvm.functions.Function4
                        public final Object g(Object obj5, Object obj6, Object obj7, Object obj8) {
                            int i12;
                            LazyItemScope lazyItemScope = (LazyItemScope) obj5;
                            final int iIntValue = ((Number) obj6).intValue();
                            Composer composer = (Composer) obj7;
                            int iIntValue2 = ((Number) obj8).intValue();
                            if ((iIntValue2 & 6) == 0) {
                                i12 = (composer.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                            } else {
                                i12 = iIntValue2;
                            }
                            if ((iIntValue2 & 48) == 0) {
                                i12 |= composer.d(iIntValue) ? 32 : 16;
                            }
                            boolean z = true;
                            if (composer.p(i12 & 1, (i12 & 147) != 146)) {
                                OpaqueKey opaqueKey = ComposerKt.f7940a;
                                final TrendingItemUiModel trendingItemUiModel = (TrendingItemUiModel) list3.get(iIntValue);
                                composer.L(1881785859);
                                final Function1 function8 = function7;
                                boolean zK = composer.K(function8) | composer.K(trendingItemUiModel);
                                Object objX = composer.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                if (zK || objX == composer$Companion$Empty$1) {
                                    objX = new Function0<Unit>() { // from class: com.vuitton.android.presentation.screen.search.components.TrendingComposableKt$TrendingComposable$1$4$1$1$1$1
                                        @Override // kotlin.jvm.functions.Function0
                                        /* JADX INFO: renamed from: invoke */
                                        public final Object mo47invoke() {
                                            function8.invoke(trendingItemUiModel.f64288a);
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer.q(objX);
                                }
                                Modifier modifierD = ClickableKt.d(Modifier.Companion.f8607b, false, null, null, (Function0) objX, 15);
                                if ((((i12 & 112) ^ 48) <= 32 || !composer.d(iIntValue)) && (i12 & 48) != 32) {
                                    z = false;
                                }
                                Object objX2 = composer.x();
                                if (z || objX2 == composer$Companion$Empty$1) {
                                    objX2 = new Function1<SemanticsPropertyReceiver, Unit>() { // from class: com.vuitton.android.presentation.screen.search.components.TrendingComposableKt$TrendingComposable$1$4$1$1$2$1
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj9) {
                                            SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj9;
                                            semanticsPropertyReceiver2.getClass();
                                            SemanticsPropertiesKt.g(semanticsPropertyReceiver2, new CollectionItemInfo(iIntValue, 1, 0, 1));
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer.q(objX2);
                                }
                                TrendingComposableKt.b(ModifierExtKt.e(SemanticsModifierKt.b(modifierD, false, (Function1) objX2), "search_TrendingItem_view"), trendingItemUiModel, composer, 0, 0);
                                composer.F();
                            } else {
                                composer.D();
                            }
                            return Unit.f71739a;
                        }
                    }));
                }
                return Unit.f71739a;
            case 23:
                TutorialAdapter tutorialAdapter = (TutorialAdapter) this.f76154c;
                Tutorial tutorial = (Tutorial) this.d;
                int i12 = TutorialAdapter.TutorialHolder.d;
                ((View) obj).getClass();
                int i13 = TutorialAdapter.TutorialHolder.WhenMappings.f56656a[tutorialAdapter.f56651b.ordinal()];
                if (i13 == 1) {
                    tutorialAdapter.d.invoke(tutorial.f67317a);
                    trackingFrom = new TrackingFrom("LVPass/IoT/Earphones/Tutorial/Video", "IoT");
                } else {
                    if (i13 != 2 && i13 != 3) {
                        v40.g();
                        return null;
                    }
                    trackingFrom = new TrackingFrom("LVPass/IoT/Earphones/Tutorial/Video", "IoT");
                }
                if (StringExtKt.b(tutorial.f67318b.f67319a) != null) {
                    tutorialAdapter.f56652c.invoke(tutorial, trackingFrom);
                } else {
                    LegacyLogger.f66205a.c("TutorialVideoMissing", "For " + tutorialAdapter.f56651b + " the video tutorial url is not valid.", null);
                }
                return Unit.f71739a;
            case 24:
                Context context3 = (Context) this.f76154c;
                PagerState pagerState = (PagerState) this.d;
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver2, context3.getString(R.string.alt_no_caption_content) + ", " + context3.getString(R.string.alt_tab, Integer.valueOf(pagerState.k() + 1), Integer.valueOf(pagerState.o())));
                return Unit.f71739a;
            case 25:
                TypefaceRequestCache typefaceRequestCache = (TypefaceRequestCache) this.f76154c;
                TypefaceRequest typefaceRequest = (TypefaceRequest) this.d;
                TypefaceResult typefaceResult = (TypefaceResult) obj;
                synchronized (typefaceRequestCache.f10752a) {
                    try {
                        boolean f10756c = typefaceResult.getF10756c();
                        LruCache lruCache = typefaceRequestCache.f10753b;
                        if (f10756c) {
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return Unit.f71739a;
            case 26:
                UpdatableAnimationState updatableAnimationState = (UpdatableAnimationState) this.f76154c;
                Function1 function8 = (Function1) this.d;
                ((Long) obj).getClass();
                float f5 = updatableAnimationState.f4828e;
                updatableAnimationState.f4828e = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                function8.invoke(Float.valueOf(f5));
                return Unit.f71739a;
            case 27:
                ExoPlayer exoPlayer = (ExoPlayer) this.f76154c;
                MutableState mutableState4 = (MutableState) this.d;
                Context context4 = (Context) obj;
                context4.getClass();
                PlayerView playerView = new PlayerView(context4);
                playerView.setShowNextButton(false);
                playerView.setShowPreviousButton(false);
                playerView.setShowFastForwardButton(false);
                playerView.setShowRewindButton(false);
                PlayerControlView playerControlView = (PlayerControlView) playerView.findViewById(R.id.exo_controller);
                if (playerControlView != null) {
                    playerControlView.setLayerType(1, null);
                }
                playerView.setControllerVisibilityListener(new q3(2, mutableState4));
                SubtitleView subtitleView = playerView.getSubtitleView();
                if (subtitleView != null) {
                    subtitleView.setApplyEmbeddedFontSizes(false);
                    subtitleView.a();
                    subtitleView.setStyle(new CaptionStyleCompat(-1, ContextCompat.getColor(context4, R.color.transparent_background), 0, 0, 0, null));
                }
                playerView.setPlayer(exoPlayer);
                playerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                return playerView;
            case 28:
                return Views.hide$lambda$1((Function2) this.f76154c, (View) this.d, (Animator) obj);
            default:
                WatchDetailsFragment watchDetailsFragment = (WatchDetailsFragment) this.f76154c;
                WatchUiModel watchUiModel = (WatchUiModel) this.d;
                WatchDetailsFragment.Companion companion5 = WatchDetailsFragment.O;
                ((View) obj).getClass();
                watchDetailsFragment.P().D(WatchTrackingUiModel.SeeAllWatchfacesClickEvent.f56744a);
                watchDetailsFragment.Q();
                AppCompatActivity appCompatActivityC = FragmentExtKt.c(watchDetailsFragment);
                int i14 = watchUiModel.f56708j;
                FragmentTransaction fragmentTransactionD = appCompatActivityC.getSupportFragmentManager().d();
                fragmentTransactionD.n(R.anim.push_left_in, R.anim.fade_out, R.anim.no_animation, R.anim.push_right_out);
                WatchfacePresentationPagerFragment.K.getClass();
                WatchfacePresentationPagerFragment watchfacePresentationPagerFragment = new WatchfacePresentationPagerFragment();
                Bundle bundle = new Bundle();
                bundle.putInt("CURRENT_WATCH_VERSION", i14);
                watchfacePresentationPagerFragment.setArguments(bundle);
                String str4 = WatchfacePresentationPagerFragment.M;
                fragmentTransactionD.m(R.id.fragment_container, watchfacePresentationPagerFragment, str4);
                fragmentTransactionD.d(str4);
                fragmentTransactionD.e();
                return Unit.f71739a;
        }
    }

    public /* synthetic */ m21(Object obj, Object obj2, int i2) {
        this.f76153b = i2;
        this.f76154c = obj;
        this.d = obj2;
    }
}
