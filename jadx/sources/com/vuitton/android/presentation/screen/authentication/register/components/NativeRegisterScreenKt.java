package com.vuitton.android.presentation.screen.authentication.register.components;

import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutContext;
import com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt;
import com.vuitton.android.presentation.screen.authentication.register.Step;
import com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterActivationComposableKt;
import com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterBirthInfoComposableKt;
import com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterCredentialsComposableKt;
import com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterPersonalInfoComposableKt;
import com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterRegistrationAddressComposableKt;
import com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterScreenKt;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterTrackingUiModel;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterViewState;
import defpackage.t30;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NativeRegisterScreenKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f53865a;

        static {
            int[] iArr = new int[Step.values().length];
            try {
                iArr[Step.CREDENTIALS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Step.PERSONAL_INFO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Step.REGISTRATION_ADDRESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Step.BIRTH_INFO.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Step.ACCOUNT_ACTIVATION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f53865a = iArr;
        }
    }

    public static final void a(final NativeRegisterViewState nativeRegisterViewState, final SnackbarHostState snackbarHostState, final NativeRegisterBottomSheetScreen nativeRegisterBottomSheetScreen, final Function1 function1, final Function0 function0, final PagerState pagerState, final LVModalBottomSheetState lVModalBottomSheetState, final Function3 function3, final Function1 function2, final Function1 function4, final Function0 function5, final Function0 function6, final Function0 function7, final Function1 function8, final Function1 function9, final Function0 function10, final Function0 function11, final Function1 function12, final Function1 function13, final Function0 function14, final Function0 function15, final Function0 function16, final Function1 function17, final Function1 function18, Composer composer, final int i2) {
        int i3;
        final Function1 function19;
        GapComposer gapComposer;
        nativeRegisterViewState.getClass();
        snackbarHostState.getClass();
        function1.getClass();
        function0.getClass();
        pagerState.getClass();
        lVModalBottomSheetState.getClass();
        function3.getClass();
        function2.getClass();
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
        function14.getClass();
        function15.getClass();
        function16.getClass();
        function17.getClass();
        function18.getClass();
        GapComposer gapComposerH = composer.h(-528603354);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(nativeRegisterViewState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(snackbarHostState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(nativeRegisterBottomSheetScreen) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            function19 = function1;
            i3 |= gapComposerH.y(function19) ? 2048 : 1024;
        } else {
            function19 = function1;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function0) ? 16384 : 8192;
        }
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i3 |= gapComposerH.K(pagerState) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i3 |= (i2 & PKIFailureInfo.badSenderNonce) == 0 ? gapComposerH.K(lVModalBottomSheetState) : gapComposerH.y(lVModalBottomSheetState) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i3 |= gapComposerH.y(function3) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i3 |= gapComposerH.y(function2) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i3 |= gapComposerH.y(function4) ? 536870912 : 268435456;
        }
        int i4 = i3;
        int i5 = (gapComposerH.y(function5) ? 4 : 2) | (gapComposerH.y(function6) ? 32 : 16) | (gapComposerH.y(function7) ? 256 : 128) | (gapComposerH.y(function8) ? 2048 : 1024) | (gapComposerH.y(function9) ? 16384 : 8192) | (gapComposerH.y(function10) ? 131072 : 65536) | (gapComposerH.y(function11) ? 1048576 : 524288) | (gapComposerH.y(function12) ? 8388608 : 4194304) | (gapComposerH.y(function13) ? 67108864 : 33554432) | (gapComposerH.y(function14) ? 536870912 : 268435456);
        int i6 = (gapComposerH.y(function15) ? 4 : 2) | (gapComposerH.y(function16) ? 32 : 16) | (gapComposerH.y(function17) ? 256 : 128) | (gapComposerH.y(function18) ? 2048 : 1024);
        if (gapComposerH.p(i4 & 1, ((i4 & 306783379) == 306783378 && (i5 & 306783379) == 306783378 && (i6 & 1171) == 1170) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            FocusManager focusManager = (FocusManager) gapComposerH.k(CompositionLocalsKt.f10032i);
            final SoftwareKeyboardController softwareKeyboardController = (SoftwareKeyboardController) gapComposerH.k(CompositionLocalsKt.r);
            NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext = NativeAuthenticationLayoutContext.REGISTER;
            boolean z = nativeRegisterViewState.m;
            String str = nativeRegisterViewState.f54032e.d;
            boolean zY = ((i5 & 7168) == 2048) | gapComposerH.y(nativeRegisterViewState);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new t30(function8, nativeRegisterViewState, 22);
                gapComposerH.q(objX);
            }
            int i7 = i4 >> 9;
            NativeAuthenticationLayoutKt.a(null, nativeAuthenticationLayoutContext, pagerState, focusManager, lVModalBottomSheetState, nativeRegisterBottomSheetScreen, z, str, snackbarHostState, function7, (Function0) objX, function0, function14, function15, nativeRegisterViewState.a(), ComposableLambdaKt.b(-1966513701, new Function4() { // from class: vf0
                /* JADX WARN: Multi-variable type inference failed */
                @Override // kotlin.jvm.functions.Function4
                public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
                    int i8;
                    int i9;
                    boolean z2;
                    ColumnScope columnScope = (ColumnScope) obj;
                    int iIntValue = ((Integer) obj2).intValue();
                    Composer composer2 = (Composer) obj3;
                    int iIntValue2 = ((Integer) obj4).intValue();
                    columnScope.getClass();
                    if ((iIntValue2 & 6) == 0) {
                        i8 = (composer2.K(columnScope) ? 4 : 2) | iIntValue2;
                    } else {
                        i8 = iIntValue2;
                    }
                    if ((iIntValue2 & 48) == 0) {
                        i8 |= composer2.d(iIntValue) ? 32 : 16;
                    }
                    if (composer2.p(i8 & 1, (i8 & 147) != 146)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        final NativeRegisterViewState nativeRegisterViewState2 = nativeRegisterViewState;
                        Step step = nativeRegisterViewState2.a() ? (Step) Step.a().get(iIntValue) : (Step) NativeRegisterViewState.q.get(iIntValue);
                        function13.invoke(step);
                        int i10 = NativeRegisterScreenKt.WhenMappings.f53865a[step.ordinal()];
                        Function3 function20 = function3;
                        Function1 function21 = function2;
                        final SoftwareKeyboardController softwareKeyboardController2 = softwareKeyboardController;
                        final Function1 function22 = function17;
                        final Function1 function23 = function4;
                        PagerState pagerState2 = pagerState;
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (i10 == 1) {
                            int i11 = i8;
                            composer2.L(-34050319);
                            boolean zK = composer2.K(function20);
                            Object objX2 = composer2.x();
                            if (zK || objX2 == composer$Companion$Empty$1) {
                                objX2 = new ye0(function20, 2);
                                composer2.q(objX2);
                            }
                            Function2 function24 = (Function2) objX2;
                            boolean zK2 = composer2.K(softwareKeyboardController2) | composer2.y(nativeRegisterViewState2) | composer2.K(function22) | composer2.K(function23);
                            Object objX3 = composer2.x();
                            if (zK2 || objX3 == composer$Companion$Empty$1) {
                                final int i12 = 2;
                                Function0 function25 = new Function0() { // from class: uf0
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        int i13 = i12;
                                        Function1 function26 = function23;
                                        Function1 function27 = function22;
                                        NativeRegisterViewState nativeRegisterViewState3 = nativeRegisterViewState2;
                                        SoftwareKeyboardController softwareKeyboardController3 = softwareKeyboardController2;
                                        switch (i13) {
                                            case 0:
                                                if (softwareKeyboardController3 != null) {
                                                    softwareKeyboardController3.b();
                                                }
                                                if (nativeRegisterViewState3.f54032e.f53942c) {
                                                    function27.invoke(NativeRegisterTrackingUiModel.OnConfirmBirthInfoCtaEvent.f54005a);
                                                    function26.invoke(Step.BIRTH_INFO);
                                                }
                                                break;
                                            case 1:
                                                if (softwareKeyboardController3 != null) {
                                                    softwareKeyboardController3.b();
                                                }
                                                if (nativeRegisterViewState3.g.f53921a.length() > 0 && !nativeRegisterViewState3.g.f53922b.b()) {
                                                    function27.invoke(NativeRegisterTrackingUiModel.OnConfirmActivateAccountCtaEvent.f54003a);
                                                    function26.invoke(Step.ACCOUNT_ACTIVATION);
                                                }
                                                break;
                                            case 2:
                                                if (softwareKeyboardController3 != null) {
                                                    softwareKeyboardController3.b();
                                                }
                                                if (nativeRegisterViewState3.f54029a.f53953c) {
                                                    function27.invoke(NativeRegisterTrackingUiModel.OnConfirmCredentialCtaEvent.f54007a);
                                                    function26.invoke(Step.CREDENTIALS);
                                                }
                                                break;
                                            default:
                                                if (softwareKeyboardController3 != null) {
                                                    softwareKeyboardController3.b();
                                                }
                                                if (nativeRegisterViewState3.f54031c.f53987a) {
                                                    function27.invoke(NativeRegisterTrackingUiModel.OnConfirmPersonalInfoCtaEvent.f54009a);
                                                    function26.invoke(Step.PERSONAL_INFO);
                                                }
                                                break;
                                        }
                                        return Unit.f71739a;
                                    }
                                };
                                composer2.q(function25);
                                objX3 = function25;
                            }
                            NativeRegisterCredentialsComposableKt.a(columnScope, nativeRegisterViewState2, function24, function21, (Function0) objX3, function22, pagerState2.k() == iIntValue, composer2, i11 & 14);
                            composer2.F();
                        } else if (i10 == 2) {
                            int i13 = i8;
                            composer2.L(-34018630);
                            boolean zK3 = composer2.K(function20);
                            Object objX4 = composer2.x();
                            if (zK3 || objX4 == composer$Companion$Empty$1) {
                                objX4 = new ye0(function20, 3);
                                composer2.q(objX4);
                            }
                            Function2 function26 = (Function2) objX4;
                            boolean zK4 = composer2.K(softwareKeyboardController2) | composer2.y(nativeRegisterViewState2) | composer2.K(function22) | composer2.K(function23);
                            Object objX5 = composer2.x();
                            if (zK4 || objX5 == composer$Companion$Empty$1) {
                                final int i14 = 3;
                                Function0 function27 = new Function0() { // from class: uf0
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        int i15 = i14;
                                        Function1 function28 = function23;
                                        Function1 function29 = function22;
                                        NativeRegisterViewState nativeRegisterViewState3 = nativeRegisterViewState2;
                                        SoftwareKeyboardController softwareKeyboardController3 = softwareKeyboardController2;
                                        switch (i15) {
                                            case 0:
                                                if (softwareKeyboardController3 != null) {
                                                    softwareKeyboardController3.b();
                                                }
                                                if (nativeRegisterViewState3.f54032e.f53942c) {
                                                    function29.invoke(NativeRegisterTrackingUiModel.OnConfirmBirthInfoCtaEvent.f54005a);
                                                    function28.invoke(Step.BIRTH_INFO);
                                                }
                                                break;
                                            case 1:
                                                if (softwareKeyboardController3 != null) {
                                                    softwareKeyboardController3.b();
                                                }
                                                if (nativeRegisterViewState3.g.f53921a.length() > 0 && !nativeRegisterViewState3.g.f53922b.b()) {
                                                    function29.invoke(NativeRegisterTrackingUiModel.OnConfirmActivateAccountCtaEvent.f54003a);
                                                    function28.invoke(Step.ACCOUNT_ACTIVATION);
                                                }
                                                break;
                                            case 2:
                                                if (softwareKeyboardController3 != null) {
                                                    softwareKeyboardController3.b();
                                                }
                                                if (nativeRegisterViewState3.f54029a.f53953c) {
                                                    function29.invoke(NativeRegisterTrackingUiModel.OnConfirmCredentialCtaEvent.f54007a);
                                                    function28.invoke(Step.CREDENTIALS);
                                                }
                                                break;
                                            default:
                                                if (softwareKeyboardController3 != null) {
                                                    softwareKeyboardController3.b();
                                                }
                                                if (nativeRegisterViewState3.f54031c.f53987a) {
                                                    function29.invoke(NativeRegisterTrackingUiModel.OnConfirmPersonalInfoCtaEvent.f54009a);
                                                    function28.invoke(Step.PERSONAL_INFO);
                                                }
                                                break;
                                        }
                                        return Unit.f71739a;
                                    }
                                };
                                composer2.q(function27);
                                objX5 = function27;
                            }
                            NativeRegisterPersonalInfoComposableKt.a(columnScope, nativeRegisterViewState2, function26, function21, (Function0) objX5, function22, pagerState2.k() == iIntValue, composer2, i13 & 14);
                            composer2.F();
                        } else if (i10 == 3) {
                            int i15 = i8;
                            composer2.L(-33986400);
                            boolean zK5 = composer2.K(function20);
                            Object objX6 = composer2.x();
                            if (zK5 || objX6 == composer$Companion$Empty$1) {
                                objX6 = new ye0(function20, 4);
                                composer2.q(objX6);
                            }
                            Function2 function28 = (Function2) objX6;
                            boolean zK6 = composer2.K(softwareKeyboardController2) | composer2.y(nativeRegisterViewState2) | composer2.K(function23);
                            Object objX7 = composer2.x();
                            if (zK6 || objX7 == composer$Companion$Empty$1) {
                                i9 = 1;
                                objX7 = new of0(softwareKeyboardController2, nativeRegisterViewState2, function23, i9);
                                composer2.q(objX7);
                            } else {
                                i9 = 1;
                            }
                            Function0 function29 = (Function0) objX7;
                            boolean zK7 = composer2.K(softwareKeyboardController2);
                            Function0 function30 = function5;
                            boolean zK8 = zK7 | composer2.K(function30);
                            Object objX8 = composer2.x();
                            if (zK8 || objX8 == composer$Companion$Empty$1) {
                                objX8 = new n1(softwareKeyboardController2, function30, 3);
                                composer2.q(objX8);
                            }
                            NativeRegisterRegistrationAddressComposableKt.a(columnScope, nativeRegisterViewState2, function28, function21, function6, function29, (Function0) objX8, function18, pagerState2.k() == iIntValue ? i9 : 0, composer2, i15 & 14);
                            composer2.F();
                        } else if (i10 == 4) {
                            int i16 = i8;
                            composer2.L(-33953031);
                            Function1 function31 = function19;
                            boolean zK9 = composer2.K(function31);
                            Object objX9 = composer2.x();
                            if (zK9 || objX9 == composer$Companion$Empty$1) {
                                z2 = false;
                                objX9 = new tf0(function31, 0);
                                composer2.q(objX9);
                            } else {
                                z2 = false;
                            }
                            Function0 function32 = (Function0) objX9;
                            boolean zK10 = composer2.K(function20);
                            Object objX10 = composer2.x();
                            if (zK10 || objX10 == composer$Companion$Empty$1) {
                                objX10 = new ye0(function20, 1);
                                composer2.q(objX10);
                            }
                            Function2 function33 = (Function2) objX10;
                            boolean zK11 = composer2.K(softwareKeyboardController2) | composer2.y(nativeRegisterViewState2) | composer2.K(function22) | composer2.K(function23);
                            Object objX11 = composer2.x();
                            if (zK11 || objX11 == composer$Companion$Empty$1) {
                                final int i17 = 0;
                                Function0 function34 = new Function0() { // from class: uf0
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        int i18 = i17;
                                        Function1 function210 = function23;
                                        Function1 function211 = function22;
                                        NativeRegisterViewState nativeRegisterViewState3 = nativeRegisterViewState2;
                                        SoftwareKeyboardController softwareKeyboardController3 = softwareKeyboardController2;
                                        switch (i18) {
                                            case 0:
                                                if (softwareKeyboardController3 != null) {
                                                    softwareKeyboardController3.b();
                                                }
                                                if (nativeRegisterViewState3.f54032e.f53942c) {
                                                    function211.invoke(NativeRegisterTrackingUiModel.OnConfirmBirthInfoCtaEvent.f54005a);
                                                    function210.invoke(Step.BIRTH_INFO);
                                                }
                                                break;
                                            case 1:
                                                if (softwareKeyboardController3 != null) {
                                                    softwareKeyboardController3.b();
                                                }
                                                if (nativeRegisterViewState3.g.f53921a.length() > 0 && !nativeRegisterViewState3.g.f53922b.b()) {
                                                    function211.invoke(NativeRegisterTrackingUiModel.OnConfirmActivateAccountCtaEvent.f54003a);
                                                    function210.invoke(Step.ACCOUNT_ACTIVATION);
                                                }
                                                break;
                                            case 2:
                                                if (softwareKeyboardController3 != null) {
                                                    softwareKeyboardController3.b();
                                                }
                                                if (nativeRegisterViewState3.f54029a.f53953c) {
                                                    function211.invoke(NativeRegisterTrackingUiModel.OnConfirmCredentialCtaEvent.f54007a);
                                                    function210.invoke(Step.CREDENTIALS);
                                                }
                                                break;
                                            default:
                                                if (softwareKeyboardController3 != null) {
                                                    softwareKeyboardController3.b();
                                                }
                                                if (nativeRegisterViewState3.f54031c.f53987a) {
                                                    function211.invoke(NativeRegisterTrackingUiModel.OnConfirmPersonalInfoCtaEvent.f54009a);
                                                    function210.invoke(Step.PERSONAL_INFO);
                                                }
                                                break;
                                        }
                                        return Unit.f71739a;
                                    }
                                };
                                composer2.q(function34);
                                objX11 = function34;
                            }
                            NativeRegisterBirthInfoComposableKt.a(columnScope, nativeRegisterViewState2, function9, function10, function32, function33, function21, function11, (Function0) objX11, function22, pagerState2.k() == iIntValue ? true : z2, composer2, i16 & 14, 0);
                            composer2.F();
                        } else {
                            if (i10 != 5) {
                                throw o60.v(composer2, -34047463);
                            }
                            composer2.L(-33910984);
                            Function0 function35 = function16;
                            boolean zK12 = composer2.K(function35) | composer2.K(function22);
                            Object objX12 = composer2.x();
                            if (zK12 || objX12 == composer$Companion$Empty$1) {
                                objX12 = new wz(function35, function22, 1);
                                composer2.q(objX12);
                            }
                            Function0 function36 = (Function0) objX12;
                            boolean zK13 = composer2.K(softwareKeyboardController2) | composer2.y(nativeRegisterViewState2) | composer2.K(function22) | composer2.K(function23);
                            Object objX13 = composer2.x();
                            if (zK13 || objX13 == composer$Companion$Empty$1) {
                                final int i18 = 1;
                                Function0 function37 = new Function0() { // from class: uf0
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        int i19 = i18;
                                        Function1 function210 = function23;
                                        Function1 function211 = function22;
                                        NativeRegisterViewState nativeRegisterViewState3 = nativeRegisterViewState2;
                                        SoftwareKeyboardController softwareKeyboardController3 = softwareKeyboardController2;
                                        switch (i19) {
                                            case 0:
                                                if (softwareKeyboardController3 != null) {
                                                    softwareKeyboardController3.b();
                                                }
                                                if (nativeRegisterViewState3.f54032e.f53942c) {
                                                    function211.invoke(NativeRegisterTrackingUiModel.OnConfirmBirthInfoCtaEvent.f54005a);
                                                    function210.invoke(Step.BIRTH_INFO);
                                                }
                                                break;
                                            case 1:
                                                if (softwareKeyboardController3 != null) {
                                                    softwareKeyboardController3.b();
                                                }
                                                if (nativeRegisterViewState3.g.f53921a.length() > 0 && !nativeRegisterViewState3.g.f53922b.b()) {
                                                    function211.invoke(NativeRegisterTrackingUiModel.OnConfirmActivateAccountCtaEvent.f54003a);
                                                    function210.invoke(Step.ACCOUNT_ACTIVATION);
                                                }
                                                break;
                                            case 2:
                                                if (softwareKeyboardController3 != null) {
                                                    softwareKeyboardController3.b();
                                                }
                                                if (nativeRegisterViewState3.f54029a.f53953c) {
                                                    function211.invoke(NativeRegisterTrackingUiModel.OnConfirmCredentialCtaEvent.f54007a);
                                                    function210.invoke(Step.CREDENTIALS);
                                                }
                                                break;
                                            default:
                                                if (softwareKeyboardController3 != null) {
                                                    softwareKeyboardController3.b();
                                                }
                                                if (nativeRegisterViewState3.f54031c.f53987a) {
                                                    function211.invoke(NativeRegisterTrackingUiModel.OnConfirmPersonalInfoCtaEvent.f54009a);
                                                    function210.invoke(Step.PERSONAL_INFO);
                                                }
                                                break;
                                        }
                                        return Unit.f71739a;
                                    }
                                };
                                composer2.q(function37);
                                objX13 = function37;
                            }
                            NativeRegisterActivationComposableKt.a(columnScope, nativeRegisterViewState2, function12, function36, (Function0) objX13, function22, pagerState2.k() == iIntValue, composer2, i8 & 14);
                            composer2.F();
                        }
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, (i7 & 896) | 48 | (LVModalBottomSheetState.f48797e << 12) | (57344 & (i4 >> 6)) | ((i4 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (234881024 & (i4 << 21)) | ((i5 << 21) & 1879048192), (i7 & 112) | ImageMetadata.EDGE_MODE | ((i5 >> 21) & 896) | ((i6 << 9) & 7168), 1);
            gapComposer = gapComposerH;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: wf0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    NativeRegisterScreenKt.a(nativeRegisterViewState, snackbarHostState, nativeRegisterBottomSheetScreen, function1, function0, pagerState, lVModalBottomSheetState, function3, function2, function4, function5, function6, function7, function8, function9, function10, function11, function12, function13, function14, function15, function16, function17, function18, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}
