package defpackage;

import android.content.Intent;
import android.os.Bundle;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.ViewModelLazy;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.presentation.screen.authentication.AuthenticationActivity;
import com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel;
import com.vuitton.android.presentation.screen.authentication.models.AuthenticationTrackingUiModel;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.social.components.SocialLoginBottomSheetKt;
import com.vuitton.android.presentation.screen.authentication.social.components.SocialLoginBottomSheetState;
import com.vuitton.android.presentation.screen.authentication.welcome.WelcomeFragment;
import com.vuitton.android.presentation.screen.authentication.welcome.WelcomeViewModel;
import com.vuitton.android.presentation.screen.authentication.welcome.components.WelcomeComposableKt;
import com.vuitton.android.presentation.screen.authentication.welcome.model.WelcomeViewState;
import com.vuitton.android.presentation.screen.options.OptionsActivity;
import com.vuitton.android.presentation.screen.search.models.TrendingItemUiModel;
import com.vuitton.android.presentation.screen.video.VideoActivity;
import com.vuitton.android.presentation.screen.video.components.VideoComposableKt;
import com.vuitton.foundation.model.domain.model.authentication.LoginState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KFunction;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class z41 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81529b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f81530c;

    public /* synthetic */ z41(Object obj, int i2) {
        this.f81529b = i2;
        this.f81530c = obj;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f81529b;
        Object obj3 = this.f81530c;
        switch (i2) {
            case 0:
                TrendingItemUiModel trendingItemUiModel = (TrendingItemUiModel) obj3;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Modifier modifierE = ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("TrendingItemComposable$lambda$0$0"), LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "search_TrendingItemName_text");
                    String str = trendingItemUiModel.f64289b;
                    TextStyle textStyle = LVAppDesignKitTheme.n(composer).g;
                    long j2 = LVAppDesignKitTheme.c(composer).f48361b.m;
                    TextOverflow.f10989a.getClass();
                    TextKt.c(str, modifierE, j2, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, composer, 0, 24960, 110584);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                final VideoActivity videoActivity = (VideoActivity) obj3;
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                VideoActivity.Companion companion = VideoActivity.m;
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-2058688756, new Function2() { // from class: com.vuitton.android.presentation.screen.video.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj4, Object obj5) {
                            VideoActivity videoActivity2 = videoActivity;
                            ViewModelLazy viewModelLazy = videoActivity2.l;
                            Composer composer3 = (Composer) obj4;
                            int iIntValue3 = ((Integer) obj5).intValue();
                            VideoActivity.Companion companion2 = VideoActivity.m;
                            if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                VideoViewModel videoViewModel = (VideoViewModel) viewModelLazy.getF71699b();
                                boolean zY = composer3.y(videoActivity2);
                                Object objX = composer3.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                if (zY || objX == composer$Companion$Empty$1) {
                                    VideoActivity$onCreate$1$1$1$1 videoActivity$onCreate$1$1$1$1 = new VideoActivity$onCreate$1$1$1$1(0, videoActivity2, VideoActivity.class, "finish", "finish()V", 0);
                                    composer3.q(videoActivity$onCreate$1$1$1$1);
                                    objX = videoActivity$onCreate$1$1$1$1;
                                }
                                Function0 function0 = (Function0) ((KFunction) objX);
                                VideoViewModel videoViewModel2 = (VideoViewModel) viewModelLazy.getF71699b();
                                boolean zY2 = composer3.y(videoViewModel2);
                                Object objX2 = composer3.x();
                                if (zY2 || objX2 == composer$Companion$Empty$1) {
                                    VideoActivity$onCreate$1$1$2$1 videoActivity$onCreate$1$1$2$1 = new VideoActivity$onCreate$1$1$2$1(2, videoViewModel2, VideoViewModel.class, "trackVideoMilestones", "trackVideoMilestones(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V", 0);
                                    composer3.q(videoActivity$onCreate$1$1$2$1);
                                    objX2 = videoActivity$onCreate$1$1$2$1;
                                }
                                VideoComposableKt.a(videoViewModel, function0, (Function2) ((KFunction) objX2), composer3, 0);
                            } else {
                                composer3.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer2), composer2, 48);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 2:
                final WelcomeFragment welcomeFragment = (WelcomeFragment) obj3;
                Composer composer3 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                WelcomeFragment.Companion companion2 = WelcomeFragment.I;
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    final MutableState mutableStateB = SnapshotStateKt.b(((WelcomeViewModel) welcomeFragment.G.getF71699b()).getL(), composer3);
                    ThemeKt.a(null, ComposableLambdaKt.b(-1596967011, new Function2() { // from class: com.vuitton.android.presentation.screen.authentication.welcome.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj4, Object obj5) {
                            Composer composer4 = (Composer) obj4;
                            int iIntValue4 = ((Integer) obj5).intValue();
                            WelcomeFragment.Companion companion3 = WelcomeFragment.I;
                            boolean z = false;
                            final int i3 = 1;
                            final int i4 = 2;
                            if (composer4.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                TrackingAuthOrigin trackingAuthOrigin = TrackingAuthOrigin.ONBOARDING;
                                final WelcomeFragment welcomeFragment2 = welcomeFragment;
                                boolean zY = composer4.y(welcomeFragment2);
                                Object objX = composer4.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                if (zY || objX == composer$Companion$Empty$1) {
                                    WelcomeFragment$onCreateView$1$1$1$socialLoginState$1$1 welcomeFragment$onCreateView$1$1$1$socialLoginState$1$1 = new WelcomeFragment$onCreateView$1$1$1$socialLoginState$1$1(0, welcomeFragment2, WelcomeFragment.class, "navigateToLogin", "navigateToLogin()V", 0);
                                    composer4.q(welcomeFragment$onCreateView$1$1$1$socialLoginState$1$1);
                                    objX = welcomeFragment$onCreateView$1$1$1$socialLoginState$1$1;
                                }
                                Function0 function0 = (Function0) ((KFunction) objX);
                                boolean zY2 = composer4.y(welcomeFragment2);
                                Object objX2 = composer4.x();
                                if (zY2 || objX2 == composer$Companion$Empty$1) {
                                    WelcomeFragment$onCreateView$1$1$1$socialLoginState$2$1 welcomeFragment$onCreateView$1$1$1$socialLoginState$2$1 = new WelcomeFragment$onCreateView$1$1$1$socialLoginState$2$1(0, welcomeFragment2, WelcomeFragment.class, "navigateToRegister", "navigateToRegister()V", 0);
                                    composer4.q(welcomeFragment$onCreateView$1$1$1$socialLoginState$2$1);
                                    objX2 = welcomeFragment$onCreateView$1$1$1$socialLoginState$2$1;
                                }
                                Function0 function1 = (Function0) ((KFunction) objX2);
                                boolean zY3 = composer4.y(welcomeFragment2);
                                Object objX3 = composer4.x();
                                if (zY3 || objX3 == composer$Companion$Empty$1) {
                                    final boolean z2 = z ? 1 : 0;
                                    objX3 = new Function0() { // from class: s61
                                        @Override // kotlin.jvm.functions.Function0
                                        /* JADX INFO: renamed from: invoke */
                                        public final Object mo47invoke() {
                                            int i5 = z2;
                                            WelcomeFragment welcomeFragment3 = welcomeFragment2;
                                            switch (i5) {
                                                case 0:
                                                    WelcomeFragment.Companion companion4 = WelcomeFragment.I;
                                                    FragmentActivity activity = welcomeFragment3.getActivity();
                                                    AuthenticationActivity authenticationActivity = activity instanceof AuthenticationActivity ? (AuthenticationActivity) activity : null;
                                                    if (authenticationActivity != null) {
                                                        authenticationActivity.K(LoginState.LOGGED_IN);
                                                    }
                                                    FragmentActivity activity2 = welcomeFragment3.getActivity();
                                                    if (activity2 != null) {
                                                        activity2.finish();
                                                    }
                                                    return Unit.f71739a;
                                                case 1:
                                                    WelcomeFragment.Companion companion5 = WelcomeFragment.I;
                                                    ((AuthenticationViewModel) welcomeFragment3.F.getF71699b()).I0(AuthenticationTrackingUiModel.ManageSettingsClickedEvent.f53698a);
                                                    if (welcomeFragment3.H == null) {
                                                        Intrinsics.h("authenticationActivityRouter");
                                                        throw null;
                                                    }
                                                    FragmentActivity activity3 = welcomeFragment3.getActivity();
                                                    if (activity3 != null) {
                                                        OptionsActivity.u.getClass();
                                                        activity3.startActivity(new Intent(activity3, (Class<?>) OptionsActivity.class));
                                                    }
                                                    return Unit.f71739a;
                                                default:
                                                    WelcomeFragment.Companion companion6 = WelcomeFragment.I;
                                                    welcomeFragment3.requireActivity().finish();
                                                    return Unit.f71739a;
                                            }
                                        }
                                    };
                                    composer4.q(objX3);
                                }
                                SocialLoginBottomSheetState socialLoginBottomSheetStateB = SocialLoginBottomSheetKt.b(trackingAuthOrigin, function0, function1, (Function0) objX3, null, composer4, 6, 16);
                                WelcomeViewState welcomeViewState = (WelcomeViewState) mutableStateB.getF10755b();
                                Bundle arguments = welcomeFragment2.getArguments();
                                boolean z3 = arguments != null ? arguments.getBoolean("EXIT_ICON") : false;
                                boolean zY4 = composer4.y(welcomeFragment2);
                                Object objX4 = composer4.x();
                                if (zY4 || objX4 == composer$Companion$Empty$1) {
                                    WelcomeFragment$onCreateView$1$1$1$1$1 welcomeFragment$onCreateView$1$1$1$1$1 = new WelcomeFragment$onCreateView$1$1$1$1$1(0, welcomeFragment2, WelcomeFragment.class, "onConnectivityCardClicked", "onConnectivityCardClicked()V", 0);
                                    composer4.q(welcomeFragment$onCreateView$1$1$1$1$1);
                                    objX4 = welcomeFragment$onCreateView$1$1$1$1$1;
                                }
                                Function0 function2 = (Function0) ((KFunction) objX4);
                                boolean zY5 = composer4.y(welcomeFragment2);
                                Object objX5 = composer4.x();
                                if (zY5 || objX5 == composer$Companion$Empty$1) {
                                    objX5 = new Function0() { // from class: s61
                                        @Override // kotlin.jvm.functions.Function0
                                        /* JADX INFO: renamed from: invoke */
                                        public final Object mo47invoke() {
                                            int i5 = i3;
                                            WelcomeFragment welcomeFragment3 = welcomeFragment2;
                                            switch (i5) {
                                                case 0:
                                                    WelcomeFragment.Companion companion4 = WelcomeFragment.I;
                                                    FragmentActivity activity = welcomeFragment3.getActivity();
                                                    AuthenticationActivity authenticationActivity = activity instanceof AuthenticationActivity ? (AuthenticationActivity) activity : null;
                                                    if (authenticationActivity != null) {
                                                        authenticationActivity.K(LoginState.LOGGED_IN);
                                                    }
                                                    FragmentActivity activity2 = welcomeFragment3.getActivity();
                                                    if (activity2 != null) {
                                                        activity2.finish();
                                                    }
                                                    return Unit.f71739a;
                                                case 1:
                                                    WelcomeFragment.Companion companion5 = WelcomeFragment.I;
                                                    ((AuthenticationViewModel) welcomeFragment3.F.getF71699b()).I0(AuthenticationTrackingUiModel.ManageSettingsClickedEvent.f53698a);
                                                    if (welcomeFragment3.H == null) {
                                                        Intrinsics.h("authenticationActivityRouter");
                                                        throw null;
                                                    }
                                                    FragmentActivity activity3 = welcomeFragment3.getActivity();
                                                    if (activity3 != null) {
                                                        OptionsActivity.u.getClass();
                                                        activity3.startActivity(new Intent(activity3, (Class<?>) OptionsActivity.class));
                                                    }
                                                    return Unit.f71739a;
                                                default:
                                                    WelcomeFragment.Companion companion6 = WelcomeFragment.I;
                                                    welcomeFragment3.requireActivity().finish();
                                                    return Unit.f71739a;
                                            }
                                        }
                                    };
                                    composer4.q(objX5);
                                }
                                Function0 function3 = (Function0) objX5;
                                boolean zY6 = composer4.y(welcomeFragment2);
                                Object objX6 = composer4.x();
                                Object obj6 = objX6;
                                if (zY6 || objX6 == r12) {
                                    Function0 function4 = new Function0() { // from class: s61
                                        @Override // kotlin.jvm.functions.Function0
                                        /* JADX INFO: renamed from: invoke */
                                        public final Object mo47invoke() {
                                            int i5 = i4;
                                            WelcomeFragment welcomeFragment3 = welcomeFragment2;
                                            switch (i5) {
                                                case 0:
                                                    WelcomeFragment.Companion companion4 = WelcomeFragment.I;
                                                    FragmentActivity activity = welcomeFragment3.getActivity();
                                                    AuthenticationActivity authenticationActivity = activity instanceof AuthenticationActivity ? (AuthenticationActivity) activity : null;
                                                    if (authenticationActivity != null) {
                                                        authenticationActivity.K(LoginState.LOGGED_IN);
                                                    }
                                                    FragmentActivity activity2 = welcomeFragment3.getActivity();
                                                    if (activity2 != null) {
                                                        activity2.finish();
                                                    }
                                                    return Unit.f71739a;
                                                case 1:
                                                    WelcomeFragment.Companion companion5 = WelcomeFragment.I;
                                                    ((AuthenticationViewModel) welcomeFragment3.F.getF71699b()).I0(AuthenticationTrackingUiModel.ManageSettingsClickedEvent.f53698a);
                                                    if (welcomeFragment3.H == null) {
                                                        Intrinsics.h("authenticationActivityRouter");
                                                        throw null;
                                                    }
                                                    FragmentActivity activity3 = welcomeFragment3.getActivity();
                                                    if (activity3 != null) {
                                                        OptionsActivity.u.getClass();
                                                        activity3.startActivity(new Intent(activity3, (Class<?>) OptionsActivity.class));
                                                    }
                                                    return Unit.f71739a;
                                                default:
                                                    WelcomeFragment.Companion companion6 = WelcomeFragment.I;
                                                    welcomeFragment3.requireActivity().finish();
                                                    return Unit.f71739a;
                                            }
                                        }
                                    };
                                    composer4.q(function4);
                                    obj6 = function4;
                                }
                                WelcomeComposableKt.a(null, socialLoginBottomSheetStateB, welcomeViewState, z3, null, function2, function3, (Function0) obj6, null, null, composer4, 0, 1585);
                            } else {
                                composer4.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer3), composer3, 48);
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 3:
                return new IntOffset(((long) ((Alignment.Horizontal) obj3).a(0, (int) (((IntSize) obj).f11021a >> 32), (LayoutDirection) obj2)) << 32);
            case 4:
                return new IntOffset(((long) ((Alignment.Vertical) obj3).a(0, (int) (((IntSize) obj).f11021a & BodyPartID.bodyIdMax))) & BodyPartID.bodyIdMax);
            default:
                Alignment alignment = (Alignment) obj3;
                IntSize.f11020b.getClass();
                return new IntOffset(alignment.a(0L, ((IntSize) obj).f11021a, (LayoutDirection) obj2));
        }
    }
}
