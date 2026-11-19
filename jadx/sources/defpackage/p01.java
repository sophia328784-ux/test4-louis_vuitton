package defpackage;

import android.animation.Animator;
import android.app.Activity;
import android.net.Uri;
import android.view.View;
import android.view.Window;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import androidx.camera.camera2.internal.StreamUseCaseUtil;
import androidx.camera.camera2.internal.SupportedSurfaceCombination;
import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextDelegate;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.TextLinkScope;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.foundation.text.selection.TextFieldSelectionManagerKt;
import androidx.compose.material3.SwipeToDismissBoxKt;
import androidx.compose.material3.SwipeToDismissBoxState;
import androidx.compose.material3.SwipeToDismissBoxValue;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.platform.UriHandler;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.LinkInteractionListener;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntSize;
import com.dynatrace.agent.useraction.ActiveUserAction;
import com.dynatrace.agent.useraction.UserActionLifecycle;
import com.dynatrace.agent.useraction.UserActionTimer;
import com.dynatrace.android.agent.util.Utility;
import com.vuitton.android.R;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideTracker;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideTrackingUiModel;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideTrackingUiModelKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import com.vuitton.android.presentation.screen.authentication.base.WebViewAuthClient;
import com.vuitton.android.presentation.screen.authentication.base.WebViewAuthUtilsKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.components.StaggeredGridItemKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeItemUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.screen.ThemeAnimationState;
import com.vuitton.android.presentation.screen.catalog.thematicplp.tracking.ThematicPlpTrackingUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyLegalConsentUiModel;
import com.vuitton.android.presentation.screen.search.models.SearchMatchUiModel;
import com.vuitton.android.presentation.screen.search.models.SuggestionItemUiModel;
import com.vuitton.android.presentation.screen.spotlight.SpotlightActivity;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightHotspotsKt;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightTrackingUiModel;
import com.vuitton.android.presentation.screen.storemode.components.StoreModeWelcomeComposableKt;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeViewState;
import com.vuitton.android.presentation.screen.story.StoryActivity;
import com.vuitton.android.presentation.screen.story.models.StoryCtaUiModel;
import com.vuitton.android.presentation.screen.story.models.StoryViewState;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouScreenKt;
import com.vuitton.android.presentation.screen.thankyou.models.CheckoutConfirmationDetailUiModel;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.Job;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class p01 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78719b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f78720c;
    public final /* synthetic */ Object d;

    public /* synthetic */ p01(TextLinkScope textLinkScope, AnnotatedString.Range range, UriHandler uriHandler) {
        this.f78719b = 13;
        this.f78720c = range;
        this.d = uriHandler;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        long jFloatToRawIntBits;
        long j2;
        TextLayoutResultProxy textLayoutResultProxyD;
        LegacyTextFieldState legacyTextFieldState;
        TextDelegate textDelegate;
        AnnotatedString annotatedString;
        LinkInteractionListener linkInteractionListener;
        Uri url;
        int i2 = this.f78719b;
        z = false;
        boolean z = false;
        string = null;
        String string = null;
        Object obj = this.d;
        Object obj2 = this.f78720c;
        switch (i2) {
            case 0:
                final SpotlightActivity spotlightActivity = (SpotlightActivity) obj2;
                View view = (View) obj;
                SpotlightActivity.Companion companion = SpotlightActivity.r;
                Window window = spotlightActivity.getWindow();
                if (window != null) {
                    window.setBackgroundDrawableResource(R.color.black);
                }
                view.animate().alpha(Call.Parameters.DEFAULT_CAMERA_ZOOM).setDuration(500L).setListener(new Animator.AnimatorListener() { // from class: com.vuitton.android.presentation.screen.spotlight.SpotlightActivity$exitWithFade$1
                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationCancel(Animator animator) {
                        animator.getClass();
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        animator.getClass();
                        Activity activity = spotlightActivity;
                        activity.finish();
                        activity.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationRepeat(Animator animator) {
                        animator.getClass();
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationStart(Animator animator) {
                        animator.getClass();
                    }
                });
                spotlightActivity.H().X9(SpotlightTrackingUiModel.OnScreenClosedEvent.f64675a);
                return Unit.f71739a;
            case 1:
                MutableState mutableState = (MutableState) obj;
                float f2 = SpotlightHotspotsKt.f64588a;
                int size = ((List) obj2).size();
                ArrayList arrayList = new ArrayList(size);
                for (int i3 = 0; i3 < size; i3++) {
                    arrayList.add(Boolean.FALSE);
                }
                mutableState.setValue(arrayList);
                return Unit.f71739a;
            case 2:
                float f3 = StaggeredGridItemKt.f55396a;
                ((Function2) obj2).invoke(((ThemeItemUiModel) obj).f55432a, Boolean.TRUE);
                return Unit.f71739a;
            case 3:
                Function0 function0 = (Function0) obj;
                if (((StoreModeViewState) obj2).g) {
                    function0.mo47invoke();
                }
                return Unit.f71739a;
            case 4:
                State state = (State) obj;
                float f4 = StoreModeWelcomeComposableKt.f64839a;
                if (((Boolean) ((MutableState) obj2).getF10755b()).booleanValue() && ((Dp) state.getF10755b()).f11006b <= 110.0f) {
                    z = true;
                }
                return Boolean.valueOf(z);
            case 5:
                StoryActivity storyActivity = (StoryActivity) obj2;
                StoryActivity.Companion companion2 = StoryActivity.t;
                storyActivity.H(((StoryViewState) ((MutableState) obj).getF10755b()).f65173a ? 1629 : null);
                return Unit.f71739a;
            case 6:
                ((MutableState) obj).setValue(Boolean.valueOf(((StoryViewState) obj2).f65178h));
                return Unit.f71739a;
            case 7:
                ((Function1) obj2).invoke(((StoryCtaUiModel) obj).f65165b);
                return Unit.f71739a;
            case 8:
                ((Function1) obj2).invoke(((SearchMatchUiModel) obj).f64255a);
                return Unit.f71739a;
            case 9:
                ((Function1) obj2).invoke((SuggestionItemUiModel) obj);
                return Unit.f71739a;
            case 10:
                return Boolean.valueOf(StreamUseCaseUtil.a(((SupportedSurfaceCombination) obj2).m, (List) obj));
            case 11:
                float f5 = SwipeToDismissBoxKt.f7342a;
                return new SwipeToDismissBoxState((SwipeToDismissBoxValue) obj2, (Function1) obj);
            case 12:
                TextFieldSelectionManager textFieldSelectionManager = (TextFieldSelectionManager) obj2;
                long j3 = ((IntSize) ((MutableState) obj).getF10755b()).f11021a;
                Offset offsetJ = textFieldSelectionManager.j();
                if (offsetJ != null) {
                    long j4 = offsetJ.f8808a;
                    AnnotatedString annotatedStringN = textFieldSelectionManager.n();
                    if (annotatedStringN == null || annotatedStringN.f10420c.length() == 0) {
                        Offset.f8806b.getClass();
                        jFloatToRawIntBits = Offset.d;
                    } else {
                        Handle handle = (Handle) ((SnapshotMutableStateImpl) textFieldSelectionManager.s).getF10755b();
                        int i4 = handle == null ? -1 : TextFieldSelectionManagerKt.WhenMappings.f6494a[handle.ordinal()];
                        if (i4 != -1) {
                            if (i4 == 1 || i4 == 2) {
                                long j5 = textFieldSelectionManager.o().f10841b;
                                TextRange.Companion companion3 = TextRange.f10564b;
                                j2 = j5 >> 32;
                            } else {
                                if (i4 != 3) {
                                    v40.g();
                                    return null;
                                }
                                long j6 = textFieldSelectionManager.o().f10841b;
                                TextRange.Companion companion4 = TextRange.f10564b;
                                j2 = j6 & BodyPartID.bodyIdMax;
                            }
                            int i5 = (int) j2;
                            LegacyTextFieldState legacyTextFieldState2 = textFieldSelectionManager.d;
                            if (legacyTextFieldState2 == null || (textLayoutResultProxyD = legacyTextFieldState2.d()) == null || (legacyTextFieldState = textFieldSelectionManager.d) == null || (textDelegate = legacyTextFieldState.f5925a) == null || (annotatedString = textDelegate.f5950a) == null) {
                                Offset.f8806b.getClass();
                                jFloatToRawIntBits = Offset.d;
                            } else {
                                int iD = RangesKt.d(textFieldSelectionManager.f6455b.b(i5), 0, annotatedString.f10420c.length());
                                float fIntBitsToFloat = Float.intBitsToFloat((int) (textLayoutResultProxyD.d(j4) >> 32));
                                TextLayoutResult textLayoutResult = textLayoutResultProxyD.f6011a;
                                MultiParagraph multiParagraph = textLayoutResult.f10553b;
                                int iD2 = multiParagraph.d(iD);
                                float f6 = textLayoutResult.f(iD2);
                                float fG = textLayoutResult.g(iD2);
                                float fC = RangesKt.c(fIntBitsToFloat, Math.min(f6, fG), Math.max(f6, fG));
                                IntSize.f11020b.getClass();
                                if (IntSize.b(j3, 0L) || Math.abs(fIntBitsToFloat - fC) <= ((int) (j3 >> 32)) / 2) {
                                    float f7 = multiParagraph.f(iD2);
                                    jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fC)) << 32) | (((long) Float.floatToRawIntBits(((multiParagraph.b(iD2) - f7) / 2.0f) + f7)) & BodyPartID.bodyIdMax);
                                } else {
                                    Offset.f8806b.getClass();
                                    jFloatToRawIntBits = Offset.d;
                                }
                            }
                        } else {
                            Offset.f8806b.getClass();
                            jFloatToRawIntBits = Offset.d;
                        }
                    }
                } else {
                    Offset.f8806b.getClass();
                    jFloatToRawIntBits = Offset.d;
                }
                return new Offset(jFloatToRawIntBits);
            case 13:
                UriHandler uriHandler = (UriHandler) obj;
                LinkAnnotation linkAnnotation = (LinkAnnotation) ((AnnotatedString.Range) obj2).f10428a;
                if (linkAnnotation instanceof LinkAnnotation.Url) {
                    LinkInteractionListener linkInteractionListener2 = ((LinkAnnotation.Url) linkAnnotation).f10460c;
                    if (linkInteractionListener2 != null) {
                        linkInteractionListener2.a(linkAnnotation);
                    } else {
                        try {
                            uriHandler.a(((LinkAnnotation.Url) linkAnnotation).f10458a);
                            break;
                        } catch (IllegalArgumentException unused) {
                        }
                    }
                } else if ((linkAnnotation instanceof LinkAnnotation.Clickable) && (linkInteractionListener = ((LinkAnnotation.Clickable) linkAnnotation).f10457c) != null) {
                    linkInteractionListener.a(linkAnnotation);
                }
                return Unit.f71739a;
            case 14:
                float f8 = ThankYouScreenKt.f65243a;
                ((Function1) obj2).invoke(((CheckoutConfirmationDetailUiModel) obj).r);
                return Unit.f71739a;
            case 15:
                ((ThematicPlpViewModel) obj2).w9(ThematicPlpTrackingUiModel.ChangeThemeButtonClickedEvent.f55522a);
                ((MutableState) obj).setValue(ThemeAnimationState.OverlayOpen.f55497a);
                return Unit.f71739a;
            case 16:
                ((Function1) obj2).invoke((ThemeUiModel) obj);
                return Unit.f71739a;
            case 17:
                ((Function1) obj2).invoke(((AudioGuideUiModel.TrackUiModel) obj).f53218a);
                return Unit.f71739a;
            case 18:
                AudioGuideTracker audioGuideTracker = (AudioGuideTracker) obj2;
                String str = ((EditorialModuleUiModel.CarouselMUiModel) ((EditorialModuleUiModel) obj)).f50825a;
                audioGuideTracker.getClass();
                str.getClass();
                audioGuideTracker.f52976a.a(AudioGuideTrackingUiModelKt.a(new AudioGuideTrackingUiModel.OnSwipeCarouselEvent(str)));
                return Unit.f71739a;
            case 19:
                UserActionLifecycle userActionLifecycle = (UserActionLifecycle) obj2;
                ActiveUserAction activeUserAction = (ActiveUserAction) obj;
                ActiveUserAction activeUserAction2 = userActionLifecycle.f27089h;
                if (activeUserAction2 == null || activeUserAction2 != activeUserAction) {
                    StringBuilder sb = new StringBuilder("end delay fired for stale UA (instanceId=");
                    sb.append(activeUserAction != null ? activeUserAction.f27052a : null);
                    sb.append("); active is now ");
                    sb.append(activeUserAction2 != null ? activeUserAction2.f27052a : null);
                    sb.append(", ignoring");
                    Utility.b(sb.toString());
                    return Unit.f71739a;
                }
                Utility.b("end delay fired: retiring UA (instanceId=" + activeUserAction2.f27052a + ')');
                userActionLifecycle.h(ActiveUserAction.CompleteReason.COMPLETED, userActionLifecycle.f27085b.a(), null);
                UserActionTimer userActionTimer = userActionLifecycle.f27084a;
                userActionTimer.getClass();
                Utility.b("cancelling max duration timer");
                Job job = userActionTimer.f27099e;
                if (job != null) {
                    job.cancel(null);
                }
                userActionTimer.f27099e = null;
                return Unit.f71739a;
            case 20:
                UserActionTimer userActionTimer2 = (UserActionTimer) obj2;
                i51 i51Var = (i51) obj;
                Utility.b("max duration timer fired");
                Job job2 = userActionTimer2.d;
                if (job2 != null) {
                    job2.cancel(null);
                }
                userActionTimer2.d = null;
                i51Var.mo47invoke();
                return Unit.f71739a;
            case 21:
                ((UserActionTimer) obj2).f27098c = null;
                ((i51) obj).mo47invoke();
                return Unit.f71739a;
            case 22:
                ((Function1) obj2).invoke((BeautyLegalConsentUiModel) obj);
                return Unit.f71739a;
            case 23:
                WebResourceError webResourceError = (WebResourceError) obj2;
                WebResourceRequest webResourceRequest = (WebResourceRequest) obj;
                int i6 = WebViewAuthClient.f53459f;
                Integer numValueOf = webResourceError != null ? Integer.valueOf(webResourceError.getErrorCode()) : null;
                CharSequence description = webResourceError != null ? webResourceError.getDescription() : null;
                if (webResourceRequest != null && (url = webResourceRequest.getUrl()) != null) {
                    string = url.toString();
                }
                return numValueOf + " " + ((Object) description) + " on " + WebViewAuthUtilsKt.c(string);
            default:
                int i7 = WebViewAuthClient.f53459f;
                return "HTTP " + ((WebResourceResponse) obj2).getStatusCode() + " on " + WebViewAuthUtilsKt.c(((WebResourceRequest) obj).getUrl().toString());
        }
    }

    public /* synthetic */ p01(Object obj, Object obj2, int i2) {
        this.f78719b = i2;
        this.f78720c = obj;
        this.d = obj2;
    }
}
