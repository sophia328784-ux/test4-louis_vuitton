package defpackage;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.activity.result.ActivityResult;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.foundation.FocusableNode;
import androidx.compose.foundation.interaction.FocusInteraction;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.ExposedDropdownMenu_androidKt$SoftKeyboardListener$1$1$listener$1;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Dp;
import com.google.android.gms.location.LocationSettingsResponse;
import com.lp.ble.entity.LPBluetoothDevice;
import com.sightcall.gpslocation.datasource.GpsGmsDatasourceImpl;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationLink;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.common.ScreenOrigin;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleCardTypeUiModel;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.common.editorial.models.LiveInfoUiModel;
import com.vuitton.android.presentation.common.editorial.models.TitlesUiModel;
import com.vuitton.android.presentation.compose.KeyboardState;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.PlaceAutocompleteUiModel;
import com.vuitton.android.presentation.screen.account.editavatar.EditAvatarScreenKt$EditAvatarScreen$lambda$2$0$0$$inlined$items$default$1;
import com.vuitton.android.presentation.screen.account.editavatar.components.AvatarSectionItemKt;
import com.vuitton.android.presentation.screen.account.editavatar.models.AvatarSectionUiModel;
import com.vuitton.android.presentation.screen.account.editavatar.models.EditAvatarViewState;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTracker;
import com.vuitton.android.presentation.screen.connectivity.faq.FaqView;
import com.vuitton.android.presentation.screen.connectivity.faq.FaqViewModel;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.bledevicelist.LVBluetoothDeviceAdapter;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldTypeUiModel;
import com.vuitton.android.presentation.screen.exclusivesales.components.ExclusiveSalesComposableKt$ExclusiveSalesScreen$lambda$2$0$0$$inlined$items$default$1;
import com.vuitton.android.presentation.screen.exclusivesales.models.ExclusiveSalesCategoryUiModel;
import com.vuitton.android.presentation.screen.exclusivesales.models.ExclusiveSalesViewState;
import com.vuitton.android.presentation.screen.feed.FeedDestinations;
import com.vuitton.android.presentation.screen.feed.FeedDestinationsKt;
import com.vuitton.android.presentation.screen.feed.FeedViewModel;
import com.vuitton.android.presentation.screen.feed.models.CalendarEventData;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import com.vuitton.android.presentation.screen.filter.model.FilterParams;
import com.vuitton.android.presentation.screen.filter.model.FilterType;
import com.vuitton.android.presentation.screen.filter.quickaccess.FiltersOverlayActivity;
import com.vuitton.android.presentation.screen.filter.quickaccess.FiltersOverlayViewModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.FilterOverlayViewState;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersTrackingUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleProductDisplayStyleUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSlideUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ProductsArticleSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.VideoCtaArticleSectionUiModel;
import com.vuitton.android.presentation.screen.livevideo.models.LiveVideoStatusUiModel;
import com.vuitton.android.presentation.screen.pdp.FindInStoreViewModel;
import com.vuitton.android.presentation.screen.pdp.components.findinstore.FindInStorePlaceKt;
import com.vuitton.android.presentation.screen.pdp.models.FindInStoreViewState;
import com.vuitton.android.presentation.screen.pdp.models.tracking.FindInStoreTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.VariationUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductBooleanFilterUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFiltersUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductListOptionUiModel;
import com.vuitton.android.presentation.utils.AccessibilityUtils;
import java.time.Instant;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.android.HandlerContext;
import kotlinx.coroutines.flow.StateFlow;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class gv implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69494b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f69495c;
    public final /* synthetic */ Object d;

    public /* synthetic */ gv(Object obj, Object obj2, int i2) {
        this.f69494b = i2;
        this.f69495c = obj;
        this.d = obj2;
    }

    /* JADX WARN: Code duplicated, block: B:75:0x0271  */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String strK;
        Instant instant;
        ProductListOptionUiModel productListOptionUiModel;
        ProductFiltersUiModel productFiltersUiModel;
        List list;
        ProductBooleanFilterUiModel productBooleanFilterUiModel;
        String str;
        int i2 = this.f69494b;
        boolean z = false;
        String strH = null;
        Object obj2 = null;
        Object obj3 = this.d;
        Object obj4 = this.f69495c;
        switch (i2) {
            case 0:
                Function1 function1 = (Function1) obj4;
                FormFieldGenericUiModel formFieldGenericUiModel = (FormFieldGenericUiModel) obj3;
                if (((Boolean) obj).booleanValue()) {
                    function1.invoke(((FormFieldUiModel) formFieldGenericUiModel).d);
                }
                return Unit.f71739a;
            case 1:
                final EditAvatarViewState editAvatarViewState = (EditAvatarViewState) obj3;
                final Function1 function2 = (Function1) obj4;
                LazyListScope lazyListScope = (LazyListScope) obj;
                lazyListScope.getClass();
                final List list2 = ((EditAvatarViewState.Success) editAvatarViewState).f52336a;
                final iv ivVar = new iv(7);
                final EditAvatarScreenKt$EditAvatarScreen$lambda$2$0$0$$inlined$items$default$1 editAvatarScreenKt$EditAvatarScreen$lambda$2$0$0$$inlined$items$default$1 = new Function1() { // from class: com.vuitton.android.presentation.screen.account.editavatar.EditAvatarScreenKt$EditAvatarScreen$lambda$2$0$0$$inlined$items$default$1
                    @Override // kotlin.jvm.functions.Function1
                    public final /* bridge */ /* synthetic */ Object invoke(Object obj5) {
                        return null;
                    }
                };
                lazyListScope.h(list2.size(), new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.account.editavatar.EditAvatarScreenKt$EditAvatarScreen$lambda$2$0$0$$inlined$items$default$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj5) {
                        return ivVar.invoke(list2.get(((Number) obj5).intValue()));
                    }
                }, new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.account.editavatar.EditAvatarScreenKt$EditAvatarScreen$lambda$2$0$0$$inlined$items$default$3
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj5) {
                        return editAvatarScreenKt$EditAvatarScreen$lambda$2$0$0$$inlined$items$default$1.invoke(list2.get(((Number) obj5).intValue()));
                    }
                }, new ComposableLambdaImpl(802480018, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.account.editavatar.EditAvatarScreenKt$EditAvatarScreen$lambda$2$0$0$$inlined$items$default$4
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj5, Object obj6, Object obj7, Object obj8) {
                        int i3;
                        LazyItemScope lazyItemScope = (LazyItemScope) obj5;
                        int iIntValue = ((Number) obj6).intValue();
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
                            AvatarSectionUiModel avatarSectionUiModel = (AvatarSectionUiModel) list2.get(iIntValue);
                            composer.L(1636861845);
                            AvatarSectionItemKt.a(null, avatarSectionUiModel, ((EditAvatarViewState.Success) editAvatarViewState).f52338c, function2, composer, 0);
                            composer.F();
                        } else {
                            composer.D();
                        }
                        return Unit.f71739a;
                    }
                }));
                return Unit.f71739a;
            case 2:
                ((Function1) obj4).invoke(((FormFieldTypeUiModel.EnumBasedFormField) obj3).getF57513b().get(((Integer) obj).intValue()));
                return Unit.f71739a;
            case 3:
                final Function1 function3 = (Function1) obj4;
                LazyListScope lazyListScope2 = (LazyListScope) obj;
                lazyListScope2.getClass();
                final List list3 = ((ExclusiveSalesViewState) obj3).f57572b;
                final ExclusiveSalesComposableKt$ExclusiveSalesScreen$lambda$2$0$0$$inlined$items$default$1 exclusiveSalesComposableKt$ExclusiveSalesScreen$lambda$2$0$0$$inlined$items$default$1 = new Function1() { // from class: com.vuitton.android.presentation.screen.exclusivesales.components.ExclusiveSalesComposableKt$ExclusiveSalesScreen$lambda$2$0$0$$inlined$items$default$1
                    @Override // kotlin.jvm.functions.Function1
                    public final /* bridge */ /* synthetic */ Object invoke(Object obj5) {
                        return null;
                    }
                };
                lazyListScope2.h(list3.size(), null, new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.exclusivesales.components.ExclusiveSalesComposableKt$ExclusiveSalesScreen$lambda$2$0$0$$inlined$items$default$3
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj5) {
                        return exclusiveSalesComposableKt$ExclusiveSalesScreen$lambda$2$0$0$$inlined$items$default$1.invoke(list3.get(((Number) obj5).intValue()));
                    }
                }, new ComposableLambdaImpl(802480018, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.exclusivesales.components.ExclusiveSalesComposableKt$ExclusiveSalesScreen$lambda$2$0$0$$inlined$items$default$4
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj5, Object obj6, Object obj7, Object obj8) {
                        int i3;
                        LazyItemScope lazyItemScope = (LazyItemScope) obj5;
                        int iIntValue = ((Number) obj6).intValue();
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
                            final ExclusiveSalesCategoryUiModel exclusiveSalesCategoryUiModel = (ExclusiveSalesCategoryUiModel) list3.get(iIntValue);
                            composer.L(-1225260382);
                            final Function1 function4 = function3;
                            boolean zK = composer.K(function4) | composer.K(exclusiveSalesCategoryUiModel);
                            Object objX = composer.x();
                            if (zK || objX == Composer.Companion.f7939a) {
                                objX = new Function0<Unit>() { // from class: com.vuitton.android.presentation.screen.exclusivesales.components.ExclusiveSalesComposableKt$ExclusiveSalesScreen$3$1$1$1$1$1
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        function4.invoke(exclusiveSalesCategoryUiModel.f57563a);
                                        return Unit.f71739a;
                                    }
                                };
                                composer.q(objX);
                            }
                            ExclusiveSalesCardKt.a(exclusiveSalesCategoryUiModel, (Function0) objX, composer, 0);
                            composer.F();
                        } else {
                            composer.D();
                        }
                        return Unit.f71739a;
                    }
                }));
                return Unit.f71739a;
            case 4:
                final ExposedDropdownMenu_androidKt$SoftKeyboardListener$1$1$listener$1 exposedDropdownMenu_androidKt$SoftKeyboardListener$1$1$listener$1 = new ExposedDropdownMenu_androidKt$SoftKeyboardListener$1$1$listener$1((View) obj4, (Function0) obj3);
                return new DisposableEffectResult() { // from class: androidx.compose.material3.ExposedDropdownMenu_androidKt$SoftKeyboardListener$lambda$5$lambda$4$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        ExposedDropdownMenu_androidKt$SoftKeyboardListener$1$1$listener$1 exposedDropdownMenu_androidKt$SoftKeyboardListener$1$1$listener$2 = exposedDropdownMenu_androidKt$SoftKeyboardListener$1$1$listener$1;
                        boolean z2 = exposedDropdownMenu_androidKt$SoftKeyboardListener$1$1$listener$2.f6952b;
                        View view = exposedDropdownMenu_androidKt$SoftKeyboardListener$1$1$listener$2.f6953c;
                        if (z2) {
                            view.getViewTreeObserver().removeOnGlobalLayoutListener(exposedDropdownMenu_androidKt$SoftKeyboardListener$1$1$listener$2);
                            exposedDropdownMenu_androidKt$SoftKeyboardListener$1$1$listener$2.f6952b = false;
                        }
                        view.removeOnAttachStateChangeListener(exposedDropdownMenu_androidKt$SoftKeyboardListener$1$1$listener$2);
                    }
                };
            case 5:
                ((FaqView) obj).a(((FaqViewModel) obj4).f55996e, (List) obj3);
                return Unit.f71739a;
            case 6:
                FeedTab feedTab = (FeedTab) obj;
                feedTab.getClass();
                ((MutableState) obj3).setValue(feedTab);
                ((FeedViewModel) obj4).W1(feedTab);
                return Unit.f71739a;
            case 7:
                String str2 = (String) obj;
                str2.getClass();
                ((AICompanionTracker) obj4).a(ScreenOrigin.FEED, str2);
                AppCompatActivity appCompatActivityB = ContextExtKt.b((Context) obj3);
                if (appCompatActivityB != null) {
                    appCompatActivityB.startActivity(FeedDestinationsKt.a(FeedDestinations.ToAICompanionPage.f57588a, appCompatActivityB));
                }
                return Unit.f71739a;
            case 8:
                ((ActivityResult) obj).getClass();
                ((FeedViewModel) obj4).ib((String) ((Ref$ObjectRef) obj3).f71921b);
                return Unit.f71739a;
            case 9:
                String str3 = (String) obj;
                str3.getClass();
                ((Function2) obj4).invoke(((EditorialModuleUiModel) obj3).getF50852a(), str3);
                return Unit.f71739a;
            case 10:
                Context context = (Context) obj3;
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                EditorialModuleUiModel.CardUiModel cardUiModel = (EditorialModuleUiModel.CardUiModel) ((EditorialModuleUiModel) obj4);
                context.getClass();
                EditorialModuleCardTypeUiModel editorialModuleCardTypeUiModel = cardUiModel.g;
                TitlesUiModel titlesUiModel = cardUiModel.f50814b;
                if (editorialModuleCardTypeUiModel instanceof EditorialModuleCardTypeUiModel.Event) {
                    Instant instant2 = ((EditorialModuleCardTypeUiModel.Event) editorialModuleCardTypeUiModel).f50804a;
                    strK = d21.j(CollectionsKt.K(ArraysKt.v(new String[]{titlesUiModel != null ? titlesUiModel.f50880b : null, titlesUiModel != null ? titlesUiModel.f50879a : null}), ", ", null, null, null, 62), instant2 != null ? AccessibilityUtils.b(context, instant2) : null);
                } else if (editorialModuleCardTypeUiModel instanceof EditorialModuleCardTypeUiModel.Live) {
                    StringBuilder sb = new StringBuilder();
                    LiveInfoUiModel liveInfoUiModel = ((EditorialModuleCardTypeUiModel.Live) editorialModuleCardTypeUiModel).f50806a;
                    if (liveInfoUiModel.f50863b == LiveVideoStatusUiModel.LIVE) {
                        sb.append(context.getString(R.string.feed_live_label));
                        sb.append(", ");
                    }
                    sb.append(CollectionsKt.K(ArraysKt.v(new String[]{titlesUiModel != null ? titlesUiModel.f50880b : null, titlesUiModel != null ? titlesUiModel.f50879a : null}), ", ", null, null, null, 62));
                    if (liveInfoUiModel.f50863b == LiveVideoStatusUiModel.LIVE_UPCOMING && (instant = liveInfoUiModel.f50864c) != null) {
                        String strB = AccessibilityUtils.b(context, instant);
                        if (strB.length() > 0) {
                            sb.append(", ");
                            sb.append(strB);
                        }
                    }
                    strK = sb.toString();
                } else {
                    strK = CollectionsKt.K(ArraysKt.v(new String[]{titlesUiModel != null ? titlesUiModel.f50880b : null, titlesUiModel != null ? titlesUiModel.f50879a : null}), ", ", null, null, null, 62);
                }
                SemanticsPropertiesKt.i(semanticsPropertyReceiver, strK);
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver, 0);
                return Unit.f71739a;
            case 11:
                Function1 function4 = (Function1) obj4;
                Instant instant3 = (Instant) obj;
                EditorialModuleUiModel.CardUiModel cardUiModel2 = (EditorialModuleUiModel.CardUiModel) ((EditorialModuleUiModel) obj3);
                String str4 = cardUiModel2.f50813a;
                TitlesUiModel titlesUiModel2 = cardUiModel2.f50814b;
                String str5 = titlesUiModel2 != null ? titlesUiModel2.f50879a : null;
                String str6 = str5 != null ? str5 : "";
                if (instant3 != null) {
                    function4.invoke(new CalendarEventData(str4, str6, instant3));
                    return Unit.f71739a;
                }
                md.n("Required value was null.");
                return null;
            case 12:
                FiltersOverlayActivity filtersOverlayActivity = (FiltersOverlayActivity) obj4;
                String str7 = (String) obj;
                FiltersOverlayActivity.Companion companion = FiltersOverlayActivity.s;
                str7.getClass();
                FiltersOverlayViewModel filtersOverlayViewModelH = filtersOverlayActivity.H();
                Map map = ((FilterOverlayViewState) ((MutableState) obj3).getF10755b()).f58147a;
                if (map != null && (productListOptionUiModel = (ProductListOptionUiModel) map.get(filtersOverlayActivity.I())) != null && (productFiltersUiModel = productListOptionUiModel.f62977b) != null && (list = productFiltersUiModel.f62975c) != null) {
                    for (Object obj5 : list) {
                        if (Intrinsics.c(((ProductBooleanFilterUiModel) obj5).f62956c, str7)) {
                            obj2 = obj5;
                            productBooleanFilterUiModel = (ProductBooleanFilterUiModel) obj2;
                            if (productBooleanFilterUiModel != null) {
                                z = productBooleanFilterUiModel.d;
                            }
                        }
                    }
                    productBooleanFilterUiModel = (ProductBooleanFilterUiModel) obj2;
                    if (productBooleanFilterUiModel != null) {
                        z = productBooleanFilterUiModel.d;
                    }
                }
                filtersOverlayViewModelH.l0(new QuickAccessFiltersTrackingUiModel.HitOnBooleanFilterEvent(true, z, str7));
                filtersOverlayActivity.H().Y0(new FilterParams(str7, null, filtersOverlayActivity.I(), null, FilterType.BOOLEAN, 8, null));
                return Unit.f71739a;
            case 13:
                ((FindInStoreViewModel) obj4).s6(new FindInStoreTrackingUiModel.ChangeAvailabilityFilterEvent((String) obj3, ((Boolean) obj).booleanValue(), null));
                return Unit.f71739a;
            case 14:
                FindInStoreViewModel findInStoreViewModel = (FindInStoreViewModel) obj4;
                PlaceAutocompleteUiModel placeAutocompleteUiModel = (PlaceAutocompleteUiModel) obj;
                placeAutocompleteUiModel.getClass();
                findInStoreViewModel.m1(placeAutocompleteUiModel);
                findInStoreViewModel.b1();
                LVModalBottomSheetState.Companion companion2 = LVModalBottomSheetState.d;
                ((LVModalBottomSheetState) obj3).b(new k40(28));
                return Unit.f71739a;
            case 15:
                final FindInStoreViewState findInStoreViewState = (FindInStoreViewState) obj3;
                final Function1 function5 = (Function1) obj4;
                LazyListScope lazyListScope3 = (LazyListScope) obj;
                lazyListScope3.getClass();
                final List list4 = findInStoreViewState.f61548f;
                lazyListScope3.h(list4.size(), null, new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.pdp.bottomsheet.FindInStoreSearchBottomSheetKt$FindInStoreSearchBottomSheet$lambda$5$2$0$$inlined$itemsIndexed$default$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj6) {
                        list4.get(((Number) obj6).intValue());
                        return null;
                    }
                }, new ComposableLambdaImpl(2039820996, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.pdp.bottomsheet.FindInStoreSearchBottomSheetKt$FindInStoreSearchBottomSheet$lambda$5$2$0$$inlined$itemsIndexed$default$3
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj6, Object obj7, Object obj8, Object obj9) {
                        int i3;
                        LazyItemScope lazyItemScope = (LazyItemScope) obj6;
                        int iIntValue = ((Number) obj7).intValue();
                        Composer composer = (Composer) obj8;
                        int iIntValue2 = ((Number) obj9).intValue();
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
                            final PlaceAutocompleteUiModel placeAutocompleteUiModel2 = (PlaceAutocompleteUiModel) list4.get(iIntValue);
                            composer.L(-965391392);
                            final Function1 function6 = function5;
                            boolean zK = composer.K(function6) | composer.y(placeAutocompleteUiModel2);
                            Object objX = composer.x();
                            if (zK || objX == Composer.Companion.f7939a) {
                                objX = new Function0<Unit>() { // from class: com.vuitton.android.presentation.screen.pdp.bottomsheet.FindInStoreSearchBottomSheetKt$FindInStoreSearchBottomSheet$2$3$1$1$1$1
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        function6.invoke(placeAutocompleteUiModel2);
                                        return Unit.f71739a;
                                    }
                                };
                                composer.q(objX);
                            }
                            FindInStorePlaceKt.a(null, placeAutocompleteUiModel2, (Function0) objX, composer, 0);
                            if (iIntValue < CollectionsKt.F(findInStoreViewState.f61548f)) {
                                composer.L(-965148818);
                                DividerKt.a(PaddingKt.k(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), LVAppDesignKitTheme.d(composer).f48385c, LVAppDesignKitTheme.c(composer).f48361b.q, composer, 0, 0);
                                composer.F();
                            } else {
                                composer.L(-964796534);
                                composer.F();
                            }
                            composer.F();
                        } else {
                            composer.D();
                        }
                        return Unit.f71739a;
                    }
                }));
                return Unit.f71739a;
            case 16:
                FocusableNode.TraverseKey traverseKey = FocusableNode.x;
                ((MutableInteractionSource) obj4).b((FocusInteraction) obj3);
                return Unit.f71739a;
            case 17:
                FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj4;
                Ref$ObjectRef ref$ObjectRef = (Ref$ObjectRef) obj3;
                FormFieldUiModel formFieldUiModel = (FormFieldUiModel) obj;
                FormUiModel.Companion companion3 = FormUiModel.f57485b;
                formFieldUiModel.getClass();
                if (formFieldUiModel.d == formSectionTypeUiModel) {
                    ref$ObjectRef.f71921b = formFieldUiModel;
                }
                return Unit.f71739a;
            case 18:
                Function1 function6 = (Function1) obj4;
                FormFieldUiModel formFieldUiModel2 = (FormFieldUiModel) obj;
                formFieldUiModel2.getClass();
                FormFieldUiModel formFieldUiModelC = ((FormUiModel) ((StateFlow) obj3).getValue()).c(formFieldUiModel2.d);
                if (formFieldUiModelC != null) {
                    function6.invoke(formFieldUiModelC);
                }
                return Unit.f71739a;
            case 19:
                return GpsGmsDatasourceImpl.startGps$lambda$0((GpsGmsDatasourceImpl) obj3, (Function1) obj4, (LocationSettingsResponse) obj);
            case 20:
                ((Boolean) obj).getClass();
                ((Function1) obj4).invoke((VariationUiModel) obj3);
                return Unit.f71739a;
            case 21:
                ((HandlerContext) obj4).f74724b.removeCallbacks((jr) obj3);
                return Unit.f71739a;
            case 22:
                ProductsArticleSectionUiModel productsArticleSectionUiModel = (ProductsArticleSectionUiModel) obj3;
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                ProductsArticleSectionUiModel.ProductInfoUiModel productInfoUiModel = ((ProductsArticleSectionUiModel.ImmersiveProductUiModel) obj4).f58819c;
                if (productInfoUiModel != null) {
                    ImmersiveArticleProductDisplayStyleUiModel immersiveArticleProductDisplayStyleUiModel = productsArticleSectionUiModel.d;
                    immersiveArticleProductDisplayStyleUiModel.getClass();
                    String strConcat = (immersiveArticleProductDisplayStyleUiModel == ImmersiveArticleProductDisplayStyleUiModel.IMAGE_ONLY || (str = productInfoUiModel.f58822c) == null) ? "" : ", ".concat(str);
                    String str8 = productInfoUiModel.f58821b;
                    if (str8 == null) {
                        str8 = "";
                    }
                    strH = tr.h(str8, " ", strConcat);
                }
                SemanticsPropertiesKt.i(semanticsPropertyReceiver2, strH != null ? strH : "");
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver2, 0);
                return Unit.f71739a;
            case 23:
                ((Long) obj).longValue();
                ((Function1) obj4).invoke(((ImmersiveArticleSlideUiModel) obj3).f58713e);
                return Unit.f71739a;
            case 24:
                ((Long) obj).getClass();
                ((Function1) obj4).invoke((VideoCtaArticleSectionUiModel) obj3);
                return Unit.f71739a;
            case 25:
                final InfiniteTransition infiniteTransition = (InfiniteTransition) obj4;
                final InfiniteTransition.TransitionAnimationState transitionAnimationState = (InfiniteTransition.TransitionAnimationState) obj3;
                infiniteTransition.f3877a.b(transitionAnimationState);
                ((SnapshotMutableStateImpl) infiniteTransition.f3878b).setValue(Boolean.TRUE);
                return new DisposableEffectResult() { // from class: androidx.compose.animation.core.InfiniteTransitionKt$animateValue$lambda$2$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        infiniteTransition.f3877a.n(transitionAnimationState);
                    }
                };
            case 26:
                final View view = (View) obj4;
                final MutableState mutableState = (MutableState) obj3;
                ((DisposableEffectScope) obj).getClass();
                final ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: x40
                    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                    public final void onGlobalLayout() {
                        Rect rect = new Rect();
                        View view2 = view;
                        view2.getWindowVisibleDisplayFrame(rect);
                        int height = view2.getRootView().getHeight();
                        mutableState.setValue(((double) (height - rect.bottom)) > ((double) height) * 0.15d ? KeyboardState.Opened : KeyboardState.Closed);
                    }
                };
                view.getViewTreeObserver().addOnGlobalLayoutListener(onGlobalLayoutListener);
                return new DisposableEffectResult() { // from class: com.vuitton.android.presentation.compose.KeyboardStateKt$keyboardAsState$lambda$1$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        view.getViewTreeObserver().removeOnGlobalLayoutListener(onGlobalLayoutListener);
                    }
                };
            case 27:
                int i3 = LVBluetoothDeviceAdapter.ViewHolder.d;
                ((View) obj).getClass();
                ((LVBluetoothDeviceAdapter) obj4).f56642b.invoke((LPBluetoothDevice) obj3);
                return Unit.f71739a;
            case 28:
                DrawScope drawScope = (DrawScope) obj;
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVLinkKt.f48485a;
                drawScope.getClass();
                float fIntBitsToFloat = Float.intBitsToFloat((int) (drawScope.b() >> 32));
                float fIntBitsToFloat2 = Float.intBitsToFloat((int) (drawScope.b() & BodyPartID.bodyIdMax)) - drawScope.u1(((ConfigurationLink) obj4).d);
                long j2 = ((Color) ((MutableState) obj3).getF10755b()).f8872a;
                long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) & BodyPartID.bodyIdMax) | (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) << 32);
                Offset.Companion companion4 = Offset.f8806b;
                long jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) & BodyPartID.bodyIdMax);
                Dp.Companion companion5 = Dp.f11004c;
                float fU1 = drawScope.u1(1.0f);
                Stroke.f9011f.getClass();
                DrawScope.a0.getClass();
                drawScope.b0(j2, jFloatToRawIntBits, jFloatToRawIntBits2, fU1, 0, null, DrawScope.Companion.f9007b);
                return Unit.f71739a;
            default:
                SemanticsPropertyReceiver semanticsPropertyReceiver3 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver3.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver3, AccessibilityUtils.b((Context) obj4, (Instant) obj3));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ gv(Object obj, Function1 function1, int i2) {
        this.f69494b = i2;
        this.d = obj;
        this.f69495c = function1;
    }
}
