package defpackage;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.activity.result.ActivityResult;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.foundation.lazy.grid.GridItemSpan;
import androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;
import androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;
import androidx.compose.foundation.lazy.grid.LazyGridSpanLayoutProvider;
import androidx.compose.material3.ModalBottomSheetKt;
import androidx.compose.material3.SheetState;
import androidx.compose.material3.SnackbarData;
import androidx.compose.material3.TopAppBarScrollBehavior;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.State;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.autofill.Autofill;
import androidx.compose.ui.autofill.AutofillNode;
import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.TransformOriginKt;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedbackType;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntSize;
import androidx.core.view.WindowInsetsControllerCompat;
import androidx.hilt.lifecycle.viewmodel.compose.HiltViewModelKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import androidx.navigation.AnimBuilder;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraph;
import androidx.navigation.NavGraphBuilder;
import androidx.navigation.NavHostController;
import androidx.navigation.NavOptions;
import androidx.navigation.NavOptionsBuilder;
import androidx.navigation.Navigator;
import androidx.navigation.PopUpToBuilder;
import androidx.navigation.compose.ComposeNavigator;
import androidx.navigation.compose.NavGraphBuilderKt;
import androidx.navigation.internal.NavBackStackEntryImpl;
import androidx.room.util.SQLiteStatementUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.impl.constraints.ConstraintsState;
import com.dynatrace.agent.events.enrichment.merge.ModifiedJsonMerger;
import com.dynatrace.agent.events.enrichment.sanitation.AttributeRetentionRule;
import com.dynatrace.agent.events.enrichment.sanitation.JsonAttribute;
import com.sightcall.advancedannotations.domain.drawer.annotation.LineAnnotation;
import com.vuitton.android.data.connectivity.lightup.LightUpProductDao_Impl;
import com.vuitton.android.data.connectivity.lightup.LightUpProductEntity;
import com.vuitton.android.data.database.converter.EnumConverter;
import com.vuitton.android.data.repository.LoggerRepositoryTimberImpl;
import com.vuitton.android.designkit.ui.theme.atoms.LVSwitchKt;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVMediumTopBarKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.domain.repository.AnalyticsWrapperRepository;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.screen.authentication.login.NativeLoginFragment;
import com.vuitton.android.presentation.screen.authentication.login.NativeLoginRoute;
import com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModel;
import com.vuitton.android.presentation.screen.authentication.login.components.NativeLoginComposableKt;
import com.vuitton.android.presentation.screen.authentication.login.models.NativeLoginTrackingUiModel;
import com.vuitton.android.presentation.screen.booking.MyExperiencesActivity;
import com.vuitton.android.presentation.screen.cart.NativeCartRoute;
import com.vuitton.android.presentation.screen.cart.NativeCartViewModel;
import com.vuitton.android.presentation.screen.cart.components.bottomsheets.NativeCartBottomSheetScreen;
import com.vuitton.android.presentation.screen.cart.models.CartItemUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartPriceInformationUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartPriceUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartTrackingUiModel;
import com.vuitton.android.presentation.screen.cart.models.NativeCartViewState;
import com.vuitton.android.presentation.screen.dynamicform.model.ext.FormFieldTypeUiModelExtKt;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceUiModel;
import com.vuitton.android.presentation.utils.SemanticUtils;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.cart.GiftOption;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpDeviceType;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.md;
import defpackage.tb0;
import defpackage.x60;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KFunction;
import kotlin.sequences.SequencesKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.ProducerScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class k60 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71575b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f71576c;
    public final /* synthetic */ Object d;

    public /* synthetic */ k60(Object obj, Object obj2, int i2) {
        this.f71575b = i2;
        this.f71576c = obj;
        this.d = obj2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) throws Exception {
        LVLightUpDeviceType lVLightUpDeviceType;
        CartPriceUiModel cartPriceUiModel;
        NavDestination navDestinationC;
        int i2 = this.f71575b;
        z = false;
        boolean z = false;
        z = false;
        z = false;
        z = false;
        boolean z2 = false;
        String str = null;
        Object obj2 = this.d;
        Object obj3 = this.f71576c;
        switch (i2) {
            case 0:
                TopAppBarScrollBehavior topAppBarScrollBehavior = (TopAppBarScrollBehavior) obj3;
                MutableFloatState mutableFloatState = (MutableFloatState) obj2;
                IntSize intSize = (IntSize) obj;
                CubicBezierEasing cubicBezierEasing = LVMediumTopBarKt.f48747a;
                if (topAppBarScrollBehavior == null || topAppBarScrollBehavior.getF6904a().a() == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    mutableFloatState.w((int) (intSize.f11021a & BodyPartID.bodyIdMax));
                }
                return Unit.f71739a;
            case 1:
                ((DisposableEffectScope) obj).getClass();
                final WindowInsetsControllerCompat windowInsetsControllerCompat = new WindowInsetsControllerCompat((Window) obj3, (View) obj2);
                final boolean zB = windowInsetsControllerCompat.b();
                windowInsetsControllerCompat.d(true);
                return new DisposableEffectResult() { // from class: com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt$SetLightNavigationBarsIfNeeded$lambda$0$0$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        windowInsetsControllerCompat.d(zB);
                    }
                };
            case 2:
                LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj3;
                Function0 function0 = (Function0) obj2;
                if (!lVModalBottomSheetState.f48798a.e()) {
                    ((SnapshotMutableStateImpl) lVModalBottomSheetState.f48800c).setValue(Boolean.FALSE);
                    function0.mo47invoke();
                }
                return Unit.f71739a;
            case 3:
                String str2 = (String) obj3;
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVSnackbarKt.f48665a;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver, str2);
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver, 0);
                SemanticsPropertiesKt.e(semanticsPropertyReceiver, str2, new u70((SnackbarData) obj2, 1));
                return Unit.f71739a;
            case 4:
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = LVSwitchKt.f48506a;
                HapticFeedbackType.f9193b.getClass();
                int i3 = PlatformHapticFeedbackType.f9196a;
                ((HapticFeedback) obj3).a(0);
                ((Function1) obj2).invoke(bool);
                return Unit.f71739a;
            case 5:
                LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1 lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1 = (LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1) obj2;
                LazyGridSpanLayoutProvider.LineConfiguration lineConfigurationB = ((LazyGridSpanLayoutProvider) obj3).b(((Integer) obj).intValue());
                int i4 = lineConfigurationB.f5352a;
                List list = lineConfigurationB.f5353b;
                ArrayList arrayList = new ArrayList(list.size());
                int size = list.size();
                int i5 = 0;
                for (int i6 = 0; i6 < size; i6++) {
                    int i7 = (int) ((GridItemSpan) list.get(i6)).f5271a;
                    arrayList.add(new Pair(Integer.valueOf(i4), new Constraints(lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1.a(i5, i7))));
                    i4++;
                    i5 += i7;
                }
                return arrayList;
            case 6:
                LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1 lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$2 = (LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1) obj3;
                LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1 lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1 = (LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1) obj2;
                int iIntValue = ((Integer) obj).intValue();
                LazyGridSpanLayoutProvider lazyGridSpanLayoutProvider = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$2.f5332f;
                int i8 = lazyGridSpanLayoutProvider.f5347i;
                int iE = lazyGridSpanLayoutProvider.e(iIntValue);
                return lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1.d(iIntValue, 0, iE, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1.d, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$2.a(0, iE));
            case 7:
                LightUpProductDao_Impl lightUpProductDao_Impl = (LightUpProductDao_Impl) obj3;
                LVLightUpDeviceType lVLightUpDeviceType2 = (LVLightUpDeviceType) obj2;
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                LightUpProductDao_Impl.Companion companion = LightUpProductDao_Impl.f43564e;
                sQLiteConnection.getClass();
                SQLiteStatement sQLiteStatementT1 = sQLiteConnection.T1("SELECT * FROM LightUp WHERE TYPE = ?");
                try {
                    lightUpProductDao_Impl.f43567c.getClass();
                    lVLightUpDeviceType2.getClass();
                    sQLiteStatementT1.a(1, lVLightUpDeviceType2.getValue());
                    int iC = SQLiteStatementUtil.c(sQLiteStatementT1, "DEVICE_ID");
                    int iC2 = SQLiteStatementUtil.c(sQLiteStatementT1, "TYPE");
                    int iC3 = SQLiteStatementUtil.c(sQLiteStatementT1, "NAME");
                    int iC4 = SQLiteStatementUtil.c(sQLiteStatementT1, "POWER_MODE");
                    int iC5 = SQLiteStatementUtil.c(sQLiteStatementT1, "PRESET_NAME");
                    int iC6 = SQLiteStatementUtil.c(sQLiteStatementT1, "PRESET_IMAGE");
                    int iC7 = SQLiteStatementUtil.c(sQLiteStatementT1, "PRESET_ID");
                    int iC8 = SQLiteStatementUtil.c(sQLiteStatementT1, "DEVICE_TO_STRING");
                    ArrayList arrayList2 = new ArrayList();
                    while (sQLiteStatementT1.Q1()) {
                        String strM1 = sQLiteStatementT1.m1(iC);
                        int i9 = (int) sQLiteStatementT1.getLong(iC2);
                        LVLightUpDeviceType.INSTANCE.getClass();
                        if (i9 == 1) {
                            lVLightUpDeviceType = LVLightUpDeviceType.KEEPALL;
                        } else {
                            if (i9 != 2) {
                                throw new IllegalStateException("Unhandled Light Up product type");
                            }
                            lVLightUpDeviceType = LVLightUpDeviceType.X408PAIR;
                        }
                        arrayList2.add(new LightUpProductEntity(strM1, lVLightUpDeviceType, sQLiteStatementT1.isNull(iC3) ? null : sQLiteStatementT1.m1(iC3), EnumConverter.a((int) sQLiteStatementT1.getLong(iC4)), sQLiteStatementT1.isNull(iC5) ? null : sQLiteStatementT1.m1(iC5), sQLiteStatementT1.isNull(iC6) ? null : sQLiteStatementT1.m1(iC6), sQLiteStatementT1.isNull(iC7) ? null : sQLiteStatementT1.m1(iC7), sQLiteStatementT1.m1(iC8)));
                    }
                    return arrayList2;
                } finally {
                    sQLiteStatementT1.close();
                }
            case 8:
                return LineAnnotation.content$lambda$0$0((LineAnnotation) obj3, (ViewGroup) obj2, (Canvas) obj);
            case 9:
                Hit hit = (Hit) obj;
                int i10 = LoggerRepositoryTimberImpl.d;
                hit.getClass();
                ((AnalyticsWrapperRepository) obj3).b((InAppDispatch) obj2, hit);
                return Unit.f71739a;
            case 10:
                Animatable animatable = (Animatable) obj2;
                GraphicsLayerScope graphicsLayerScope = (GraphicsLayerScope) obj;
                float f2 = ModalBottomSheetKt.f7058a;
                float fA = ((SnapshotMutableFloatStateImpl) ((SheetState) obj3).f7211e.f7523j).a();
                float fIntBitsToFloat = Float.intBitsToFloat((int) (graphicsLayerScope.getS() & BodyPartID.bodyIdMax));
                if (!Float.isNaN(fA) && !Float.isNaN(fIntBitsToFloat) && fIntBitsToFloat != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    float fFloatValue = ((Number) animatable.d()).floatValue();
                    graphicsLayerScope.m(ModalBottomSheetKt.d(graphicsLayerScope, fFloatValue));
                    graphicsLayerScope.x(ModalBottomSheetKt.e(graphicsLayerScope, fFloatValue));
                    graphicsLayerScope.C0(TransformOriginKt.a(0.5f, (fA + fIntBitsToFloat) / fIntBitsToFloat));
                }
                return Unit.f71739a;
            case 11:
                String str3 = (String) obj;
                str3.getClass();
                Object obj4 = ((ModifiedJsonMerger) obj2).f26781b.get(str3);
                obj4.getClass();
                return Boolean.valueOf(((AttributeRetentionRule) obj3).a(new JsonAttribute(str3, obj4)));
            case 12:
                View view = (View) obj3;
                Function1 function1 = (Function1) obj2;
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) obj;
                layoutCoordinates.getClass();
                long jF = LayoutCoordinatesKt.f(layoutCoordinates);
                int iA = (int) (layoutCoordinates.a() & BodyPartID.bodyIdMax);
                int iA2 = (int) (layoutCoordinates.a() >> 32);
                float height = view.getRootView().getHeight();
                float width = view.getRootView().getWidth();
                int i11 = (int) (BodyPartID.bodyIdMax & jF);
                if (Float.intBitsToFloat(i11) < height && Float.intBitsToFloat(i11) + iA > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    int i12 = (int) (jF >> 32);
                    if (Float.intBitsToFloat(i12) < width && Float.intBitsToFloat(i12) + iA2 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        z2 = true;
                    }
                }
                function1.invoke(Boolean.valueOf(z2));
                return Unit.f71739a;
            case 13:
                LayoutCoordinates layoutCoordinates2 = (LayoutCoordinates) obj;
                layoutCoordinates2.getClass();
                ((AutofillNode) obj3).f8644b = LayoutCoordinatesKt.b(layoutCoordinates2, true);
                ((Function0) obj2).mo47invoke();
                return Unit.f71739a;
            case 14:
                Autofill autofill = (Autofill) obj3;
                AutofillNode autofillNode = (AutofillNode) obj2;
                FocusState focusState = (FocusState) obj;
                focusState.getClass();
                if (autofill != null) {
                    if (focusState.a()) {
                        autofill.b(autofillNode);
                    } else {
                        autofill.a(autofillNode);
                    }
                }
                return Unit.f71739a;
            case 15:
                Context context = (Context) obj2;
                ContributionLinkUiModel contributionLinkUiModel = (ContributionLinkUiModel) obj;
                MyExperiencesActivity.Companion companion2 = MyExperiencesActivity.r;
                contributionLinkUiModel.getClass();
                ContributionLinkNavigator contributionLinkNavigator = ((MyExperiencesActivity) obj3).q;
                if (contributionLinkNavigator == null) {
                    Intrinsics.h("contributionLinkNavigator");
                    throw null;
                }
                AppCompatActivity appCompatActivityB = ContextExtKt.b(context);
                appCompatActivityB.getClass();
                ContributionLinkNavigator.a(contributionLinkNavigator, appCompatActivityB, contributionLinkUiModel, null, null, null, 28);
                return Unit.f71739a;
            case 16:
                Context context2 = (Context) obj3;
                CartPriceInformationUiModel cartPriceInformationUiModel = (CartPriceInformationUiModel) obj2;
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                if (cartPriceInformationUiModel != null && (cartPriceUiModel = cartPriceInformationUiModel.f55153a) != null) {
                    str = cartPriceUiModel.f55159b;
                }
                SemanticsPropertiesKt.i(semanticsPropertyReceiver2, SemanticUtils.a(context2, str != null ? str : ""));
                return Unit.f71739a;
            case 17:
                NativeCartViewModel nativeCartViewModel = (NativeCartViewModel) obj3;
                ((ActivityResult) obj).getClass();
                if (!((NativeCartViewState) ((MutableState) obj2).getF10755b()).f55210i.f55203c) {
                    nativeCartViewModel.Za();
                }
                return Unit.f71739a;
            case 18:
                Integer num = (Integer) obj;
                num.getClass();
                ((Function2) obj3).invoke((CartItemUiModel) obj2, num);
                return Unit.f71739a;
            case 19:
                NavHostController navHostController = (NavHostController) obj2;
                GiftOption giftOption = (GiftOption) obj;
                ((NativeCartViewModel) obj3).W9(CartTrackingUiModel.GiftSectionClick.f55168b);
                GiftOption.Message message = giftOption instanceof GiftOption.Message ? (GiftOption.Message) giftOption : null;
                String str4 = message != null ? message.f66977a : null;
                NavController.d(navHostController, new NativeCartRoute.GiftMessage(str4 != null ? str4 : "", giftOption instanceof GiftOption.Blank), null, 6);
                return Unit.f71739a;
            case 20:
                String str5 = (String) obj;
                str5.getClass();
                ((NativeCartViewModel) obj3).W9(CartTrackingUiModel.SignaturePackagingSectionClick.f55176b);
                ((Function1) obj2).invoke(str5);
                return Unit.f71739a;
            case 21:
                ReinsuranceUiModel reinsuranceUiModel = (ReinsuranceUiModel) obj;
                reinsuranceUiModel.getClass();
                ((Function1) obj3).invoke(reinsuranceUiModel);
                ((Function3) obj2).A(NativeCartBottomSheetScreen.BottomSheetReinsurance.f55061a, null, reinsuranceUiModel);
                return Unit.f71739a;
            case 22:
                String str6 = (String) obj;
                str6.getClass();
                ((NativeLoginViewModel) obj3).P6(NativeLoginTrackingUiModel.OnHitForgetPasswordEvent.f53685a);
                ((Function1) obj2).invoke(str6);
                return Unit.f71739a;
            case 23:
                final NavHostController navHostController2 = (NavHostController) obj3;
                final NativeLoginFragment nativeLoginFragment = (NativeLoginFragment) obj2;
                NavGraphBuilder navGraphBuilder = (NavGraphBuilder) obj;
                NativeLoginFragment.Companion companion3 = NativeLoginFragment.A;
                navGraphBuilder.getClass();
                ComposableLambdaImpl composableLambdaImpl = new ComposableLambdaImpl(437315875, true, new Function4() { // from class: com.vuitton.android.presentation.screen.authentication.login.a
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj5, Object obj6, Object obj7, Object obj8) {
                        Composer composer = (Composer) obj7;
                        ((Integer) obj8).getClass();
                        NativeLoginFragment.Companion companion4 = NativeLoginFragment.A;
                        ((AnimatedContentScope) obj5).getClass();
                        ((NavBackStackEntry) obj6).getClass();
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(composer);
                        if (viewModelStoreOwnerA == null) {
                            md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                            return null;
                        }
                        NativeLoginViewModel nativeLoginViewModel = (NativeLoginViewModel) ViewModelKt.a(Reflection.f71922a.b(NativeLoginViewModelImpl.class), viewModelStoreOwnerA, null, HiltViewModelKt.a(viewModelStoreOwnerA, composer), viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, composer);
                        NavHostController navHostController3 = navHostController2;
                        boolean zY = composer.y(navHostController3);
                        Object objX = composer.x();
                        int i13 = 11;
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (zY || objX == composer$Companion$Empty$1) {
                            objX = new tb0(navHostController3, i13);
                            composer.q(objX);
                        }
                        Function1 function2 = (Function1) objX;
                        NativeLoginFragment nativeLoginFragment2 = nativeLoginFragment;
                        boolean zY2 = composer.y(nativeLoginFragment2);
                        Object objX2 = composer.x();
                        if (zY2 || objX2 == composer$Companion$Empty$1) {
                            NativeLoginFragment$onCreateView$1$1$1$1$1$1$2$1 nativeLoginFragment$onCreateView$1$1$1$1$1$1$2$1 = new NativeLoginFragment$onCreateView$1$1$1$1$1$1$2$1(0, nativeLoginFragment2, FragmentExtKt.class, "onNavigateBackPressed", "onNavigateBackPressed(Landroidx/fragment/app/Fragment;)V", 1);
                            composer.q(nativeLoginFragment$onCreateView$1$1$1$1$1$1$2$1);
                            objX2 = nativeLoginFragment$onCreateView$1$1$1$1$1$1$2$1;
                        }
                        Function0 function3 = (Function0) ((KFunction) objX2);
                        boolean zY3 = composer.y(nativeLoginFragment2);
                        Object objX3 = composer.x();
                        if (zY3 || objX3 == composer$Companion$Empty$1) {
                            objX3 = new x60(nativeLoginFragment2, i13);
                            composer.q(objX3);
                        }
                        NativeLoginComposableKt.a(nativeLoginViewModel, function2, function3, (Function0) objX3, composer, 0);
                        return Unit.f71739a;
                    }
                });
                Map mapC = MapsKt.c();
                EmptyList emptyList = EmptyList.f71768b;
                ReflectionFactory reflectionFactory = Reflection.f71922a;
                NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(NativeLoginRoute.Login.class), mapC, emptyList, null, null, null, null, composableLambdaImpl);
                NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(NativeLoginRoute.ForgetPassword.class), MapsKt.c(), emptyList, null, null, null, null, new ComposableLambdaImpl(-65780468, true, new cf(navHostController2, nativeLoginFragment, 8)));
                return Unit.f71739a;
            case 24:
                Ref$BooleanRef ref$BooleanRef = (Ref$BooleanRef) obj3;
                Ref$BooleanRef ref$BooleanRef2 = (Ref$BooleanRef) obj2;
                FormFieldUiModel formFieldUiModel = (FormFieldUiModel) obj;
                formFieldUiModel.getClass();
                boolean zA = FormFieldTypeUiModelExtKt.a(formFieldUiModel.f57496e);
                ref$BooleanRef.f71917b = ref$BooleanRef.f71917b || zA;
                if (ref$BooleanRef2.f71917b && zA) {
                    z = true;
                }
                ref$BooleanRef2.f71917b = z;
                return Unit.f71739a;
            case 25:
                NavDestination navDestination = (NavDestination) obj3;
                NavController navController = (NavController) obj2;
                NavOptionsBuilder navOptionsBuilder = (NavOptionsBuilder) obj;
                boolean z3 = NavController.f18120i;
                navOptionsBuilder.getClass();
                new AnimBuilder();
                NavOptions.Builder builder = navOptionsBuilder.f18191a;
                builder.g = 0;
                builder.f18188h = 0;
                builder.f18189i = -1;
                builder.f18190j = -1;
                if (navDestination instanceof NavGraph) {
                    NavDestination.g.getClass();
                    for (NavDestination navDestination2 : NavDestination.Companion.b(navDestination)) {
                        NavDestination navDestinationI = navController.f18122b.i();
                        if (Intrinsics.c(navDestination2, navDestinationI != null ? navDestinationI.d : null)) {
                        }
                    }
                    if (NavController.f18120i) {
                        NavGraph.Companion companion4 = NavGraph.f18164i;
                        NavGraph navGraphJ = navController.f18122b.j();
                        companion4.getClass();
                        navOptionsBuilder.d = ((NavDestination) SequencesKt.q(SequencesKt.n(navGraphJ, new ag0(11)))).f18152c.f18344e;
                        navOptionsBuilder.f18194e = false;
                        PopUpToBuilder popUpToBuilder = new PopUpToBuilder();
                        popUpToBuilder.f18216b = true;
                        navOptionsBuilder.f18194e = popUpToBuilder.f18215a;
                        navOptionsBuilder.f18195f = true;
                    }
                }
                return Unit.f71739a;
            case 26:
                final State state = (State) obj3;
                final ComposeNavigator composeNavigator = (ComposeNavigator) obj2;
                return new DisposableEffectResult() { // from class: androidx.navigation.compose.NavHostKt$NavHost$lambda$69$lambda$68$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        Iterator it = ((List) state.getF10755b()).iterator();
                        while (it.hasNext()) {
                            composeNavigator.b().b((NavBackStackEntry) it.next());
                        }
                    }
                };
            case 27:
                ((NavHostController) obj3).i((LifecycleOwner) obj2);
                return new DisposableEffectResult() { // from class: androidx.navigation.compose.NavHostKt$NavHost$lambda$48$lambda$47$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                    }
                };
            case 28:
                Navigator navigator = (Navigator) obj3;
                NavOptions navOptions = (NavOptions) obj2;
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
                navBackStackEntry.getClass();
                NavDestination navDestination3 = navBackStackEntry.f18113c;
                NavBackStackEntryImpl navBackStackEntryImpl = navBackStackEntry.f18117i;
                if (navDestination3 == null) {
                    navDestination3 = null;
                }
                if (navDestination3 == null || (navDestinationC = navigator.c(navDestination3, navBackStackEntryImpl.a(), navOptions)) == null) {
                    return null;
                }
                return navDestinationC.equals(navDestination3) ? navBackStackEntry : navigator.b().a(navDestinationC, navDestinationC.f(navBackStackEntryImpl.a()));
            default:
                ((Job) obj3).cancel(null);
                ((ProducerScope) obj2).b((ConstraintsState) obj);
                return Unit.f71739a;
        }
    }
}
