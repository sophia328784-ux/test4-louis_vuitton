package com.vuitton.android.presentation.screen.account.lvpass.components;

import android.graphics.Bitmap;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.compose.FlowExtKt;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.presentation.loading.LvLoadingKt;
import com.vuitton.android.presentation.screen.account.lvpass.QRCodeScreenState;
import com.vuitton.android.presentation.screen.account.lvpass.QRCodeViewModel;
import com.vuitton.android.presentation.screen.account.userworldwideid.UserWorldwideIdViewModel;
import com.vuitton.android.presentation.screen.mylv.models.MyLvTrackingUiModel;
import com.vuitton.android.presentation.tracking.AppsFlyerTrackerEntryPointKt;
import com.vuitton.android.presentation.tracking.AppsFlyerUiTracker;
import defpackage.d21;
import defpackage.if0;
import defpackage.k2;
import defpackage.n00;
import defpackage.oi0;
import defpackage.u00;
import defpackage.u1;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0004²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState;", "qrCodeState", "", "is3dReady", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class QRCodeComposableKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f52485a;

        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            try {
                iArr[Lifecycle.Event.ON_RESUME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Lifecycle.Event.ON_PAUSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f52485a = iArr;
        }
    }

    public static final void a(QRCodeScreenState qRCodeScreenState, UserWorldwideIdViewModel userWorldwideIdViewModel, AppsFlyerUiTracker appsFlyerUiTracker, Function1 function1, Composer composer, int i2) {
        int i3;
        Function1 function2;
        QRCodeScreenState qRCodeScreenState2 = qRCodeScreenState;
        UserWorldwideIdViewModel userWorldwideIdViewModel2 = userWorldwideIdViewModel;
        GapComposer gapComposerH = composer.h(-1714412327);
        if ((i2 & 6) == 0) {
            i3 = ((i2 & 8) == 0 ? gapComposerH.K(qRCodeScreenState2) : gapComposerH.y(qRCodeScreenState2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= (i2 & 64) == 0 ? gapComposerH.K(userWorldwideIdViewModel2) : gapComposerH.y(userWorldwideIdViewModel2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= (i2 & 512) == 0 ? gapComposerH.K(appsFlyerUiTracker) : gapComposerH.y(appsFlyerUiTracker) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            function2 = function1;
            i3 |= gapComposerH.y(function2) ? 2048 : 1024;
        } else {
            function2 = function1;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z = ((i3 & 112) == 32 || ((i3 & 64) != 0 && gapComposerH.y(userWorldwideIdViewModel2))) | ((i3 & 14) == 4 || ((i3 & 8) != 0 && gapComposerH.y(qRCodeScreenState2))) | ((i3 & 896) == 256 || ((i3 & 512) != 0 && gapComposerH.y(appsFlyerUiTracker))) | ((i3 & 7168) == 2048);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z || objX == composer$Companion$Empty$1) {
                QRCodeComposableKt$HandleStoreModeAffiliation$1$1 qRCodeComposableKt$HandleStoreModeAffiliation$1$1 = new QRCodeComposableKt$HandleStoreModeAffiliation$1$1(userWorldwideIdViewModel2, qRCodeScreenState2, appsFlyerUiTracker, function2, null);
                userWorldwideIdViewModel2 = userWorldwideIdViewModel2;
                qRCodeScreenState2 = qRCodeScreenState2;
                gapComposerH.q(qRCodeComposableKt$HandleStoreModeAffiliation$1$1);
                objX = qRCodeComposableKt$HandleStoreModeAffiliation$1$1;
            }
            EffectsKt.e(gapComposerH, qRCodeScreenState2, (Function2) objX);
            MutableState mutableStateL = SnapshotStateKt.l(gapComposerH.k(LocalLifecycleOwnerKt.f13562a), gapComposerH);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new k2(userWorldwideIdViewModel2, 4);
                gapComposerH.q(objX2);
            }
            LifecycleEventObserver lifecycleEventObserver = (LifecycleEventObserver) objX2;
            Object f10755b = mutableStateL.getF10755b();
            boolean zK = gapComposerH.K(mutableStateL) | gapComposerH.y(lifecycleEventObserver);
            Object objX3 = gapComposerH.x();
            if (zK || objX3 == composer$Companion$Empty$1) {
                objX3 = new if0(mutableStateL, lifecycleEventObserver, 1);
                gapComposerH.q(objX3);
            }
            EffectsKt.c(f10755b, (Function1) objX3, gapComposerH);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new oi0(qRCodeScreenState2, userWorldwideIdViewModel2, appsFlyerUiTracker, function1, i2, 8);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void b(QRCodeViewModel qRCodeViewModel, final UserWorldwideIdViewModel userWorldwideIdViewModel, Function1 function1, Function0 function0, final Function0 function2, Function1 function3, Composer composer, int i2) {
        int i3;
        AppsFlyerUiTracker appsFlyerUiTracker;
        boolean z;
        qRCodeViewModel.getClass();
        function1.getClass();
        function0.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(1086319594);
        int i4 = i2 | (gapComposerH.K(qRCodeViewModel) ? 4 : 2) | (gapComposerH.K(userWorldwideIdViewModel) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536);
        if (gapComposerH.p(i4 & 1, (74899 & i4) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            AppsFlyerUiTracker appsFlyerUiTracker2 = (AppsFlyerUiTracker) gapComposerH.k(AppsFlyerTrackerEntryPointKt.f65808a);
            MutableState mutableStateC = FlowExtKt.c(qRCodeViewModel.getF52455f(), null, gapComposerH, 0, 7);
            QRCodeScreenState qRCodeScreenState = (QRCodeScreenState) mutableStateC.getF10755b();
            if (qRCodeScreenState instanceof QRCodeScreenState.Loading) {
                Modifier modifierO = n00.i(gapComposerH, -31066129, "QRCodeComposable").o(SizeKt.f5052c);
                int i5 = ((i4 << 3) & ImageMetadata.JPEG_GPS_COORDINATES) | 54;
                i3 = i4;
                appsFlyerUiTracker = appsFlyerUiTracker2;
                LvLoadingKt.b(modifierO, true, null, false, 0L, function2, gapComposerH, i5, 28);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            } else {
                i3 = i4;
                appsFlyerUiTracker = appsFlyerUiTracker2;
                boolean z2 = qRCodeScreenState instanceof QRCodeScreenState.Success.QrCode2D;
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (z2) {
                    gapComposerH.L(-30785734);
                    QRCodeScreenState qRCodeScreenState2 = (QRCodeScreenState) mutableStateC.getF10755b();
                    qRCodeScreenState2.getClass();
                    final QRCodeScreenState.Success.QrCode2D qrCode2D = (QRCodeScreenState.Success.QrCode2D) qRCodeScreenState2;
                    Unit unit = Unit.f71739a;
                    int i6 = i3 & 112;
                    boolean zY = (i6 == 32) | gapComposerH.y(qrCode2D);
                    Object objX = gapComposerH.x();
                    if (zY || objX == composer$Companion$Empty$1) {
                        objX = new QRCodeComposableKt$QRCodeComposable$2$1(userWorldwideIdViewModel, qrCode2D, null);
                        gapComposerH.q(objX);
                    }
                    EffectsKt.e(gapComposerH, unit, (Function2) objX);
                    boolean zY2 = gapComposerH.y(appsFlyerUiTracker) | gapComposerH.y(qrCode2D);
                    Object objX2 = gapComposerH.x();
                    if (zY2 || objX2 == composer$Companion$Empty$1) {
                        objX2 = new QRCodeComposableKt$QRCodeComposable$3$1(appsFlyerUiTracker, qrCode2D, null);
                        gapComposerH.q(objX2);
                    }
                    EffectsKt.e(gapComposerH, unit, (Function2) objX2);
                    function1.invoke(Boolean.TRUE);
                    Bitmap bitmap = qrCode2D.f52448a;
                    boolean zY3 = (i6 == 32) | ((i3 & 57344) == 16384) | gapComposerH.y(qrCode2D);
                    Object objX3 = gapComposerH.x();
                    if (zY3 || objX3 == composer$Companion$Empty$1) {
                        final int i7 = 0;
                        objX3 = new Function0(function2, userWorldwideIdViewModel, qrCode2D, i7) { // from class: uq0

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public final /* synthetic */ int f80382b;

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            public final /* synthetic */ Function0 f80383c;
                            public final /* synthetic */ UserWorldwideIdViewModel d;

                            {
                                this.f80382b = i7;
                            }

                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i8 = this.f80382b;
                                UserWorldwideIdViewModel userWorldwideIdViewModel2 = this.d;
                                Function0 function4 = this.f80383c;
                                switch (i8) {
                                    case 0:
                                        function4.mo47invoke();
                                        userWorldwideIdViewModel2.W(new MyLvTrackingUiModel.CloseQrCodeScreenEvent(false));
                                        break;
                                    default:
                                        function4.mo47invoke();
                                        userWorldwideIdViewModel2.W(new MyLvTrackingUiModel.CloseQrCodeScreenEvent(true));
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX3);
                    }
                    Function0 function4 = (Function0) objX3;
                    boolean zY4 = gapComposerH.y(qrCode2D) | (i6 == 32);
                    Object objX4 = gapComposerH.x();
                    if (zY4 || objX4 == composer$Companion$Empty$1) {
                        z = false;
                        final Object[] objArr = 0 == true ? 1 : 0;
                        objX4 = new Function0(userWorldwideIdViewModel, qrCode2D, objArr) { // from class: vq0

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public final /* synthetic */ int f80640b;

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            public final /* synthetic */ UserWorldwideIdViewModel f80641c;

                            {
                                this.f80640b = objArr;
                            }

                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i8 = this.f80640b;
                                UserWorldwideIdViewModel userWorldwideIdViewModel2 = this.f80641c;
                                switch (i8) {
                                    case 0:
                                        userWorldwideIdViewModel2.W(new MyLvTrackingUiModel.ScreenShotIntentionEvent(false));
                                        break;
                                    default:
                                        userWorldwideIdViewModel2.W(new MyLvTrackingUiModel.ScreenShotIntentionEvent(true));
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX4);
                    } else {
                        z = false;
                    }
                    QRCode2DScreenKt.a(bitmap, function4, null, (Function0) objX4, gapComposerH, 0);
                    gapComposerH.Z(z);
                } else if (qRCodeScreenState instanceof QRCodeScreenState.Success.QrCode3D) {
                    gapComposerH.L(-29554383);
                    QRCodeScreenState qRCodeScreenState3 = (QRCodeScreenState) mutableStateC.getF10755b();
                    qRCodeScreenState3.getClass();
                    final QRCodeScreenState.Success.QrCode3D qrCode3D = (QRCodeScreenState.Success.QrCode3D) qRCodeScreenState3;
                    Object objX5 = gapComposerH.x();
                    if (objX5 == composer$Companion$Empty$1) {
                        objX5 = SnapshotStateKt.g(Boolean.FALSE);
                        gapComposerH.q(objX5);
                    }
                    MutableState mutableState = (MutableState) objX5;
                    Unit unit2 = Unit.f71739a;
                    int i8 = i3 & 112;
                    boolean zY5 = (i8 == 32) | gapComposerH.y(qrCode3D);
                    Object objX6 = gapComposerH.x();
                    if (zY5 || objX6 == composer$Companion$Empty$1) {
                        objX6 = new QRCodeComposableKt$QRCodeComposable$6$1(userWorldwideIdViewModel, qrCode3D, null);
                        gapComposerH.q(objX6);
                    }
                    EffectsKt.e(gapComposerH, unit2, (Function2) objX6);
                    boolean zY6 = gapComposerH.y(appsFlyerUiTracker) | gapComposerH.y(qrCode3D);
                    Object objX7 = gapComposerH.x();
                    if (zY6 || objX7 == composer$Companion$Empty$1) {
                        objX7 = new QRCodeComposableKt$QRCodeComposable$7$1(appsFlyerUiTracker, qrCode3D, null);
                        gapComposerH.q(objX7);
                    }
                    EffectsKt.e(gapComposerH, unit2, (Function2) objX7);
                    function1.invoke(Boolean.TRUE);
                    if (((Boolean) mutableState.getF10755b()).booleanValue()) {
                        gapComposerH.L(-28881032);
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-28931965);
                        ScreenLoadingScreenKt.b(null, gapComposerH, 0);
                        gapComposerH.Z(false);
                    }
                    Bitmap bitmap2 = qrCode3D.f52449a;
                    Bitmap bitmap3 = qrCode3D.f52450b;
                    boolean zY7 = ((i3 & 57344) == 16384) | (i8 == 32) | gapComposerH.y(qrCode3D);
                    Object objX8 = gapComposerH.x();
                    if (zY7 || objX8 == composer$Companion$Empty$1) {
                        final int i9 = 1;
                        objX8 = new Function0(function2, userWorldwideIdViewModel, qrCode3D, i9) { // from class: uq0

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public final /* synthetic */ int f80382b;

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            public final /* synthetic */ Function0 f80383c;
                            public final /* synthetic */ UserWorldwideIdViewModel d;

                            {
                                this.f80382b = i9;
                            }

                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i10 = this.f80382b;
                                UserWorldwideIdViewModel userWorldwideIdViewModel2 = this.d;
                                Function0 function5 = this.f80383c;
                                switch (i10) {
                                    case 0:
                                        function5.mo47invoke();
                                        userWorldwideIdViewModel2.W(new MyLvTrackingUiModel.CloseQrCodeScreenEvent(false));
                                        break;
                                    default:
                                        function5.mo47invoke();
                                        userWorldwideIdViewModel2.W(new MyLvTrackingUiModel.CloseQrCodeScreenEvent(true));
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX8);
                    }
                    Function0 function5 = (Function0) objX8;
                    Object objX9 = gapComposerH.x();
                    if (objX9 == composer$Companion$Empty$1) {
                        objX9 = new u00(23, mutableState);
                        gapComposerH.q(objX9);
                    }
                    Function0 function6 = (Function0) objX9;
                    boolean zY8 = (i8 == 32) | gapComposerH.y(qrCode3D);
                    Object objX10 = gapComposerH.x();
                    if (zY8 || objX10 == composer$Companion$Empty$1) {
                        final int i10 = 1;
                        objX10 = new Function0(userWorldwideIdViewModel, qrCode3D, i10) { // from class: vq0

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public final /* synthetic */ int f80640b;

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            public final /* synthetic */ UserWorldwideIdViewModel f80641c;

                            {
                                this.f80640b = i10;
                            }

                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i11 = this.f80640b;
                                UserWorldwideIdViewModel userWorldwideIdViewModel2 = this.f80641c;
                                switch (i11) {
                                    case 0:
                                        userWorldwideIdViewModel2.W(new MyLvTrackingUiModel.ScreenShotIntentionEvent(false));
                                        break;
                                    default:
                                        userWorldwideIdViewModel2.W(new MyLvTrackingUiModel.ScreenShotIntentionEvent(true));
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX10);
                    }
                    QRCode3DScreenKt.a(bitmap2, bitmap3, function5, null, function6, (Function0) objX10, gapComposerH, 24576);
                    gapComposerH = gapComposerH;
                    gapComposerH.Z(false);
                } else {
                    if (!(qRCodeScreenState instanceof QRCodeScreenState.Error)) {
                        throw d21.u(gapComposerH, 276093571, false);
                    }
                    gapComposerH.L(-28119362);
                    QrCodeErrorScreenKt.a(function2, function0, gapComposerH, ((i3 >> 12) & 14) | ((i3 >> 6) & 112));
                    gapComposerH.Z(false);
                }
                a((QRCodeScreenState) mutableStateC.getF10755b(), userWorldwideIdViewModel, appsFlyerUiTracker, function3, gapComposerH, (i3 & 112) | ((i3 >> 6) & 7168));
            }
            a((QRCodeScreenState) mutableStateC.getF10755b(), userWorldwideIdViewModel, appsFlyerUiTracker, function3, gapComposerH, (i3 & 112) | ((i3 >> 6) & 7168));
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u1(qRCodeViewModel, userWorldwideIdViewModel, function1, function0, function2, function3, i2, 27);
        }
    }
}
