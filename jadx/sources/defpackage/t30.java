package defpackage;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.material3.SheetState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NextFrameEndCallbackQueue;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.navigation.NavController;
import androidx.navigation.NavHostController;
import com.dynatrace.agent.OneAgentEventDispatcher;
import com.dynatrace.agent.common.connectivity.NetworkConnectivityCheckerImpl;
import com.dynatrace.agent.common.connectivity.NetworkConnectivityCheckerImpl$registerNetworkCallbackFlow$1$networkCallback$1;
import com.dynatrace.agent.events.enrichment.CachedMetricsSupplier;
import com.dynatrace.agent.metrics.SessionInformationMetrics;
import com.dynatrace.agent.storage.preference.MetricsData;
import com.kizitonwose.calendar.core.CalendarDay;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.applink.AppLinkTrackingUiModel;
import com.vuitton.android.presentation.compose.components.LVAvatarKt;
import com.vuitton.android.presentation.compose.components.LVCalendarKt;
import com.vuitton.android.presentation.extensions.ActivityExtKt;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.redirectlink.LinkEffect;
import com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModel;
import com.vuitton.android.presentation.screen.account.editavatar.models.AvatarItemUiModel;
import com.vuitton.android.presentation.screen.account.lvpass.LVPassActivity;
import com.vuitton.android.presentation.screen.account.lvpass.QRCodeViewModel;
import com.vuitton.android.presentation.screen.authentication.AuthenticationActivity;
import com.vuitton.android.presentation.screen.authentication.landing.AccountActivationLandingActivity;
import com.vuitton.android.presentation.screen.authentication.login.NativeLoginFragment;
import com.vuitton.android.presentation.screen.authentication.login.models.NativeLoginViewState;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterViewState;
import com.vuitton.android.presentation.screen.cart.NativeCartRoute;
import com.vuitton.android.presentation.screen.cart.NativeCartViewModel;
import com.vuitton.android.presentation.screen.cart.components.bottomsheets.NativeCartBottomSheetScreen;
import com.vuitton.android.presentation.screen.cart.models.AddToWishlistRequest;
import com.vuitton.android.presentation.screen.cart.models.CartItemUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartTrackingUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSlideUiModel;
import com.vuitton.android.presentation.screen.livevideo.LiveVideoActivity;
import com.vuitton.android.presentation.screen.livevideo.models.LiveVideoViewState;
import com.vuitton.android.presentation.screen.main.MainActivity;
import com.vuitton.android.presentation.screen.main.MainActivityRouter;
import com.vuitton.android.presentation.screen.main.MainActivityViewModel;
import com.vuitton.android.presentation.screen.onboarding.OnboardingActivity;
import com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes;
import com.vuitton.android.presentation.screen.options.legaltext.LegalTextViewModel;
import com.vuitton.android.presentation.screen.options.models.OptionsTrackingUiModel;
import com.vuitton.android.presentation.screen.options.optoutprivacymenu.OptOutPrivacyMenuViewModel;
import com.vuitton.android.presentation.screen.options.optoutprivacymenu.models.OptOutPrivacyMenuTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.ModelSizeVariationUiModel;
import com.vuitton.android.presentation.screen.privacy.PrivacyActivity;
import com.vuitton.android.presentation.screen.search.models.TrendingItemUiModel;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonNames;
import kotlinx.serialization.json.JsonNamingStrategy;
import kotlinx.serialization.json.internal.DescriptorSchemaCache;
import kotlinx.serialization.json.internal.JsonNamesMapKt;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class t30 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79956b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f79957c;
    public final /* synthetic */ Object d;

    public /* synthetic */ t30(Object obj, Object obj2, int i2) {
        this.f79956b = i2;
        this.f79957c = obj;
        this.d = obj2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        String strA;
        String[] strArrNames;
        switch (this.f79956b) {
            case 0:
                ((Function1) this.f79957c).invoke(((ImmersiveArticleSlideUiModel) this.d).f58713e);
                return Unit.f71739a;
            case 1:
                ((Function1) this.f79957c).invoke(((Pair) this.d).f71706c);
                return Unit.f71739a;
            case 2:
                SerialDescriptor serialDescriptor = (SerialDescriptor) this.f79957c;
                Json json = (Json) this.d;
                DescriptorSchemaCache.Key key = JsonNamesMapKt.f75787a;
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                boolean z = json.f75716a.n && Intrinsics.c(serialDescriptor.getF75548b(), SerialKind.ENUM.f75563a);
                JsonNamingStrategy jsonNamingStrategyF = JsonNamesMapKt.f(serialDescriptor, json);
                int iD = serialDescriptor.getF75661c();
                for (int i2 = 0; i2 < iD; i2++) {
                    List listG = serialDescriptor.g(i2);
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : listG) {
                        if (obj instanceof JsonNames) {
                            arrayList.add(obj);
                        }
                    }
                    JsonNames jsonNames = (JsonNames) CollectionsKt.j0(arrayList);
                    if (jsonNames != null && (strArrNames = jsonNames.names()) != null) {
                        for (String lowerCase : strArrNames) {
                            if (z) {
                                lowerCase = lowerCase.toLowerCase(Locale.ROOT);
                                lowerCase.getClass();
                            }
                            JsonNamesMapKt.a(linkedHashMap, serialDescriptor, lowerCase, i2);
                        }
                    }
                    if (z) {
                        strA = serialDescriptor.f(i2).toLowerCase(Locale.ROOT);
                        strA.getClass();
                    } else if (jsonNamingStrategyF != null) {
                        serialDescriptor.f(i2);
                        strA = jsonNamingStrategyF.a();
                    } else {
                        strA = null;
                    }
                    if (strA != null) {
                        JsonNamesMapKt.a(linkedHashMap, serialDescriptor, strA, i2);
                    }
                }
                return linkedHashMap.isEmpty() ? MapsKt.c() : linkedHashMap;
            case 3:
                SerialDescriptor serialDescriptor2 = (SerialDescriptor) this.f79957c;
                JsonNamingStrategy jsonNamingStrategy = (JsonNamingStrategy) this.d;
                DescriptorSchemaCache.Key key2 = JsonNamesMapKt.f75787a;
                int iD2 = serialDescriptor2.getF75661c();
                String[] strArr = new String[iD2];
                for (int i3 = 0; i3 < iD2; i3++) {
                    serialDescriptor2.f(i3);
                    strArr[i3] = jsonNamingStrategy.a();
                }
                return strArr;
            case 4:
                Function1 function1 = (Function1) this.f79957c;
                AvatarItemUiModel avatarItemUiModel = (AvatarItemUiModel) this.d;
                float f2 = LVAvatarKt.f50959a;
                if (function1 != null) {
                    function1.invoke(avatarItemUiModel.f52326a);
                }
                return Unit.f71739a;
            case 5:
                Function1 function2 = (Function1) this.f79957c;
                CalendarDay calendarDay = (CalendarDay) this.d;
                float f3 = LVCalendarKt.f50961a;
                function2.invoke(calendarDay);
                return Unit.f71739a;
            case 6:
                return new LVModalBottomSheetState((SheetState) this.f79957c, (CoroutineScope) this.d, false, 4, null);
            case 7:
                LVPassActivity lVPassActivity = (LVPassActivity) this.f79957c;
                Context context = (Context) this.d;
                LVPassActivity.Companion companion = LVPassActivity.s;
                ((QRCodeViewModel) lVPassActivity.q.getF71699b()).Q7(context);
                return Unit.f71739a;
            case 8:
                Context context2 = (Context) this.f79957c;
                String str = (String) this.d;
                AppCompatActivity appCompatActivityB = ContextExtKt.b(context2);
                if (appCompatActivityB != null) {
                    ActivityExtKt.j(appCompatActivityB, str, null, 6);
                }
                return Unit.f71739a;
            case 9:
                LegalTextViewModel legalTextViewModel = (LegalTextViewModel) this.f79957c;
                Function0 function0 = (Function0) this.d;
                legalTextViewModel.U0(OptionsTrackingUiModel.ClosePopInClickEvent.f59851a);
                function0.mo47invoke();
                return Unit.f71739a;
            case 10:
                LiveVideoActivity liveVideoActivity = (LiveVideoActivity) this.f79957c;
                MutableState mutableState = (MutableState) this.d;
                LiveVideoActivity.Companion companion2 = LiveVideoActivity.q;
                ExoPlayer exoPlayer = ((LiveVideoViewState) mutableState.getF10755b()).d;
                if (exoPlayer != null) {
                    exoPlayer.release();
                }
                liveVideoActivity.setRequestedOrientation(1);
                liveVideoActivity.finish();
                return Unit.f71739a;
            case 11:
                Function1 function3 = (Function1) this.f79957c;
                ExoPlayer exoPlayer2 = (ExoPlayer) this.d;
                if (function3 != null) {
                    function3.invoke(Long.valueOf(exoPlayer2.getCurrentPosition()));
                }
                return Unit.f71739a;
            case 12:
                MainActivity mainActivity = (MainActivity) this.f79957c;
                MutableState mutableState2 = (MutableState) this.d;
                MainActivity.Companion companion3 = MainActivity.L;
                mainActivity.J().q();
                LinkEffect.Dialog.AlreadySignedIn alreadySignedIn = (LinkEffect.Dialog.AlreadySignedIn) mutableState2.getF10755b();
                if (alreadySignedIn instanceof LinkEffect.Dialog.AlreadySignedIn.ForAccountActivation) {
                    LinkEffect.Dialog.AlreadySignedIn.ForAccountActivation forAccountActivation = (LinkEffect.Dialog.AlreadySignedIn.ForAccountActivation) alreadySignedIn;
                    String str2 = forAccountActivation.f51959a;
                    if (forAccountActivation.f51960b) {
                        AccountActivationLandingActivity.p.getClass();
                        Intent intent = new Intent(mainActivity, (Class<?>) AccountActivationLandingActivity.class);
                        intent.putExtra("EXTRA_CID", str2);
                        mainActivity.startActivity(intent);
                    } else {
                        AuthenticationActivity.Companion companion4 = AuthenticationActivity.u;
                        AuthenticationActivity.Routes routes = AuthenticationActivity.Routes.REGISTER_WITH_PREFILLED_EMAIL;
                        TrackingAuthOrigin trackingAuthOrigin = TrackingAuthOrigin.ONBOARDING;
                        companion4.getClass();
                        mainActivity.startActivity(AuthenticationActivity.Companion.c(mainActivity, routes, str2, trackingAuthOrigin));
                    }
                } else if (alreadySignedIn instanceof LinkEffect.Dialog.AlreadySignedIn.ForLogin) {
                    MainActivityRouter mainActivityRouter = mainActivity.E;
                    if (mainActivityRouter == null) {
                        Intrinsics.h("mainActivityRouter");
                        throw null;
                    }
                    mainActivityRouter.a(mainActivity, mainActivity.H, new LinkEffect.Navigation.Direct.FromDeeplink.ToLoginWithRedirection(null));
                } else if (alreadySignedIn != null) {
                    v40.g();
                    return null;
                }
                return Unit.f71739a;
            case 13:
                MainActivityViewModel mainActivityViewModel = (MainActivityViewModel) this.f79957c;
                LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) this.d;
                mainActivityViewModel.k8();
                mainActivityViewModel.gb(AppLinkTrackingUiModel.SkipChangeLocationClickedEvent.f50543a);
                lVModalBottomSheetState.b(new k40(28));
                return Unit.f71739a;
            case 14:
                MainActivityViewModel mainActivityViewModel2 = (MainActivityViewModel) this.f79957c;
                MutableState mutableState3 = (MutableState) this.d;
                mainActivityViewModel2.f0();
                mutableState3.setValue(Boolean.TRUE);
                return Unit.f71739a;
            case 15:
                ((Function1) this.f79957c).invoke((ModelSizeVariationUiModel) this.d);
                return Unit.f71739a;
            case 16:
                ((NativeCartViewModel) this.f79957c).vb(false, ((AddToWishlistRequest) this.d).f55131b);
                return Unit.f71739a;
            case 17:
                ((Function3) this.f79957c).A(NativeCartBottomSheetScreen.BottomSheetDisclaimer.f55059a, (CartItemUiModel) this.d, null);
                return Unit.f71739a;
            case 18:
                NativeCartViewModel nativeCartViewModel = (NativeCartViewModel) this.f79957c;
                NavHostController navHostController = (NavHostController) this.d;
                nativeCartViewModel.W9(CartTrackingUiModel.SamplesSectionClick.f55173a);
                NavController.d(navHostController, NativeCartRoute.PerfumeSamples.INSTANCE, null, 6);
                return Unit.f71739a;
            case 19:
                NavHostController navHostController2 = (NavHostController) this.f79957c;
                NativeLoginFragment nativeLoginFragment = (NativeLoginFragment) this.d;
                NativeLoginFragment.Companion companion5 = NativeLoginFragment.A;
                if (!navHostController2.e()) {
                    FragmentExtKt.b(nativeLoginFragment);
                }
                return Unit.f71739a;
            case 20:
                ((Function1) this.f79957c).invoke(((NativeLoginViewState) this.d).f53692a.f53689a);
                return Unit.f71739a;
            case 21:
                AddressAutocompleteViewModel addressAutocompleteViewModel = (AddressAutocompleteViewModel) this.f79957c;
                NavHostController navHostController3 = (NavHostController) this.d;
                addressAutocompleteViewModel.n0();
                navHostController3.e();
                return Unit.f71739a;
            case 22:
                ((Function1) this.f79957c).invoke(((NativeRegisterViewState) this.d).f54029a.f53951a);
                return Unit.f71739a;
            case 23:
                NetworkConnectivityCheckerImpl networkConnectivityCheckerImpl = (NetworkConnectivityCheckerImpl) this.f79957c;
                NetworkConnectivityCheckerImpl$registerNetworkCallbackFlow$1$networkCallback$1 networkConnectivityCheckerImpl$registerNetworkCallbackFlow$1$networkCallback$1 = (NetworkConnectivityCheckerImpl$registerNetworkCallbackFlow$1$networkCallback$1) this.d;
                ConnectivityManager connectivityManager = networkConnectivityCheckerImpl.f26502b;
                if (connectivityManager != null) {
                    connectivityManager.unregisterNetworkCallback(networkConnectivityCheckerImpl$registerNetworkCallbackFlow$1$networkCallback$1);
                }
                return Unit.f71739a;
            case 24:
                NextFrameEndCallbackQueue nextFrameEndCallbackQueue = (NextFrameEndCallbackQueue) this.f79957c;
                Function0 function4 = (Function0) this.d;
                if (nextFrameEndCallbackQueue.f8042a.get() == 0) {
                    function4.mo47invoke();
                }
                return Unit.f71739a;
            case 25:
                ((Function1) this.f79957c).invoke(((TrendingItemUiModel) this.d).f64288a);
                return Unit.f71739a;
            case 26:
                return SerialDescriptorsKt.e((String) this.f79957c, StructureKind.OBJECT.f75567a, new SerialDescriptor[0], new tb0((ObjectSerializer) this.d, 15));
            case 27:
                LVModalBottomSheetState lVModalBottomSheetState2 = (LVModalBottomSheetState) this.f79957c;
                NavHostController navHostController4 = (NavHostController) this.d;
                OnboardingActivity.Companion companion6 = OnboardingActivity.t;
                lVModalBottomSheetState2.b(new k40(28));
                NavController.d(navHostController4, OnboardingRoutes.Login.INSTANCE, null, 6);
                return Unit.f71739a;
            case 28:
                OneAgentEventDispatcher oneAgentEventDispatcher = (OneAgentEventDispatcher) this.f79957c;
                SessionInformationMetrics sessionInformationMetrics = (SessionInformationMetrics) this.d;
                MetricsData metricsData = oneAgentEventDispatcher.d.f26871h;
                SessionInformationMetrics.DataCollectionLevel dataCollectionLevel = sessionInformationMetrics.f26887f;
                metricsData.getClass();
                dataCollectionLevel.getClass();
                return CollectionsKt.O(new CachedMetricsSupplier(metricsData, dataCollectionLevel));
            default:
                OptOutPrivacyMenuViewModel optOutPrivacyMenuViewModel = (OptOutPrivacyMenuViewModel) this.f79957c;
                Context context3 = (Context) this.d;
                optOutPrivacyMenuViewModel.H2(OptOutPrivacyMenuTrackingUiModel.OnCcpaChoiceEvent.f59976a);
                AppCompatActivity appCompatActivityB2 = ContextExtKt.b(context3);
                if (appCompatActivityB2 != null) {
                    PrivacyActivity.s.getClass();
                    appCompatActivityB2.startActivity(PrivacyActivity.Companion.a(context3, null, false));
                }
                return Unit.f71739a;
        }
    }
}
