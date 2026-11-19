package com.vuitton.android.presentation.screen.onboarding;

import androidx.activity.compose.BackHandlerKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.navigation.NavHostController;
import androidx.navigation.compose.NavHostKt;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.onboarding.OnboardingNavHostKt;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingAssetType;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingViewState;
import com.vuitton.android.presentation.screen.privacy.PrivacyViewModelImpl;
import defpackage.ag0;
import defpackage.ch0;
import defpackage.gh0;
import defpackage.mg0;
import defpackage.n50;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0004²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;", "onboardingViewState", "Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;", "welcomeViewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OnboardingNavHostKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f59484a;

        static {
            int[] iArr = new int[OnboardingRoutesName.values().length];
            try {
                iArr[OnboardingRoutesName.LOGIN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[OnboardingRoutesName.PRIVACY_PRE_COMPLIANCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[OnboardingRoutesName.PIPL_CBT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[OnboardingRoutesName.PRIVACY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[OnboardingRoutesName.START_NOW.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[OnboardingRoutesName.NOTIFICATIONS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[OnboardingRoutesName.GEOLOCATION.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[OnboardingRoutesName.ICONS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[OnboardingRoutesName.TRANSITION.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[OnboardingRoutesName.DONE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            f59484a = iArr;
        }
    }

    public static final void a(Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(12410780);
        if (gapComposerH.p(i2 & 1, i2 != 0)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new mg0(5);
                gapComposerH.q(objX);
            }
            BackHandlerKt.a(true, (Function0) objX, gapComposerH, 54, 0);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new n50(i2, 24);
        }
    }

    public static final void b(final NavHostController navHostController, final LVModalBottomSheetState lVModalBottomSheetState, final OnboardingViewModel onboardingViewModel, final PrivacyViewModelImpl privacyViewModelImpl, final OnboardingRoutes onboardingRoutes, final Function0 function0, final Function0 function1, final Function1 function2, final Function0 function3, final Function1 function4, final Function0 function5, final Function0 function6, final Function0 function7, final Function0 function8, final Function0 function9, final Function1 function10, final Function0 function11, final Function2 function12, final Function0 function13, Composer composer, final int i2) {
        int i3;
        GapComposer gapComposer;
        navHostController.getClass();
        lVModalBottomSheetState.getClass();
        onboardingViewModel.getClass();
        onboardingRoutes.getClass();
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
        GapComposer gapComposerH = composer.h(-386193490);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(navHostController) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= (i2 & 64) == 0 ? gapComposerH.K(lVModalBottomSheetState) : gapComposerH.y(lVModalBottomSheetState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= (i2 & 512) == 0 ? gapComposerH.K(onboardingViewModel) : gapComposerH.y(onboardingViewModel) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= (i2 & 4096) == 0 ? gapComposerH.K(privacyViewModelImpl) : gapComposerH.y(privacyViewModelImpl) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= (32768 & i2) == 0 ? gapComposerH.K(onboardingRoutes) : gapComposerH.y(onboardingRoutes) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function0) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i3 |= gapComposerH.y(function1) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i3 |= gapComposerH.y(function2) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i3 |= gapComposerH.y(function3) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i3 |= gapComposerH.y(function4) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        int i4 = (gapComposerH.y(function5) ? (char) 4 : (char) 2) | (gapComposerH.y(function6) ? ' ' : (char) 16) | (gapComposerH.y(function7) ? 256 : 128) | (gapComposerH.y(function8) ? 2048 : 1024) | (gapComposerH.y(function9) ? (char) 16384 : (char) 8192) | (gapComposerH.y(function10) ? (char) 0 : (char) 0) | (gapComposerH.y(function11) ? (char) 0 : (char) 0) | (gapComposerH.y(function12) ? (char) 0 : (char) 0) | (gapComposerH.y(function13) ? (char) 0 : (char) 0);
        if (gapComposerH.p(i3 & 1, ((i3 & 306783379) == 306783378 && (38347923 & i4) == 38347922) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(onboardingViewModel.getP(), gapComposerH);
            MutableState mutableStateB2 = SnapshotStateKt.b(onboardingViewModel.getQ(), gapComposerH);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new ag0(25);
                gapComposerH.q(objX);
            }
            Function1 function14 = (Function1) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new ch0(2);
                gapComposerH.q(objX2);
            }
            Function1 function15 = (Function1) objX2;
            boolean zY = ((i3 & 896) == 256 || ((i3 & 512) != 0 && gapComposerH.y(onboardingViewModel))) | ((i4 & 29360128) == 8388608) | ((i4 & 14) == 4) | ((i4 & 112) == 32) | gapComposerH.y(navHostController) | gapComposerH.K(mutableStateB2) | gapComposerH.K(mutableStateB) | ((1879048192 & i3) == 536870912) | ((i3 & 7168) == 2048 || ((i3 & 4096) != 0 && gapComposerH.y(privacyViewModelImpl))) | ((i3 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | ((i3 & 3670016) == 1048576) | ((i3 & 234881024) == 67108864) | ((i3 & 29360128) == 8388608) | ((i3 & 112) == 32 || ((i3 & 64) != 0 && gapComposerH.y(lVModalBottomSheetState))) | ((i4 & 7168) == 2048) | ((i4 & 896) == 256) | ((57344 & i4) == 16384) | ((i4 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | ((i4 & 3670016) == 1048576) | ((i4 & 234881024) == 67108864);
            Object objX3 = gapComposerH.x();
            if (zY || objX3 == composer$Companion$Empty$1) {
                gh0 gh0Var = new gh0(function12, function5, function6, navHostController, onboardingViewModel, mutableStateB, mutableStateB2, function4, privacyViewModelImpl, function0, function1, function3, function2, lVModalBottomSheetState, function8, function7, function9, function10, function11, function13);
                gapComposer = gapComposerH;
                gapComposer.q(gh0Var);
                objX3 = gh0Var;
            } else {
                gapComposer = gapComposerH;
            }
            NavHostKt.b(navHostController, onboardingRoutes, null, null, null, null, function14, function15, null, (Function1) objX3, gapComposer, 113246208 | (i3 & 14) | ((i3 >> 9) & 112), 1660);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: hh0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    OnboardingNavHostKt.b(navHostController, lVModalBottomSheetState, onboardingViewModel, privacyViewModelImpl, onboardingRoutes, function0, function1, function2, function3, function4, function5, function6, function7, function8, function9, function10, function11, function12, function13, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final OnboardingRoutes c(OnboardingViewState onboardingViewState) {
        onboardingViewState.getClass();
        List list = onboardingViewState.f59602c;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (((OnboardingAssetType) it.next()) == OnboardingAssetType.NOTIFICATIONS) {
                    return OnboardingRoutes.Notifications.INSTANCE;
                }
            }
        }
        return OnboardingRoutes.Geolocation.INSTANCE;
    }
}
