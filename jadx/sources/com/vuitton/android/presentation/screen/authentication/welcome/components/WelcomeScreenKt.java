package com.vuitton.android.presentation.screen.authentication.welcome.components;

import android.content.Context;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.pager.PagerKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.components.components.LVLoadingOverlayKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVCapsulePageControlKt;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialLoginViewState;
import com.vuitton.android.presentation.screen.authentication.welcome.components.WelcomeScreenKt;
import com.vuitton.android.presentation.screen.authentication.welcome.model.WelcomeViewState;
import defpackage.a;
import defpackage.db;
import defpackage.fs0;
import defpackage.jc;
import defpackage.od;
import defpackage.q31;
import defpackage.u31;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "userDragged", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class WelcomeScreenKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f54272a;

    static {
        Dp.Companion companion = Dp.f11004c;
        f54272a = 120.0f;
    }

    public static final void a(Modifier modifier, List list, Composer composer, int i2) {
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "LoginAdvantagesCarousel");
        }
        GapComposer gapComposerH = composer.h(-1738906061);
        int i3 = (gapComposerH.K(modifierE) ? 4 : 2) | i2 | (gapComposerH.y(list) ? 32 : 16);
        int i4 = 1;
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            boolean zY = gapComposerH.y(list);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new db(list, 19);
                gapComposerH.q(objX);
            }
            PagerState pagerStateB = PagerStateKt.b(0, (Function0) objX, gapComposerH, 0, 3);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX2);
            }
            final MutableState mutableState = (MutableState) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new NestedScrollConnection() { // from class: com.vuitton.android.presentation.screen.authentication.welcome.components.WelcomeScreenKt$LoginAdvantagesCarousel$scrollConnection$1$1
                    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
                    public final long l0(int i5, long j2) {
                        NestedScrollSource.f9260a.getClass();
                        if (i5 == NestedScrollSource.f9261b) {
                            float f2 = WelcomeScreenKt.f54272a;
                            mutableState.setValue(Boolean.TRUE);
                        }
                        Offset.f8806b.getClass();
                        return 0L;
                    }
                };
                gapComposerH.q(objX3);
            }
            WelcomeScreenKt$LoginAdvantagesCarousel$scrollConnection$1$1 welcomeScreenKt$LoginAdvantagesCarousel$scrollConnection$1$1 = (WelcomeScreenKt$LoginAdvantagesCarousel$scrollConnection$1$1) objX3;
            Unit unit = Unit.f71739a;
            boolean zK = gapComposerH.K(pagerStateB) | gapComposerH.y(list);
            Object objX4 = gapComposerH.x();
            if (zK || objX4 == composer$Companion$Empty$1) {
                objX4 = new WelcomeScreenKt$LoginAdvantagesCarousel$1$1(pagerStateB, list, mutableState, null);
                gapComposerH.q(objX4);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX4);
            gapComposer = gapComposerH;
            PagerKt.a(pagerStateB, NestedScrollModifierKt.a(modifierE, welcomeScreenKt$LoginAdvantagesCarousel$scrollConnection$1$1, null), null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, false, false, null, null, null, ComposableLambdaKt.b(432403154, new u31(i4, context, list), gapComposerH), gapComposer, 0, 24576, 16380);
            LVCapsulePageControlKt.a(PaddingKt.m(new DTFunctionNameModifier("LoginAdvantagesCarousel"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), pagerStateB, null, false, gapComposer, 0, 12);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new q31(modifierE, list, i2, 1);
        }
    }

    /* JADX WARN: Code duplicated, block: B:107:0x014e  */
    /* JADX WARN: Code duplicated, block: B:110:0x0157 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:111:0x0159  */
    /* JADX WARN: Code duplicated, block: B:112:0x015f  */
    /* JADX WARN: Code duplicated, block: B:114:0x0163  */
    /* JADX WARN: Code duplicated, block: B:115:0x0166  */
    /* JADX WARN: Code duplicated, block: B:118:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:119:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:121:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:124:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:126:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:44:0x008f  */
    /* JADX WARN: Code duplicated, block: B:46:0x0097  */
    /* JADX WARN: Code duplicated, block: B:47:0x009a  */
    /* JADX WARN: Code duplicated, block: B:49:0x009f  */
    /* JADX WARN: Code duplicated, block: B:52:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:54:0x00af  */
    /* JADX WARN: Code duplicated, block: B:55:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:59:0x00be  */
    /* JADX WARN: Code duplicated, block: B:61:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:62:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:66:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:68:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:69:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:73:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:75:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:76:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:80:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:82:0x0105  */
    /* JADX WARN: Code duplicated, block: B:83:0x0108  */
    /* JADX WARN: Code duplicated, block: B:85:0x010d  */
    /* JADX WARN: Code duplicated, block: B:88:0x0115  */
    /* JADX WARN: Code duplicated, block: B:90:0x011b  */
    /* JADX WARN: Code duplicated, block: B:91:0x011e  */
    /* JADX WARN: Code duplicated, block: B:93:0x0123  */
    /* JADX WARN: Code duplicated, block: B:96:0x012b  */
    /* JADX WARN: Code duplicated, block: B:98:0x0131  */
    /* JADX WARN: Code duplicated, block: B:99:0x0134  */
    public static final void b(Modifier modifier, final WelcomeViewState welcomeViewState, final SocialLoginViewState socialLoginViewState, boolean z, final Function0 function0, final Function0 function1, final Function0 function2, final Function0 function3, final Function0 function4, final Function0 function5, final SnackbarHostState snackbarHostState, final Function0 function6, Composer composer, final int i2, final int i3, final int i4) {
        int i5;
        Object obj;
        boolean z2;
        int i6;
        boolean z3;
        GapComposer gapComposer;
        final boolean z4;
        Modifier dTFunctionNameModifier;
        RecomposeScopeImpl recomposeScopeImplB0;
        boolean z5;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "WelcomeScreen");
        }
        welcomeViewState.getClass();
        socialLoginViewState.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        snackbarHostState.getClass();
        function6.getClass();
        GapComposer gapComposerH = composer.h(-566306668);
        int i15 = i4 & 1;
        if (i15 != 0) {
            i5 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i5 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i5 = i2;
        }
        if ((i2 & 48) == 0) {
            obj = welcomeViewState;
            i5 |= gapComposerH.y(obj) ? 32 : 16;
        } else {
            obj = welcomeViewState;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.K(socialLoginViewState) ? 256 : 128;
        }
        int i16 = i4 & 8;
        if (i16 == 0) {
            if ((i2 & 3072) == 0) {
                z2 = z;
                i5 |= gapComposerH.b(z2) ? 2048 : 1024;
            }
            if ((i2 & 24576) != 0) {
                if (gapComposerH.y(function0)) {
                    i14 = 16384;
                } else {
                    i14 = 8192;
                }
                i5 |= i14;
            }
            if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
                if (gapComposerH.y(function1)) {
                    i13 = 131072;
                } else {
                    i13 = 65536;
                }
                i5 |= i13;
            }
            if ((i2 & 1572864) == 0) {
                if (gapComposerH.y(function2)) {
                    i12 = 1048576;
                } else {
                    i12 = 524288;
                }
                i5 |= i12;
            }
            if ((i2 & 12582912) == 0) {
                if (gapComposerH.y(function3)) {
                    i11 = 8388608;
                } else {
                    i11 = 4194304;
                }
                i5 |= i11;
            }
            if ((i2 & 100663296) == 0) {
                if (gapComposerH.y(function4)) {
                    i10 = 67108864;
                } else {
                    i10 = 33554432;
                }
                i5 |= i10;
            }
            if ((i2 & 805306368) != 0) {
                if (gapComposerH.y(function5)) {
                    i9 = PKIFailureInfo.duplicateCertReq;
                } else {
                    i9 = 268435456;
                }
                i5 |= i9;
            }
            if ((i3 & 6) == 0) {
                if (gapComposerH.K(snackbarHostState)) {
                    i8 = 4;
                } else {
                    i8 = 2;
                }
                i6 = i3 | i8;
            } else {
                i6 = i3;
            }
            if ((i3 & 48) == 0) {
                if (gapComposerH.y(function6)) {
                    i7 = 32;
                } else {
                    i7 = 16;
                }
                i6 |= i7;
            }
            if ((i5 & 306783379) == 306783378 || (i6 & 19) != 18) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i5 & 1, z3)) {
                if (i15 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("WelcomeScreen");
                }
                if (i16 != 0) {
                    dTFunctionNameModifier = modifierE;
                    z5 = false;
                } else {
                    dTFunctionNameModifier = modifierE;
                    z5 = z2;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                boolean z6 = z5;
                ScaffoldKt.a(null, ComposableLambdaKt.b(1701439832, new od(z6, function5, obj, function4, function6, 13), gapComposerH), null, ComposableLambdaKt.b(-142195878, new fs0(snackbarHostState, 12), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(296951075, new jc(dTFunctionNameModifier, z6, welcomeViewState, function2, function3, function0, function1), gapComposerH), gapComposerH, 805309488, 501);
                gapComposer = gapComposerH;
                if (socialLoginViewState.f54197f) {
                    gapComposer.L(-203362452);
                    LVLoadingOverlayKt.a(false, gapComposer, 0, 1);
                    gapComposer.Z(false);
                } else {
                    gapComposer.L(-203329778);
                    gapComposer.Z(false);
                }
                z4 = z6;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                z4 = z2;
                dTFunctionNameModifier = modifierE;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                final Modifier modifier2 = dTFunctionNameModifier;
                recomposeScopeImplB0.d = new Function2() { // from class: t61
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        ((Integer) obj3).getClass();
                        int iA = RecomposeScopeImplKt.a(i2 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i3);
                        WelcomeScreenKt.b(modifier2, welcomeViewState, socialLoginViewState, z4, function0, function1, function2, function3, function4, function5, snackbarHostState, function6, (Composer) obj2, iA, iA2, i4);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i5 |= 3072;
        z2 = z;
        if ((i2 & 24576) != 0) {
            if (gapComposerH.y(function0)) {
                i14 = 16384;
            } else {
                i14 = 8192;
            }
            i5 |= i14;
        }
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            if (gapComposerH.y(function1)) {
                i13 = 131072;
            } else {
                i13 = 65536;
            }
            i5 |= i13;
        }
        if ((i2 & 1572864) == 0) {
            if (gapComposerH.y(function2)) {
                i12 = 1048576;
            } else {
                i12 = 524288;
            }
            i5 |= i12;
        }
        if ((i2 & 12582912) == 0) {
            if (gapComposerH.y(function3)) {
                i11 = 8388608;
            } else {
                i11 = 4194304;
            }
            i5 |= i11;
        }
        if ((i2 & 100663296) == 0) {
            if (gapComposerH.y(function4)) {
                i10 = 67108864;
            } else {
                i10 = 33554432;
            }
            i5 |= i10;
        }
        if ((i2 & 805306368) != 0) {
            if (gapComposerH.y(function5)) {
                i9 = PKIFailureInfo.duplicateCertReq;
            } else {
                i9 = 268435456;
            }
            i5 |= i9;
        }
        if ((i3 & 6) == 0) {
            if (gapComposerH.K(snackbarHostState)) {
                i8 = 4;
            } else {
                i8 = 2;
            }
            i6 = i3 | i8;
        } else {
            i6 = i3;
        }
        if ((i3 & 48) == 0) {
            if (gapComposerH.y(function6)) {
                i7 = 32;
            } else {
                i7 = 16;
            }
            i6 |= i7;
        }
        if ((i5 & 306783379) == 306783378) {
            z3 = true;
        } else {
            z3 = true;
        }
        if (gapComposerH.p(i5 & 1, z3)) {
            if (i15 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("WelcomeScreen");
            }
            if (i16 != 0) {
                dTFunctionNameModifier = modifierE;
                z5 = false;
            } else {
                dTFunctionNameModifier = modifierE;
                z5 = z2;
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            boolean z7 = z5;
            ScaffoldKt.a(null, ComposableLambdaKt.b(1701439832, new od(z7, function5, obj, function4, function6, 13), gapComposerH), null, ComposableLambdaKt.b(-142195878, new fs0(snackbarHostState, 12), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(296951075, new jc(dTFunctionNameModifier, z7, welcomeViewState, function2, function3, function0, function1), gapComposerH), gapComposerH, 805309488, 501);
            gapComposer = gapComposerH;
            if (socialLoginViewState.f54197f) {
                gapComposer.L(-203362452);
                LVLoadingOverlayKt.a(false, gapComposer, 0, 1);
                gapComposer.Z(false);
            } else {
                gapComposer.L(-203329778);
                gapComposer.Z(false);
            }
            z4 = z7;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            z4 = z2;
            dTFunctionNameModifier = modifierE;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier3 = dTFunctionNameModifier;
            recomposeScopeImplB0.d = new Function2() { // from class: t61
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    ((Integer) obj3).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i3);
                    WelcomeScreenKt.b(modifier3, welcomeViewState, socialLoginViewState, z4, function0, function1, function2, function3, function4, function5, snackbarHostState, function6, (Composer) obj2, iA, iA2, i4);
                    return Unit.f71739a;
                }
            };
        }
    }
}
