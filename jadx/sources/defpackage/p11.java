package defpackage;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.foundation.layout.g;
import androidx.compose.foundation.text.TextFieldScrollerPosition;
import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope;
import androidx.compose.material3.SnackbarData;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.SnackbarVisuals;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.LayoutInfo;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.semantics.LiveRegionMode;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.TextLinkStyles;
import androidx.compose.ui.unit.IntSize;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentKt;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.viewmodel.ViewModelStoreProvider;
import coil3.compose.AsyncImagePainter;
import coil3.compose.internal.UtilsKt;
import com.dynatrace.agent.OneAgentEventDispatcher;
import com.dynatrace.agent.compose.userinteraction.handler.TouchUserInteractionHandler;
import com.dynatrace.agent.compose.userinteraction.utils.UserInteractionUtilsKt;
import com.dynatrace.agent.events.EventContent;
import com.dynatrace.agent.metrics.SessionInformationMetrics;
import com.dynatrace.agent.useraction.UserActionController;
import com.linkplay.core.device.LPDevice;
import com.vuitton.android.R;
import com.vuitton.android.core.platform.serialization.JsonProviderKt;
import com.vuitton.android.presentation.common.editorial.models.CarouselSItemUiModel;
import com.vuitton.android.presentation.databinding.FragmentTrunkSpeakerDetailPageBinding;
import com.vuitton.android.presentation.extensions.FragmentTransactionExtKt;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.authentication.AuthenticationActivity;
import com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel;
import com.vuitton.android.presentation.screen.authentication.models.AuthenticationTrackingUiModel;
import com.vuitton.android.presentation.screen.authentication.register.kisa.WebViewKisaFragment;
import com.vuitton.android.presentation.screen.catalog.thematicplp.screen.OverlayConstants;
import com.vuitton.android.presentation.screen.connectivity.VideoUiModel;
import com.vuitton.android.presentation.screen.connectivity.earphone.models.EarphoneTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.travel.list.TravelListFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail.WifiDeviceDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist.WifiDeviceListFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.LVTrunkSpotifyHelper;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkGeneralHelper;
import com.vuitton.android.presentation.screen.connectivity.tutorial.TutorialFragment;
import com.vuitton.android.presentation.screen.connectivity.tutorial.TutorialViewModel;
import com.vuitton.android.presentation.screen.connectivity.watch.WatchActivityRouter;
import com.vuitton.android.presentation.screen.connectivity.watch.models.WatchTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.watch.models.WatchTrackingUiModelKt;
import com.vuitton.android.presentation.screen.connectivity.watch.settings.WatchSettingsView;
import com.vuitton.android.presentation.screen.connectivity.watchface.WatchFacePresentationUiModel;
import com.vuitton.android.presentation.screen.connectivity.watchface.WatchfacePresentationFragment;
import com.vuitton.android.presentation.screen.connectivity.watchface.WatchfacePresentationPagerFragment;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationType;
import com.vuitton.android.presentation.screen.webview.WebViewFragment;
import com.vuitton.android.presentation.screen.webview.WebViewUiModel;
import com.vuitton.foundation.model.domain.model.account.consent.KisaConsents;
import com.vuitton.foundation.model.domain.model.connectivity.travel.Travel;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.TripleSerializer;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class p11 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78729b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f78730c;

    public /* synthetic */ p11(Object obj, int i2) {
        this.f78729b = i2;
        this.f78730c = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) throws JSONException {
        String str;
        SnackbarVisuals f7292a;
        VideoUiModel videoUiModel;
        int i2 = this.f78729b;
        Object obj2 = this.f78730c;
        switch (i2) {
            case 0:
                ((j1) obj2).invoke(Integer.valueOf((int) (((IntSize) obj).f11021a & BodyPartID.bodyIdMax)));
                return Unit.f71739a;
            case 1:
                AnimationScope animationScope = (AnimationScope) obj;
                ((g) obj2).invoke(((SnapshotMutableStateImpl) animationScope.f3813e).getF10755b(), Float.valueOf(((AnimationVector1D) animationScope.f3814f).f3821a));
                return Unit.f71739a;
            case 2:
                Drawable drawable = (Drawable) obj2;
                DrawScope drawScope = (DrawScope) obj;
                Canvas canvasA = drawScope.getF8996c().a();
                drawable.setBounds(0, 0, (int) Float.intBitsToFloat((int) (drawScope.b() >> 32)), (int) Float.intBitsToFloat((int) (BodyPartID.bodyIdMax & drawScope.b())));
                drawable.draw(AndroidCanvas_androidKt.a(canvasA));
                return Unit.f71739a;
            case 3:
                ((Function1) obj).invoke((TextContextMenuBuilderScope) obj2);
                return Unit.f71739a;
            case 4:
                TextFieldScrollerPosition textFieldScrollerPosition = (TextFieldScrollerPosition) obj2;
                float fFloatValue = ((Float) obj).floatValue();
                MutableFloatState mutableFloatState = textFieldScrollerPosition.f6000a;
                SnapshotMutableFloatStateImpl snapshotMutableFloatStateImpl = (SnapshotMutableFloatStateImpl) mutableFloatState;
                float fA = snapshotMutableFloatStateImpl.a() + fFloatValue;
                SnapshotMutableFloatStateImpl snapshotMutableFloatStateImpl2 = (SnapshotMutableFloatStateImpl) textFieldScrollerPosition.f6001b;
                if (fA > snapshotMutableFloatStateImpl2.a()) {
                    fFloatValue = snapshotMutableFloatStateImpl2.a() - snapshotMutableFloatStateImpl.a();
                } else if (fA < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    fFloatValue = -snapshotMutableFloatStateImpl.a();
                }
                ((SnapshotMutableFloatStateImpl) mutableFloatState).w(snapshotMutableFloatStateImpl.a() + fFloatValue);
                return Float.valueOf(fFloatValue);
            case 5:
                TextLinkStyles textLinkStyles = (TextLinkStyles) obj2;
                AnnotatedString.Range range = (AnnotatedString.Range) obj;
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = TextKt.f7383a;
                AnnotatedString.Annotation annotation = (AnnotatedString.Annotation) range.f10428a;
                if (annotation instanceof LinkAnnotation.Url) {
                    LinkAnnotation.Url url = (LinkAnnotation.Url) annotation;
                    if (url.f10459b == null) {
                        return AnnotatedString.Range.a(range, new LinkAnnotation.Url(url.f10458a, textLinkStyles, url.f10460c), 0, 14);
                    }
                }
                if (!(annotation instanceof LinkAnnotation.Clickable)) {
                    return range;
                }
                LinkAnnotation.Clickable clickable = (LinkAnnotation.Clickable) annotation;
                return clickable.f10456b == null ? AnnotatedString.Range.a(range, new LinkAnnotation.Clickable(clickable.f10455a, textLinkStyles, clickable.f10457c), 0, 14) : range;
            case 6:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                LiveRegionMode.f10281b.getClass();
                SemanticsPropertiesKt.m(semanticsPropertyReceiver, LiveRegionMode.f10282c);
                SnackbarData snackbarData = (SnackbarData) ((SnapshotMutableStateImpl) ((SnackbarHostState) obj2).f7291b).getF10755b();
                if (snackbarData == null || (f7292a = snackbarData.getF7292a()) == null || (str = f7292a.getF48673a()) == null) {
                    str = new String();
                }
                SemanticsPropertiesKt.i(semanticsPropertyReceiver, str);
                return Unit.f71739a;
            case 7:
                OverlayConstants overlayConstants = (OverlayConstants) obj2;
                ContentDrawScope contentDrawScope = (ContentDrawScope) obj;
                contentDrawScope.getClass();
                contentDrawScope.R1();
                overlayConstants.getClass();
                DrawScope.q1(contentDrawScope, new SolidColor(Color.b(overlayConstants.f55441a, overlayConstants.f55442b), null), 0L, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, 0, 126);
                return Unit.f71739a;
            case 8:
                Rect rect = (Rect) obj2;
                LayoutInfo layoutInfo = (LayoutInfo) obj;
                int i3 = TouchUserInteractionHandler.f26685b;
                layoutInfo.getClass();
                return Boolean.valueOf(UserInteractionUtilsKt.d(layoutInfo) && LayoutCoordinatesKt.b(layoutInfo.w(), true).g(rect));
            case 9:
                TravelListFragment travelListFragment = (TravelListFragment) obj2;
                Travel travel = (Travel) obj;
                TravelListFragment.Companion companion = TravelListFragment.L;
                travel.getClass();
                FragmentActivity activity = travelListFragment.getActivity();
                AppCompatActivity appCompatActivity = activity instanceof AppCompatActivity ? (AppCompatActivity) activity : null;
                if (appCompatActivity != null) {
                    if (travelListFragment.I == null) {
                        Intrinsics.h("watchActivityRouter");
                        throw null;
                    }
                    WatchActivityRouter.b(appCompatActivity, travel);
                }
                return Unit.f71739a;
            case 10:
                TripleSerializer tripleSerializer = (TripleSerializer) obj2;
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder = (ClassSerialDescriptorBuilder) obj;
                classSerialDescriptorBuilder.getClass();
                SerialDescriptor f19850b = tripleSerializer.f75688a.getF19838b();
                EmptyList emptyList = EmptyList.f71768b;
                classSerialDescriptorBuilder.a("first", f19850b, emptyList, false);
                classSerialDescriptorBuilder.a("second", tripleSerializer.f75689b.getF19838b(), emptyList, false);
                classSerialDescriptorBuilder.a("third", tripleSerializer.f75690c.getF19838b(), emptyList, false);
                return Unit.f71739a;
            case 11:
                String str2 = (String) obj;
                TutorialFragment.Companion companion2 = TutorialFragment.I;
                str2.getClass();
                ((TutorialViewModel) ((TutorialFragment) obj2).G.getF71699b()).Pb(new EarphoneTrackingUiModel.TutorialClickScreen(str2));
                return Unit.f71739a;
            case 12:
                CarouselSItemUiModel carouselSItemUiModel = (CarouselSItemUiModel) obj2;
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                String str3 = carouselSItemUiModel.f50797b;
                String str4 = carouselSItemUiModel.f50800f;
                SemanticsPropertiesKt.i(semanticsPropertyReceiver2, str3 + (str4 != null ? ", ".concat(str4) : new String()));
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver2, 0);
                return Unit.f71739a;
            case 13:
                UserActionController userActionController = (UserActionController) obj2;
                EventContent eventContent = (EventContent) obj;
                eventContent.getClass();
                SessionInformationMetrics sessionInformationMetricsA = userActionController.d.a();
                JSONObject jSONObject = eventContent.f26726a;
                JSONObject jSONObject2 = eventContent.f26727b;
                int length = jSONObject.length();
                OneAgentEventDispatcher oneAgentEventDispatcher = userActionController.f27075a;
                if (length > 0) {
                    oneAgentEventDispatcher.e(jSONObject, jSONObject2, sessionInformationMetricsA);
                } else {
                    oneAgentEventDispatcher.d(jSONObject2, sessionInformationMetricsA);
                }
                return Unit.f71739a;
            case 14:
                Painter painter = (Painter) obj2;
                AsyncImagePainter.State state = (AsyncImagePainter.State) obj;
                MeasurePolicy measurePolicy = UtilsKt.f21339a;
                if (state instanceof AsyncImagePainter.State.Loading) {
                    return painter != null ? new AsyncImagePainter.State.Loading(painter) : (AsyncImagePainter.State.Loading) state;
                }
                if (!(state instanceof AsyncImagePainter.State.Error)) {
                    return state;
                }
                AsyncImagePainter.State.Error error = (AsyncImagePainter.State.Error) state;
                Throwable th = error.f21280b.f21611c;
                return error;
            case 15:
                ((ViewModelStoreProvider) obj2).c(obj);
                return Unit.f71739a;
            case 16:
                ((WatchSettingsView) obj).j((Throwable) obj2);
                return Unit.f71739a;
            case 17:
                WatchfacePresentationFragment watchfacePresentationFragment = (WatchfacePresentationFragment) obj2;
                WatchfacePresentationFragment.Companion companion3 = WatchfacePresentationFragment.L;
                ((View) obj).getClass();
                AnalyticsTracker analyticsTracker = watchfacePresentationFragment.K;
                if (analyticsTracker == null) {
                    Intrinsics.h("tracker");
                    throw null;
                }
                WatchFacePresentationUiModel watchFacePresentationUiModel = watchfacePresentationFragment.J;
                analyticsTracker.a(WatchTrackingUiModelKt.a(new WatchTrackingUiModel.HowToGetWatchfaceClickEvent(watchFacePresentationUiModel != null ? watchFacePresentationUiModel.f56811c : null)));
                WatchFacePresentationUiModel watchFacePresentationUiModel2 = watchfacePresentationFragment.J;
                if (watchFacePresentationUiModel2 != null && (videoUiModel = watchFacePresentationUiModel2.f56815i) != null) {
                    watchfacePresentationFragment.P(videoUiModel);
                }
                return Unit.f71739a;
            case 18:
                WatchFacePresentationUiModel watchFacePresentationUiModel3 = (WatchFacePresentationUiModel) obj;
                WatchfacePresentationPagerFragment.Companion companion4 = WatchfacePresentationPagerFragment.K;
                watchFacePresentationUiModel3.getClass();
                ((WatchfacePresentationPagerFragment) obj2).P(watchFacePresentationUiModel3);
                return Unit.f71739a;
            case 19:
                WebViewFragment webViewFragment = (WebViewFragment) obj2;
                WebViewFragment.Companion companion5 = WebViewFragment.n1;
                ((View) obj).getClass();
                String str5 = ((WebViewUiModel) webViewFragment.T().x.getValue()).d;
                if (str5 != null) {
                    if (webViewFragment.I == null) {
                        Intrinsics.h("router");
                        throw null;
                    }
                    FragmentActivity fragmentActivityRequireActivity = webViewFragment.requireActivity();
                    fragmentActivityRequireActivity.getClass();
                    boolean zBooleanValue = ((Boolean) webViewFragment.W.getF71699b()).booleanValue();
                    FragmentTransaction fragmentTransactionD = fragmentActivityRequireActivity.getSupportFragmentManager().d();
                    fragmentTransactionD.n(R.anim.push_left_in, R.anim.push_right_out, R.anim.push_left_in, R.anim.push_right_out);
                    WebViewFragment.Companion companion6 = WebViewFragment.n1;
                    CustomizationType customizationType = CustomizationType.NO_CUSTOMIZATION;
                    companion6.getClass();
                    WebViewFragment webViewFragmentA = WebViewFragment.Companion.a(str5, false, zBooleanValue, false, "", null, "", false, false, customizationType, false);
                    String str6 = WebViewFragment.p1;
                    fragmentTransactionD.i(R.id.fragment_container, webViewFragmentA, str6, 1);
                    fragmentTransactionD.d(str6);
                    FragmentTransactionExtKt.a(fragmentTransactionD, fragmentActivityRequireActivity);
                    fragmentTransactionD.e();
                }
                return Unit.f71739a;
            case 20:
                WebViewKisaFragment webViewKisaFragment = (WebViewKisaFragment) obj2;
                KisaConsents kisaConsents = (KisaConsents) obj;
                WebViewKisaFragment.Companion companion7 = WebViewKisaFragment.O;
                kisaConsents.getClass();
                Bundle bundle = new Bundle();
                bundle.putString("KEY_KISA_CONSENTS", JsonProviderKt.f43520a.c(KisaConsents.INSTANCE.serializer(), kisaConsents));
                FragmentKt.a(webViewKisaFragment, "EXTRA_KISA_CONSENT_RESULT", bundle);
                ViewModelLazy viewModelLazy = webViewKisaFragment.L;
                ((AuthenticationViewModel) viewModelLazy.getF71699b()).I0(new AuthenticationTrackingUiModel.OnConfirmKisaConsentsEvent(webViewKisaFragment.M));
                FragmentActivity fragmentActivityRequireActivity2 = webViewKisaFragment.requireActivity();
                fragmentActivityRequireActivity2.getClass();
                ((AuthenticationActivity) fragmentActivityRequireActivity2).getSupportFragmentManager().V();
                ((AuthenticationViewModel) viewModelLazy.getF71699b()).B9();
                return Unit.f71739a;
            case 21:
                FragmentTrunkSpeakerDetailPageBinding fragmentTrunkSpeakerDetailPageBinding = (FragmentTrunkSpeakerDetailPageBinding) obj2;
                LPDevice lPDevice = (LPDevice) obj;
                WifiDeviceDetailFragment.Companion companion8 = WifiDeviceDetailFragment.N;
                lPDevice.getClass();
                TrunkGeneralHelper trunkGeneralHelper = TrunkGeneralHelper.f56577a;
                if (TrunkGeneralHelper.b(lPDevice) == TrunkGeneralHelper.SpeakerTrunkType.PM) {
                    fragmentTrunkSpeakerDetailPageBinding.f51336k.setVisibility(0);
                    fragmentTrunkSpeakerDetailPageBinding.f51336k.setBatteryLevel(lPDevice.getDeviceStatus().getBatteryPercent());
                } else {
                    fragmentTrunkSpeakerDetailPageBinding.f51336k.setVisibility(8);
                }
                return Unit.f71739a;
            default:
                WifiDeviceListFragment.Companion companion9 = WifiDeviceListFragment.L;
                ((View) obj).getClass();
                LVTrunkSpotifyHelper.b(((WifiDeviceListFragment) obj2).getActivity());
                return Unit.f71739a;
        }
    }
}
