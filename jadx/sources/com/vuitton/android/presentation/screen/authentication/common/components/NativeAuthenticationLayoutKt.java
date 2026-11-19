package com.vuitton.android.presentation.screen.authentication.common.components;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.pager.PagerKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVLoadingOverlayKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVPageNumberIndicatorKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVProgressIndicatorKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutContext;
import com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt;
import com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationTitleKt;
import com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitle;
import com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterBottomSheetScreen;
import defpackage.ae0;
import defpackage.v40;
import defpackage.we;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NativeAuthenticationLayoutKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f53478a;

        static {
            int[] iArr = new int[NativeAuthenticationLayoutContext.values().length];
            try {
                iArr[NativeAuthenticationLayoutContext.REGISTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NativeAuthenticationLayoutContext.FORGET_PASSWORD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[NativeAuthenticationLayoutContext.ACCOUNT_ACTIVATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f53478a = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0154  */
    /* JADX WARN: Code duplicated, block: B:103:0x0158  */
    /* JADX WARN: Code duplicated, block: B:105:0x0162  */
    /* JADX WARN: Code duplicated, block: B:106:0x0165  */
    /* JADX WARN: Code duplicated, block: B:110:0x016d  */
    /* JADX WARN: Code duplicated, block: B:112:0x0175  */
    /* JADX WARN: Code duplicated, block: B:113:0x0178  */
    /* JADX WARN: Code duplicated, block: B:115:0x017d  */
    /* JADX WARN: Code duplicated, block: B:118:0x0183  */
    /* JADX WARN: Code duplicated, block: B:120:0x018b  */
    /* JADX WARN: Code duplicated, block: B:123:0x0192  */
    /* JADX WARN: Code duplicated, block: B:126:0x0199  */
    /* JADX WARN: Code duplicated, block: B:128:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:130:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:132:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:136:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:138:0x01be  */
    /* JADX WARN: Code duplicated, block: B:142:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:146:0x01df  */
    /* JADX WARN: Code duplicated, block: B:149:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:151:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:152:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:155:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:156:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:159:0x0204  */
    /* JADX WARN: Code duplicated, block: B:160:0x0207  */
    /* JADX WARN: Code duplicated, block: B:162:0x020b  */
    /* JADX WARN: Code duplicated, block: B:163:0x020d  */
    /* JADX WARN: Code duplicated, block: B:165:0x0211  */
    /* JADX WARN: Code duplicated, block: B:166:0x0214  */
    /* JADX WARN: Code duplicated, block: B:169:0x021a  */
    /* JADX WARN: Code duplicated, block: B:170:0x021d  */
    /* JADX WARN: Code duplicated, block: B:172:0x0221  */
    /* JADX WARN: Code duplicated, block: B:173:0x0223  */
    /* JADX WARN: Code duplicated, block: B:176:0x022f  */
    /* JADX WARN: Code duplicated, block: B:179:0x0247  */
    /* JADX WARN: Code duplicated, block: B:181:0x024a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:182:0x024c  */
    /* JADX WARN: Code duplicated, block: B:184:0x0259  */
    /* JADX WARN: Code duplicated, block: B:186:0x025d  */
    /* JADX WARN: Code duplicated, block: B:187:0x0260  */
    /* JADX WARN: Code duplicated, block: B:189:0x0298  */
    /* JADX WARN: Code duplicated, block: B:190:0x02b0  */
    /* JADX WARN: Code duplicated, block: B:194:0x02f4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:195:0x02f6  */
    /* JADX WARN: Code duplicated, block: B:197:0x02f9  */
    /* JADX WARN: Code duplicated, block: B:199:0x0302  */
    /* JADX WARN: Code duplicated, block: B:201:0x0306  */
    /* JADX WARN: Code duplicated, block: B:202:0x030d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:203:0x030f  */
    /* JADX WARN: Code duplicated, block: B:204:0x0311  */
    /* JADX WARN: Code duplicated, block: B:207:0x031f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:208:0x0321  */
    /* JADX WARN: Code duplicated, block: B:210:0x037e  */
    /* JADX WARN: Code duplicated, block: B:213:0x0398  */
    /* JADX WARN: Code duplicated, block: B:215:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:70:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:72:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:73:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:77:0x0108  */
    /* JADX WARN: Code duplicated, block: B:79:0x010f  */
    /* JADX WARN: Code duplicated, block: B:81:0x0113  */
    /* JADX WARN: Code duplicated, block: B:83:0x011d  */
    /* JADX WARN: Code duplicated, block: B:84:0x0120  */
    /* JADX WARN: Code duplicated, block: B:88:0x012c  */
    /* JADX WARN: Code duplicated, block: B:89:0x0133  */
    /* JADX WARN: Code duplicated, block: B:91:0x0139  */
    /* JADX WARN: Code duplicated, block: B:93:0x013f  */
    /* JADX WARN: Code duplicated, block: B:94:0x0142  */
    /* JADX WARN: Code duplicated, block: B:96:0x0147  */
    /* JADX WARN: Code duplicated, block: B:99:0x014d  */
    public static final void a(Modifier modifier, final NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext, final PagerState pagerState, final FocusManager focusManager, LVModalBottomSheetState lVModalBottomSheetState, NativeRegisterBottomSheetScreen nativeRegisterBottomSheetScreen, final boolean z, String str, final SnackbarHostState snackbarHostState, Function0 function0, Function0 function1, Function0 function2, final Function0 function3, final Function0 function4, boolean z2, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i2, final int i3, final int i4) {
        NativeRegisterBottomSheetScreen nativeRegisterBottomSheetScreen2;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        boolean z3;
        GapComposer gapComposer;
        final LVModalBottomSheetState lVModalBottomSheetState2;
        final String str2;
        final Function0 function5;
        final Function0 function6;
        final boolean z4;
        final NativeRegisterBottomSheetScreen nativeRegisterBottomSheetScreen3;
        final Modifier modifier2;
        final Function0 function7;
        RecomposeScopeImpl recomposeScopeImplB0;
        final LVModalBottomSheetState lVModalBottomSheetState3;
        final NativeRegisterBottomSheetScreen nativeRegisterBottomSheetScreen4;
        final String str3;
        final Function0 function8;
        final Function0 function9;
        final Function0 function10;
        boolean z5;
        Object objX;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        int i15;
        int i16;
        boolean z6;
        NativeAuthenticationTitle nativeAuthenticationTitle;
        final List listV;
        int i17;
        final int i18;
        int size;
        boolean zY;
        Object objX2;
        List list;
        int i19;
        int i20;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "NativeAuthenticationLayout");
        }
        nativeAuthenticationLayoutContext.getClass();
        pagerState.getClass();
        focusManager.getClass();
        snackbarHostState.getClass();
        function3.getClass();
        function4.getClass();
        GapComposer gapComposerH = composer.h(1338076860);
        int i21 = i2 | 6;
        if ((i2 & 48) == 0) {
            i21 |= gapComposerH.d(nativeAuthenticationLayoutContext.ordinal()) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i21 |= gapComposerH.K(pagerState) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i21 |= gapComposerH.y(focusManager) ? 2048 : 1024;
        }
        int i22 = i4 & 16;
        if (i22 != 0) {
            i21 |= 24576;
        } else if ((i2 & 24576) == 0) {
            i21 |= (32768 & i2) == 0 ? gapComposerH.K(lVModalBottomSheetState) : gapComposerH.y(lVModalBottomSheetState) ? 16384 : 8192;
        }
        int i23 = i4 & 32;
        if (i23 != 0) {
            i21 |= ImageMetadata.EDGE_MODE;
            nativeRegisterBottomSheetScreen2 = nativeRegisterBottomSheetScreen;
        } else {
            nativeRegisterBottomSheetScreen2 = nativeRegisterBottomSheetScreen;
            if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
                i21 |= gapComposerH.K(nativeRegisterBottomSheetScreen2) ? 131072 : 65536;
            }
        }
        if ((i2 & 1572864) == 0) {
            i21 |= gapComposerH.b(z) ? 1048576 : 524288;
        }
        int i24 = i4 & 128;
        if (i24 == 0) {
            if ((i2 & 12582912) == 0) {
                i21 |= gapComposerH.K(str) ? 8388608 : 4194304;
            }
            if ((i2 & 100663296) == 0) {
                if (gapComposerH.K(snackbarHostState)) {
                    i20 = 67108864;
                } else {
                    i20 = 33554432;
                }
                i21 |= i20;
            }
            i5 = i4 & 512;
            if (i5 != 0) {
                if ((i2 & 805306368) == 0) {
                    if (gapComposerH.y(function0)) {
                        i6 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i6 = 268435456;
                    }
                    i21 |= i6;
                }
                i7 = i4 & 1024;
                if (i7 != 0) {
                    i8 = i3 | 6;
                } else if ((i3 & 6) == 0) {
                    if (gapComposerH.y(function1)) {
                        i9 = 4;
                    } else {
                        i9 = 2;
                    }
                    i8 = i3 | i9;
                } else {
                    i8 = i3;
                }
                i10 = i4 & 2048;
                if (i10 != 0) {
                    if ((i3 & 48) == 0) {
                        if (gapComposerH.y(function2)) {
                            i11 = 32;
                        } else {
                            i11 = 16;
                        }
                        i8 |= i11;
                    }
                    if ((i3 & KyberEngine.KyberPolyBytes) != 0) {
                        if (gapComposerH.y(function3)) {
                            i19 = 256;
                        } else {
                            i19 = 128;
                        }
                        i8 |= i19;
                    }
                    if ((i3 & 3072) != 0) {
                        i8 |= gapComposerH.y(function4) ? 2048 : 1024;
                    }
                    i12 = i8;
                    i13 = i4 & 16384;
                    if (i13 != 0) {
                        i14 = i12;
                        if ((i3 & 24576) == 0) {
                            i14 |= gapComposerH.b(z2) ? 16384 : 8192;
                        }
                        if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                            i14 |= gapComposerH.y(composableLambdaImpl) ? 131072 : 65536;
                        }
                        if ((i21 & 306783379) == 306783378 || (i14 & 74899) != 74898) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (gapComposerH.p(i21 & 1, z3)) {
                            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("NativeAuthenticationLayout");
                            if (i22 != 0) {
                                lVModalBottomSheetState3 = null;
                            } else {
                                lVModalBottomSheetState3 = lVModalBottomSheetState;
                            }
                            if (i23 != 0) {
                                nativeRegisterBottomSheetScreen4 = null;
                            } else {
                                nativeRegisterBottomSheetScreen4 = nativeRegisterBottomSheetScreen2;
                            }
                            if (i24 != 0) {
                                str3 = null;
                            } else {
                                str3 = str;
                            }
                            if (i5 != 0) {
                                function8 = null;
                            } else {
                                function8 = function0;
                            }
                            if (i7 != 0) {
                                function9 = null;
                            } else {
                                function9 = function1;
                            }
                            if (i10 != 0) {
                                function10 = null;
                            } else {
                                function10 = function2;
                            }
                            if (i13 != 0) {
                                z5 = false;
                            } else {
                                z5 = z2;
                            }
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            objX = gapComposerH.x();
                            composer$Companion$Empty$1 = Composer.Companion.f7939a;
                            if (objX == composer$Companion$Empty$1) {
                                objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                                gapComposerH.q(objX);
                            }
                            final CoroutineScope coroutineScope = (CoroutineScope) objX;
                            int[] iArr = WhenMappings.f53478a;
                            i15 = iArr[nativeAuthenticationLayoutContext.ordinal()];
                            if (i15 != 1) {
                                if (i15 != 2) {
                                    list = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a;
                                } else {
                                    if (i15 == 3) {
                                        v40.g();
                                        return;
                                    }
                                    list = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53486b;
                                }
                                listV = list;
                                z6 = z5;
                                function8 = function8;
                                i16 = 2;
                            } else {
                                List list2 = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a;
                                i16 = 2;
                                NativeAuthenticationTitle nativeAuthenticationTitle2 = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_create_account, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                                z6 = z5;
                                NativeAuthenticationTitle nativeAuthenticationTitle3 = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_information, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description2, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                                if (z6) {
                                    nativeAuthenticationTitle = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_address, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description_address, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                                } else {
                                    nativeAuthenticationTitle = null;
                                }
                                listV = ArraysKt.v(new NativeAuthenticationTitle[]{nativeAuthenticationTitle2, nativeAuthenticationTitle3, nativeAuthenticationTitle, new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_information, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description3, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text"), new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_activate_account, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description_activation_code, null, 2, null), "nativeRegister_titleActivateAccount_text", "nativeRegister_descriptionActivationCode_text")});
                            }
                            i17 = iArr[nativeAuthenticationLayoutContext.ordinal()];
                            if (i17 != 1) {
                                if (z6) {
                                    size = 5;
                                } else {
                                    i18 = 4;
                                }
                                Unit unit = Unit.f71739a;
                                zY = gapComposerH.y(focusManager);
                                objX2 = gapComposerH.x();
                                if (zY || objX2 == composer$Companion$Empty$1) {
                                    objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                                        @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                        public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                            Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                            return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                                        }
                                    };
                                    gapComposerH.q(objX2);
                                }
                                gapComposer = gapComposerH;
                                ScaffoldKt.a(WindowInsetsPadding_androidKt.a(SuspendingPointerInputFilterKt.a(dTFunctionNameModifier, unit, (PointerInputEventHandler) objX2)), null, null, ComposableLambdaKt.b(-680791422, new ae0(snackbarHostState, 1), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-377167413, new Function3() { // from class: le0
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object A(Object obj, Object obj2, Object obj3) {
                                        String str4;
                                        PaddingValues paddingValues = (PaddingValues) obj;
                                        Composer composer2 = (Composer) obj2;
                                        int iIntValue = ((Integer) obj3).intValue();
                                        paddingValues.getClass();
                                        if ((iIntValue & 6) == 0) {
                                            iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                                        }
                                        if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                            Modifier modifierO = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2").o(SizeKt.f5052c);
                                            Painter painterA = PainterResources_androidKt.a(R.drawable.native_login_background, composer2, 0);
                                            ContentScale.f9447a.getClass();
                                            Modifier modifierH = PaddingKt.h(PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), paddingValues);
                                            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                                            Alignment.f8582a.getClass();
                                            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                                            int iHashCode = Long.hashCode(composer2.getT());
                                            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                            Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                                            ComposeUiNode.b0.getClass();
                                            Function0 function11 = ComposeUiNode.Companion.f9641b;
                                            if (composer2.getF7976a() == null) {
                                                ComposablesKt.b();
                                                throw null;
                                            }
                                            composer2.B();
                                            if (composer2.getS()) {
                                                composer2.C(function11);
                                            } else {
                                                composer2.o();
                                            }
                                            Function2 function12 = ComposeUiNode.Companion.f9644f;
                                            Updater.c(composer2, columnMeasurePolicyA, function12);
                                            Function2 function13 = ComposeUiNode.Companion.f9643e;
                                            Updater.c(composer2, persistentCompositionLocalMapN, function13);
                                            Integer numValueOf = Integer.valueOf(iHashCode);
                                            Function2 function14 = ComposeUiNode.Companion.g;
                                            Updater.c(composer2, numValueOf, function14);
                                            Function1 function15 = ComposeUiNode.Companion.f9645h;
                                            Updater.b(composer2, function15);
                                            Function2 function16 = ComposeUiNode.Companion.d;
                                            Updater.c(composer2, modifierC, function16);
                                            Modifier modifierD = SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
                                            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                            int iHashCode2 = Long.hashCode(composer2.getT());
                                            PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                                            Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
                                            if (composer2.getF7976a() == null) {
                                                ComposablesKt.b();
                                                throw null;
                                            }
                                            composer2.B();
                                            if (composer2.getS()) {
                                                composer2.C(function11);
                                            } else {
                                                composer2.o();
                                            }
                                            Updater.c(composer2, measurePolicyD, function12);
                                            Updater.c(composer2, persistentCompositionLocalMapN2, function13);
                                            cj.s(iHashCode2, composer2, function14, composer2, function15);
                                            Updater.c(composer2, modifierC2, function16);
                                            PagerState pagerState2 = pagerState;
                                            boolean z7 = pagerState2.k() > 0;
                                            EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                                            ExitTransition exitTransitionH = EnterExitTransitionKt.h(null, 3);
                                            Function0 function17 = function3;
                                            CoroutineScope coroutineScope2 = coroutineScope;
                                            NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext2 = nativeAuthenticationLayoutContext;
                                            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(99358455, new r(function17, coroutineScope2, pagerState2, nativeAuthenticationLayoutContext2), composer2);
                                            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                                            AnimatedVisibilityKt.c(columnScopeInstance, z7, null, enterTransitionF, exitTransitionH, null, composableLambdaImplB, composer2, 1600518, 18);
                                            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2");
                                            BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                                            BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                                            LVPageNumberIndicatorKt.a(boxScopeInstance.g(dTFunctionNameModifier2, biasAlignment), pagerState2, null, composer2, 0, 4);
                                            Modifier modifierC3 = ModifierExtKt.c(boxScopeInstance.g(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(composer2).o), Alignment.Companion.g), false, null, null, function4, 31);
                                            int i25 = NativeAuthenticationLayoutKt.WhenMappings.f53478a[nativeAuthenticationLayoutContext2.ordinal()];
                                            if (i25 == 1) {
                                                str4 = "nativeRegister_cross_button";
                                            } else if (i25 == 2) {
                                                str4 = "nativeForgetPassword_cross_button";
                                            } else {
                                                if (i25 != 3) {
                                                    v40.g();
                                                    return null;
                                                }
                                                str4 = "account_activation_close";
                                            }
                                            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).q, composer2, 0), StringResources_androidKt.c(composer2, R.string.alt_close), ModifierExtKt.e(modifierC3, str4), LVAppDesignKitTheme.c(composer2).f48361b.m, composer2, 8, 0);
                                            composer2.r();
                                            LVProgressIndicatorKt.a(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), pagerState2.k(), pagerState2.k() + 1, i18, Color.b(0.8f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), Color.b(0.4f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), new TweenSpec(1000, 200, EasingKt.f3863b), composer2, 0);
                                            NativeAuthenticationTitleKt.a(SizeKt.d(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f), listV, pagerState2.k(), composer2, 0);
                                            PagerKt.a(pagerState2, columnScopeInstance.a(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f, true), null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Alignment.Companion.f8591k, null, false, false, null, null, null, ComposableLambdaKt.b(228520436, new v10(composableLambdaImpl, 2), composer2), composer2, 102236160, 24576, 16060);
                                            composer2.r();
                                            if (z) {
                                                composer2.L(-554090323);
                                                LVLoadingOverlayKt.a(false, composer2, 0, 1);
                                                composer2.F();
                                            } else {
                                                composer2.L(-554049961);
                                                composer2.F();
                                            }
                                            LVModalBottomSheetState lVModalBottomSheetState4 = lVModalBottomSheetState3;
                                            if (lVModalBottomSheetState4 == null || !lVModalBottomSheetState4.a()) {
                                                composer2.L(-552683977);
                                                composer2.F();
                                            } else {
                                                composer2.L(-553908601);
                                                String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                                                Function0 function18 = function10;
                                                boolean zK = composer2.K(function18);
                                                Object objX3 = composer2.x();
                                                if (zK || objX3 == Composer.Companion.f7939a) {
                                                    objX3 = new ee0(function18, 2);
                                                    composer2.q(objX3);
                                                }
                                                LVModalBottomSheetKt.b(Modifier.Companion.f8607b, strC, (Function0) objX3, lVModalBottomSheetState4, null, 0L, false, null, ComposableLambdaKt.b(-1062906429, new w0(nativeRegisterBottomSheetScreen4, str3, function8, coroutineScope2, lVModalBottomSheetState4, function9, function18), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663302, 240);
                                                composer2.F();
                                            }
                                        } else {
                                            composer2.D();
                                        }
                                        return Unit.f71739a;
                                    }
                                }, gapComposerH), gapComposer, 805309440, 502);
                                z4 = z6;
                                lVModalBottomSheetState2 = lVModalBottomSheetState3;
                                function7 = function10;
                                nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen4;
                                str2 = str3;
                                function5 = function8;
                                function6 = function9;
                                modifier2 = dTFunctionNameModifier;
                            } else if (i17 != i16) {
                                size = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a.size();
                            } else {
                                if (i17 == 3) {
                                    v40.g();
                                    return;
                                }
                                size = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53486b.size();
                            }
                            i18 = size;
                            Unit unit2 = Unit.f71739a;
                            zY = gapComposerH.y(focusManager);
                            objX2 = gapComposerH.x();
                            if (zY) {
                                objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                        Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                                    }
                                };
                                gapComposerH.q(objX2);
                            } else {
                                objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                        Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                                    }
                                };
                                gapComposerH.q(objX2);
                            }
                            gapComposer = gapComposerH;
                            ScaffoldKt.a(WindowInsetsPadding_androidKt.a(SuspendingPointerInputFilterKt.a(dTFunctionNameModifier, unit2, (PointerInputEventHandler) objX2)), null, null, ComposableLambdaKt.b(-680791422, new ae0(snackbarHostState, 1), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-377167413, new Function3() { // from class: le0
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj, Object obj2, Object obj3) {
                                    String str4;
                                    PaddingValues paddingValues = (PaddingValues) obj;
                                    Composer composer2 = (Composer) obj2;
                                    int iIntValue = ((Integer) obj3).intValue();
                                    paddingValues.getClass();
                                    if ((iIntValue & 6) == 0) {
                                        iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                                    }
                                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                        Modifier modifierO = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2").o(SizeKt.f5052c);
                                        Painter painterA = PainterResources_androidKt.a(R.drawable.native_login_background, composer2, 0);
                                        ContentScale.f9447a.getClass();
                                        Modifier modifierH = PaddingKt.h(PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), paddingValues);
                                        Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                                        Alignment.f8582a.getClass();
                                        ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                                        int iHashCode = Long.hashCode(composer2.getT());
                                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                                        ComposeUiNode.b0.getClass();
                                        Function0 function11 = ComposeUiNode.Companion.f9641b;
                                        if (composer2.getF7976a() == null) {
                                            ComposablesKt.b();
                                            throw null;
                                        }
                                        composer2.B();
                                        if (composer2.getS()) {
                                            composer2.C(function11);
                                        } else {
                                            composer2.o();
                                        }
                                        Function2 function12 = ComposeUiNode.Companion.f9644f;
                                        Updater.c(composer2, columnMeasurePolicyA, function12);
                                        Function2 function13 = ComposeUiNode.Companion.f9643e;
                                        Updater.c(composer2, persistentCompositionLocalMapN, function13);
                                        Integer numValueOf = Integer.valueOf(iHashCode);
                                        Function2 function14 = ComposeUiNode.Companion.g;
                                        Updater.c(composer2, numValueOf, function14);
                                        Function1 function15 = ComposeUiNode.Companion.f9645h;
                                        Updater.b(composer2, function15);
                                        Function2 function16 = ComposeUiNode.Companion.d;
                                        Updater.c(composer2, modifierC, function16);
                                        Modifier modifierD = SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
                                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                        int iHashCode2 = Long.hashCode(composer2.getT());
                                        PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                                        Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
                                        if (composer2.getF7976a() == null) {
                                            ComposablesKt.b();
                                            throw null;
                                        }
                                        composer2.B();
                                        if (composer2.getS()) {
                                            composer2.C(function11);
                                        } else {
                                            composer2.o();
                                        }
                                        Updater.c(composer2, measurePolicyD, function12);
                                        Updater.c(composer2, persistentCompositionLocalMapN2, function13);
                                        cj.s(iHashCode2, composer2, function14, composer2, function15);
                                        Updater.c(composer2, modifierC2, function16);
                                        PagerState pagerState2 = pagerState;
                                        boolean z7 = pagerState2.k() > 0;
                                        EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                                        ExitTransition exitTransitionH = EnterExitTransitionKt.h(null, 3);
                                        Function0 function17 = function3;
                                        CoroutineScope coroutineScope2 = coroutineScope;
                                        NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext2 = nativeAuthenticationLayoutContext;
                                        ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(99358455, new r(function17, coroutineScope2, pagerState2, nativeAuthenticationLayoutContext2), composer2);
                                        ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                                        AnimatedVisibilityKt.c(columnScopeInstance, z7, null, enterTransitionF, exitTransitionH, null, composableLambdaImplB, composer2, 1600518, 18);
                                        DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2");
                                        BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                                        LVPageNumberIndicatorKt.a(boxScopeInstance.g(dTFunctionNameModifier2, biasAlignment), pagerState2, null, composer2, 0, 4);
                                        Modifier modifierC3 = ModifierExtKt.c(boxScopeInstance.g(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(composer2).o), Alignment.Companion.g), false, null, null, function4, 31);
                                        int i25 = NativeAuthenticationLayoutKt.WhenMappings.f53478a[nativeAuthenticationLayoutContext2.ordinal()];
                                        if (i25 == 1) {
                                            str4 = "nativeRegister_cross_button";
                                        } else if (i25 == 2) {
                                            str4 = "nativeForgetPassword_cross_button";
                                        } else {
                                            if (i25 != 3) {
                                                v40.g();
                                                return null;
                                            }
                                            str4 = "account_activation_close";
                                        }
                                        IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).q, composer2, 0), StringResources_androidKt.c(composer2, R.string.alt_close), ModifierExtKt.e(modifierC3, str4), LVAppDesignKitTheme.c(composer2).f48361b.m, composer2, 8, 0);
                                        composer2.r();
                                        LVProgressIndicatorKt.a(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), pagerState2.k(), pagerState2.k() + 1, i18, Color.b(0.8f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), Color.b(0.4f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), new TweenSpec(1000, 200, EasingKt.f3863b), composer2, 0);
                                        NativeAuthenticationTitleKt.a(SizeKt.d(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f), listV, pagerState2.k(), composer2, 0);
                                        PagerKt.a(pagerState2, columnScopeInstance.a(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f, true), null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Alignment.Companion.f8591k, null, false, false, null, null, null, ComposableLambdaKt.b(228520436, new v10(composableLambdaImpl, 2), composer2), composer2, 102236160, 24576, 16060);
                                        composer2.r();
                                        if (z) {
                                            composer2.L(-554090323);
                                            LVLoadingOverlayKt.a(false, composer2, 0, 1);
                                            composer2.F();
                                        } else {
                                            composer2.L(-554049961);
                                            composer2.F();
                                        }
                                        LVModalBottomSheetState lVModalBottomSheetState4 = lVModalBottomSheetState3;
                                        if (lVModalBottomSheetState4 == null || !lVModalBottomSheetState4.a()) {
                                            composer2.L(-552683977);
                                            composer2.F();
                                        } else {
                                            composer2.L(-553908601);
                                            String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                                            Function0 function18 = function10;
                                            boolean zK = composer2.K(function18);
                                            Object objX3 = composer2.x();
                                            if (zK || objX3 == Composer.Companion.f7939a) {
                                                objX3 = new ee0(function18, 2);
                                                composer2.q(objX3);
                                            }
                                            LVModalBottomSheetKt.b(Modifier.Companion.f8607b, strC, (Function0) objX3, lVModalBottomSheetState4, null, 0L, false, null, ComposableLambdaKt.b(-1062906429, new w0(nativeRegisterBottomSheetScreen4, str3, function8, coroutineScope2, lVModalBottomSheetState4, function9, function18), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663302, 240);
                                            composer2.F();
                                        }
                                    } else {
                                        composer2.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }, gapComposerH), gapComposer, 805309440, 502);
                            z4 = z6;
                            lVModalBottomSheetState2 = lVModalBottomSheetState3;
                            function7 = function10;
                            nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen4;
                            str2 = str3;
                            function5 = function8;
                            function6 = function9;
                            modifier2 = dTFunctionNameModifier;
                        } else {
                            gapComposer = gapComposerH;
                            gapComposer.D();
                            lVModalBottomSheetState2 = lVModalBottomSheetState;
                            str2 = str;
                            function5 = function0;
                            function6 = function1;
                            z4 = z2;
                            nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen2;
                            modifier2 = modifierE;
                            function7 = function2;
                        }
                        recomposeScopeImplB0 = gapComposer.b0();
                        if (recomposeScopeImplB0 != null) {
                            recomposeScopeImplB0.d = new Function2() { // from class: me0
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    ((Integer) obj2).getClass();
                                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                                    int iA2 = RecomposeScopeImplKt.a(i3);
                                    NativeAuthenticationLayoutKt.a(modifier2, nativeAuthenticationLayoutContext, pagerState, focusManager, lVModalBottomSheetState2, nativeRegisterBottomSheetScreen3, z, str2, snackbarHostState, function5, function6, function7, function3, function4, z4, composableLambdaImpl, (Composer) obj, iA, iA2, i4);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i14 = i12 | 24576;
                    if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                        i14 |= gapComposerH.y(composableLambdaImpl) ? 131072 : 65536;
                    }
                    if ((i21 & 306783379) == 306783378) {
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                    if (gapComposerH.p(i21 & 1, z3)) {
                        DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("NativeAuthenticationLayout");
                        if (i22 != 0) {
                            lVModalBottomSheetState3 = null;
                        } else {
                            lVModalBottomSheetState3 = lVModalBottomSheetState;
                        }
                        if (i23 != 0) {
                            nativeRegisterBottomSheetScreen4 = null;
                        } else {
                            nativeRegisterBottomSheetScreen4 = nativeRegisterBottomSheetScreen2;
                        }
                        if (i24 != 0) {
                            str3 = null;
                        } else {
                            str3 = str;
                        }
                        if (i5 != 0) {
                            function8 = null;
                        } else {
                            function8 = function0;
                        }
                        if (i7 != 0) {
                            function9 = null;
                        } else {
                            function9 = function1;
                        }
                        if (i10 != 0) {
                            function10 = null;
                        } else {
                            function10 = function2;
                        }
                        if (i13 != 0) {
                            z5 = false;
                        } else {
                            z5 = z2;
                        }
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        objX = gapComposerH.x();
                        composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (objX == composer$Companion$Empty$1) {
                            objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                            gapComposerH.q(objX);
                        }
                        final CoroutineScope coroutineScope2 = (CoroutineScope) objX;
                        int[] iArr2 = WhenMappings.f53478a;
                        i15 = iArr2[nativeAuthenticationLayoutContext.ordinal()];
                        if (i15 != 1) {
                            if (i15 != 2) {
                                list = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a;
                            } else {
                                if (i15 == 3) {
                                    v40.g();
                                    return;
                                }
                                list = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53486b;
                            }
                            listV = list;
                            z6 = z5;
                            function8 = function8;
                            i16 = 2;
                        } else {
                            List list3 = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a;
                            i16 = 2;
                            NativeAuthenticationTitle nativeAuthenticationTitle4 = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_create_account, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                            z6 = z5;
                            NativeAuthenticationTitle nativeAuthenticationTitle5 = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_information, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description2, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                            if (z6) {
                                nativeAuthenticationTitle = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_address, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description_address, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                            } else {
                                nativeAuthenticationTitle = null;
                            }
                            listV = ArraysKt.v(new NativeAuthenticationTitle[]{nativeAuthenticationTitle4, nativeAuthenticationTitle5, nativeAuthenticationTitle, new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_information, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description3, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text"), new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_activate_account, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description_activation_code, null, 2, null), "nativeRegister_titleActivateAccount_text", "nativeRegister_descriptionActivationCode_text")});
                        }
                        i17 = iArr2[nativeAuthenticationLayoutContext.ordinal()];
                        if (i17 != 1) {
                            if (z6) {
                                size = 5;
                            } else {
                                i18 = 4;
                            }
                            Unit unit3 = Unit.f71739a;
                            zY = gapComposerH.y(focusManager);
                            objX2 = gapComposerH.x();
                            if (zY) {
                                objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                        Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                                    }
                                };
                                gapComposerH.q(objX2);
                            } else {
                                objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                        Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                                    }
                                };
                                gapComposerH.q(objX2);
                            }
                            gapComposer = gapComposerH;
                            ScaffoldKt.a(WindowInsetsPadding_androidKt.a(SuspendingPointerInputFilterKt.a(dTFunctionNameModifier2, unit3, (PointerInputEventHandler) objX2)), null, null, ComposableLambdaKt.b(-680791422, new ae0(snackbarHostState, 1), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-377167413, new Function3() { // from class: le0
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj, Object obj2, Object obj3) {
                                    String str4;
                                    PaddingValues paddingValues = (PaddingValues) obj;
                                    Composer composer2 = (Composer) obj2;
                                    int iIntValue = ((Integer) obj3).intValue();
                                    paddingValues.getClass();
                                    if ((iIntValue & 6) == 0) {
                                        iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                                    }
                                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                        Modifier modifierO = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2").o(SizeKt.f5052c);
                                        Painter painterA = PainterResources_androidKt.a(R.drawable.native_login_background, composer2, 0);
                                        ContentScale.f9447a.getClass();
                                        Modifier modifierH = PaddingKt.h(PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), paddingValues);
                                        Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                                        Alignment.f8582a.getClass();
                                        ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                                        int iHashCode = Long.hashCode(composer2.getT());
                                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                                        ComposeUiNode.b0.getClass();
                                        Function0 function11 = ComposeUiNode.Companion.f9641b;
                                        if (composer2.getF7976a() == null) {
                                            ComposablesKt.b();
                                            throw null;
                                        }
                                        composer2.B();
                                        if (composer2.getS()) {
                                            composer2.C(function11);
                                        } else {
                                            composer2.o();
                                        }
                                        Function2 function12 = ComposeUiNode.Companion.f9644f;
                                        Updater.c(composer2, columnMeasurePolicyA, function12);
                                        Function2 function13 = ComposeUiNode.Companion.f9643e;
                                        Updater.c(composer2, persistentCompositionLocalMapN, function13);
                                        Integer numValueOf = Integer.valueOf(iHashCode);
                                        Function2 function14 = ComposeUiNode.Companion.g;
                                        Updater.c(composer2, numValueOf, function14);
                                        Function1 function15 = ComposeUiNode.Companion.f9645h;
                                        Updater.b(composer2, function15);
                                        Function2 function16 = ComposeUiNode.Companion.d;
                                        Updater.c(composer2, modifierC, function16);
                                        Modifier modifierD = SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
                                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                        int iHashCode2 = Long.hashCode(composer2.getT());
                                        PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                                        Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
                                        if (composer2.getF7976a() == null) {
                                            ComposablesKt.b();
                                            throw null;
                                        }
                                        composer2.B();
                                        if (composer2.getS()) {
                                            composer2.C(function11);
                                        } else {
                                            composer2.o();
                                        }
                                        Updater.c(composer2, measurePolicyD, function12);
                                        Updater.c(composer2, persistentCompositionLocalMapN2, function13);
                                        cj.s(iHashCode2, composer2, function14, composer2, function15);
                                        Updater.c(composer2, modifierC2, function16);
                                        PagerState pagerState2 = pagerState;
                                        boolean z7 = pagerState2.k() > 0;
                                        EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                                        ExitTransition exitTransitionH = EnterExitTransitionKt.h(null, 3);
                                        Function0 function17 = function3;
                                        CoroutineScope coroutineScope3 = coroutineScope2;
                                        NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext2 = nativeAuthenticationLayoutContext;
                                        ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(99358455, new r(function17, coroutineScope3, pagerState2, nativeAuthenticationLayoutContext2), composer2);
                                        ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                                        AnimatedVisibilityKt.c(columnScopeInstance, z7, null, enterTransitionF, exitTransitionH, null, composableLambdaImplB, composer2, 1600518, 18);
                                        DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2");
                                        BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                                        LVPageNumberIndicatorKt.a(boxScopeInstance.g(dTFunctionNameModifier3, biasAlignment), pagerState2, null, composer2, 0, 4);
                                        Modifier modifierC3 = ModifierExtKt.c(boxScopeInstance.g(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(composer2).o), Alignment.Companion.g), false, null, null, function4, 31);
                                        int i25 = NativeAuthenticationLayoutKt.WhenMappings.f53478a[nativeAuthenticationLayoutContext2.ordinal()];
                                        if (i25 == 1) {
                                            str4 = "nativeRegister_cross_button";
                                        } else if (i25 == 2) {
                                            str4 = "nativeForgetPassword_cross_button";
                                        } else {
                                            if (i25 != 3) {
                                                v40.g();
                                                return null;
                                            }
                                            str4 = "account_activation_close";
                                        }
                                        IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).q, composer2, 0), StringResources_androidKt.c(composer2, R.string.alt_close), ModifierExtKt.e(modifierC3, str4), LVAppDesignKitTheme.c(composer2).f48361b.m, composer2, 8, 0);
                                        composer2.r();
                                        LVProgressIndicatorKt.a(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), pagerState2.k(), pagerState2.k() + 1, i18, Color.b(0.8f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), Color.b(0.4f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), new TweenSpec(1000, 200, EasingKt.f3863b), composer2, 0);
                                        NativeAuthenticationTitleKt.a(SizeKt.d(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f), listV, pagerState2.k(), composer2, 0);
                                        PagerKt.a(pagerState2, columnScopeInstance.a(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f, true), null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Alignment.Companion.f8591k, null, false, false, null, null, null, ComposableLambdaKt.b(228520436, new v10(composableLambdaImpl, 2), composer2), composer2, 102236160, 24576, 16060);
                                        composer2.r();
                                        if (z) {
                                            composer2.L(-554090323);
                                            LVLoadingOverlayKt.a(false, composer2, 0, 1);
                                            composer2.F();
                                        } else {
                                            composer2.L(-554049961);
                                            composer2.F();
                                        }
                                        LVModalBottomSheetState lVModalBottomSheetState4 = lVModalBottomSheetState3;
                                        if (lVModalBottomSheetState4 == null || !lVModalBottomSheetState4.a()) {
                                            composer2.L(-552683977);
                                            composer2.F();
                                        } else {
                                            composer2.L(-553908601);
                                            String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                                            Function0 function18 = function10;
                                            boolean zK = composer2.K(function18);
                                            Object objX3 = composer2.x();
                                            if (zK || objX3 == Composer.Companion.f7939a) {
                                                objX3 = new ee0(function18, 2);
                                                composer2.q(objX3);
                                            }
                                            LVModalBottomSheetKt.b(Modifier.Companion.f8607b, strC, (Function0) objX3, lVModalBottomSheetState4, null, 0L, false, null, ComposableLambdaKt.b(-1062906429, new w0(nativeRegisterBottomSheetScreen4, str3, function8, coroutineScope3, lVModalBottomSheetState4, function9, function18), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663302, 240);
                                            composer2.F();
                                        }
                                    } else {
                                        composer2.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }, gapComposerH), gapComposer, 805309440, 502);
                            z4 = z6;
                            lVModalBottomSheetState2 = lVModalBottomSheetState3;
                            function7 = function10;
                            nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen4;
                            str2 = str3;
                            function5 = function8;
                            function6 = function9;
                            modifier2 = dTFunctionNameModifier2;
                        } else if (i17 != i16) {
                            size = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a.size();
                        } else {
                            if (i17 == 3) {
                                v40.g();
                                return;
                            }
                            size = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53486b.size();
                        }
                        i18 = size;
                        Unit unit4 = Unit.f71739a;
                        zY = gapComposerH.y(focusManager);
                        objX2 = gapComposerH.x();
                        if (zY) {
                            objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                    Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                    return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                                }
                            };
                            gapComposerH.q(objX2);
                        } else {
                            objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                    Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                    return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                                }
                            };
                            gapComposerH.q(objX2);
                        }
                        gapComposer = gapComposerH;
                        ScaffoldKt.a(WindowInsetsPadding_androidKt.a(SuspendingPointerInputFilterKt.a(dTFunctionNameModifier2, unit4, (PointerInputEventHandler) objX2)), null, null, ComposableLambdaKt.b(-680791422, new ae0(snackbarHostState, 1), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-377167413, new Function3() { // from class: le0
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj, Object obj2, Object obj3) {
                                String str4;
                                PaddingValues paddingValues = (PaddingValues) obj;
                                Composer composer2 = (Composer) obj2;
                                int iIntValue = ((Integer) obj3).intValue();
                                paddingValues.getClass();
                                if ((iIntValue & 6) == 0) {
                                    iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                                }
                                if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                    Modifier modifierO = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2").o(SizeKt.f5052c);
                                    Painter painterA = PainterResources_androidKt.a(R.drawable.native_login_background, composer2, 0);
                                    ContentScale.f9447a.getClass();
                                    Modifier modifierH = PaddingKt.h(PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), paddingValues);
                                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                                    Alignment.f8582a.getClass();
                                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                                    int iHashCode = Long.hashCode(composer2.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                    Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                                    ComposeUiNode.b0.getClass();
                                    Function0 function11 = ComposeUiNode.Companion.f9641b;
                                    if (composer2.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer2.B();
                                    if (composer2.getS()) {
                                        composer2.C(function11);
                                    } else {
                                        composer2.o();
                                    }
                                    Function2 function12 = ComposeUiNode.Companion.f9644f;
                                    Updater.c(composer2, columnMeasurePolicyA, function12);
                                    Function2 function13 = ComposeUiNode.Companion.f9643e;
                                    Updater.c(composer2, persistentCompositionLocalMapN, function13);
                                    Integer numValueOf = Integer.valueOf(iHashCode);
                                    Function2 function14 = ComposeUiNode.Companion.g;
                                    Updater.c(composer2, numValueOf, function14);
                                    Function1 function15 = ComposeUiNode.Companion.f9645h;
                                    Updater.b(composer2, function15);
                                    Function2 function16 = ComposeUiNode.Companion.d;
                                    Updater.c(composer2, modifierC, function16);
                                    Modifier modifierD = SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
                                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                    int iHashCode2 = Long.hashCode(composer2.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                                    Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
                                    if (composer2.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer2.B();
                                    if (composer2.getS()) {
                                        composer2.C(function11);
                                    } else {
                                        composer2.o();
                                    }
                                    Updater.c(composer2, measurePolicyD, function12);
                                    Updater.c(composer2, persistentCompositionLocalMapN2, function13);
                                    cj.s(iHashCode2, composer2, function14, composer2, function15);
                                    Updater.c(composer2, modifierC2, function16);
                                    PagerState pagerState2 = pagerState;
                                    boolean z7 = pagerState2.k() > 0;
                                    EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                                    ExitTransition exitTransitionH = EnterExitTransitionKt.h(null, 3);
                                    Function0 function17 = function3;
                                    CoroutineScope coroutineScope3 = coroutineScope2;
                                    NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext2 = nativeAuthenticationLayoutContext;
                                    ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(99358455, new r(function17, coroutineScope3, pagerState2, nativeAuthenticationLayoutContext2), composer2);
                                    ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                                    AnimatedVisibilityKt.c(columnScopeInstance, z7, null, enterTransitionF, exitTransitionH, null, composableLambdaImplB, composer2, 1600518, 18);
                                    DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2");
                                    BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                                    LVPageNumberIndicatorKt.a(boxScopeInstance.g(dTFunctionNameModifier3, biasAlignment), pagerState2, null, composer2, 0, 4);
                                    Modifier modifierC3 = ModifierExtKt.c(boxScopeInstance.g(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(composer2).o), Alignment.Companion.g), false, null, null, function4, 31);
                                    int i25 = NativeAuthenticationLayoutKt.WhenMappings.f53478a[nativeAuthenticationLayoutContext2.ordinal()];
                                    if (i25 == 1) {
                                        str4 = "nativeRegister_cross_button";
                                    } else if (i25 == 2) {
                                        str4 = "nativeForgetPassword_cross_button";
                                    } else {
                                        if (i25 != 3) {
                                            v40.g();
                                            return null;
                                        }
                                        str4 = "account_activation_close";
                                    }
                                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).q, composer2, 0), StringResources_androidKt.c(composer2, R.string.alt_close), ModifierExtKt.e(modifierC3, str4), LVAppDesignKitTheme.c(composer2).f48361b.m, composer2, 8, 0);
                                    composer2.r();
                                    LVProgressIndicatorKt.a(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), pagerState2.k(), pagerState2.k() + 1, i18, Color.b(0.8f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), Color.b(0.4f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), new TweenSpec(1000, 200, EasingKt.f3863b), composer2, 0);
                                    NativeAuthenticationTitleKt.a(SizeKt.d(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f), listV, pagerState2.k(), composer2, 0);
                                    PagerKt.a(pagerState2, columnScopeInstance.a(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f, true), null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Alignment.Companion.f8591k, null, false, false, null, null, null, ComposableLambdaKt.b(228520436, new v10(composableLambdaImpl, 2), composer2), composer2, 102236160, 24576, 16060);
                                    composer2.r();
                                    if (z) {
                                        composer2.L(-554090323);
                                        LVLoadingOverlayKt.a(false, composer2, 0, 1);
                                        composer2.F();
                                    } else {
                                        composer2.L(-554049961);
                                        composer2.F();
                                    }
                                    LVModalBottomSheetState lVModalBottomSheetState4 = lVModalBottomSheetState3;
                                    if (lVModalBottomSheetState4 == null || !lVModalBottomSheetState4.a()) {
                                        composer2.L(-552683977);
                                        composer2.F();
                                    } else {
                                        composer2.L(-553908601);
                                        String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                                        Function0 function18 = function10;
                                        boolean zK = composer2.K(function18);
                                        Object objX3 = composer2.x();
                                        if (zK || objX3 == Composer.Companion.f7939a) {
                                            objX3 = new ee0(function18, 2);
                                            composer2.q(objX3);
                                        }
                                        LVModalBottomSheetKt.b(Modifier.Companion.f8607b, strC, (Function0) objX3, lVModalBottomSheetState4, null, 0L, false, null, ComposableLambdaKt.b(-1062906429, new w0(nativeRegisterBottomSheetScreen4, str3, function8, coroutineScope3, lVModalBottomSheetState4, function9, function18), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663302, 240);
                                        composer2.F();
                                    }
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        }, gapComposerH), gapComposer, 805309440, 502);
                        z4 = z6;
                        lVModalBottomSheetState2 = lVModalBottomSheetState3;
                        function7 = function10;
                        nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen4;
                        str2 = str3;
                        function5 = function8;
                        function6 = function9;
                        modifier2 = dTFunctionNameModifier2;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        lVModalBottomSheetState2 = lVModalBottomSheetState;
                        str2 = str;
                        function5 = function0;
                        function6 = function1;
                        z4 = z2;
                        nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen2;
                        modifier2 = modifierE;
                        function7 = function2;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: me0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i2 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i3);
                                NativeAuthenticationLayoutKt.a(modifier2, nativeAuthenticationLayoutContext, pagerState, focusManager, lVModalBottomSheetState2, nativeRegisterBottomSheetScreen3, z, str2, snackbarHostState, function5, function6, function7, function3, function4, z4, composableLambdaImpl, (Composer) obj, iA, iA2, i4);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i8 |= 48;
                if ((i3 & KyberEngine.KyberPolyBytes) != 0) {
                    if (gapComposerH.y(function3)) {
                        i19 = 256;
                    } else {
                        i19 = 128;
                    }
                    i8 |= i19;
                }
                if ((i3 & 3072) != 0) {
                    i8 |= gapComposerH.y(function4) ? 2048 : 1024;
                }
                i12 = i8;
                i13 = i4 & 16384;
                if (i13 != 0) {
                    i14 = i12;
                    if ((i3 & 24576) == 0) {
                        i14 |= gapComposerH.b(z2) ? 16384 : 8192;
                    }
                    if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                        i14 |= gapComposerH.y(composableLambdaImpl) ? 131072 : 65536;
                    }
                    if ((i21 & 306783379) == 306783378) {
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                    if (gapComposerH.p(i21 & 1, z3)) {
                        DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("NativeAuthenticationLayout");
                        if (i22 != 0) {
                            lVModalBottomSheetState3 = null;
                        } else {
                            lVModalBottomSheetState3 = lVModalBottomSheetState;
                        }
                        if (i23 != 0) {
                            nativeRegisterBottomSheetScreen4 = null;
                        } else {
                            nativeRegisterBottomSheetScreen4 = nativeRegisterBottomSheetScreen2;
                        }
                        if (i24 != 0) {
                            str3 = null;
                        } else {
                            str3 = str;
                        }
                        if (i5 != 0) {
                            function8 = null;
                        } else {
                            function8 = function0;
                        }
                        if (i7 != 0) {
                            function9 = null;
                        } else {
                            function9 = function1;
                        }
                        if (i10 != 0) {
                            function10 = null;
                        } else {
                            function10 = function2;
                        }
                        if (i13 != 0) {
                            z5 = false;
                        } else {
                            z5 = z2;
                        }
                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                        objX = gapComposerH.x();
                        composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (objX == composer$Companion$Empty$1) {
                            objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                            gapComposerH.q(objX);
                        }
                        final CoroutineScope coroutineScope3 = (CoroutineScope) objX;
                        int[] iArr3 = WhenMappings.f53478a;
                        i15 = iArr3[nativeAuthenticationLayoutContext.ordinal()];
                        if (i15 != 1) {
                            if (i15 != 2) {
                                list = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a;
                            } else {
                                if (i15 == 3) {
                                    v40.g();
                                    return;
                                }
                                list = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53486b;
                            }
                            listV = list;
                            z6 = z5;
                            function8 = function8;
                            i16 = 2;
                        } else {
                            List list4 = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a;
                            i16 = 2;
                            NativeAuthenticationTitle nativeAuthenticationTitle6 = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_create_account, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                            z6 = z5;
                            NativeAuthenticationTitle nativeAuthenticationTitle7 = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_information, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description2, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                            if (z6) {
                                nativeAuthenticationTitle = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_address, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description_address, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                            } else {
                                nativeAuthenticationTitle = null;
                            }
                            listV = ArraysKt.v(new NativeAuthenticationTitle[]{nativeAuthenticationTitle6, nativeAuthenticationTitle7, nativeAuthenticationTitle, new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_information, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description3, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text"), new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_activate_account, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description_activation_code, null, 2, null), "nativeRegister_titleActivateAccount_text", "nativeRegister_descriptionActivationCode_text")});
                        }
                        i17 = iArr3[nativeAuthenticationLayoutContext.ordinal()];
                        if (i17 != 1) {
                            if (z6) {
                                size = 5;
                            } else {
                                i18 = 4;
                            }
                            Unit unit5 = Unit.f71739a;
                            zY = gapComposerH.y(focusManager);
                            objX2 = gapComposerH.x();
                            if (zY) {
                                objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                        Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                                    }
                                };
                                gapComposerH.q(objX2);
                            } else {
                                objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                        Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                                    }
                                };
                                gapComposerH.q(objX2);
                            }
                            gapComposer = gapComposerH;
                            ScaffoldKt.a(WindowInsetsPadding_androidKt.a(SuspendingPointerInputFilterKt.a(dTFunctionNameModifier3, unit5, (PointerInputEventHandler) objX2)), null, null, ComposableLambdaKt.b(-680791422, new ae0(snackbarHostState, 1), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-377167413, new Function3() { // from class: le0
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj, Object obj2, Object obj3) {
                                    String str4;
                                    PaddingValues paddingValues = (PaddingValues) obj;
                                    Composer composer2 = (Composer) obj2;
                                    int iIntValue = ((Integer) obj3).intValue();
                                    paddingValues.getClass();
                                    if ((iIntValue & 6) == 0) {
                                        iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                                    }
                                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                                        OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                        Modifier modifierO = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2").o(SizeKt.f5052c);
                                        Painter painterA = PainterResources_androidKt.a(R.drawable.native_login_background, composer2, 0);
                                        ContentScale.f9447a.getClass();
                                        Modifier modifierH = PaddingKt.h(PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), paddingValues);
                                        Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                                        Alignment.f8582a.getClass();
                                        ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                                        int iHashCode = Long.hashCode(composer2.getT());
                                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                                        ComposeUiNode.b0.getClass();
                                        Function0 function11 = ComposeUiNode.Companion.f9641b;
                                        if (composer2.getF7976a() == null) {
                                            ComposablesKt.b();
                                            throw null;
                                        }
                                        composer2.B();
                                        if (composer2.getS()) {
                                            composer2.C(function11);
                                        } else {
                                            composer2.o();
                                        }
                                        Function2 function12 = ComposeUiNode.Companion.f9644f;
                                        Updater.c(composer2, columnMeasurePolicyA, function12);
                                        Function2 function13 = ComposeUiNode.Companion.f9643e;
                                        Updater.c(composer2, persistentCompositionLocalMapN, function13);
                                        Integer numValueOf = Integer.valueOf(iHashCode);
                                        Function2 function14 = ComposeUiNode.Companion.g;
                                        Updater.c(composer2, numValueOf, function14);
                                        Function1 function15 = ComposeUiNode.Companion.f9645h;
                                        Updater.b(composer2, function15);
                                        Function2 function16 = ComposeUiNode.Companion.d;
                                        Updater.c(composer2, modifierC, function16);
                                        Modifier modifierD = SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
                                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                        int iHashCode2 = Long.hashCode(composer2.getT());
                                        PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                                        Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
                                        if (composer2.getF7976a() == null) {
                                            ComposablesKt.b();
                                            throw null;
                                        }
                                        composer2.B();
                                        if (composer2.getS()) {
                                            composer2.C(function11);
                                        } else {
                                            composer2.o();
                                        }
                                        Updater.c(composer2, measurePolicyD, function12);
                                        Updater.c(composer2, persistentCompositionLocalMapN2, function13);
                                        cj.s(iHashCode2, composer2, function14, composer2, function15);
                                        Updater.c(composer2, modifierC2, function16);
                                        PagerState pagerState2 = pagerState;
                                        boolean z7 = pagerState2.k() > 0;
                                        EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                                        ExitTransition exitTransitionH = EnterExitTransitionKt.h(null, 3);
                                        Function0 function17 = function3;
                                        CoroutineScope coroutineScope4 = coroutineScope3;
                                        NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext2 = nativeAuthenticationLayoutContext;
                                        ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(99358455, new r(function17, coroutineScope4, pagerState2, nativeAuthenticationLayoutContext2), composer2);
                                        ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                                        AnimatedVisibilityKt.c(columnScopeInstance, z7, null, enterTransitionF, exitTransitionH, null, composableLambdaImplB, composer2, 1600518, 18);
                                        DTFunctionNameModifier dTFunctionNameModifier4 = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2");
                                        BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                                        LVPageNumberIndicatorKt.a(boxScopeInstance.g(dTFunctionNameModifier4, biasAlignment), pagerState2, null, composer2, 0, 4);
                                        Modifier modifierC3 = ModifierExtKt.c(boxScopeInstance.g(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(composer2).o), Alignment.Companion.g), false, null, null, function4, 31);
                                        int i25 = NativeAuthenticationLayoutKt.WhenMappings.f53478a[nativeAuthenticationLayoutContext2.ordinal()];
                                        if (i25 == 1) {
                                            str4 = "nativeRegister_cross_button";
                                        } else if (i25 == 2) {
                                            str4 = "nativeForgetPassword_cross_button";
                                        } else {
                                            if (i25 != 3) {
                                                v40.g();
                                                return null;
                                            }
                                            str4 = "account_activation_close";
                                        }
                                        IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).q, composer2, 0), StringResources_androidKt.c(composer2, R.string.alt_close), ModifierExtKt.e(modifierC3, str4), LVAppDesignKitTheme.c(composer2).f48361b.m, composer2, 8, 0);
                                        composer2.r();
                                        LVProgressIndicatorKt.a(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), pagerState2.k(), pagerState2.k() + 1, i18, Color.b(0.8f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), Color.b(0.4f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), new TweenSpec(1000, 200, EasingKt.f3863b), composer2, 0);
                                        NativeAuthenticationTitleKt.a(SizeKt.d(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f), listV, pagerState2.k(), composer2, 0);
                                        PagerKt.a(pagerState2, columnScopeInstance.a(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f, true), null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Alignment.Companion.f8591k, null, false, false, null, null, null, ComposableLambdaKt.b(228520436, new v10(composableLambdaImpl, 2), composer2), composer2, 102236160, 24576, 16060);
                                        composer2.r();
                                        if (z) {
                                            composer2.L(-554090323);
                                            LVLoadingOverlayKt.a(false, composer2, 0, 1);
                                            composer2.F();
                                        } else {
                                            composer2.L(-554049961);
                                            composer2.F();
                                        }
                                        LVModalBottomSheetState lVModalBottomSheetState4 = lVModalBottomSheetState3;
                                        if (lVModalBottomSheetState4 == null || !lVModalBottomSheetState4.a()) {
                                            composer2.L(-552683977);
                                            composer2.F();
                                        } else {
                                            composer2.L(-553908601);
                                            String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                                            Function0 function18 = function10;
                                            boolean zK = composer2.K(function18);
                                            Object objX3 = composer2.x();
                                            if (zK || objX3 == Composer.Companion.f7939a) {
                                                objX3 = new ee0(function18, 2);
                                                composer2.q(objX3);
                                            }
                                            LVModalBottomSheetKt.b(Modifier.Companion.f8607b, strC, (Function0) objX3, lVModalBottomSheetState4, null, 0L, false, null, ComposableLambdaKt.b(-1062906429, new w0(nativeRegisterBottomSheetScreen4, str3, function8, coroutineScope4, lVModalBottomSheetState4, function9, function18), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663302, 240);
                                            composer2.F();
                                        }
                                    } else {
                                        composer2.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }, gapComposerH), gapComposer, 805309440, 502);
                            z4 = z6;
                            lVModalBottomSheetState2 = lVModalBottomSheetState3;
                            function7 = function10;
                            nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen4;
                            str2 = str3;
                            function5 = function8;
                            function6 = function9;
                            modifier2 = dTFunctionNameModifier3;
                        } else if (i17 != i16) {
                            size = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a.size();
                        } else {
                            if (i17 == 3) {
                                v40.g();
                                return;
                            }
                            size = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53486b.size();
                        }
                        i18 = size;
                        Unit unit6 = Unit.f71739a;
                        zY = gapComposerH.y(focusManager);
                        objX2 = gapComposerH.x();
                        if (zY) {
                            objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                    Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                    return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                                }
                            };
                            gapComposerH.q(objX2);
                        } else {
                            objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                    Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                    return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                                }
                            };
                            gapComposerH.q(objX2);
                        }
                        gapComposer = gapComposerH;
                        ScaffoldKt.a(WindowInsetsPadding_androidKt.a(SuspendingPointerInputFilterKt.a(dTFunctionNameModifier3, unit6, (PointerInputEventHandler) objX2)), null, null, ComposableLambdaKt.b(-680791422, new ae0(snackbarHostState, 1), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-377167413, new Function3() { // from class: le0
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj, Object obj2, Object obj3) {
                                String str4;
                                PaddingValues paddingValues = (PaddingValues) obj;
                                Composer composer2 = (Composer) obj2;
                                int iIntValue = ((Integer) obj3).intValue();
                                paddingValues.getClass();
                                if ((iIntValue & 6) == 0) {
                                    iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                                }
                                if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                    Modifier modifierO = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2").o(SizeKt.f5052c);
                                    Painter painterA = PainterResources_androidKt.a(R.drawable.native_login_background, composer2, 0);
                                    ContentScale.f9447a.getClass();
                                    Modifier modifierH = PaddingKt.h(PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), paddingValues);
                                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                                    Alignment.f8582a.getClass();
                                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                                    int iHashCode = Long.hashCode(composer2.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                    Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                                    ComposeUiNode.b0.getClass();
                                    Function0 function11 = ComposeUiNode.Companion.f9641b;
                                    if (composer2.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer2.B();
                                    if (composer2.getS()) {
                                        composer2.C(function11);
                                    } else {
                                        composer2.o();
                                    }
                                    Function2 function12 = ComposeUiNode.Companion.f9644f;
                                    Updater.c(composer2, columnMeasurePolicyA, function12);
                                    Function2 function13 = ComposeUiNode.Companion.f9643e;
                                    Updater.c(composer2, persistentCompositionLocalMapN, function13);
                                    Integer numValueOf = Integer.valueOf(iHashCode);
                                    Function2 function14 = ComposeUiNode.Companion.g;
                                    Updater.c(composer2, numValueOf, function14);
                                    Function1 function15 = ComposeUiNode.Companion.f9645h;
                                    Updater.b(composer2, function15);
                                    Function2 function16 = ComposeUiNode.Companion.d;
                                    Updater.c(composer2, modifierC, function16);
                                    Modifier modifierD = SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
                                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                    int iHashCode2 = Long.hashCode(composer2.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                                    Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
                                    if (composer2.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer2.B();
                                    if (composer2.getS()) {
                                        composer2.C(function11);
                                    } else {
                                        composer2.o();
                                    }
                                    Updater.c(composer2, measurePolicyD, function12);
                                    Updater.c(composer2, persistentCompositionLocalMapN2, function13);
                                    cj.s(iHashCode2, composer2, function14, composer2, function15);
                                    Updater.c(composer2, modifierC2, function16);
                                    PagerState pagerState2 = pagerState;
                                    boolean z7 = pagerState2.k() > 0;
                                    EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                                    ExitTransition exitTransitionH = EnterExitTransitionKt.h(null, 3);
                                    Function0 function17 = function3;
                                    CoroutineScope coroutineScope4 = coroutineScope3;
                                    NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext2 = nativeAuthenticationLayoutContext;
                                    ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(99358455, new r(function17, coroutineScope4, pagerState2, nativeAuthenticationLayoutContext2), composer2);
                                    ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                                    AnimatedVisibilityKt.c(columnScopeInstance, z7, null, enterTransitionF, exitTransitionH, null, composableLambdaImplB, composer2, 1600518, 18);
                                    DTFunctionNameModifier dTFunctionNameModifier4 = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2");
                                    BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                                    LVPageNumberIndicatorKt.a(boxScopeInstance.g(dTFunctionNameModifier4, biasAlignment), pagerState2, null, composer2, 0, 4);
                                    Modifier modifierC3 = ModifierExtKt.c(boxScopeInstance.g(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(composer2).o), Alignment.Companion.g), false, null, null, function4, 31);
                                    int i25 = NativeAuthenticationLayoutKt.WhenMappings.f53478a[nativeAuthenticationLayoutContext2.ordinal()];
                                    if (i25 == 1) {
                                        str4 = "nativeRegister_cross_button";
                                    } else if (i25 == 2) {
                                        str4 = "nativeForgetPassword_cross_button";
                                    } else {
                                        if (i25 != 3) {
                                            v40.g();
                                            return null;
                                        }
                                        str4 = "account_activation_close";
                                    }
                                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).q, composer2, 0), StringResources_androidKt.c(composer2, R.string.alt_close), ModifierExtKt.e(modifierC3, str4), LVAppDesignKitTheme.c(composer2).f48361b.m, composer2, 8, 0);
                                    composer2.r();
                                    LVProgressIndicatorKt.a(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), pagerState2.k(), pagerState2.k() + 1, i18, Color.b(0.8f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), Color.b(0.4f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), new TweenSpec(1000, 200, EasingKt.f3863b), composer2, 0);
                                    NativeAuthenticationTitleKt.a(SizeKt.d(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f), listV, pagerState2.k(), composer2, 0);
                                    PagerKt.a(pagerState2, columnScopeInstance.a(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f, true), null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Alignment.Companion.f8591k, null, false, false, null, null, null, ComposableLambdaKt.b(228520436, new v10(composableLambdaImpl, 2), composer2), composer2, 102236160, 24576, 16060);
                                    composer2.r();
                                    if (z) {
                                        composer2.L(-554090323);
                                        LVLoadingOverlayKt.a(false, composer2, 0, 1);
                                        composer2.F();
                                    } else {
                                        composer2.L(-554049961);
                                        composer2.F();
                                    }
                                    LVModalBottomSheetState lVModalBottomSheetState4 = lVModalBottomSheetState3;
                                    if (lVModalBottomSheetState4 == null || !lVModalBottomSheetState4.a()) {
                                        composer2.L(-552683977);
                                        composer2.F();
                                    } else {
                                        composer2.L(-553908601);
                                        String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                                        Function0 function18 = function10;
                                        boolean zK = composer2.K(function18);
                                        Object objX3 = composer2.x();
                                        if (zK || objX3 == Composer.Companion.f7939a) {
                                            objX3 = new ee0(function18, 2);
                                            composer2.q(objX3);
                                        }
                                        LVModalBottomSheetKt.b(Modifier.Companion.f8607b, strC, (Function0) objX3, lVModalBottomSheetState4, null, 0L, false, null, ComposableLambdaKt.b(-1062906429, new w0(nativeRegisterBottomSheetScreen4, str3, function8, coroutineScope4, lVModalBottomSheetState4, function9, function18), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663302, 240);
                                        composer2.F();
                                    }
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        }, gapComposerH), gapComposer, 805309440, 502);
                        z4 = z6;
                        lVModalBottomSheetState2 = lVModalBottomSheetState3;
                        function7 = function10;
                        nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen4;
                        str2 = str3;
                        function5 = function8;
                        function6 = function9;
                        modifier2 = dTFunctionNameModifier3;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        lVModalBottomSheetState2 = lVModalBottomSheetState;
                        str2 = str;
                        function5 = function0;
                        function6 = function1;
                        z4 = z2;
                        nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen2;
                        modifier2 = modifierE;
                        function7 = function2;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: me0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i2 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i3);
                                NativeAuthenticationLayoutKt.a(modifier2, nativeAuthenticationLayoutContext, pagerState, focusManager, lVModalBottomSheetState2, nativeRegisterBottomSheetScreen3, z, str2, snackbarHostState, function5, function6, function7, function3, function4, z4, composableLambdaImpl, (Composer) obj, iA, iA2, i4);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i14 = i12 | 24576;
                if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                    i14 |= gapComposerH.y(composableLambdaImpl) ? 131072 : 65536;
                }
                if ((i21 & 306783379) == 306783378) {
                    z3 = true;
                } else {
                    z3 = true;
                }
                if (gapComposerH.p(i21 & 1, z3)) {
                    DTFunctionNameModifier dTFunctionNameModifier4 = new DTFunctionNameModifier("NativeAuthenticationLayout");
                    if (i22 != 0) {
                        lVModalBottomSheetState3 = null;
                    } else {
                        lVModalBottomSheetState3 = lVModalBottomSheetState;
                    }
                    if (i23 != 0) {
                        nativeRegisterBottomSheetScreen4 = null;
                    } else {
                        nativeRegisterBottomSheetScreen4 = nativeRegisterBottomSheetScreen2;
                    }
                    if (i24 != 0) {
                        str3 = null;
                    } else {
                        str3 = str;
                    }
                    if (i5 != 0) {
                        function8 = null;
                    } else {
                        function8 = function0;
                    }
                    if (i7 != 0) {
                        function9 = null;
                    } else {
                        function9 = function1;
                    }
                    if (i10 != 0) {
                        function10 = null;
                    } else {
                        function10 = function2;
                    }
                    if (i13 != 0) {
                        z5 = false;
                    } else {
                        z5 = z2;
                    }
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    objX = gapComposerH.x();
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                        gapComposerH.q(objX);
                    }
                    final CoroutineScope coroutineScope4 = (CoroutineScope) objX;
                    int[] iArr4 = WhenMappings.f53478a;
                    i15 = iArr4[nativeAuthenticationLayoutContext.ordinal()];
                    if (i15 != 1) {
                        if (i15 != 2) {
                            list = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a;
                        } else {
                            if (i15 == 3) {
                                v40.g();
                                return;
                            }
                            list = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53486b;
                        }
                        listV = list;
                        z6 = z5;
                        function8 = function8;
                        i16 = 2;
                    } else {
                        List list5 = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a;
                        i16 = 2;
                        NativeAuthenticationTitle nativeAuthenticationTitle8 = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_create_account, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                        z6 = z5;
                        NativeAuthenticationTitle nativeAuthenticationTitle9 = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_information, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description2, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                        if (z6) {
                            nativeAuthenticationTitle = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_address, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description_address, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                        } else {
                            nativeAuthenticationTitle = null;
                        }
                        listV = ArraysKt.v(new NativeAuthenticationTitle[]{nativeAuthenticationTitle8, nativeAuthenticationTitle9, nativeAuthenticationTitle, new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_information, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description3, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text"), new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_activate_account, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description_activation_code, null, 2, null), "nativeRegister_titleActivateAccount_text", "nativeRegister_descriptionActivationCode_text")});
                    }
                    i17 = iArr4[nativeAuthenticationLayoutContext.ordinal()];
                    if (i17 != 1) {
                        if (z6) {
                            size = 5;
                        } else {
                            i18 = 4;
                        }
                        Unit unit7 = Unit.f71739a;
                        zY = gapComposerH.y(focusManager);
                        objX2 = gapComposerH.x();
                        if (zY) {
                            objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                    Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                    return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                                }
                            };
                            gapComposerH.q(objX2);
                        } else {
                            objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                    Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                    return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                                }
                            };
                            gapComposerH.q(objX2);
                        }
                        gapComposer = gapComposerH;
                        ScaffoldKt.a(WindowInsetsPadding_androidKt.a(SuspendingPointerInputFilterKt.a(dTFunctionNameModifier4, unit7, (PointerInputEventHandler) objX2)), null, null, ComposableLambdaKt.b(-680791422, new ae0(snackbarHostState, 1), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-377167413, new Function3() { // from class: le0
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj, Object obj2, Object obj3) {
                                String str4;
                                PaddingValues paddingValues = (PaddingValues) obj;
                                Composer composer2 = (Composer) obj2;
                                int iIntValue = ((Integer) obj3).intValue();
                                paddingValues.getClass();
                                if ((iIntValue & 6) == 0) {
                                    iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                                }
                                if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                                    Modifier modifierO = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2").o(SizeKt.f5052c);
                                    Painter painterA = PainterResources_androidKt.a(R.drawable.native_login_background, composer2, 0);
                                    ContentScale.f9447a.getClass();
                                    Modifier modifierH = PaddingKt.h(PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), paddingValues);
                                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                                    Alignment.f8582a.getClass();
                                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                                    int iHashCode = Long.hashCode(composer2.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                    Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                                    ComposeUiNode.b0.getClass();
                                    Function0 function11 = ComposeUiNode.Companion.f9641b;
                                    if (composer2.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer2.B();
                                    if (composer2.getS()) {
                                        composer2.C(function11);
                                    } else {
                                        composer2.o();
                                    }
                                    Function2 function12 = ComposeUiNode.Companion.f9644f;
                                    Updater.c(composer2, columnMeasurePolicyA, function12);
                                    Function2 function13 = ComposeUiNode.Companion.f9643e;
                                    Updater.c(composer2, persistentCompositionLocalMapN, function13);
                                    Integer numValueOf = Integer.valueOf(iHashCode);
                                    Function2 function14 = ComposeUiNode.Companion.g;
                                    Updater.c(composer2, numValueOf, function14);
                                    Function1 function15 = ComposeUiNode.Companion.f9645h;
                                    Updater.b(composer2, function15);
                                    Function2 function16 = ComposeUiNode.Companion.d;
                                    Updater.c(composer2, modifierC, function16);
                                    Modifier modifierD = SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
                                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                    int iHashCode2 = Long.hashCode(composer2.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                                    Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
                                    if (composer2.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer2.B();
                                    if (composer2.getS()) {
                                        composer2.C(function11);
                                    } else {
                                        composer2.o();
                                    }
                                    Updater.c(composer2, measurePolicyD, function12);
                                    Updater.c(composer2, persistentCompositionLocalMapN2, function13);
                                    cj.s(iHashCode2, composer2, function14, composer2, function15);
                                    Updater.c(composer2, modifierC2, function16);
                                    PagerState pagerState2 = pagerState;
                                    boolean z7 = pagerState2.k() > 0;
                                    EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                                    ExitTransition exitTransitionH = EnterExitTransitionKt.h(null, 3);
                                    Function0 function17 = function3;
                                    CoroutineScope coroutineScope5 = coroutineScope4;
                                    NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext2 = nativeAuthenticationLayoutContext;
                                    ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(99358455, new r(function17, coroutineScope5, pagerState2, nativeAuthenticationLayoutContext2), composer2);
                                    ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                                    AnimatedVisibilityKt.c(columnScopeInstance, z7, null, enterTransitionF, exitTransitionH, null, composableLambdaImplB, composer2, 1600518, 18);
                                    DTFunctionNameModifier dTFunctionNameModifier5 = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2");
                                    BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                                    LVPageNumberIndicatorKt.a(boxScopeInstance.g(dTFunctionNameModifier5, biasAlignment), pagerState2, null, composer2, 0, 4);
                                    Modifier modifierC3 = ModifierExtKt.c(boxScopeInstance.g(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(composer2).o), Alignment.Companion.g), false, null, null, function4, 31);
                                    int i25 = NativeAuthenticationLayoutKt.WhenMappings.f53478a[nativeAuthenticationLayoutContext2.ordinal()];
                                    if (i25 == 1) {
                                        str4 = "nativeRegister_cross_button";
                                    } else if (i25 == 2) {
                                        str4 = "nativeForgetPassword_cross_button";
                                    } else {
                                        if (i25 != 3) {
                                            v40.g();
                                            return null;
                                        }
                                        str4 = "account_activation_close";
                                    }
                                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).q, composer2, 0), StringResources_androidKt.c(composer2, R.string.alt_close), ModifierExtKt.e(modifierC3, str4), LVAppDesignKitTheme.c(composer2).f48361b.m, composer2, 8, 0);
                                    composer2.r();
                                    LVProgressIndicatorKt.a(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), pagerState2.k(), pagerState2.k() + 1, i18, Color.b(0.8f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), Color.b(0.4f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), new TweenSpec(1000, 200, EasingKt.f3863b), composer2, 0);
                                    NativeAuthenticationTitleKt.a(SizeKt.d(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f), listV, pagerState2.k(), composer2, 0);
                                    PagerKt.a(pagerState2, columnScopeInstance.a(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f, true), null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Alignment.Companion.f8591k, null, false, false, null, null, null, ComposableLambdaKt.b(228520436, new v10(composableLambdaImpl, 2), composer2), composer2, 102236160, 24576, 16060);
                                    composer2.r();
                                    if (z) {
                                        composer2.L(-554090323);
                                        LVLoadingOverlayKt.a(false, composer2, 0, 1);
                                        composer2.F();
                                    } else {
                                        composer2.L(-554049961);
                                        composer2.F();
                                    }
                                    LVModalBottomSheetState lVModalBottomSheetState4 = lVModalBottomSheetState3;
                                    if (lVModalBottomSheetState4 == null || !lVModalBottomSheetState4.a()) {
                                        composer2.L(-552683977);
                                        composer2.F();
                                    } else {
                                        composer2.L(-553908601);
                                        String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                                        Function0 function18 = function10;
                                        boolean zK = composer2.K(function18);
                                        Object objX3 = composer2.x();
                                        if (zK || objX3 == Composer.Companion.f7939a) {
                                            objX3 = new ee0(function18, 2);
                                            composer2.q(objX3);
                                        }
                                        LVModalBottomSheetKt.b(Modifier.Companion.f8607b, strC, (Function0) objX3, lVModalBottomSheetState4, null, 0L, false, null, ComposableLambdaKt.b(-1062906429, new w0(nativeRegisterBottomSheetScreen4, str3, function8, coroutineScope5, lVModalBottomSheetState4, function9, function18), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663302, 240);
                                        composer2.F();
                                    }
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        }, gapComposerH), gapComposer, 805309440, 502);
                        z4 = z6;
                        lVModalBottomSheetState2 = lVModalBottomSheetState3;
                        function7 = function10;
                        nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen4;
                        str2 = str3;
                        function5 = function8;
                        function6 = function9;
                        modifier2 = dTFunctionNameModifier4;
                    } else if (i17 != i16) {
                        size = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a.size();
                    } else {
                        if (i17 == 3) {
                            v40.g();
                            return;
                        }
                        size = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53486b.size();
                    }
                    i18 = size;
                    Unit unit8 = Unit.f71739a;
                    zY = gapComposerH.y(focusManager);
                    objX2 = gapComposerH.x();
                    if (zY) {
                        objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                            public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX2);
                    } else {
                        objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                            public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX2);
                    }
                    gapComposer = gapComposerH;
                    ScaffoldKt.a(WindowInsetsPadding_androidKt.a(SuspendingPointerInputFilterKt.a(dTFunctionNameModifier4, unit8, (PointerInputEventHandler) objX2)), null, null, ComposableLambdaKt.b(-680791422, new ae0(snackbarHostState, 1), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-377167413, new Function3() { // from class: le0
                        @Override // kotlin.jvm.functions.Function3
                        public final Object A(Object obj, Object obj2, Object obj3) {
                            String str4;
                            PaddingValues paddingValues = (PaddingValues) obj;
                            Composer composer2 = (Composer) obj2;
                            int iIntValue = ((Integer) obj3).intValue();
                            paddingValues.getClass();
                            if ((iIntValue & 6) == 0) {
                                iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                            }
                            if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                                Modifier modifierO = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2").o(SizeKt.f5052c);
                                Painter painterA = PainterResources_androidKt.a(R.drawable.native_login_background, composer2, 0);
                                ContentScale.f9447a.getClass();
                                Modifier modifierH = PaddingKt.h(PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), paddingValues);
                                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                                Alignment.f8582a.getClass();
                                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                                int iHashCode = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                                ComposeUiNode.b0.getClass();
                                Function0 function11 = ComposeUiNode.Companion.f9641b;
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function11);
                                } else {
                                    composer2.o();
                                }
                                Function2 function12 = ComposeUiNode.Companion.f9644f;
                                Updater.c(composer2, columnMeasurePolicyA, function12);
                                Function2 function13 = ComposeUiNode.Companion.f9643e;
                                Updater.c(composer2, persistentCompositionLocalMapN, function13);
                                Integer numValueOf = Integer.valueOf(iHashCode);
                                Function2 function14 = ComposeUiNode.Companion.g;
                                Updater.c(composer2, numValueOf, function14);
                                Function1 function15 = ComposeUiNode.Companion.f9645h;
                                Updater.b(composer2, function15);
                                Function2 function16 = ComposeUiNode.Companion.d;
                                Updater.c(composer2, modifierC, function16);
                                Modifier modifierD = SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
                                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                int iHashCode2 = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                                Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function11);
                                } else {
                                    composer2.o();
                                }
                                Updater.c(composer2, measurePolicyD, function12);
                                Updater.c(composer2, persistentCompositionLocalMapN2, function13);
                                cj.s(iHashCode2, composer2, function14, composer2, function15);
                                Updater.c(composer2, modifierC2, function16);
                                PagerState pagerState2 = pagerState;
                                boolean z7 = pagerState2.k() > 0;
                                EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                                ExitTransition exitTransitionH = EnterExitTransitionKt.h(null, 3);
                                Function0 function17 = function3;
                                CoroutineScope coroutineScope5 = coroutineScope4;
                                NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext2 = nativeAuthenticationLayoutContext;
                                ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(99358455, new r(function17, coroutineScope5, pagerState2, nativeAuthenticationLayoutContext2), composer2);
                                ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                                AnimatedVisibilityKt.c(columnScopeInstance, z7, null, enterTransitionF, exitTransitionH, null, composableLambdaImplB, composer2, 1600518, 18);
                                DTFunctionNameModifier dTFunctionNameModifier5 = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2");
                                BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                                BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                                LVPageNumberIndicatorKt.a(boxScopeInstance.g(dTFunctionNameModifier5, biasAlignment), pagerState2, null, composer2, 0, 4);
                                Modifier modifierC3 = ModifierExtKt.c(boxScopeInstance.g(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(composer2).o), Alignment.Companion.g), false, null, null, function4, 31);
                                int i25 = NativeAuthenticationLayoutKt.WhenMappings.f53478a[nativeAuthenticationLayoutContext2.ordinal()];
                                if (i25 == 1) {
                                    str4 = "nativeRegister_cross_button";
                                } else if (i25 == 2) {
                                    str4 = "nativeForgetPassword_cross_button";
                                } else {
                                    if (i25 != 3) {
                                        v40.g();
                                        return null;
                                    }
                                    str4 = "account_activation_close";
                                }
                                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).q, composer2, 0), StringResources_androidKt.c(composer2, R.string.alt_close), ModifierExtKt.e(modifierC3, str4), LVAppDesignKitTheme.c(composer2).f48361b.m, composer2, 8, 0);
                                composer2.r();
                                LVProgressIndicatorKt.a(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), pagerState2.k(), pagerState2.k() + 1, i18, Color.b(0.8f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), Color.b(0.4f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), new TweenSpec(1000, 200, EasingKt.f3863b), composer2, 0);
                                NativeAuthenticationTitleKt.a(SizeKt.d(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f), listV, pagerState2.k(), composer2, 0);
                                PagerKt.a(pagerState2, columnScopeInstance.a(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f, true), null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Alignment.Companion.f8591k, null, false, false, null, null, null, ComposableLambdaKt.b(228520436, new v10(composableLambdaImpl, 2), composer2), composer2, 102236160, 24576, 16060);
                                composer2.r();
                                if (z) {
                                    composer2.L(-554090323);
                                    LVLoadingOverlayKt.a(false, composer2, 0, 1);
                                    composer2.F();
                                } else {
                                    composer2.L(-554049961);
                                    composer2.F();
                                }
                                LVModalBottomSheetState lVModalBottomSheetState4 = lVModalBottomSheetState3;
                                if (lVModalBottomSheetState4 == null || !lVModalBottomSheetState4.a()) {
                                    composer2.L(-552683977);
                                    composer2.F();
                                } else {
                                    composer2.L(-553908601);
                                    String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                                    Function0 function18 = function10;
                                    boolean zK = composer2.K(function18);
                                    Object objX3 = composer2.x();
                                    if (zK || objX3 == Composer.Companion.f7939a) {
                                        objX3 = new ee0(function18, 2);
                                        composer2.q(objX3);
                                    }
                                    LVModalBottomSheetKt.b(Modifier.Companion.f8607b, strC, (Function0) objX3, lVModalBottomSheetState4, null, 0L, false, null, ComposableLambdaKt.b(-1062906429, new w0(nativeRegisterBottomSheetScreen4, str3, function8, coroutineScope5, lVModalBottomSheetState4, function9, function18), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663302, 240);
                                    composer2.F();
                                }
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH), gapComposer, 805309440, 502);
                    z4 = z6;
                    lVModalBottomSheetState2 = lVModalBottomSheetState3;
                    function7 = function10;
                    nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen4;
                    str2 = str3;
                    function5 = function8;
                    function6 = function9;
                    modifier2 = dTFunctionNameModifier4;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    lVModalBottomSheetState2 = lVModalBottomSheetState;
                    str2 = str;
                    function5 = function0;
                    function6 = function1;
                    z4 = z2;
                    nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen2;
                    modifier2 = modifierE;
                    function7 = function2;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: me0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i2 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i3);
                            NativeAuthenticationLayoutKt.a(modifier2, nativeAuthenticationLayoutContext, pagerState, focusManager, lVModalBottomSheetState2, nativeRegisterBottomSheetScreen3, z, str2, snackbarHostState, function5, function6, function7, function3, function4, z4, composableLambdaImpl, (Composer) obj, iA, iA2, i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i21 |= 805306368;
            i7 = i4 & 1024;
            if (i7 != 0) {
                i8 = i3 | 6;
            } else if ((i3 & 6) == 0) {
                if (gapComposerH.y(function1)) {
                    i9 = 4;
                } else {
                    i9 = 2;
                }
                i8 = i3 | i9;
            } else {
                i8 = i3;
            }
            i10 = i4 & 2048;
            if (i10 != 0) {
                if ((i3 & 48) == 0) {
                    if (gapComposerH.y(function2)) {
                        i11 = 32;
                    } else {
                        i11 = 16;
                    }
                    i8 |= i11;
                }
                if ((i3 & KyberEngine.KyberPolyBytes) != 0) {
                    if (gapComposerH.y(function3)) {
                        i19 = 256;
                    } else {
                        i19 = 128;
                    }
                    i8 |= i19;
                }
                if ((i3 & 3072) != 0) {
                    i8 |= gapComposerH.y(function4) ? 2048 : 1024;
                }
                i12 = i8;
                i13 = i4 & 16384;
                if (i13 != 0) {
                    i14 = i12;
                    if ((i3 & 24576) == 0) {
                        i14 |= gapComposerH.b(z2) ? 16384 : 8192;
                    }
                    if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                        i14 |= gapComposerH.y(composableLambdaImpl) ? 131072 : 65536;
                    }
                    if ((i21 & 306783379) == 306783378) {
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                    if (gapComposerH.p(i21 & 1, z3)) {
                        DTFunctionNameModifier dTFunctionNameModifier5 = new DTFunctionNameModifier("NativeAuthenticationLayout");
                        if (i22 != 0) {
                            lVModalBottomSheetState3 = null;
                        } else {
                            lVModalBottomSheetState3 = lVModalBottomSheetState;
                        }
                        if (i23 != 0) {
                            nativeRegisterBottomSheetScreen4 = null;
                        } else {
                            nativeRegisterBottomSheetScreen4 = nativeRegisterBottomSheetScreen2;
                        }
                        if (i24 != 0) {
                            str3 = null;
                        } else {
                            str3 = str;
                        }
                        if (i5 != 0) {
                            function8 = null;
                        } else {
                            function8 = function0;
                        }
                        if (i7 != 0) {
                            function9 = null;
                        } else {
                            function9 = function1;
                        }
                        if (i10 != 0) {
                            function10 = null;
                        } else {
                            function10 = function2;
                        }
                        if (i13 != 0) {
                            z5 = false;
                        } else {
                            z5 = z2;
                        }
                        OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                        objX = gapComposerH.x();
                        composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (objX == composer$Companion$Empty$1) {
                            objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                            gapComposerH.q(objX);
                        }
                        final CoroutineScope coroutineScope5 = (CoroutineScope) objX;
                        int[] iArr5 = WhenMappings.f53478a;
                        i15 = iArr5[nativeAuthenticationLayoutContext.ordinal()];
                        if (i15 != 1) {
                            if (i15 != 2) {
                                list = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a;
                            } else {
                                if (i15 == 3) {
                                    v40.g();
                                    return;
                                }
                                list = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53486b;
                            }
                            listV = list;
                            z6 = z5;
                            function8 = function8;
                            i16 = 2;
                        } else {
                            List list6 = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a;
                            i16 = 2;
                            NativeAuthenticationTitle nativeAuthenticationTitle10 = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_create_account, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                            z6 = z5;
                            NativeAuthenticationTitle nativeAuthenticationTitle11 = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_information, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description2, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                            if (z6) {
                                nativeAuthenticationTitle = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_address, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description_address, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                            } else {
                                nativeAuthenticationTitle = null;
                            }
                            listV = ArraysKt.v(new NativeAuthenticationTitle[]{nativeAuthenticationTitle10, nativeAuthenticationTitle11, nativeAuthenticationTitle, new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_information, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description3, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text"), new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_activate_account, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description_activation_code, null, 2, null), "nativeRegister_titleActivateAccount_text", "nativeRegister_descriptionActivationCode_text")});
                        }
                        i17 = iArr5[nativeAuthenticationLayoutContext.ordinal()];
                        if (i17 != 1) {
                            if (z6) {
                                size = 5;
                            } else {
                                i18 = 4;
                            }
                            Unit unit9 = Unit.f71739a;
                            zY = gapComposerH.y(focusManager);
                            objX2 = gapComposerH.x();
                            if (zY) {
                                objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                        Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                                    }
                                };
                                gapComposerH.q(objX2);
                            } else {
                                objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                        Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                                    }
                                };
                                gapComposerH.q(objX2);
                            }
                            gapComposer = gapComposerH;
                            ScaffoldKt.a(WindowInsetsPadding_androidKt.a(SuspendingPointerInputFilterKt.a(dTFunctionNameModifier5, unit9, (PointerInputEventHandler) objX2)), null, null, ComposableLambdaKt.b(-680791422, new ae0(snackbarHostState, 1), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-377167413, new Function3() { // from class: le0
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj, Object obj2, Object obj3) {
                                    String str4;
                                    PaddingValues paddingValues = (PaddingValues) obj;
                                    Composer composer2 = (Composer) obj2;
                                    int iIntValue = ((Integer) obj3).intValue();
                                    paddingValues.getClass();
                                    if ((iIntValue & 6) == 0) {
                                        iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                                    }
                                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                                        OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                                        Modifier modifierO = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2").o(SizeKt.f5052c);
                                        Painter painterA = PainterResources_androidKt.a(R.drawable.native_login_background, composer2, 0);
                                        ContentScale.f9447a.getClass();
                                        Modifier modifierH = PaddingKt.h(PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), paddingValues);
                                        Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                                        Alignment.f8582a.getClass();
                                        ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                                        int iHashCode = Long.hashCode(composer2.getT());
                                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                                        ComposeUiNode.b0.getClass();
                                        Function0 function11 = ComposeUiNode.Companion.f9641b;
                                        if (composer2.getF7976a() == null) {
                                            ComposablesKt.b();
                                            throw null;
                                        }
                                        composer2.B();
                                        if (composer2.getS()) {
                                            composer2.C(function11);
                                        } else {
                                            composer2.o();
                                        }
                                        Function2 function12 = ComposeUiNode.Companion.f9644f;
                                        Updater.c(composer2, columnMeasurePolicyA, function12);
                                        Function2 function13 = ComposeUiNode.Companion.f9643e;
                                        Updater.c(composer2, persistentCompositionLocalMapN, function13);
                                        Integer numValueOf = Integer.valueOf(iHashCode);
                                        Function2 function14 = ComposeUiNode.Companion.g;
                                        Updater.c(composer2, numValueOf, function14);
                                        Function1 function15 = ComposeUiNode.Companion.f9645h;
                                        Updater.b(composer2, function15);
                                        Function2 function16 = ComposeUiNode.Companion.d;
                                        Updater.c(composer2, modifierC, function16);
                                        Modifier modifierD = SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
                                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                        int iHashCode2 = Long.hashCode(composer2.getT());
                                        PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                                        Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
                                        if (composer2.getF7976a() == null) {
                                            ComposablesKt.b();
                                            throw null;
                                        }
                                        composer2.B();
                                        if (composer2.getS()) {
                                            composer2.C(function11);
                                        } else {
                                            composer2.o();
                                        }
                                        Updater.c(composer2, measurePolicyD, function12);
                                        Updater.c(composer2, persistentCompositionLocalMapN2, function13);
                                        cj.s(iHashCode2, composer2, function14, composer2, function15);
                                        Updater.c(composer2, modifierC2, function16);
                                        PagerState pagerState2 = pagerState;
                                        boolean z7 = pagerState2.k() > 0;
                                        EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                                        ExitTransition exitTransitionH = EnterExitTransitionKt.h(null, 3);
                                        Function0 function17 = function3;
                                        CoroutineScope coroutineScope6 = coroutineScope5;
                                        NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext2 = nativeAuthenticationLayoutContext;
                                        ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(99358455, new r(function17, coroutineScope6, pagerState2, nativeAuthenticationLayoutContext2), composer2);
                                        ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                                        AnimatedVisibilityKt.c(columnScopeInstance, z7, null, enterTransitionF, exitTransitionH, null, composableLambdaImplB, composer2, 1600518, 18);
                                        DTFunctionNameModifier dTFunctionNameModifier6 = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2");
                                        BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                                        LVPageNumberIndicatorKt.a(boxScopeInstance.g(dTFunctionNameModifier6, biasAlignment), pagerState2, null, composer2, 0, 4);
                                        Modifier modifierC3 = ModifierExtKt.c(boxScopeInstance.g(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(composer2).o), Alignment.Companion.g), false, null, null, function4, 31);
                                        int i25 = NativeAuthenticationLayoutKt.WhenMappings.f53478a[nativeAuthenticationLayoutContext2.ordinal()];
                                        if (i25 == 1) {
                                            str4 = "nativeRegister_cross_button";
                                        } else if (i25 == 2) {
                                            str4 = "nativeForgetPassword_cross_button";
                                        } else {
                                            if (i25 != 3) {
                                                v40.g();
                                                return null;
                                            }
                                            str4 = "account_activation_close";
                                        }
                                        IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).q, composer2, 0), StringResources_androidKt.c(composer2, R.string.alt_close), ModifierExtKt.e(modifierC3, str4), LVAppDesignKitTheme.c(composer2).f48361b.m, composer2, 8, 0);
                                        composer2.r();
                                        LVProgressIndicatorKt.a(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), pagerState2.k(), pagerState2.k() + 1, i18, Color.b(0.8f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), Color.b(0.4f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), new TweenSpec(1000, 200, EasingKt.f3863b), composer2, 0);
                                        NativeAuthenticationTitleKt.a(SizeKt.d(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f), listV, pagerState2.k(), composer2, 0);
                                        PagerKt.a(pagerState2, columnScopeInstance.a(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f, true), null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Alignment.Companion.f8591k, null, false, false, null, null, null, ComposableLambdaKt.b(228520436, new v10(composableLambdaImpl, 2), composer2), composer2, 102236160, 24576, 16060);
                                        composer2.r();
                                        if (z) {
                                            composer2.L(-554090323);
                                            LVLoadingOverlayKt.a(false, composer2, 0, 1);
                                            composer2.F();
                                        } else {
                                            composer2.L(-554049961);
                                            composer2.F();
                                        }
                                        LVModalBottomSheetState lVModalBottomSheetState4 = lVModalBottomSheetState3;
                                        if (lVModalBottomSheetState4 == null || !lVModalBottomSheetState4.a()) {
                                            composer2.L(-552683977);
                                            composer2.F();
                                        } else {
                                            composer2.L(-553908601);
                                            String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                                            Function0 function18 = function10;
                                            boolean zK = composer2.K(function18);
                                            Object objX3 = composer2.x();
                                            if (zK || objX3 == Composer.Companion.f7939a) {
                                                objX3 = new ee0(function18, 2);
                                                composer2.q(objX3);
                                            }
                                            LVModalBottomSheetKt.b(Modifier.Companion.f8607b, strC, (Function0) objX3, lVModalBottomSheetState4, null, 0L, false, null, ComposableLambdaKt.b(-1062906429, new w0(nativeRegisterBottomSheetScreen4, str3, function8, coroutineScope6, lVModalBottomSheetState4, function9, function18), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663302, 240);
                                            composer2.F();
                                        }
                                    } else {
                                        composer2.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }, gapComposerH), gapComposer, 805309440, 502);
                            z4 = z6;
                            lVModalBottomSheetState2 = lVModalBottomSheetState3;
                            function7 = function10;
                            nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen4;
                            str2 = str3;
                            function5 = function8;
                            function6 = function9;
                            modifier2 = dTFunctionNameModifier5;
                        } else if (i17 != i16) {
                            size = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a.size();
                        } else {
                            if (i17 == 3) {
                                v40.g();
                                return;
                            }
                            size = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53486b.size();
                        }
                        i18 = size;
                        Unit unit10 = Unit.f71739a;
                        zY = gapComposerH.y(focusManager);
                        objX2 = gapComposerH.x();
                        if (zY) {
                            objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                    Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                    return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                                }
                            };
                            gapComposerH.q(objX2);
                        } else {
                            objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                    Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                    return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                                }
                            };
                            gapComposerH.q(objX2);
                        }
                        gapComposer = gapComposerH;
                        ScaffoldKt.a(WindowInsetsPadding_androidKt.a(SuspendingPointerInputFilterKt.a(dTFunctionNameModifier5, unit10, (PointerInputEventHandler) objX2)), null, null, ComposableLambdaKt.b(-680791422, new ae0(snackbarHostState, 1), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-377167413, new Function3() { // from class: le0
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj, Object obj2, Object obj3) {
                                String str4;
                                PaddingValues paddingValues = (PaddingValues) obj;
                                Composer composer2 = (Composer) obj2;
                                int iIntValue = ((Integer) obj3).intValue();
                                paddingValues.getClass();
                                if ((iIntValue & 6) == 0) {
                                    iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                                }
                                if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                                    Modifier modifierO = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2").o(SizeKt.f5052c);
                                    Painter painterA = PainterResources_androidKt.a(R.drawable.native_login_background, composer2, 0);
                                    ContentScale.f9447a.getClass();
                                    Modifier modifierH = PaddingKt.h(PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), paddingValues);
                                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                                    Alignment.f8582a.getClass();
                                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                                    int iHashCode = Long.hashCode(composer2.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                    Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                                    ComposeUiNode.b0.getClass();
                                    Function0 function11 = ComposeUiNode.Companion.f9641b;
                                    if (composer2.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer2.B();
                                    if (composer2.getS()) {
                                        composer2.C(function11);
                                    } else {
                                        composer2.o();
                                    }
                                    Function2 function12 = ComposeUiNode.Companion.f9644f;
                                    Updater.c(composer2, columnMeasurePolicyA, function12);
                                    Function2 function13 = ComposeUiNode.Companion.f9643e;
                                    Updater.c(composer2, persistentCompositionLocalMapN, function13);
                                    Integer numValueOf = Integer.valueOf(iHashCode);
                                    Function2 function14 = ComposeUiNode.Companion.g;
                                    Updater.c(composer2, numValueOf, function14);
                                    Function1 function15 = ComposeUiNode.Companion.f9645h;
                                    Updater.b(composer2, function15);
                                    Function2 function16 = ComposeUiNode.Companion.d;
                                    Updater.c(composer2, modifierC, function16);
                                    Modifier modifierD = SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
                                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                    int iHashCode2 = Long.hashCode(composer2.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                                    Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
                                    if (composer2.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer2.B();
                                    if (composer2.getS()) {
                                        composer2.C(function11);
                                    } else {
                                        composer2.o();
                                    }
                                    Updater.c(composer2, measurePolicyD, function12);
                                    Updater.c(composer2, persistentCompositionLocalMapN2, function13);
                                    cj.s(iHashCode2, composer2, function14, composer2, function15);
                                    Updater.c(composer2, modifierC2, function16);
                                    PagerState pagerState2 = pagerState;
                                    boolean z7 = pagerState2.k() > 0;
                                    EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                                    ExitTransition exitTransitionH = EnterExitTransitionKt.h(null, 3);
                                    Function0 function17 = function3;
                                    CoroutineScope coroutineScope6 = coroutineScope5;
                                    NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext2 = nativeAuthenticationLayoutContext;
                                    ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(99358455, new r(function17, coroutineScope6, pagerState2, nativeAuthenticationLayoutContext2), composer2);
                                    ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                                    AnimatedVisibilityKt.c(columnScopeInstance, z7, null, enterTransitionF, exitTransitionH, null, composableLambdaImplB, composer2, 1600518, 18);
                                    DTFunctionNameModifier dTFunctionNameModifier6 = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2");
                                    BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                                    LVPageNumberIndicatorKt.a(boxScopeInstance.g(dTFunctionNameModifier6, biasAlignment), pagerState2, null, composer2, 0, 4);
                                    Modifier modifierC3 = ModifierExtKt.c(boxScopeInstance.g(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(composer2).o), Alignment.Companion.g), false, null, null, function4, 31);
                                    int i25 = NativeAuthenticationLayoutKt.WhenMappings.f53478a[nativeAuthenticationLayoutContext2.ordinal()];
                                    if (i25 == 1) {
                                        str4 = "nativeRegister_cross_button";
                                    } else if (i25 == 2) {
                                        str4 = "nativeForgetPassword_cross_button";
                                    } else {
                                        if (i25 != 3) {
                                            v40.g();
                                            return null;
                                        }
                                        str4 = "account_activation_close";
                                    }
                                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).q, composer2, 0), StringResources_androidKt.c(composer2, R.string.alt_close), ModifierExtKt.e(modifierC3, str4), LVAppDesignKitTheme.c(composer2).f48361b.m, composer2, 8, 0);
                                    composer2.r();
                                    LVProgressIndicatorKt.a(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), pagerState2.k(), pagerState2.k() + 1, i18, Color.b(0.8f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), Color.b(0.4f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), new TweenSpec(1000, 200, EasingKt.f3863b), composer2, 0);
                                    NativeAuthenticationTitleKt.a(SizeKt.d(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f), listV, pagerState2.k(), composer2, 0);
                                    PagerKt.a(pagerState2, columnScopeInstance.a(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f, true), null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Alignment.Companion.f8591k, null, false, false, null, null, null, ComposableLambdaKt.b(228520436, new v10(composableLambdaImpl, 2), composer2), composer2, 102236160, 24576, 16060);
                                    composer2.r();
                                    if (z) {
                                        composer2.L(-554090323);
                                        LVLoadingOverlayKt.a(false, composer2, 0, 1);
                                        composer2.F();
                                    } else {
                                        composer2.L(-554049961);
                                        composer2.F();
                                    }
                                    LVModalBottomSheetState lVModalBottomSheetState4 = lVModalBottomSheetState3;
                                    if (lVModalBottomSheetState4 == null || !lVModalBottomSheetState4.a()) {
                                        composer2.L(-552683977);
                                        composer2.F();
                                    } else {
                                        composer2.L(-553908601);
                                        String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                                        Function0 function18 = function10;
                                        boolean zK = composer2.K(function18);
                                        Object objX3 = composer2.x();
                                        if (zK || objX3 == Composer.Companion.f7939a) {
                                            objX3 = new ee0(function18, 2);
                                            composer2.q(objX3);
                                        }
                                        LVModalBottomSheetKt.b(Modifier.Companion.f8607b, strC, (Function0) objX3, lVModalBottomSheetState4, null, 0L, false, null, ComposableLambdaKt.b(-1062906429, new w0(nativeRegisterBottomSheetScreen4, str3, function8, coroutineScope6, lVModalBottomSheetState4, function9, function18), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663302, 240);
                                        composer2.F();
                                    }
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        }, gapComposerH), gapComposer, 805309440, 502);
                        z4 = z6;
                        lVModalBottomSheetState2 = lVModalBottomSheetState3;
                        function7 = function10;
                        nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen4;
                        str2 = str3;
                        function5 = function8;
                        function6 = function9;
                        modifier2 = dTFunctionNameModifier5;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        lVModalBottomSheetState2 = lVModalBottomSheetState;
                        str2 = str;
                        function5 = function0;
                        function6 = function1;
                        z4 = z2;
                        nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen2;
                        modifier2 = modifierE;
                        function7 = function2;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: me0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i2 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i3);
                                NativeAuthenticationLayoutKt.a(modifier2, nativeAuthenticationLayoutContext, pagerState, focusManager, lVModalBottomSheetState2, nativeRegisterBottomSheetScreen3, z, str2, snackbarHostState, function5, function6, function7, function3, function4, z4, composableLambdaImpl, (Composer) obj, iA, iA2, i4);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i14 = i12 | 24576;
                if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                    i14 |= gapComposerH.y(composableLambdaImpl) ? 131072 : 65536;
                }
                if ((i21 & 306783379) == 306783378) {
                    z3 = true;
                } else {
                    z3 = true;
                }
                if (gapComposerH.p(i21 & 1, z3)) {
                    DTFunctionNameModifier dTFunctionNameModifier6 = new DTFunctionNameModifier("NativeAuthenticationLayout");
                    if (i22 != 0) {
                        lVModalBottomSheetState3 = null;
                    } else {
                        lVModalBottomSheetState3 = lVModalBottomSheetState;
                    }
                    if (i23 != 0) {
                        nativeRegisterBottomSheetScreen4 = null;
                    } else {
                        nativeRegisterBottomSheetScreen4 = nativeRegisterBottomSheetScreen2;
                    }
                    if (i24 != 0) {
                        str3 = null;
                    } else {
                        str3 = str;
                    }
                    if (i5 != 0) {
                        function8 = null;
                    } else {
                        function8 = function0;
                    }
                    if (i7 != 0) {
                        function9 = null;
                    } else {
                        function9 = function1;
                    }
                    if (i10 != 0) {
                        function10 = null;
                    } else {
                        function10 = function2;
                    }
                    if (i13 != 0) {
                        z5 = false;
                    } else {
                        z5 = z2;
                    }
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    objX = gapComposerH.x();
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                        gapComposerH.q(objX);
                    }
                    final CoroutineScope coroutineScope6 = (CoroutineScope) objX;
                    int[] iArr6 = WhenMappings.f53478a;
                    i15 = iArr6[nativeAuthenticationLayoutContext.ordinal()];
                    if (i15 != 1) {
                        if (i15 != 2) {
                            list = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a;
                        } else {
                            if (i15 == 3) {
                                v40.g();
                                return;
                            }
                            list = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53486b;
                        }
                        listV = list;
                        z6 = z5;
                        function8 = function8;
                        i16 = 2;
                    } else {
                        List list7 = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a;
                        i16 = 2;
                        NativeAuthenticationTitle nativeAuthenticationTitle12 = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_create_account, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                        z6 = z5;
                        NativeAuthenticationTitle nativeAuthenticationTitle13 = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_information, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description2, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                        if (z6) {
                            nativeAuthenticationTitle = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_address, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description_address, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                        } else {
                            nativeAuthenticationTitle = null;
                        }
                        listV = ArraysKt.v(new NativeAuthenticationTitle[]{nativeAuthenticationTitle12, nativeAuthenticationTitle13, nativeAuthenticationTitle, new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_information, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description3, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text"), new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_activate_account, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description_activation_code, null, 2, null), "nativeRegister_titleActivateAccount_text", "nativeRegister_descriptionActivationCode_text")});
                    }
                    i17 = iArr6[nativeAuthenticationLayoutContext.ordinal()];
                    if (i17 != 1) {
                        if (z6) {
                            size = 5;
                        } else {
                            i18 = 4;
                        }
                        Unit unit11 = Unit.f71739a;
                        zY = gapComposerH.y(focusManager);
                        objX2 = gapComposerH.x();
                        if (zY) {
                            objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                    Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                    return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                                }
                            };
                            gapComposerH.q(objX2);
                        } else {
                            objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                    Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                    return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                                }
                            };
                            gapComposerH.q(objX2);
                        }
                        gapComposer = gapComposerH;
                        ScaffoldKt.a(WindowInsetsPadding_androidKt.a(SuspendingPointerInputFilterKt.a(dTFunctionNameModifier6, unit11, (PointerInputEventHandler) objX2)), null, null, ComposableLambdaKt.b(-680791422, new ae0(snackbarHostState, 1), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-377167413, new Function3() { // from class: le0
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj, Object obj2, Object obj3) {
                                String str4;
                                PaddingValues paddingValues = (PaddingValues) obj;
                                Composer composer2 = (Composer) obj2;
                                int iIntValue = ((Integer) obj3).intValue();
                                paddingValues.getClass();
                                if ((iIntValue & 6) == 0) {
                                    iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                                }
                                if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                                    Modifier modifierO = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2").o(SizeKt.f5052c);
                                    Painter painterA = PainterResources_androidKt.a(R.drawable.native_login_background, composer2, 0);
                                    ContentScale.f9447a.getClass();
                                    Modifier modifierH = PaddingKt.h(PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), paddingValues);
                                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                                    Alignment.f8582a.getClass();
                                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                                    int iHashCode = Long.hashCode(composer2.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                    Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                                    ComposeUiNode.b0.getClass();
                                    Function0 function11 = ComposeUiNode.Companion.f9641b;
                                    if (composer2.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer2.B();
                                    if (composer2.getS()) {
                                        composer2.C(function11);
                                    } else {
                                        composer2.o();
                                    }
                                    Function2 function12 = ComposeUiNode.Companion.f9644f;
                                    Updater.c(composer2, columnMeasurePolicyA, function12);
                                    Function2 function13 = ComposeUiNode.Companion.f9643e;
                                    Updater.c(composer2, persistentCompositionLocalMapN, function13);
                                    Integer numValueOf = Integer.valueOf(iHashCode);
                                    Function2 function14 = ComposeUiNode.Companion.g;
                                    Updater.c(composer2, numValueOf, function14);
                                    Function1 function15 = ComposeUiNode.Companion.f9645h;
                                    Updater.b(composer2, function15);
                                    Function2 function16 = ComposeUiNode.Companion.d;
                                    Updater.c(composer2, modifierC, function16);
                                    Modifier modifierD = SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
                                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                    int iHashCode2 = Long.hashCode(composer2.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                                    Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
                                    if (composer2.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer2.B();
                                    if (composer2.getS()) {
                                        composer2.C(function11);
                                    } else {
                                        composer2.o();
                                    }
                                    Updater.c(composer2, measurePolicyD, function12);
                                    Updater.c(composer2, persistentCompositionLocalMapN2, function13);
                                    cj.s(iHashCode2, composer2, function14, composer2, function15);
                                    Updater.c(composer2, modifierC2, function16);
                                    PagerState pagerState2 = pagerState;
                                    boolean z7 = pagerState2.k() > 0;
                                    EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                                    ExitTransition exitTransitionH = EnterExitTransitionKt.h(null, 3);
                                    Function0 function17 = function3;
                                    CoroutineScope coroutineScope7 = coroutineScope6;
                                    NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext2 = nativeAuthenticationLayoutContext;
                                    ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(99358455, new r(function17, coroutineScope7, pagerState2, nativeAuthenticationLayoutContext2), composer2);
                                    ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                                    AnimatedVisibilityKt.c(columnScopeInstance, z7, null, enterTransitionF, exitTransitionH, null, composableLambdaImplB, composer2, 1600518, 18);
                                    DTFunctionNameModifier dTFunctionNameModifier7 = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2");
                                    BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                                    LVPageNumberIndicatorKt.a(boxScopeInstance.g(dTFunctionNameModifier7, biasAlignment), pagerState2, null, composer2, 0, 4);
                                    Modifier modifierC3 = ModifierExtKt.c(boxScopeInstance.g(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(composer2).o), Alignment.Companion.g), false, null, null, function4, 31);
                                    int i25 = NativeAuthenticationLayoutKt.WhenMappings.f53478a[nativeAuthenticationLayoutContext2.ordinal()];
                                    if (i25 == 1) {
                                        str4 = "nativeRegister_cross_button";
                                    } else if (i25 == 2) {
                                        str4 = "nativeForgetPassword_cross_button";
                                    } else {
                                        if (i25 != 3) {
                                            v40.g();
                                            return null;
                                        }
                                        str4 = "account_activation_close";
                                    }
                                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).q, composer2, 0), StringResources_androidKt.c(composer2, R.string.alt_close), ModifierExtKt.e(modifierC3, str4), LVAppDesignKitTheme.c(composer2).f48361b.m, composer2, 8, 0);
                                    composer2.r();
                                    LVProgressIndicatorKt.a(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), pagerState2.k(), pagerState2.k() + 1, i18, Color.b(0.8f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), Color.b(0.4f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), new TweenSpec(1000, 200, EasingKt.f3863b), composer2, 0);
                                    NativeAuthenticationTitleKt.a(SizeKt.d(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f), listV, pagerState2.k(), composer2, 0);
                                    PagerKt.a(pagerState2, columnScopeInstance.a(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f, true), null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Alignment.Companion.f8591k, null, false, false, null, null, null, ComposableLambdaKt.b(228520436, new v10(composableLambdaImpl, 2), composer2), composer2, 102236160, 24576, 16060);
                                    composer2.r();
                                    if (z) {
                                        composer2.L(-554090323);
                                        LVLoadingOverlayKt.a(false, composer2, 0, 1);
                                        composer2.F();
                                    } else {
                                        composer2.L(-554049961);
                                        composer2.F();
                                    }
                                    LVModalBottomSheetState lVModalBottomSheetState4 = lVModalBottomSheetState3;
                                    if (lVModalBottomSheetState4 == null || !lVModalBottomSheetState4.a()) {
                                        composer2.L(-552683977);
                                        composer2.F();
                                    } else {
                                        composer2.L(-553908601);
                                        String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                                        Function0 function18 = function10;
                                        boolean zK = composer2.K(function18);
                                        Object objX3 = composer2.x();
                                        if (zK || objX3 == Composer.Companion.f7939a) {
                                            objX3 = new ee0(function18, 2);
                                            composer2.q(objX3);
                                        }
                                        LVModalBottomSheetKt.b(Modifier.Companion.f8607b, strC, (Function0) objX3, lVModalBottomSheetState4, null, 0L, false, null, ComposableLambdaKt.b(-1062906429, new w0(nativeRegisterBottomSheetScreen4, str3, function8, coroutineScope7, lVModalBottomSheetState4, function9, function18), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663302, 240);
                                        composer2.F();
                                    }
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        }, gapComposerH), gapComposer, 805309440, 502);
                        z4 = z6;
                        lVModalBottomSheetState2 = lVModalBottomSheetState3;
                        function7 = function10;
                        nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen4;
                        str2 = str3;
                        function5 = function8;
                        function6 = function9;
                        modifier2 = dTFunctionNameModifier6;
                    } else if (i17 != i16) {
                        size = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a.size();
                    } else {
                        if (i17 == 3) {
                            v40.g();
                            return;
                        }
                        size = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53486b.size();
                    }
                    i18 = size;
                    Unit unit12 = Unit.f71739a;
                    zY = gapComposerH.y(focusManager);
                    objX2 = gapComposerH.x();
                    if (zY) {
                        objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                            public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX2);
                    } else {
                        objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                            public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX2);
                    }
                    gapComposer = gapComposerH;
                    ScaffoldKt.a(WindowInsetsPadding_androidKt.a(SuspendingPointerInputFilterKt.a(dTFunctionNameModifier6, unit12, (PointerInputEventHandler) objX2)), null, null, ComposableLambdaKt.b(-680791422, new ae0(snackbarHostState, 1), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-377167413, new Function3() { // from class: le0
                        @Override // kotlin.jvm.functions.Function3
                        public final Object A(Object obj, Object obj2, Object obj3) {
                            String str4;
                            PaddingValues paddingValues = (PaddingValues) obj;
                            Composer composer2 = (Composer) obj2;
                            int iIntValue = ((Integer) obj3).intValue();
                            paddingValues.getClass();
                            if ((iIntValue & 6) == 0) {
                                iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                            }
                            if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                                Modifier modifierO = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2").o(SizeKt.f5052c);
                                Painter painterA = PainterResources_androidKt.a(R.drawable.native_login_background, composer2, 0);
                                ContentScale.f9447a.getClass();
                                Modifier modifierH = PaddingKt.h(PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), paddingValues);
                                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                                Alignment.f8582a.getClass();
                                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                                int iHashCode = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                                ComposeUiNode.b0.getClass();
                                Function0 function11 = ComposeUiNode.Companion.f9641b;
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function11);
                                } else {
                                    composer2.o();
                                }
                                Function2 function12 = ComposeUiNode.Companion.f9644f;
                                Updater.c(composer2, columnMeasurePolicyA, function12);
                                Function2 function13 = ComposeUiNode.Companion.f9643e;
                                Updater.c(composer2, persistentCompositionLocalMapN, function13);
                                Integer numValueOf = Integer.valueOf(iHashCode);
                                Function2 function14 = ComposeUiNode.Companion.g;
                                Updater.c(composer2, numValueOf, function14);
                                Function1 function15 = ComposeUiNode.Companion.f9645h;
                                Updater.b(composer2, function15);
                                Function2 function16 = ComposeUiNode.Companion.d;
                                Updater.c(composer2, modifierC, function16);
                                Modifier modifierD = SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
                                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                int iHashCode2 = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                                Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function11);
                                } else {
                                    composer2.o();
                                }
                                Updater.c(composer2, measurePolicyD, function12);
                                Updater.c(composer2, persistentCompositionLocalMapN2, function13);
                                cj.s(iHashCode2, composer2, function14, composer2, function15);
                                Updater.c(composer2, modifierC2, function16);
                                PagerState pagerState2 = pagerState;
                                boolean z7 = pagerState2.k() > 0;
                                EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                                ExitTransition exitTransitionH = EnterExitTransitionKt.h(null, 3);
                                Function0 function17 = function3;
                                CoroutineScope coroutineScope7 = coroutineScope6;
                                NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext2 = nativeAuthenticationLayoutContext;
                                ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(99358455, new r(function17, coroutineScope7, pagerState2, nativeAuthenticationLayoutContext2), composer2);
                                ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                                AnimatedVisibilityKt.c(columnScopeInstance, z7, null, enterTransitionF, exitTransitionH, null, composableLambdaImplB, composer2, 1600518, 18);
                                DTFunctionNameModifier dTFunctionNameModifier7 = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2");
                                BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                                BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                                LVPageNumberIndicatorKt.a(boxScopeInstance.g(dTFunctionNameModifier7, biasAlignment), pagerState2, null, composer2, 0, 4);
                                Modifier modifierC3 = ModifierExtKt.c(boxScopeInstance.g(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(composer2).o), Alignment.Companion.g), false, null, null, function4, 31);
                                int i25 = NativeAuthenticationLayoutKt.WhenMappings.f53478a[nativeAuthenticationLayoutContext2.ordinal()];
                                if (i25 == 1) {
                                    str4 = "nativeRegister_cross_button";
                                } else if (i25 == 2) {
                                    str4 = "nativeForgetPassword_cross_button";
                                } else {
                                    if (i25 != 3) {
                                        v40.g();
                                        return null;
                                    }
                                    str4 = "account_activation_close";
                                }
                                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).q, composer2, 0), StringResources_androidKt.c(composer2, R.string.alt_close), ModifierExtKt.e(modifierC3, str4), LVAppDesignKitTheme.c(composer2).f48361b.m, composer2, 8, 0);
                                composer2.r();
                                LVProgressIndicatorKt.a(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), pagerState2.k(), pagerState2.k() + 1, i18, Color.b(0.8f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), Color.b(0.4f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), new TweenSpec(1000, 200, EasingKt.f3863b), composer2, 0);
                                NativeAuthenticationTitleKt.a(SizeKt.d(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f), listV, pagerState2.k(), composer2, 0);
                                PagerKt.a(pagerState2, columnScopeInstance.a(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f, true), null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Alignment.Companion.f8591k, null, false, false, null, null, null, ComposableLambdaKt.b(228520436, new v10(composableLambdaImpl, 2), composer2), composer2, 102236160, 24576, 16060);
                                composer2.r();
                                if (z) {
                                    composer2.L(-554090323);
                                    LVLoadingOverlayKt.a(false, composer2, 0, 1);
                                    composer2.F();
                                } else {
                                    composer2.L(-554049961);
                                    composer2.F();
                                }
                                LVModalBottomSheetState lVModalBottomSheetState4 = lVModalBottomSheetState3;
                                if (lVModalBottomSheetState4 == null || !lVModalBottomSheetState4.a()) {
                                    composer2.L(-552683977);
                                    composer2.F();
                                } else {
                                    composer2.L(-553908601);
                                    String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                                    Function0 function18 = function10;
                                    boolean zK = composer2.K(function18);
                                    Object objX3 = composer2.x();
                                    if (zK || objX3 == Composer.Companion.f7939a) {
                                        objX3 = new ee0(function18, 2);
                                        composer2.q(objX3);
                                    }
                                    LVModalBottomSheetKt.b(Modifier.Companion.f8607b, strC, (Function0) objX3, lVModalBottomSheetState4, null, 0L, false, null, ComposableLambdaKt.b(-1062906429, new w0(nativeRegisterBottomSheetScreen4, str3, function8, coroutineScope7, lVModalBottomSheetState4, function9, function18), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663302, 240);
                                    composer2.F();
                                }
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH), gapComposer, 805309440, 502);
                    z4 = z6;
                    lVModalBottomSheetState2 = lVModalBottomSheetState3;
                    function7 = function10;
                    nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen4;
                    str2 = str3;
                    function5 = function8;
                    function6 = function9;
                    modifier2 = dTFunctionNameModifier6;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    lVModalBottomSheetState2 = lVModalBottomSheetState;
                    str2 = str;
                    function5 = function0;
                    function6 = function1;
                    z4 = z2;
                    nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen2;
                    modifier2 = modifierE;
                    function7 = function2;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: me0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i2 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i3);
                            NativeAuthenticationLayoutKt.a(modifier2, nativeAuthenticationLayoutContext, pagerState, focusManager, lVModalBottomSheetState2, nativeRegisterBottomSheetScreen3, z, str2, snackbarHostState, function5, function6, function7, function3, function4, z4, composableLambdaImpl, (Composer) obj, iA, iA2, i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i8 |= 48;
            if ((i3 & KyberEngine.KyberPolyBytes) != 0) {
                if (gapComposerH.y(function3)) {
                    i19 = 256;
                } else {
                    i19 = 128;
                }
                i8 |= i19;
            }
            if ((i3 & 3072) != 0) {
                i8 |= gapComposerH.y(function4) ? 2048 : 1024;
            }
            i12 = i8;
            i13 = i4 & 16384;
            if (i13 != 0) {
                i14 = i12;
                if ((i3 & 24576) == 0) {
                    i14 |= gapComposerH.b(z2) ? 16384 : 8192;
                }
                if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                    i14 |= gapComposerH.y(composableLambdaImpl) ? 131072 : 65536;
                }
                if ((i21 & 306783379) == 306783378) {
                    z3 = true;
                } else {
                    z3 = true;
                }
                if (gapComposerH.p(i21 & 1, z3)) {
                    DTFunctionNameModifier dTFunctionNameModifier7 = new DTFunctionNameModifier("NativeAuthenticationLayout");
                    if (i22 != 0) {
                        lVModalBottomSheetState3 = null;
                    } else {
                        lVModalBottomSheetState3 = lVModalBottomSheetState;
                    }
                    if (i23 != 0) {
                        nativeRegisterBottomSheetScreen4 = null;
                    } else {
                        nativeRegisterBottomSheetScreen4 = nativeRegisterBottomSheetScreen2;
                    }
                    if (i24 != 0) {
                        str3 = null;
                    } else {
                        str3 = str;
                    }
                    if (i5 != 0) {
                        function8 = null;
                    } else {
                        function8 = function0;
                    }
                    if (i7 != 0) {
                        function9 = null;
                    } else {
                        function9 = function1;
                    }
                    if (i10 != 0) {
                        function10 = null;
                    } else {
                        function10 = function2;
                    }
                    if (i13 != 0) {
                        z5 = false;
                    } else {
                        z5 = z2;
                    }
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    objX = gapComposerH.x();
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                        gapComposerH.q(objX);
                    }
                    final CoroutineScope coroutineScope7 = (CoroutineScope) objX;
                    int[] iArr7 = WhenMappings.f53478a;
                    i15 = iArr7[nativeAuthenticationLayoutContext.ordinal()];
                    if (i15 != 1) {
                        if (i15 != 2) {
                            list = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a;
                        } else {
                            if (i15 == 3) {
                                v40.g();
                                return;
                            }
                            list = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53486b;
                        }
                        listV = list;
                        z6 = z5;
                        function8 = function8;
                        i16 = 2;
                    } else {
                        List list8 = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a;
                        i16 = 2;
                        NativeAuthenticationTitle nativeAuthenticationTitle14 = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_create_account, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                        z6 = z5;
                        NativeAuthenticationTitle nativeAuthenticationTitle15 = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_information, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description2, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                        if (z6) {
                            nativeAuthenticationTitle = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_address, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description_address, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                        } else {
                            nativeAuthenticationTitle = null;
                        }
                        listV = ArraysKt.v(new NativeAuthenticationTitle[]{nativeAuthenticationTitle14, nativeAuthenticationTitle15, nativeAuthenticationTitle, new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_information, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description3, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text"), new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_activate_account, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description_activation_code, null, 2, null), "nativeRegister_titleActivateAccount_text", "nativeRegister_descriptionActivationCode_text")});
                    }
                    i17 = iArr7[nativeAuthenticationLayoutContext.ordinal()];
                    if (i17 != 1) {
                        if (z6) {
                            size = 5;
                        } else {
                            i18 = 4;
                        }
                        Unit unit13 = Unit.f71739a;
                        zY = gapComposerH.y(focusManager);
                        objX2 = gapComposerH.x();
                        if (zY) {
                            objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                    Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                    return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                                }
                            };
                            gapComposerH.q(objX2);
                        } else {
                            objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                    Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                    return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                                }
                            };
                            gapComposerH.q(objX2);
                        }
                        gapComposer = gapComposerH;
                        ScaffoldKt.a(WindowInsetsPadding_androidKt.a(SuspendingPointerInputFilterKt.a(dTFunctionNameModifier7, unit13, (PointerInputEventHandler) objX2)), null, null, ComposableLambdaKt.b(-680791422, new ae0(snackbarHostState, 1), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-377167413, new Function3() { // from class: le0
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj, Object obj2, Object obj3) {
                                String str4;
                                PaddingValues paddingValues = (PaddingValues) obj;
                                Composer composer2 = (Composer) obj2;
                                int iIntValue = ((Integer) obj3).intValue();
                                paddingValues.getClass();
                                if ((iIntValue & 6) == 0) {
                                    iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                                }
                                if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                                    Modifier modifierO = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2").o(SizeKt.f5052c);
                                    Painter painterA = PainterResources_androidKt.a(R.drawable.native_login_background, composer2, 0);
                                    ContentScale.f9447a.getClass();
                                    Modifier modifierH = PaddingKt.h(PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), paddingValues);
                                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                                    Alignment.f8582a.getClass();
                                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                                    int iHashCode = Long.hashCode(composer2.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                    Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                                    ComposeUiNode.b0.getClass();
                                    Function0 function11 = ComposeUiNode.Companion.f9641b;
                                    if (composer2.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer2.B();
                                    if (composer2.getS()) {
                                        composer2.C(function11);
                                    } else {
                                        composer2.o();
                                    }
                                    Function2 function12 = ComposeUiNode.Companion.f9644f;
                                    Updater.c(composer2, columnMeasurePolicyA, function12);
                                    Function2 function13 = ComposeUiNode.Companion.f9643e;
                                    Updater.c(composer2, persistentCompositionLocalMapN, function13);
                                    Integer numValueOf = Integer.valueOf(iHashCode);
                                    Function2 function14 = ComposeUiNode.Companion.g;
                                    Updater.c(composer2, numValueOf, function14);
                                    Function1 function15 = ComposeUiNode.Companion.f9645h;
                                    Updater.b(composer2, function15);
                                    Function2 function16 = ComposeUiNode.Companion.d;
                                    Updater.c(composer2, modifierC, function16);
                                    Modifier modifierD = SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
                                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                    int iHashCode2 = Long.hashCode(composer2.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                                    Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
                                    if (composer2.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer2.B();
                                    if (composer2.getS()) {
                                        composer2.C(function11);
                                    } else {
                                        composer2.o();
                                    }
                                    Updater.c(composer2, measurePolicyD, function12);
                                    Updater.c(composer2, persistentCompositionLocalMapN2, function13);
                                    cj.s(iHashCode2, composer2, function14, composer2, function15);
                                    Updater.c(composer2, modifierC2, function16);
                                    PagerState pagerState2 = pagerState;
                                    boolean z7 = pagerState2.k() > 0;
                                    EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                                    ExitTransition exitTransitionH = EnterExitTransitionKt.h(null, 3);
                                    Function0 function17 = function3;
                                    CoroutineScope coroutineScope8 = coroutineScope7;
                                    NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext2 = nativeAuthenticationLayoutContext;
                                    ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(99358455, new r(function17, coroutineScope8, pagerState2, nativeAuthenticationLayoutContext2), composer2);
                                    ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                                    AnimatedVisibilityKt.c(columnScopeInstance, z7, null, enterTransitionF, exitTransitionH, null, composableLambdaImplB, composer2, 1600518, 18);
                                    DTFunctionNameModifier dTFunctionNameModifier8 = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2");
                                    BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                                    LVPageNumberIndicatorKt.a(boxScopeInstance.g(dTFunctionNameModifier8, biasAlignment), pagerState2, null, composer2, 0, 4);
                                    Modifier modifierC3 = ModifierExtKt.c(boxScopeInstance.g(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(composer2).o), Alignment.Companion.g), false, null, null, function4, 31);
                                    int i25 = NativeAuthenticationLayoutKt.WhenMappings.f53478a[nativeAuthenticationLayoutContext2.ordinal()];
                                    if (i25 == 1) {
                                        str4 = "nativeRegister_cross_button";
                                    } else if (i25 == 2) {
                                        str4 = "nativeForgetPassword_cross_button";
                                    } else {
                                        if (i25 != 3) {
                                            v40.g();
                                            return null;
                                        }
                                        str4 = "account_activation_close";
                                    }
                                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).q, composer2, 0), StringResources_androidKt.c(composer2, R.string.alt_close), ModifierExtKt.e(modifierC3, str4), LVAppDesignKitTheme.c(composer2).f48361b.m, composer2, 8, 0);
                                    composer2.r();
                                    LVProgressIndicatorKt.a(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), pagerState2.k(), pagerState2.k() + 1, i18, Color.b(0.8f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), Color.b(0.4f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), new TweenSpec(1000, 200, EasingKt.f3863b), composer2, 0);
                                    NativeAuthenticationTitleKt.a(SizeKt.d(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f), listV, pagerState2.k(), composer2, 0);
                                    PagerKt.a(pagerState2, columnScopeInstance.a(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f, true), null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Alignment.Companion.f8591k, null, false, false, null, null, null, ComposableLambdaKt.b(228520436, new v10(composableLambdaImpl, 2), composer2), composer2, 102236160, 24576, 16060);
                                    composer2.r();
                                    if (z) {
                                        composer2.L(-554090323);
                                        LVLoadingOverlayKt.a(false, composer2, 0, 1);
                                        composer2.F();
                                    } else {
                                        composer2.L(-554049961);
                                        composer2.F();
                                    }
                                    LVModalBottomSheetState lVModalBottomSheetState4 = lVModalBottomSheetState3;
                                    if (lVModalBottomSheetState4 == null || !lVModalBottomSheetState4.a()) {
                                        composer2.L(-552683977);
                                        composer2.F();
                                    } else {
                                        composer2.L(-553908601);
                                        String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                                        Function0 function18 = function10;
                                        boolean zK = composer2.K(function18);
                                        Object objX3 = composer2.x();
                                        if (zK || objX3 == Composer.Companion.f7939a) {
                                            objX3 = new ee0(function18, 2);
                                            composer2.q(objX3);
                                        }
                                        LVModalBottomSheetKt.b(Modifier.Companion.f8607b, strC, (Function0) objX3, lVModalBottomSheetState4, null, 0L, false, null, ComposableLambdaKt.b(-1062906429, new w0(nativeRegisterBottomSheetScreen4, str3, function8, coroutineScope8, lVModalBottomSheetState4, function9, function18), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663302, 240);
                                        composer2.F();
                                    }
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        }, gapComposerH), gapComposer, 805309440, 502);
                        z4 = z6;
                        lVModalBottomSheetState2 = lVModalBottomSheetState3;
                        function7 = function10;
                        nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen4;
                        str2 = str3;
                        function5 = function8;
                        function6 = function9;
                        modifier2 = dTFunctionNameModifier7;
                    } else if (i17 != i16) {
                        size = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a.size();
                    } else {
                        if (i17 == 3) {
                            v40.g();
                            return;
                        }
                        size = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53486b.size();
                    }
                    i18 = size;
                    Unit unit14 = Unit.f71739a;
                    zY = gapComposerH.y(focusManager);
                    objX2 = gapComposerH.x();
                    if (zY) {
                        objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                            public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX2);
                    } else {
                        objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                            public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX2);
                    }
                    gapComposer = gapComposerH;
                    ScaffoldKt.a(WindowInsetsPadding_androidKt.a(SuspendingPointerInputFilterKt.a(dTFunctionNameModifier7, unit14, (PointerInputEventHandler) objX2)), null, null, ComposableLambdaKt.b(-680791422, new ae0(snackbarHostState, 1), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-377167413, new Function3() { // from class: le0
                        @Override // kotlin.jvm.functions.Function3
                        public final Object A(Object obj, Object obj2, Object obj3) {
                            String str4;
                            PaddingValues paddingValues = (PaddingValues) obj;
                            Composer composer2 = (Composer) obj2;
                            int iIntValue = ((Integer) obj3).intValue();
                            paddingValues.getClass();
                            if ((iIntValue & 6) == 0) {
                                iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                            }
                            if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                                OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                                Modifier modifierO = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2").o(SizeKt.f5052c);
                                Painter painterA = PainterResources_androidKt.a(R.drawable.native_login_background, composer2, 0);
                                ContentScale.f9447a.getClass();
                                Modifier modifierH = PaddingKt.h(PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), paddingValues);
                                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                                Alignment.f8582a.getClass();
                                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                                int iHashCode = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                                ComposeUiNode.b0.getClass();
                                Function0 function11 = ComposeUiNode.Companion.f9641b;
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function11);
                                } else {
                                    composer2.o();
                                }
                                Function2 function12 = ComposeUiNode.Companion.f9644f;
                                Updater.c(composer2, columnMeasurePolicyA, function12);
                                Function2 function13 = ComposeUiNode.Companion.f9643e;
                                Updater.c(composer2, persistentCompositionLocalMapN, function13);
                                Integer numValueOf = Integer.valueOf(iHashCode);
                                Function2 function14 = ComposeUiNode.Companion.g;
                                Updater.c(composer2, numValueOf, function14);
                                Function1 function15 = ComposeUiNode.Companion.f9645h;
                                Updater.b(composer2, function15);
                                Function2 function16 = ComposeUiNode.Companion.d;
                                Updater.c(composer2, modifierC, function16);
                                Modifier modifierD = SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
                                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                int iHashCode2 = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                                Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function11);
                                } else {
                                    composer2.o();
                                }
                                Updater.c(composer2, measurePolicyD, function12);
                                Updater.c(composer2, persistentCompositionLocalMapN2, function13);
                                cj.s(iHashCode2, composer2, function14, composer2, function15);
                                Updater.c(composer2, modifierC2, function16);
                                PagerState pagerState2 = pagerState;
                                boolean z7 = pagerState2.k() > 0;
                                EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                                ExitTransition exitTransitionH = EnterExitTransitionKt.h(null, 3);
                                Function0 function17 = function3;
                                CoroutineScope coroutineScope8 = coroutineScope7;
                                NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext2 = nativeAuthenticationLayoutContext;
                                ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(99358455, new r(function17, coroutineScope8, pagerState2, nativeAuthenticationLayoutContext2), composer2);
                                ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                                AnimatedVisibilityKt.c(columnScopeInstance, z7, null, enterTransitionF, exitTransitionH, null, composableLambdaImplB, composer2, 1600518, 18);
                                DTFunctionNameModifier dTFunctionNameModifier8 = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2");
                                BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                                BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                                LVPageNumberIndicatorKt.a(boxScopeInstance.g(dTFunctionNameModifier8, biasAlignment), pagerState2, null, composer2, 0, 4);
                                Modifier modifierC3 = ModifierExtKt.c(boxScopeInstance.g(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(composer2).o), Alignment.Companion.g), false, null, null, function4, 31);
                                int i25 = NativeAuthenticationLayoutKt.WhenMappings.f53478a[nativeAuthenticationLayoutContext2.ordinal()];
                                if (i25 == 1) {
                                    str4 = "nativeRegister_cross_button";
                                } else if (i25 == 2) {
                                    str4 = "nativeForgetPassword_cross_button";
                                } else {
                                    if (i25 != 3) {
                                        v40.g();
                                        return null;
                                    }
                                    str4 = "account_activation_close";
                                }
                                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).q, composer2, 0), StringResources_androidKt.c(composer2, R.string.alt_close), ModifierExtKt.e(modifierC3, str4), LVAppDesignKitTheme.c(composer2).f48361b.m, composer2, 8, 0);
                                composer2.r();
                                LVProgressIndicatorKt.a(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), pagerState2.k(), pagerState2.k() + 1, i18, Color.b(0.8f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), Color.b(0.4f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), new TweenSpec(1000, 200, EasingKt.f3863b), composer2, 0);
                                NativeAuthenticationTitleKt.a(SizeKt.d(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f), listV, pagerState2.k(), composer2, 0);
                                PagerKt.a(pagerState2, columnScopeInstance.a(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f, true), null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Alignment.Companion.f8591k, null, false, false, null, null, null, ComposableLambdaKt.b(228520436, new v10(composableLambdaImpl, 2), composer2), composer2, 102236160, 24576, 16060);
                                composer2.r();
                                if (z) {
                                    composer2.L(-554090323);
                                    LVLoadingOverlayKt.a(false, composer2, 0, 1);
                                    composer2.F();
                                } else {
                                    composer2.L(-554049961);
                                    composer2.F();
                                }
                                LVModalBottomSheetState lVModalBottomSheetState4 = lVModalBottomSheetState3;
                                if (lVModalBottomSheetState4 == null || !lVModalBottomSheetState4.a()) {
                                    composer2.L(-552683977);
                                    composer2.F();
                                } else {
                                    composer2.L(-553908601);
                                    String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                                    Function0 function18 = function10;
                                    boolean zK = composer2.K(function18);
                                    Object objX3 = composer2.x();
                                    if (zK || objX3 == Composer.Companion.f7939a) {
                                        objX3 = new ee0(function18, 2);
                                        composer2.q(objX3);
                                    }
                                    LVModalBottomSheetKt.b(Modifier.Companion.f8607b, strC, (Function0) objX3, lVModalBottomSheetState4, null, 0L, false, null, ComposableLambdaKt.b(-1062906429, new w0(nativeRegisterBottomSheetScreen4, str3, function8, coroutineScope8, lVModalBottomSheetState4, function9, function18), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663302, 240);
                                    composer2.F();
                                }
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH), gapComposer, 805309440, 502);
                    z4 = z6;
                    lVModalBottomSheetState2 = lVModalBottomSheetState3;
                    function7 = function10;
                    nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen4;
                    str2 = str3;
                    function5 = function8;
                    function6 = function9;
                    modifier2 = dTFunctionNameModifier7;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    lVModalBottomSheetState2 = lVModalBottomSheetState;
                    str2 = str;
                    function5 = function0;
                    function6 = function1;
                    z4 = z2;
                    nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen2;
                    modifier2 = modifierE;
                    function7 = function2;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: me0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i2 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i3);
                            NativeAuthenticationLayoutKt.a(modifier2, nativeAuthenticationLayoutContext, pagerState, focusManager, lVModalBottomSheetState2, nativeRegisterBottomSheetScreen3, z, str2, snackbarHostState, function5, function6, function7, function3, function4, z4, composableLambdaImpl, (Composer) obj, iA, iA2, i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i14 = i12 | 24576;
            if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                i14 |= gapComposerH.y(composableLambdaImpl) ? 131072 : 65536;
            }
            if ((i21 & 306783379) == 306783378) {
                z3 = true;
            } else {
                z3 = true;
            }
            if (gapComposerH.p(i21 & 1, z3)) {
                DTFunctionNameModifier dTFunctionNameModifier8 = new DTFunctionNameModifier("NativeAuthenticationLayout");
                if (i22 != 0) {
                    lVModalBottomSheetState3 = null;
                } else {
                    lVModalBottomSheetState3 = lVModalBottomSheetState;
                }
                if (i23 != 0) {
                    nativeRegisterBottomSheetScreen4 = null;
                } else {
                    nativeRegisterBottomSheetScreen4 = nativeRegisterBottomSheetScreen2;
                }
                if (i24 != 0) {
                    str3 = null;
                } else {
                    str3 = str;
                }
                if (i5 != 0) {
                    function8 = null;
                } else {
                    function8 = function0;
                }
                if (i7 != 0) {
                    function9 = null;
                } else {
                    function9 = function1;
                }
                if (i10 != 0) {
                    function10 = null;
                } else {
                    function10 = function2;
                }
                if (i13 != 0) {
                    z5 = false;
                } else {
                    z5 = z2;
                }
                OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                    gapComposerH.q(objX);
                }
                final CoroutineScope coroutineScope8 = (CoroutineScope) objX;
                int[] iArr8 = WhenMappings.f53478a;
                i15 = iArr8[nativeAuthenticationLayoutContext.ordinal()];
                if (i15 != 1) {
                    if (i15 != 2) {
                        list = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a;
                    } else {
                        if (i15 == 3) {
                            v40.g();
                            return;
                        }
                        list = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53486b;
                    }
                    listV = list;
                    z6 = z5;
                    function8 = function8;
                    i16 = 2;
                } else {
                    List list9 = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a;
                    i16 = 2;
                    NativeAuthenticationTitle nativeAuthenticationTitle16 = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_create_account, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                    z6 = z5;
                    NativeAuthenticationTitle nativeAuthenticationTitle17 = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_information, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description2, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                    if (z6) {
                        nativeAuthenticationTitle = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_address, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description_address, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                    } else {
                        nativeAuthenticationTitle = null;
                    }
                    listV = ArraysKt.v(new NativeAuthenticationTitle[]{nativeAuthenticationTitle16, nativeAuthenticationTitle17, nativeAuthenticationTitle, new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_information, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description3, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text"), new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_activate_account, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description_activation_code, null, 2, null), "nativeRegister_titleActivateAccount_text", "nativeRegister_descriptionActivationCode_text")});
                }
                i17 = iArr8[nativeAuthenticationLayoutContext.ordinal()];
                if (i17 != 1) {
                    if (z6) {
                        size = 5;
                    } else {
                        i18 = 4;
                    }
                    Unit unit15 = Unit.f71739a;
                    zY = gapComposerH.y(focusManager);
                    objX2 = gapComposerH.x();
                    if (zY) {
                        objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                            public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX2);
                    } else {
                        objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                            public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX2);
                    }
                    gapComposer = gapComposerH;
                    ScaffoldKt.a(WindowInsetsPadding_androidKt.a(SuspendingPointerInputFilterKt.a(dTFunctionNameModifier8, unit15, (PointerInputEventHandler) objX2)), null, null, ComposableLambdaKt.b(-680791422, new ae0(snackbarHostState, 1), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-377167413, new Function3() { // from class: le0
                        @Override // kotlin.jvm.functions.Function3
                        public final Object A(Object obj, Object obj2, Object obj3) {
                            String str4;
                            PaddingValues paddingValues = (PaddingValues) obj;
                            Composer composer2 = (Composer) obj2;
                            int iIntValue = ((Integer) obj3).intValue();
                            paddingValues.getClass();
                            if ((iIntValue & 6) == 0) {
                                iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                            }
                            if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                                OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                                Modifier modifierO = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2").o(SizeKt.f5052c);
                                Painter painterA = PainterResources_androidKt.a(R.drawable.native_login_background, composer2, 0);
                                ContentScale.f9447a.getClass();
                                Modifier modifierH = PaddingKt.h(PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), paddingValues);
                                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                                Alignment.f8582a.getClass();
                                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                                int iHashCode = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                                ComposeUiNode.b0.getClass();
                                Function0 function11 = ComposeUiNode.Companion.f9641b;
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function11);
                                } else {
                                    composer2.o();
                                }
                                Function2 function12 = ComposeUiNode.Companion.f9644f;
                                Updater.c(composer2, columnMeasurePolicyA, function12);
                                Function2 function13 = ComposeUiNode.Companion.f9643e;
                                Updater.c(composer2, persistentCompositionLocalMapN, function13);
                                Integer numValueOf = Integer.valueOf(iHashCode);
                                Function2 function14 = ComposeUiNode.Companion.g;
                                Updater.c(composer2, numValueOf, function14);
                                Function1 function15 = ComposeUiNode.Companion.f9645h;
                                Updater.b(composer2, function15);
                                Function2 function16 = ComposeUiNode.Companion.d;
                                Updater.c(composer2, modifierC, function16);
                                Modifier modifierD = SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
                                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                int iHashCode2 = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                                Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function11);
                                } else {
                                    composer2.o();
                                }
                                Updater.c(composer2, measurePolicyD, function12);
                                Updater.c(composer2, persistentCompositionLocalMapN2, function13);
                                cj.s(iHashCode2, composer2, function14, composer2, function15);
                                Updater.c(composer2, modifierC2, function16);
                                PagerState pagerState2 = pagerState;
                                boolean z7 = pagerState2.k() > 0;
                                EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                                ExitTransition exitTransitionH = EnterExitTransitionKt.h(null, 3);
                                Function0 function17 = function3;
                                CoroutineScope coroutineScope9 = coroutineScope8;
                                NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext2 = nativeAuthenticationLayoutContext;
                                ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(99358455, new r(function17, coroutineScope9, pagerState2, nativeAuthenticationLayoutContext2), composer2);
                                ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                                AnimatedVisibilityKt.c(columnScopeInstance, z7, null, enterTransitionF, exitTransitionH, null, composableLambdaImplB, composer2, 1600518, 18);
                                DTFunctionNameModifier dTFunctionNameModifier9 = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2");
                                BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                                BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                                LVPageNumberIndicatorKt.a(boxScopeInstance.g(dTFunctionNameModifier9, biasAlignment), pagerState2, null, composer2, 0, 4);
                                Modifier modifierC3 = ModifierExtKt.c(boxScopeInstance.g(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(composer2).o), Alignment.Companion.g), false, null, null, function4, 31);
                                int i25 = NativeAuthenticationLayoutKt.WhenMappings.f53478a[nativeAuthenticationLayoutContext2.ordinal()];
                                if (i25 == 1) {
                                    str4 = "nativeRegister_cross_button";
                                } else if (i25 == 2) {
                                    str4 = "nativeForgetPassword_cross_button";
                                } else {
                                    if (i25 != 3) {
                                        v40.g();
                                        return null;
                                    }
                                    str4 = "account_activation_close";
                                }
                                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).q, composer2, 0), StringResources_androidKt.c(composer2, R.string.alt_close), ModifierExtKt.e(modifierC3, str4), LVAppDesignKitTheme.c(composer2).f48361b.m, composer2, 8, 0);
                                composer2.r();
                                LVProgressIndicatorKt.a(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), pagerState2.k(), pagerState2.k() + 1, i18, Color.b(0.8f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), Color.b(0.4f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), new TweenSpec(1000, 200, EasingKt.f3863b), composer2, 0);
                                NativeAuthenticationTitleKt.a(SizeKt.d(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f), listV, pagerState2.k(), composer2, 0);
                                PagerKt.a(pagerState2, columnScopeInstance.a(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f, true), null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Alignment.Companion.f8591k, null, false, false, null, null, null, ComposableLambdaKt.b(228520436, new v10(composableLambdaImpl, 2), composer2), composer2, 102236160, 24576, 16060);
                                composer2.r();
                                if (z) {
                                    composer2.L(-554090323);
                                    LVLoadingOverlayKt.a(false, composer2, 0, 1);
                                    composer2.F();
                                } else {
                                    composer2.L(-554049961);
                                    composer2.F();
                                }
                                LVModalBottomSheetState lVModalBottomSheetState4 = lVModalBottomSheetState3;
                                if (lVModalBottomSheetState4 == null || !lVModalBottomSheetState4.a()) {
                                    composer2.L(-552683977);
                                    composer2.F();
                                } else {
                                    composer2.L(-553908601);
                                    String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                                    Function0 function18 = function10;
                                    boolean zK = composer2.K(function18);
                                    Object objX3 = composer2.x();
                                    if (zK || objX3 == Composer.Companion.f7939a) {
                                        objX3 = new ee0(function18, 2);
                                        composer2.q(objX3);
                                    }
                                    LVModalBottomSheetKt.b(Modifier.Companion.f8607b, strC, (Function0) objX3, lVModalBottomSheetState4, null, 0L, false, null, ComposableLambdaKt.b(-1062906429, new w0(nativeRegisterBottomSheetScreen4, str3, function8, coroutineScope9, lVModalBottomSheetState4, function9, function18), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663302, 240);
                                    composer2.F();
                                }
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH), gapComposer, 805309440, 502);
                    z4 = z6;
                    lVModalBottomSheetState2 = lVModalBottomSheetState3;
                    function7 = function10;
                    nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen4;
                    str2 = str3;
                    function5 = function8;
                    function6 = function9;
                    modifier2 = dTFunctionNameModifier8;
                } else if (i17 != i16) {
                    size = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a.size();
                } else {
                    if (i17 == 3) {
                        v40.g();
                        return;
                    }
                    size = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53486b.size();
                }
                i18 = size;
                Unit unit16 = Unit.f71739a;
                zY = gapComposerH.y(focusManager);
                objX2 = gapComposerH.x();
                if (zY) {
                    objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                        @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                        public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                            Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                            return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX2);
                } else {
                    objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                        @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                        public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                            Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                            return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX2);
                }
                gapComposer = gapComposerH;
                ScaffoldKt.a(WindowInsetsPadding_androidKt.a(SuspendingPointerInputFilterKt.a(dTFunctionNameModifier8, unit16, (PointerInputEventHandler) objX2)), null, null, ComposableLambdaKt.b(-680791422, new ae0(snackbarHostState, 1), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-377167413, new Function3() { // from class: le0
                    @Override // kotlin.jvm.functions.Function3
                    public final Object A(Object obj, Object obj2, Object obj3) {
                        String str4;
                        PaddingValues paddingValues = (PaddingValues) obj;
                        Composer composer2 = (Composer) obj2;
                        int iIntValue = ((Integer) obj3).intValue();
                        paddingValues.getClass();
                        if ((iIntValue & 6) == 0) {
                            iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                        }
                        if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                            OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                            Modifier modifierO = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2").o(SizeKt.f5052c);
                            Painter painterA = PainterResources_androidKt.a(R.drawable.native_login_background, composer2, 0);
                            ContentScale.f9447a.getClass();
                            Modifier modifierH = PaddingKt.h(PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), paddingValues);
                            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                            Alignment.f8582a.getClass();
                            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                            int iHashCode = Long.hashCode(composer2.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                            Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                            ComposeUiNode.b0.getClass();
                            Function0 function11 = ComposeUiNode.Companion.f9641b;
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function11);
                            } else {
                                composer2.o();
                            }
                            Function2 function12 = ComposeUiNode.Companion.f9644f;
                            Updater.c(composer2, columnMeasurePolicyA, function12);
                            Function2 function13 = ComposeUiNode.Companion.f9643e;
                            Updater.c(composer2, persistentCompositionLocalMapN, function13);
                            Integer numValueOf = Integer.valueOf(iHashCode);
                            Function2 function14 = ComposeUiNode.Companion.g;
                            Updater.c(composer2, numValueOf, function14);
                            Function1 function15 = ComposeUiNode.Companion.f9645h;
                            Updater.b(composer2, function15);
                            Function2 function16 = ComposeUiNode.Companion.d;
                            Updater.c(composer2, modifierC, function16);
                            Modifier modifierD = SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
                            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                            int iHashCode2 = Long.hashCode(composer2.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                            Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function11);
                            } else {
                                composer2.o();
                            }
                            Updater.c(composer2, measurePolicyD, function12);
                            Updater.c(composer2, persistentCompositionLocalMapN2, function13);
                            cj.s(iHashCode2, composer2, function14, composer2, function15);
                            Updater.c(composer2, modifierC2, function16);
                            PagerState pagerState2 = pagerState;
                            boolean z7 = pagerState2.k() > 0;
                            EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                            ExitTransition exitTransitionH = EnterExitTransitionKt.h(null, 3);
                            Function0 function17 = function3;
                            CoroutineScope coroutineScope9 = coroutineScope8;
                            NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext2 = nativeAuthenticationLayoutContext;
                            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(99358455, new r(function17, coroutineScope9, pagerState2, nativeAuthenticationLayoutContext2), composer2);
                            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                            AnimatedVisibilityKt.c(columnScopeInstance, z7, null, enterTransitionF, exitTransitionH, null, composableLambdaImplB, composer2, 1600518, 18);
                            DTFunctionNameModifier dTFunctionNameModifier9 = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2");
                            BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                            BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                            LVPageNumberIndicatorKt.a(boxScopeInstance.g(dTFunctionNameModifier9, biasAlignment), pagerState2, null, composer2, 0, 4);
                            Modifier modifierC3 = ModifierExtKt.c(boxScopeInstance.g(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(composer2).o), Alignment.Companion.g), false, null, null, function4, 31);
                            int i25 = NativeAuthenticationLayoutKt.WhenMappings.f53478a[nativeAuthenticationLayoutContext2.ordinal()];
                            if (i25 == 1) {
                                str4 = "nativeRegister_cross_button";
                            } else if (i25 == 2) {
                                str4 = "nativeForgetPassword_cross_button";
                            } else {
                                if (i25 != 3) {
                                    v40.g();
                                    return null;
                                }
                                str4 = "account_activation_close";
                            }
                            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).q, composer2, 0), StringResources_androidKt.c(composer2, R.string.alt_close), ModifierExtKt.e(modifierC3, str4), LVAppDesignKitTheme.c(composer2).f48361b.m, composer2, 8, 0);
                            composer2.r();
                            LVProgressIndicatorKt.a(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), pagerState2.k(), pagerState2.k() + 1, i18, Color.b(0.8f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), Color.b(0.4f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), new TweenSpec(1000, 200, EasingKt.f3863b), composer2, 0);
                            NativeAuthenticationTitleKt.a(SizeKt.d(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f), listV, pagerState2.k(), composer2, 0);
                            PagerKt.a(pagerState2, columnScopeInstance.a(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f, true), null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Alignment.Companion.f8591k, null, false, false, null, null, null, ComposableLambdaKt.b(228520436, new v10(composableLambdaImpl, 2), composer2), composer2, 102236160, 24576, 16060);
                            composer2.r();
                            if (z) {
                                composer2.L(-554090323);
                                LVLoadingOverlayKt.a(false, composer2, 0, 1);
                                composer2.F();
                            } else {
                                composer2.L(-554049961);
                                composer2.F();
                            }
                            LVModalBottomSheetState lVModalBottomSheetState4 = lVModalBottomSheetState3;
                            if (lVModalBottomSheetState4 == null || !lVModalBottomSheetState4.a()) {
                                composer2.L(-552683977);
                                composer2.F();
                            } else {
                                composer2.L(-553908601);
                                String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                                Function0 function18 = function10;
                                boolean zK = composer2.K(function18);
                                Object objX3 = composer2.x();
                                if (zK || objX3 == Composer.Companion.f7939a) {
                                    objX3 = new ee0(function18, 2);
                                    composer2.q(objX3);
                                }
                                LVModalBottomSheetKt.b(Modifier.Companion.f8607b, strC, (Function0) objX3, lVModalBottomSheetState4, null, 0L, false, null, ComposableLambdaKt.b(-1062906429, new w0(nativeRegisterBottomSheetScreen4, str3, function8, coroutineScope9, lVModalBottomSheetState4, function9, function18), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663302, 240);
                                composer2.F();
                            }
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposer, 805309440, 502);
                z4 = z6;
                lVModalBottomSheetState2 = lVModalBottomSheetState3;
                function7 = function10;
                nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen4;
                str2 = str3;
                function5 = function8;
                function6 = function9;
                modifier2 = dTFunctionNameModifier8;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                lVModalBottomSheetState2 = lVModalBottomSheetState;
                str2 = str;
                function5 = function0;
                function6 = function1;
                z4 = z2;
                nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen2;
                modifier2 = modifierE;
                function7 = function2;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: me0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i2 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i3);
                        NativeAuthenticationLayoutKt.a(modifier2, nativeAuthenticationLayoutContext, pagerState, focusManager, lVModalBottomSheetState2, nativeRegisterBottomSheetScreen3, z, str2, snackbarHostState, function5, function6, function7, function3, function4, z4, composableLambdaImpl, (Composer) obj, iA, iA2, i4);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i21 |= 12582912;
        if ((i2 & 100663296) == 0) {
            if (gapComposerH.K(snackbarHostState)) {
                i20 = 67108864;
            } else {
                i20 = 33554432;
            }
            i21 |= i20;
        }
        i5 = i4 & 512;
        if (i5 != 0) {
            if ((i2 & 805306368) == 0) {
                if (gapComposerH.y(function0)) {
                    i6 = PKIFailureInfo.duplicateCertReq;
                } else {
                    i6 = 268435456;
                }
                i21 |= i6;
            }
            i7 = i4 & 1024;
            if (i7 != 0) {
                i8 = i3 | 6;
            } else if ((i3 & 6) == 0) {
                if (gapComposerH.y(function1)) {
                    i9 = 4;
                } else {
                    i9 = 2;
                }
                i8 = i3 | i9;
            } else {
                i8 = i3;
            }
            i10 = i4 & 2048;
            if (i10 != 0) {
                if ((i3 & 48) == 0) {
                    if (gapComposerH.y(function2)) {
                        i11 = 32;
                    } else {
                        i11 = 16;
                    }
                    i8 |= i11;
                }
                if ((i3 & KyberEngine.KyberPolyBytes) != 0) {
                    if (gapComposerH.y(function3)) {
                        i19 = 256;
                    } else {
                        i19 = 128;
                    }
                    i8 |= i19;
                }
                if ((i3 & 3072) != 0) {
                    i8 |= gapComposerH.y(function4) ? 2048 : 1024;
                }
                i12 = i8;
                i13 = i4 & 16384;
                if (i13 != 0) {
                    i14 = i12;
                    if ((i3 & 24576) == 0) {
                        i14 |= gapComposerH.b(z2) ? 16384 : 8192;
                    }
                    if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                        i14 |= gapComposerH.y(composableLambdaImpl) ? 131072 : 65536;
                    }
                    if ((i21 & 306783379) == 306783378) {
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                    if (gapComposerH.p(i21 & 1, z3)) {
                        DTFunctionNameModifier dTFunctionNameModifier9 = new DTFunctionNameModifier("NativeAuthenticationLayout");
                        if (i22 != 0) {
                            lVModalBottomSheetState3 = null;
                        } else {
                            lVModalBottomSheetState3 = lVModalBottomSheetState;
                        }
                        if (i23 != 0) {
                            nativeRegisterBottomSheetScreen4 = null;
                        } else {
                            nativeRegisterBottomSheetScreen4 = nativeRegisterBottomSheetScreen2;
                        }
                        if (i24 != 0) {
                            str3 = null;
                        } else {
                            str3 = str;
                        }
                        if (i5 != 0) {
                            function8 = null;
                        } else {
                            function8 = function0;
                        }
                        if (i7 != 0) {
                            function9 = null;
                        } else {
                            function9 = function1;
                        }
                        if (i10 != 0) {
                            function10 = null;
                        } else {
                            function10 = function2;
                        }
                        if (i13 != 0) {
                            z5 = false;
                        } else {
                            z5 = z2;
                        }
                        OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                        objX = gapComposerH.x();
                        composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (objX == composer$Companion$Empty$1) {
                            objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                            gapComposerH.q(objX);
                        }
                        final CoroutineScope coroutineScope9 = (CoroutineScope) objX;
                        int[] iArr9 = WhenMappings.f53478a;
                        i15 = iArr9[nativeAuthenticationLayoutContext.ordinal()];
                        if (i15 != 1) {
                            if (i15 != 2) {
                                list = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a;
                            } else {
                                if (i15 == 3) {
                                    v40.g();
                                    return;
                                }
                                list = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53486b;
                            }
                            listV = list;
                            z6 = z5;
                            function8 = function8;
                            i16 = 2;
                        } else {
                            List list10 = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a;
                            i16 = 2;
                            NativeAuthenticationTitle nativeAuthenticationTitle18 = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_create_account, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                            z6 = z5;
                            NativeAuthenticationTitle nativeAuthenticationTitle19 = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_information, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description2, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                            if (z6) {
                                nativeAuthenticationTitle = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_address, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description_address, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                            } else {
                                nativeAuthenticationTitle = null;
                            }
                            listV = ArraysKt.v(new NativeAuthenticationTitle[]{nativeAuthenticationTitle18, nativeAuthenticationTitle19, nativeAuthenticationTitle, new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_information, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description3, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text"), new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_activate_account, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description_activation_code, null, 2, null), "nativeRegister_titleActivateAccount_text", "nativeRegister_descriptionActivationCode_text")});
                        }
                        i17 = iArr9[nativeAuthenticationLayoutContext.ordinal()];
                        if (i17 != 1) {
                            if (z6) {
                                size = 5;
                            } else {
                                i18 = 4;
                            }
                            Unit unit17 = Unit.f71739a;
                            zY = gapComposerH.y(focusManager);
                            objX2 = gapComposerH.x();
                            if (zY) {
                                objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                        Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                                    }
                                };
                                gapComposerH.q(objX2);
                            } else {
                                objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                        Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                                    }
                                };
                                gapComposerH.q(objX2);
                            }
                            gapComposer = gapComposerH;
                            ScaffoldKt.a(WindowInsetsPadding_androidKt.a(SuspendingPointerInputFilterKt.a(dTFunctionNameModifier9, unit17, (PointerInputEventHandler) objX2)), null, null, ComposableLambdaKt.b(-680791422, new ae0(snackbarHostState, 1), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-377167413, new Function3() { // from class: le0
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj, Object obj2, Object obj3) {
                                    String str4;
                                    PaddingValues paddingValues = (PaddingValues) obj;
                                    Composer composer2 = (Composer) obj2;
                                    int iIntValue = ((Integer) obj3).intValue();
                                    paddingValues.getClass();
                                    if ((iIntValue & 6) == 0) {
                                        iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                                    }
                                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                                        OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                                        Modifier modifierO = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2").o(SizeKt.f5052c);
                                        Painter painterA = PainterResources_androidKt.a(R.drawable.native_login_background, composer2, 0);
                                        ContentScale.f9447a.getClass();
                                        Modifier modifierH = PaddingKt.h(PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), paddingValues);
                                        Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                                        Alignment.f8582a.getClass();
                                        ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                                        int iHashCode = Long.hashCode(composer2.getT());
                                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                                        ComposeUiNode.b0.getClass();
                                        Function0 function11 = ComposeUiNode.Companion.f9641b;
                                        if (composer2.getF7976a() == null) {
                                            ComposablesKt.b();
                                            throw null;
                                        }
                                        composer2.B();
                                        if (composer2.getS()) {
                                            composer2.C(function11);
                                        } else {
                                            composer2.o();
                                        }
                                        Function2 function12 = ComposeUiNode.Companion.f9644f;
                                        Updater.c(composer2, columnMeasurePolicyA, function12);
                                        Function2 function13 = ComposeUiNode.Companion.f9643e;
                                        Updater.c(composer2, persistentCompositionLocalMapN, function13);
                                        Integer numValueOf = Integer.valueOf(iHashCode);
                                        Function2 function14 = ComposeUiNode.Companion.g;
                                        Updater.c(composer2, numValueOf, function14);
                                        Function1 function15 = ComposeUiNode.Companion.f9645h;
                                        Updater.b(composer2, function15);
                                        Function2 function16 = ComposeUiNode.Companion.d;
                                        Updater.c(composer2, modifierC, function16);
                                        Modifier modifierD = SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
                                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                        int iHashCode2 = Long.hashCode(composer2.getT());
                                        PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                                        Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
                                        if (composer2.getF7976a() == null) {
                                            ComposablesKt.b();
                                            throw null;
                                        }
                                        composer2.B();
                                        if (composer2.getS()) {
                                            composer2.C(function11);
                                        } else {
                                            composer2.o();
                                        }
                                        Updater.c(composer2, measurePolicyD, function12);
                                        Updater.c(composer2, persistentCompositionLocalMapN2, function13);
                                        cj.s(iHashCode2, composer2, function14, composer2, function15);
                                        Updater.c(composer2, modifierC2, function16);
                                        PagerState pagerState2 = pagerState;
                                        boolean z7 = pagerState2.k() > 0;
                                        EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                                        ExitTransition exitTransitionH = EnterExitTransitionKt.h(null, 3);
                                        Function0 function17 = function3;
                                        CoroutineScope coroutineScope10 = coroutineScope9;
                                        NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext2 = nativeAuthenticationLayoutContext;
                                        ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(99358455, new r(function17, coroutineScope10, pagerState2, nativeAuthenticationLayoutContext2), composer2);
                                        ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                                        AnimatedVisibilityKt.c(columnScopeInstance, z7, null, enterTransitionF, exitTransitionH, null, composableLambdaImplB, composer2, 1600518, 18);
                                        DTFunctionNameModifier dTFunctionNameModifier10 = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2");
                                        BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                                        LVPageNumberIndicatorKt.a(boxScopeInstance.g(dTFunctionNameModifier10, biasAlignment), pagerState2, null, composer2, 0, 4);
                                        Modifier modifierC3 = ModifierExtKt.c(boxScopeInstance.g(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(composer2).o), Alignment.Companion.g), false, null, null, function4, 31);
                                        int i25 = NativeAuthenticationLayoutKt.WhenMappings.f53478a[nativeAuthenticationLayoutContext2.ordinal()];
                                        if (i25 == 1) {
                                            str4 = "nativeRegister_cross_button";
                                        } else if (i25 == 2) {
                                            str4 = "nativeForgetPassword_cross_button";
                                        } else {
                                            if (i25 != 3) {
                                                v40.g();
                                                return null;
                                            }
                                            str4 = "account_activation_close";
                                        }
                                        IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).q, composer2, 0), StringResources_androidKt.c(composer2, R.string.alt_close), ModifierExtKt.e(modifierC3, str4), LVAppDesignKitTheme.c(composer2).f48361b.m, composer2, 8, 0);
                                        composer2.r();
                                        LVProgressIndicatorKt.a(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), pagerState2.k(), pagerState2.k() + 1, i18, Color.b(0.8f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), Color.b(0.4f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), new TweenSpec(1000, 200, EasingKt.f3863b), composer2, 0);
                                        NativeAuthenticationTitleKt.a(SizeKt.d(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f), listV, pagerState2.k(), composer2, 0);
                                        PagerKt.a(pagerState2, columnScopeInstance.a(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f, true), null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Alignment.Companion.f8591k, null, false, false, null, null, null, ComposableLambdaKt.b(228520436, new v10(composableLambdaImpl, 2), composer2), composer2, 102236160, 24576, 16060);
                                        composer2.r();
                                        if (z) {
                                            composer2.L(-554090323);
                                            LVLoadingOverlayKt.a(false, composer2, 0, 1);
                                            composer2.F();
                                        } else {
                                            composer2.L(-554049961);
                                            composer2.F();
                                        }
                                        LVModalBottomSheetState lVModalBottomSheetState4 = lVModalBottomSheetState3;
                                        if (lVModalBottomSheetState4 == null || !lVModalBottomSheetState4.a()) {
                                            composer2.L(-552683977);
                                            composer2.F();
                                        } else {
                                            composer2.L(-553908601);
                                            String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                                            Function0 function18 = function10;
                                            boolean zK = composer2.K(function18);
                                            Object objX3 = composer2.x();
                                            if (zK || objX3 == Composer.Companion.f7939a) {
                                                objX3 = new ee0(function18, 2);
                                                composer2.q(objX3);
                                            }
                                            LVModalBottomSheetKt.b(Modifier.Companion.f8607b, strC, (Function0) objX3, lVModalBottomSheetState4, null, 0L, false, null, ComposableLambdaKt.b(-1062906429, new w0(nativeRegisterBottomSheetScreen4, str3, function8, coroutineScope10, lVModalBottomSheetState4, function9, function18), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663302, 240);
                                            composer2.F();
                                        }
                                    } else {
                                        composer2.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }, gapComposerH), gapComposer, 805309440, 502);
                            z4 = z6;
                            lVModalBottomSheetState2 = lVModalBottomSheetState3;
                            function7 = function10;
                            nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen4;
                            str2 = str3;
                            function5 = function8;
                            function6 = function9;
                            modifier2 = dTFunctionNameModifier9;
                        } else if (i17 != i16) {
                            size = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a.size();
                        } else {
                            if (i17 == 3) {
                                v40.g();
                                return;
                            }
                            size = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53486b.size();
                        }
                        i18 = size;
                        Unit unit18 = Unit.f71739a;
                        zY = gapComposerH.y(focusManager);
                        objX2 = gapComposerH.x();
                        if (zY) {
                            objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                    Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                    return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                                }
                            };
                            gapComposerH.q(objX2);
                        } else {
                            objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                    Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                    return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                                }
                            };
                            gapComposerH.q(objX2);
                        }
                        gapComposer = gapComposerH;
                        ScaffoldKt.a(WindowInsetsPadding_androidKt.a(SuspendingPointerInputFilterKt.a(dTFunctionNameModifier9, unit18, (PointerInputEventHandler) objX2)), null, null, ComposableLambdaKt.b(-680791422, new ae0(snackbarHostState, 1), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-377167413, new Function3() { // from class: le0
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj, Object obj2, Object obj3) {
                                String str4;
                                PaddingValues paddingValues = (PaddingValues) obj;
                                Composer composer2 = (Composer) obj2;
                                int iIntValue = ((Integer) obj3).intValue();
                                paddingValues.getClass();
                                if ((iIntValue & 6) == 0) {
                                    iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                                }
                                if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                                    Modifier modifierO = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2").o(SizeKt.f5052c);
                                    Painter painterA = PainterResources_androidKt.a(R.drawable.native_login_background, composer2, 0);
                                    ContentScale.f9447a.getClass();
                                    Modifier modifierH = PaddingKt.h(PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), paddingValues);
                                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                                    Alignment.f8582a.getClass();
                                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                                    int iHashCode = Long.hashCode(composer2.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                    Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                                    ComposeUiNode.b0.getClass();
                                    Function0 function11 = ComposeUiNode.Companion.f9641b;
                                    if (composer2.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer2.B();
                                    if (composer2.getS()) {
                                        composer2.C(function11);
                                    } else {
                                        composer2.o();
                                    }
                                    Function2 function12 = ComposeUiNode.Companion.f9644f;
                                    Updater.c(composer2, columnMeasurePolicyA, function12);
                                    Function2 function13 = ComposeUiNode.Companion.f9643e;
                                    Updater.c(composer2, persistentCompositionLocalMapN, function13);
                                    Integer numValueOf = Integer.valueOf(iHashCode);
                                    Function2 function14 = ComposeUiNode.Companion.g;
                                    Updater.c(composer2, numValueOf, function14);
                                    Function1 function15 = ComposeUiNode.Companion.f9645h;
                                    Updater.b(composer2, function15);
                                    Function2 function16 = ComposeUiNode.Companion.d;
                                    Updater.c(composer2, modifierC, function16);
                                    Modifier modifierD = SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
                                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                    int iHashCode2 = Long.hashCode(composer2.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                                    Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
                                    if (composer2.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer2.B();
                                    if (composer2.getS()) {
                                        composer2.C(function11);
                                    } else {
                                        composer2.o();
                                    }
                                    Updater.c(composer2, measurePolicyD, function12);
                                    Updater.c(composer2, persistentCompositionLocalMapN2, function13);
                                    cj.s(iHashCode2, composer2, function14, composer2, function15);
                                    Updater.c(composer2, modifierC2, function16);
                                    PagerState pagerState2 = pagerState;
                                    boolean z7 = pagerState2.k() > 0;
                                    EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                                    ExitTransition exitTransitionH = EnterExitTransitionKt.h(null, 3);
                                    Function0 function17 = function3;
                                    CoroutineScope coroutineScope10 = coroutineScope9;
                                    NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext2 = nativeAuthenticationLayoutContext;
                                    ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(99358455, new r(function17, coroutineScope10, pagerState2, nativeAuthenticationLayoutContext2), composer2);
                                    ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                                    AnimatedVisibilityKt.c(columnScopeInstance, z7, null, enterTransitionF, exitTransitionH, null, composableLambdaImplB, composer2, 1600518, 18);
                                    DTFunctionNameModifier dTFunctionNameModifier10 = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2");
                                    BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                                    LVPageNumberIndicatorKt.a(boxScopeInstance.g(dTFunctionNameModifier10, biasAlignment), pagerState2, null, composer2, 0, 4);
                                    Modifier modifierC3 = ModifierExtKt.c(boxScopeInstance.g(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(composer2).o), Alignment.Companion.g), false, null, null, function4, 31);
                                    int i25 = NativeAuthenticationLayoutKt.WhenMappings.f53478a[nativeAuthenticationLayoutContext2.ordinal()];
                                    if (i25 == 1) {
                                        str4 = "nativeRegister_cross_button";
                                    } else if (i25 == 2) {
                                        str4 = "nativeForgetPassword_cross_button";
                                    } else {
                                        if (i25 != 3) {
                                            v40.g();
                                            return null;
                                        }
                                        str4 = "account_activation_close";
                                    }
                                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).q, composer2, 0), StringResources_androidKt.c(composer2, R.string.alt_close), ModifierExtKt.e(modifierC3, str4), LVAppDesignKitTheme.c(composer2).f48361b.m, composer2, 8, 0);
                                    composer2.r();
                                    LVProgressIndicatorKt.a(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), pagerState2.k(), pagerState2.k() + 1, i18, Color.b(0.8f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), Color.b(0.4f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), new TweenSpec(1000, 200, EasingKt.f3863b), composer2, 0);
                                    NativeAuthenticationTitleKt.a(SizeKt.d(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f), listV, pagerState2.k(), composer2, 0);
                                    PagerKt.a(pagerState2, columnScopeInstance.a(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f, true), null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Alignment.Companion.f8591k, null, false, false, null, null, null, ComposableLambdaKt.b(228520436, new v10(composableLambdaImpl, 2), composer2), composer2, 102236160, 24576, 16060);
                                    composer2.r();
                                    if (z) {
                                        composer2.L(-554090323);
                                        LVLoadingOverlayKt.a(false, composer2, 0, 1);
                                        composer2.F();
                                    } else {
                                        composer2.L(-554049961);
                                        composer2.F();
                                    }
                                    LVModalBottomSheetState lVModalBottomSheetState4 = lVModalBottomSheetState3;
                                    if (lVModalBottomSheetState4 == null || !lVModalBottomSheetState4.a()) {
                                        composer2.L(-552683977);
                                        composer2.F();
                                    } else {
                                        composer2.L(-553908601);
                                        String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                                        Function0 function18 = function10;
                                        boolean zK = composer2.K(function18);
                                        Object objX3 = composer2.x();
                                        if (zK || objX3 == Composer.Companion.f7939a) {
                                            objX3 = new ee0(function18, 2);
                                            composer2.q(objX3);
                                        }
                                        LVModalBottomSheetKt.b(Modifier.Companion.f8607b, strC, (Function0) objX3, lVModalBottomSheetState4, null, 0L, false, null, ComposableLambdaKt.b(-1062906429, new w0(nativeRegisterBottomSheetScreen4, str3, function8, coroutineScope10, lVModalBottomSheetState4, function9, function18), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663302, 240);
                                        composer2.F();
                                    }
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        }, gapComposerH), gapComposer, 805309440, 502);
                        z4 = z6;
                        lVModalBottomSheetState2 = lVModalBottomSheetState3;
                        function7 = function10;
                        nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen4;
                        str2 = str3;
                        function5 = function8;
                        function6 = function9;
                        modifier2 = dTFunctionNameModifier9;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        lVModalBottomSheetState2 = lVModalBottomSheetState;
                        str2 = str;
                        function5 = function0;
                        function6 = function1;
                        z4 = z2;
                        nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen2;
                        modifier2 = modifierE;
                        function7 = function2;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: me0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i2 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i3);
                                NativeAuthenticationLayoutKt.a(modifier2, nativeAuthenticationLayoutContext, pagerState, focusManager, lVModalBottomSheetState2, nativeRegisterBottomSheetScreen3, z, str2, snackbarHostState, function5, function6, function7, function3, function4, z4, composableLambdaImpl, (Composer) obj, iA, iA2, i4);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i14 = i12 | 24576;
                if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                    i14 |= gapComposerH.y(composableLambdaImpl) ? 131072 : 65536;
                }
                if ((i21 & 306783379) == 306783378) {
                    z3 = true;
                } else {
                    z3 = true;
                }
                if (gapComposerH.p(i21 & 1, z3)) {
                    DTFunctionNameModifier dTFunctionNameModifier10 = new DTFunctionNameModifier("NativeAuthenticationLayout");
                    if (i22 != 0) {
                        lVModalBottomSheetState3 = null;
                    } else {
                        lVModalBottomSheetState3 = lVModalBottomSheetState;
                    }
                    if (i23 != 0) {
                        nativeRegisterBottomSheetScreen4 = null;
                    } else {
                        nativeRegisterBottomSheetScreen4 = nativeRegisterBottomSheetScreen2;
                    }
                    if (i24 != 0) {
                        str3 = null;
                    } else {
                        str3 = str;
                    }
                    if (i5 != 0) {
                        function8 = null;
                    } else {
                        function8 = function0;
                    }
                    if (i7 != 0) {
                        function9 = null;
                    } else {
                        function9 = function1;
                    }
                    if (i10 != 0) {
                        function10 = null;
                    } else {
                        function10 = function2;
                    }
                    if (i13 != 0) {
                        z5 = false;
                    } else {
                        z5 = z2;
                    }
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    objX = gapComposerH.x();
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                        gapComposerH.q(objX);
                    }
                    final CoroutineScope coroutineScope10 = (CoroutineScope) objX;
                    int[] iArr10 = WhenMappings.f53478a;
                    i15 = iArr10[nativeAuthenticationLayoutContext.ordinal()];
                    if (i15 != 1) {
                        if (i15 != 2) {
                            list = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a;
                        } else {
                            if (i15 == 3) {
                                v40.g();
                                return;
                            }
                            list = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53486b;
                        }
                        listV = list;
                        z6 = z5;
                        function8 = function8;
                        i16 = 2;
                    } else {
                        List list11 = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a;
                        i16 = 2;
                        NativeAuthenticationTitle nativeAuthenticationTitle110 = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_create_account, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                        z6 = z5;
                        NativeAuthenticationTitle nativeAuthenticationTitle111 = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_information, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description2, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                        if (z6) {
                            nativeAuthenticationTitle = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_address, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description_address, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                        } else {
                            nativeAuthenticationTitle = null;
                        }
                        listV = ArraysKt.v(new NativeAuthenticationTitle[]{nativeAuthenticationTitle110, nativeAuthenticationTitle111, nativeAuthenticationTitle, new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_information, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description3, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text"), new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_activate_account, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description_activation_code, null, 2, null), "nativeRegister_titleActivateAccount_text", "nativeRegister_descriptionActivationCode_text")});
                    }
                    i17 = iArr10[nativeAuthenticationLayoutContext.ordinal()];
                    if (i17 != 1) {
                        if (z6) {
                            size = 5;
                        } else {
                            i18 = 4;
                        }
                        Unit unit19 = Unit.f71739a;
                        zY = gapComposerH.y(focusManager);
                        objX2 = gapComposerH.x();
                        if (zY) {
                            objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                    Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                    return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                                }
                            };
                            gapComposerH.q(objX2);
                        } else {
                            objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                    Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                    return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                                }
                            };
                            gapComposerH.q(objX2);
                        }
                        gapComposer = gapComposerH;
                        ScaffoldKt.a(WindowInsetsPadding_androidKt.a(SuspendingPointerInputFilterKt.a(dTFunctionNameModifier10, unit19, (PointerInputEventHandler) objX2)), null, null, ComposableLambdaKt.b(-680791422, new ae0(snackbarHostState, 1), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-377167413, new Function3() { // from class: le0
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj, Object obj2, Object obj3) {
                                String str4;
                                PaddingValues paddingValues = (PaddingValues) obj;
                                Composer composer2 = (Composer) obj2;
                                int iIntValue = ((Integer) obj3).intValue();
                                paddingValues.getClass();
                                if ((iIntValue & 6) == 0) {
                                    iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                                }
                                if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                                    Modifier modifierO = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2").o(SizeKt.f5052c);
                                    Painter painterA = PainterResources_androidKt.a(R.drawable.native_login_background, composer2, 0);
                                    ContentScale.f9447a.getClass();
                                    Modifier modifierH = PaddingKt.h(PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), paddingValues);
                                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                                    Alignment.f8582a.getClass();
                                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                                    int iHashCode = Long.hashCode(composer2.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                    Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                                    ComposeUiNode.b0.getClass();
                                    Function0 function11 = ComposeUiNode.Companion.f9641b;
                                    if (composer2.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer2.B();
                                    if (composer2.getS()) {
                                        composer2.C(function11);
                                    } else {
                                        composer2.o();
                                    }
                                    Function2 function12 = ComposeUiNode.Companion.f9644f;
                                    Updater.c(composer2, columnMeasurePolicyA, function12);
                                    Function2 function13 = ComposeUiNode.Companion.f9643e;
                                    Updater.c(composer2, persistentCompositionLocalMapN, function13);
                                    Integer numValueOf = Integer.valueOf(iHashCode);
                                    Function2 function14 = ComposeUiNode.Companion.g;
                                    Updater.c(composer2, numValueOf, function14);
                                    Function1 function15 = ComposeUiNode.Companion.f9645h;
                                    Updater.b(composer2, function15);
                                    Function2 function16 = ComposeUiNode.Companion.d;
                                    Updater.c(composer2, modifierC, function16);
                                    Modifier modifierD = SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
                                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                    int iHashCode2 = Long.hashCode(composer2.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                                    Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
                                    if (composer2.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer2.B();
                                    if (composer2.getS()) {
                                        composer2.C(function11);
                                    } else {
                                        composer2.o();
                                    }
                                    Updater.c(composer2, measurePolicyD, function12);
                                    Updater.c(composer2, persistentCompositionLocalMapN2, function13);
                                    cj.s(iHashCode2, composer2, function14, composer2, function15);
                                    Updater.c(composer2, modifierC2, function16);
                                    PagerState pagerState2 = pagerState;
                                    boolean z7 = pagerState2.k() > 0;
                                    EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                                    ExitTransition exitTransitionH = EnterExitTransitionKt.h(null, 3);
                                    Function0 function17 = function3;
                                    CoroutineScope coroutineScope11 = coroutineScope10;
                                    NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext2 = nativeAuthenticationLayoutContext;
                                    ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(99358455, new r(function17, coroutineScope11, pagerState2, nativeAuthenticationLayoutContext2), composer2);
                                    ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                                    AnimatedVisibilityKt.c(columnScopeInstance, z7, null, enterTransitionF, exitTransitionH, null, composableLambdaImplB, composer2, 1600518, 18);
                                    DTFunctionNameModifier dTFunctionNameModifier11 = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2");
                                    BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                                    LVPageNumberIndicatorKt.a(boxScopeInstance.g(dTFunctionNameModifier11, biasAlignment), pagerState2, null, composer2, 0, 4);
                                    Modifier modifierC3 = ModifierExtKt.c(boxScopeInstance.g(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(composer2).o), Alignment.Companion.g), false, null, null, function4, 31);
                                    int i25 = NativeAuthenticationLayoutKt.WhenMappings.f53478a[nativeAuthenticationLayoutContext2.ordinal()];
                                    if (i25 == 1) {
                                        str4 = "nativeRegister_cross_button";
                                    } else if (i25 == 2) {
                                        str4 = "nativeForgetPassword_cross_button";
                                    } else {
                                        if (i25 != 3) {
                                            v40.g();
                                            return null;
                                        }
                                        str4 = "account_activation_close";
                                    }
                                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).q, composer2, 0), StringResources_androidKt.c(composer2, R.string.alt_close), ModifierExtKt.e(modifierC3, str4), LVAppDesignKitTheme.c(composer2).f48361b.m, composer2, 8, 0);
                                    composer2.r();
                                    LVProgressIndicatorKt.a(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), pagerState2.k(), pagerState2.k() + 1, i18, Color.b(0.8f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), Color.b(0.4f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), new TweenSpec(1000, 200, EasingKt.f3863b), composer2, 0);
                                    NativeAuthenticationTitleKt.a(SizeKt.d(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f), listV, pagerState2.k(), composer2, 0);
                                    PagerKt.a(pagerState2, columnScopeInstance.a(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f, true), null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Alignment.Companion.f8591k, null, false, false, null, null, null, ComposableLambdaKt.b(228520436, new v10(composableLambdaImpl, 2), composer2), composer2, 102236160, 24576, 16060);
                                    composer2.r();
                                    if (z) {
                                        composer2.L(-554090323);
                                        LVLoadingOverlayKt.a(false, composer2, 0, 1);
                                        composer2.F();
                                    } else {
                                        composer2.L(-554049961);
                                        composer2.F();
                                    }
                                    LVModalBottomSheetState lVModalBottomSheetState4 = lVModalBottomSheetState3;
                                    if (lVModalBottomSheetState4 == null || !lVModalBottomSheetState4.a()) {
                                        composer2.L(-552683977);
                                        composer2.F();
                                    } else {
                                        composer2.L(-553908601);
                                        String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                                        Function0 function18 = function10;
                                        boolean zK = composer2.K(function18);
                                        Object objX3 = composer2.x();
                                        if (zK || objX3 == Composer.Companion.f7939a) {
                                            objX3 = new ee0(function18, 2);
                                            composer2.q(objX3);
                                        }
                                        LVModalBottomSheetKt.b(Modifier.Companion.f8607b, strC, (Function0) objX3, lVModalBottomSheetState4, null, 0L, false, null, ComposableLambdaKt.b(-1062906429, new w0(nativeRegisterBottomSheetScreen4, str3, function8, coroutineScope11, lVModalBottomSheetState4, function9, function18), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663302, 240);
                                        composer2.F();
                                    }
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        }, gapComposerH), gapComposer, 805309440, 502);
                        z4 = z6;
                        lVModalBottomSheetState2 = lVModalBottomSheetState3;
                        function7 = function10;
                        nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen4;
                        str2 = str3;
                        function5 = function8;
                        function6 = function9;
                        modifier2 = dTFunctionNameModifier10;
                    } else if (i17 != i16) {
                        size = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a.size();
                    } else {
                        if (i17 == 3) {
                            v40.g();
                            return;
                        }
                        size = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53486b.size();
                    }
                    i18 = size;
                    Unit unit110 = Unit.f71739a;
                    zY = gapComposerH.y(focusManager);
                    objX2 = gapComposerH.x();
                    if (zY) {
                        objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                            public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX2);
                    } else {
                        objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                            public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX2);
                    }
                    gapComposer = gapComposerH;
                    ScaffoldKt.a(WindowInsetsPadding_androidKt.a(SuspendingPointerInputFilterKt.a(dTFunctionNameModifier10, unit110, (PointerInputEventHandler) objX2)), null, null, ComposableLambdaKt.b(-680791422, new ae0(snackbarHostState, 1), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-377167413, new Function3() { // from class: le0
                        @Override // kotlin.jvm.functions.Function3
                        public final Object A(Object obj, Object obj2, Object obj3) {
                            String str4;
                            PaddingValues paddingValues = (PaddingValues) obj;
                            Composer composer2 = (Composer) obj2;
                            int iIntValue = ((Integer) obj3).intValue();
                            paddingValues.getClass();
                            if ((iIntValue & 6) == 0) {
                                iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                            }
                            if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                                OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                                Modifier modifierO = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2").o(SizeKt.f5052c);
                                Painter painterA = PainterResources_androidKt.a(R.drawable.native_login_background, composer2, 0);
                                ContentScale.f9447a.getClass();
                                Modifier modifierH = PaddingKt.h(PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), paddingValues);
                                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                                Alignment.f8582a.getClass();
                                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                                int iHashCode = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                                ComposeUiNode.b0.getClass();
                                Function0 function11 = ComposeUiNode.Companion.f9641b;
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function11);
                                } else {
                                    composer2.o();
                                }
                                Function2 function12 = ComposeUiNode.Companion.f9644f;
                                Updater.c(composer2, columnMeasurePolicyA, function12);
                                Function2 function13 = ComposeUiNode.Companion.f9643e;
                                Updater.c(composer2, persistentCompositionLocalMapN, function13);
                                Integer numValueOf = Integer.valueOf(iHashCode);
                                Function2 function14 = ComposeUiNode.Companion.g;
                                Updater.c(composer2, numValueOf, function14);
                                Function1 function15 = ComposeUiNode.Companion.f9645h;
                                Updater.b(composer2, function15);
                                Function2 function16 = ComposeUiNode.Companion.d;
                                Updater.c(composer2, modifierC, function16);
                                Modifier modifierD = SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
                                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                int iHashCode2 = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                                Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function11);
                                } else {
                                    composer2.o();
                                }
                                Updater.c(composer2, measurePolicyD, function12);
                                Updater.c(composer2, persistentCompositionLocalMapN2, function13);
                                cj.s(iHashCode2, composer2, function14, composer2, function15);
                                Updater.c(composer2, modifierC2, function16);
                                PagerState pagerState2 = pagerState;
                                boolean z7 = pagerState2.k() > 0;
                                EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                                ExitTransition exitTransitionH = EnterExitTransitionKt.h(null, 3);
                                Function0 function17 = function3;
                                CoroutineScope coroutineScope11 = coroutineScope10;
                                NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext2 = nativeAuthenticationLayoutContext;
                                ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(99358455, new r(function17, coroutineScope11, pagerState2, nativeAuthenticationLayoutContext2), composer2);
                                ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                                AnimatedVisibilityKt.c(columnScopeInstance, z7, null, enterTransitionF, exitTransitionH, null, composableLambdaImplB, composer2, 1600518, 18);
                                DTFunctionNameModifier dTFunctionNameModifier11 = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2");
                                BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                                BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                                LVPageNumberIndicatorKt.a(boxScopeInstance.g(dTFunctionNameModifier11, biasAlignment), pagerState2, null, composer2, 0, 4);
                                Modifier modifierC3 = ModifierExtKt.c(boxScopeInstance.g(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(composer2).o), Alignment.Companion.g), false, null, null, function4, 31);
                                int i25 = NativeAuthenticationLayoutKt.WhenMappings.f53478a[nativeAuthenticationLayoutContext2.ordinal()];
                                if (i25 == 1) {
                                    str4 = "nativeRegister_cross_button";
                                } else if (i25 == 2) {
                                    str4 = "nativeForgetPassword_cross_button";
                                } else {
                                    if (i25 != 3) {
                                        v40.g();
                                        return null;
                                    }
                                    str4 = "account_activation_close";
                                }
                                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).q, composer2, 0), StringResources_androidKt.c(composer2, R.string.alt_close), ModifierExtKt.e(modifierC3, str4), LVAppDesignKitTheme.c(composer2).f48361b.m, composer2, 8, 0);
                                composer2.r();
                                LVProgressIndicatorKt.a(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), pagerState2.k(), pagerState2.k() + 1, i18, Color.b(0.8f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), Color.b(0.4f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), new TweenSpec(1000, 200, EasingKt.f3863b), composer2, 0);
                                NativeAuthenticationTitleKt.a(SizeKt.d(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f), listV, pagerState2.k(), composer2, 0);
                                PagerKt.a(pagerState2, columnScopeInstance.a(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f, true), null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Alignment.Companion.f8591k, null, false, false, null, null, null, ComposableLambdaKt.b(228520436, new v10(composableLambdaImpl, 2), composer2), composer2, 102236160, 24576, 16060);
                                composer2.r();
                                if (z) {
                                    composer2.L(-554090323);
                                    LVLoadingOverlayKt.a(false, composer2, 0, 1);
                                    composer2.F();
                                } else {
                                    composer2.L(-554049961);
                                    composer2.F();
                                }
                                LVModalBottomSheetState lVModalBottomSheetState4 = lVModalBottomSheetState3;
                                if (lVModalBottomSheetState4 == null || !lVModalBottomSheetState4.a()) {
                                    composer2.L(-552683977);
                                    composer2.F();
                                } else {
                                    composer2.L(-553908601);
                                    String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                                    Function0 function18 = function10;
                                    boolean zK = composer2.K(function18);
                                    Object objX3 = composer2.x();
                                    if (zK || objX3 == Composer.Companion.f7939a) {
                                        objX3 = new ee0(function18, 2);
                                        composer2.q(objX3);
                                    }
                                    LVModalBottomSheetKt.b(Modifier.Companion.f8607b, strC, (Function0) objX3, lVModalBottomSheetState4, null, 0L, false, null, ComposableLambdaKt.b(-1062906429, new w0(nativeRegisterBottomSheetScreen4, str3, function8, coroutineScope11, lVModalBottomSheetState4, function9, function18), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663302, 240);
                                    composer2.F();
                                }
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH), gapComposer, 805309440, 502);
                    z4 = z6;
                    lVModalBottomSheetState2 = lVModalBottomSheetState3;
                    function7 = function10;
                    nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen4;
                    str2 = str3;
                    function5 = function8;
                    function6 = function9;
                    modifier2 = dTFunctionNameModifier10;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    lVModalBottomSheetState2 = lVModalBottomSheetState;
                    str2 = str;
                    function5 = function0;
                    function6 = function1;
                    z4 = z2;
                    nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen2;
                    modifier2 = modifierE;
                    function7 = function2;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: me0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i2 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i3);
                            NativeAuthenticationLayoutKt.a(modifier2, nativeAuthenticationLayoutContext, pagerState, focusManager, lVModalBottomSheetState2, nativeRegisterBottomSheetScreen3, z, str2, snackbarHostState, function5, function6, function7, function3, function4, z4, composableLambdaImpl, (Composer) obj, iA, iA2, i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i8 |= 48;
            if ((i3 & KyberEngine.KyberPolyBytes) != 0) {
                if (gapComposerH.y(function3)) {
                    i19 = 256;
                } else {
                    i19 = 128;
                }
                i8 |= i19;
            }
            if ((i3 & 3072) != 0) {
                i8 |= gapComposerH.y(function4) ? 2048 : 1024;
            }
            i12 = i8;
            i13 = i4 & 16384;
            if (i13 != 0) {
                i14 = i12;
                if ((i3 & 24576) == 0) {
                    i14 |= gapComposerH.b(z2) ? 16384 : 8192;
                }
                if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                    i14 |= gapComposerH.y(composableLambdaImpl) ? 131072 : 65536;
                }
                if ((i21 & 306783379) == 306783378) {
                    z3 = true;
                } else {
                    z3 = true;
                }
                if (gapComposerH.p(i21 & 1, z3)) {
                    DTFunctionNameModifier dTFunctionNameModifier11 = new DTFunctionNameModifier("NativeAuthenticationLayout");
                    if (i22 != 0) {
                        lVModalBottomSheetState3 = null;
                    } else {
                        lVModalBottomSheetState3 = lVModalBottomSheetState;
                    }
                    if (i23 != 0) {
                        nativeRegisterBottomSheetScreen4 = null;
                    } else {
                        nativeRegisterBottomSheetScreen4 = nativeRegisterBottomSheetScreen2;
                    }
                    if (i24 != 0) {
                        str3 = null;
                    } else {
                        str3 = str;
                    }
                    if (i5 != 0) {
                        function8 = null;
                    } else {
                        function8 = function0;
                    }
                    if (i7 != 0) {
                        function9 = null;
                    } else {
                        function9 = function1;
                    }
                    if (i10 != 0) {
                        function10 = null;
                    } else {
                        function10 = function2;
                    }
                    if (i13 != 0) {
                        z5 = false;
                    } else {
                        z5 = z2;
                    }
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    objX = gapComposerH.x();
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                        gapComposerH.q(objX);
                    }
                    final CoroutineScope coroutineScope11 = (CoroutineScope) objX;
                    int[] iArr11 = WhenMappings.f53478a;
                    i15 = iArr11[nativeAuthenticationLayoutContext.ordinal()];
                    if (i15 != 1) {
                        if (i15 != 2) {
                            list = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a;
                        } else {
                            if (i15 == 3) {
                                v40.g();
                                return;
                            }
                            list = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53486b;
                        }
                        listV = list;
                        z6 = z5;
                        function8 = function8;
                        i16 = 2;
                    } else {
                        List list12 = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a;
                        i16 = 2;
                        NativeAuthenticationTitle nativeAuthenticationTitle112 = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_create_account, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                        z6 = z5;
                        NativeAuthenticationTitle nativeAuthenticationTitle113 = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_information, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description2, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                        if (z6) {
                            nativeAuthenticationTitle = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_address, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description_address, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                        } else {
                            nativeAuthenticationTitle = null;
                        }
                        listV = ArraysKt.v(new NativeAuthenticationTitle[]{nativeAuthenticationTitle112, nativeAuthenticationTitle113, nativeAuthenticationTitle, new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_information, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description3, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text"), new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_activate_account, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description_activation_code, null, 2, null), "nativeRegister_titleActivateAccount_text", "nativeRegister_descriptionActivationCode_text")});
                    }
                    i17 = iArr11[nativeAuthenticationLayoutContext.ordinal()];
                    if (i17 != 1) {
                        if (z6) {
                            size = 5;
                        } else {
                            i18 = 4;
                        }
                        Unit unit111 = Unit.f71739a;
                        zY = gapComposerH.y(focusManager);
                        objX2 = gapComposerH.x();
                        if (zY) {
                            objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                    Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                    return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                                }
                            };
                            gapComposerH.q(objX2);
                        } else {
                            objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                    Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                    return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                                }
                            };
                            gapComposerH.q(objX2);
                        }
                        gapComposer = gapComposerH;
                        ScaffoldKt.a(WindowInsetsPadding_androidKt.a(SuspendingPointerInputFilterKt.a(dTFunctionNameModifier11, unit111, (PointerInputEventHandler) objX2)), null, null, ComposableLambdaKt.b(-680791422, new ae0(snackbarHostState, 1), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-377167413, new Function3() { // from class: le0
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj, Object obj2, Object obj3) {
                                String str4;
                                PaddingValues paddingValues = (PaddingValues) obj;
                                Composer composer2 = (Composer) obj2;
                                int iIntValue = ((Integer) obj3).intValue();
                                paddingValues.getClass();
                                if ((iIntValue & 6) == 0) {
                                    iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                                }
                                if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                                    OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                                    Modifier modifierO = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2").o(SizeKt.f5052c);
                                    Painter painterA = PainterResources_androidKt.a(R.drawable.native_login_background, composer2, 0);
                                    ContentScale.f9447a.getClass();
                                    Modifier modifierH = PaddingKt.h(PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), paddingValues);
                                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                                    Alignment.f8582a.getClass();
                                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                                    int iHashCode = Long.hashCode(composer2.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                    Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                                    ComposeUiNode.b0.getClass();
                                    Function0 function11 = ComposeUiNode.Companion.f9641b;
                                    if (composer2.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer2.B();
                                    if (composer2.getS()) {
                                        composer2.C(function11);
                                    } else {
                                        composer2.o();
                                    }
                                    Function2 function12 = ComposeUiNode.Companion.f9644f;
                                    Updater.c(composer2, columnMeasurePolicyA, function12);
                                    Function2 function13 = ComposeUiNode.Companion.f9643e;
                                    Updater.c(composer2, persistentCompositionLocalMapN, function13);
                                    Integer numValueOf = Integer.valueOf(iHashCode);
                                    Function2 function14 = ComposeUiNode.Companion.g;
                                    Updater.c(composer2, numValueOf, function14);
                                    Function1 function15 = ComposeUiNode.Companion.f9645h;
                                    Updater.b(composer2, function15);
                                    Function2 function16 = ComposeUiNode.Companion.d;
                                    Updater.c(composer2, modifierC, function16);
                                    Modifier modifierD = SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
                                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                    int iHashCode2 = Long.hashCode(composer2.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                                    Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
                                    if (composer2.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer2.B();
                                    if (composer2.getS()) {
                                        composer2.C(function11);
                                    } else {
                                        composer2.o();
                                    }
                                    Updater.c(composer2, measurePolicyD, function12);
                                    Updater.c(composer2, persistentCompositionLocalMapN2, function13);
                                    cj.s(iHashCode2, composer2, function14, composer2, function15);
                                    Updater.c(composer2, modifierC2, function16);
                                    PagerState pagerState2 = pagerState;
                                    boolean z7 = pagerState2.k() > 0;
                                    EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                                    ExitTransition exitTransitionH = EnterExitTransitionKt.h(null, 3);
                                    Function0 function17 = function3;
                                    CoroutineScope coroutineScope12 = coroutineScope11;
                                    NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext2 = nativeAuthenticationLayoutContext;
                                    ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(99358455, new r(function17, coroutineScope12, pagerState2, nativeAuthenticationLayoutContext2), composer2);
                                    ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                                    AnimatedVisibilityKt.c(columnScopeInstance, z7, null, enterTransitionF, exitTransitionH, null, composableLambdaImplB, composer2, 1600518, 18);
                                    DTFunctionNameModifier dTFunctionNameModifier12 = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2");
                                    BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                                    LVPageNumberIndicatorKt.a(boxScopeInstance.g(dTFunctionNameModifier12, biasAlignment), pagerState2, null, composer2, 0, 4);
                                    Modifier modifierC3 = ModifierExtKt.c(boxScopeInstance.g(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(composer2).o), Alignment.Companion.g), false, null, null, function4, 31);
                                    int i25 = NativeAuthenticationLayoutKt.WhenMappings.f53478a[nativeAuthenticationLayoutContext2.ordinal()];
                                    if (i25 == 1) {
                                        str4 = "nativeRegister_cross_button";
                                    } else if (i25 == 2) {
                                        str4 = "nativeForgetPassword_cross_button";
                                    } else {
                                        if (i25 != 3) {
                                            v40.g();
                                            return null;
                                        }
                                        str4 = "account_activation_close";
                                    }
                                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).q, composer2, 0), StringResources_androidKt.c(composer2, R.string.alt_close), ModifierExtKt.e(modifierC3, str4), LVAppDesignKitTheme.c(composer2).f48361b.m, composer2, 8, 0);
                                    composer2.r();
                                    LVProgressIndicatorKt.a(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), pagerState2.k(), pagerState2.k() + 1, i18, Color.b(0.8f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), Color.b(0.4f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), new TweenSpec(1000, 200, EasingKt.f3863b), composer2, 0);
                                    NativeAuthenticationTitleKt.a(SizeKt.d(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f), listV, pagerState2.k(), composer2, 0);
                                    PagerKt.a(pagerState2, columnScopeInstance.a(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f, true), null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Alignment.Companion.f8591k, null, false, false, null, null, null, ComposableLambdaKt.b(228520436, new v10(composableLambdaImpl, 2), composer2), composer2, 102236160, 24576, 16060);
                                    composer2.r();
                                    if (z) {
                                        composer2.L(-554090323);
                                        LVLoadingOverlayKt.a(false, composer2, 0, 1);
                                        composer2.F();
                                    } else {
                                        composer2.L(-554049961);
                                        composer2.F();
                                    }
                                    LVModalBottomSheetState lVModalBottomSheetState4 = lVModalBottomSheetState3;
                                    if (lVModalBottomSheetState4 == null || !lVModalBottomSheetState4.a()) {
                                        composer2.L(-552683977);
                                        composer2.F();
                                    } else {
                                        composer2.L(-553908601);
                                        String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                                        Function0 function18 = function10;
                                        boolean zK = composer2.K(function18);
                                        Object objX3 = composer2.x();
                                        if (zK || objX3 == Composer.Companion.f7939a) {
                                            objX3 = new ee0(function18, 2);
                                            composer2.q(objX3);
                                        }
                                        LVModalBottomSheetKt.b(Modifier.Companion.f8607b, strC, (Function0) objX3, lVModalBottomSheetState4, null, 0L, false, null, ComposableLambdaKt.b(-1062906429, new w0(nativeRegisterBottomSheetScreen4, str3, function8, coroutineScope12, lVModalBottomSheetState4, function9, function18), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663302, 240);
                                        composer2.F();
                                    }
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        }, gapComposerH), gapComposer, 805309440, 502);
                        z4 = z6;
                        lVModalBottomSheetState2 = lVModalBottomSheetState3;
                        function7 = function10;
                        nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen4;
                        str2 = str3;
                        function5 = function8;
                        function6 = function9;
                        modifier2 = dTFunctionNameModifier11;
                    } else if (i17 != i16) {
                        size = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a.size();
                    } else {
                        if (i17 == 3) {
                            v40.g();
                            return;
                        }
                        size = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53486b.size();
                    }
                    i18 = size;
                    Unit unit112 = Unit.f71739a;
                    zY = gapComposerH.y(focusManager);
                    objX2 = gapComposerH.x();
                    if (zY) {
                        objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                            public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX2);
                    } else {
                        objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                            public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX2);
                    }
                    gapComposer = gapComposerH;
                    ScaffoldKt.a(WindowInsetsPadding_androidKt.a(SuspendingPointerInputFilterKt.a(dTFunctionNameModifier11, unit112, (PointerInputEventHandler) objX2)), null, null, ComposableLambdaKt.b(-680791422, new ae0(snackbarHostState, 1), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-377167413, new Function3() { // from class: le0
                        @Override // kotlin.jvm.functions.Function3
                        public final Object A(Object obj, Object obj2, Object obj3) {
                            String str4;
                            PaddingValues paddingValues = (PaddingValues) obj;
                            Composer composer2 = (Composer) obj2;
                            int iIntValue = ((Integer) obj3).intValue();
                            paddingValues.getClass();
                            if ((iIntValue & 6) == 0) {
                                iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                            }
                            if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                                OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                                Modifier modifierO = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2").o(SizeKt.f5052c);
                                Painter painterA = PainterResources_androidKt.a(R.drawable.native_login_background, composer2, 0);
                                ContentScale.f9447a.getClass();
                                Modifier modifierH = PaddingKt.h(PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), paddingValues);
                                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                                Alignment.f8582a.getClass();
                                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                                int iHashCode = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                                ComposeUiNode.b0.getClass();
                                Function0 function11 = ComposeUiNode.Companion.f9641b;
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function11);
                                } else {
                                    composer2.o();
                                }
                                Function2 function12 = ComposeUiNode.Companion.f9644f;
                                Updater.c(composer2, columnMeasurePolicyA, function12);
                                Function2 function13 = ComposeUiNode.Companion.f9643e;
                                Updater.c(composer2, persistentCompositionLocalMapN, function13);
                                Integer numValueOf = Integer.valueOf(iHashCode);
                                Function2 function14 = ComposeUiNode.Companion.g;
                                Updater.c(composer2, numValueOf, function14);
                                Function1 function15 = ComposeUiNode.Companion.f9645h;
                                Updater.b(composer2, function15);
                                Function2 function16 = ComposeUiNode.Companion.d;
                                Updater.c(composer2, modifierC, function16);
                                Modifier modifierD = SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
                                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                int iHashCode2 = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                                Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function11);
                                } else {
                                    composer2.o();
                                }
                                Updater.c(composer2, measurePolicyD, function12);
                                Updater.c(composer2, persistentCompositionLocalMapN2, function13);
                                cj.s(iHashCode2, composer2, function14, composer2, function15);
                                Updater.c(composer2, modifierC2, function16);
                                PagerState pagerState2 = pagerState;
                                boolean z7 = pagerState2.k() > 0;
                                EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                                ExitTransition exitTransitionH = EnterExitTransitionKt.h(null, 3);
                                Function0 function17 = function3;
                                CoroutineScope coroutineScope12 = coroutineScope11;
                                NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext2 = nativeAuthenticationLayoutContext;
                                ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(99358455, new r(function17, coroutineScope12, pagerState2, nativeAuthenticationLayoutContext2), composer2);
                                ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                                AnimatedVisibilityKt.c(columnScopeInstance, z7, null, enterTransitionF, exitTransitionH, null, composableLambdaImplB, composer2, 1600518, 18);
                                DTFunctionNameModifier dTFunctionNameModifier12 = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2");
                                BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                                BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                                LVPageNumberIndicatorKt.a(boxScopeInstance.g(dTFunctionNameModifier12, biasAlignment), pagerState2, null, composer2, 0, 4);
                                Modifier modifierC3 = ModifierExtKt.c(boxScopeInstance.g(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(composer2).o), Alignment.Companion.g), false, null, null, function4, 31);
                                int i25 = NativeAuthenticationLayoutKt.WhenMappings.f53478a[nativeAuthenticationLayoutContext2.ordinal()];
                                if (i25 == 1) {
                                    str4 = "nativeRegister_cross_button";
                                } else if (i25 == 2) {
                                    str4 = "nativeForgetPassword_cross_button";
                                } else {
                                    if (i25 != 3) {
                                        v40.g();
                                        return null;
                                    }
                                    str4 = "account_activation_close";
                                }
                                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).q, composer2, 0), StringResources_androidKt.c(composer2, R.string.alt_close), ModifierExtKt.e(modifierC3, str4), LVAppDesignKitTheme.c(composer2).f48361b.m, composer2, 8, 0);
                                composer2.r();
                                LVProgressIndicatorKt.a(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), pagerState2.k(), pagerState2.k() + 1, i18, Color.b(0.8f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), Color.b(0.4f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), new TweenSpec(1000, 200, EasingKt.f3863b), composer2, 0);
                                NativeAuthenticationTitleKt.a(SizeKt.d(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f), listV, pagerState2.k(), composer2, 0);
                                PagerKt.a(pagerState2, columnScopeInstance.a(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f, true), null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Alignment.Companion.f8591k, null, false, false, null, null, null, ComposableLambdaKt.b(228520436, new v10(composableLambdaImpl, 2), composer2), composer2, 102236160, 24576, 16060);
                                composer2.r();
                                if (z) {
                                    composer2.L(-554090323);
                                    LVLoadingOverlayKt.a(false, composer2, 0, 1);
                                    composer2.F();
                                } else {
                                    composer2.L(-554049961);
                                    composer2.F();
                                }
                                LVModalBottomSheetState lVModalBottomSheetState4 = lVModalBottomSheetState3;
                                if (lVModalBottomSheetState4 == null || !lVModalBottomSheetState4.a()) {
                                    composer2.L(-552683977);
                                    composer2.F();
                                } else {
                                    composer2.L(-553908601);
                                    String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                                    Function0 function18 = function10;
                                    boolean zK = composer2.K(function18);
                                    Object objX3 = composer2.x();
                                    if (zK || objX3 == Composer.Companion.f7939a) {
                                        objX3 = new ee0(function18, 2);
                                        composer2.q(objX3);
                                    }
                                    LVModalBottomSheetKt.b(Modifier.Companion.f8607b, strC, (Function0) objX3, lVModalBottomSheetState4, null, 0L, false, null, ComposableLambdaKt.b(-1062906429, new w0(nativeRegisterBottomSheetScreen4, str3, function8, coroutineScope12, lVModalBottomSheetState4, function9, function18), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663302, 240);
                                    composer2.F();
                                }
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH), gapComposer, 805309440, 502);
                    z4 = z6;
                    lVModalBottomSheetState2 = lVModalBottomSheetState3;
                    function7 = function10;
                    nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen4;
                    str2 = str3;
                    function5 = function8;
                    function6 = function9;
                    modifier2 = dTFunctionNameModifier11;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    lVModalBottomSheetState2 = lVModalBottomSheetState;
                    str2 = str;
                    function5 = function0;
                    function6 = function1;
                    z4 = z2;
                    nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen2;
                    modifier2 = modifierE;
                    function7 = function2;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: me0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i2 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i3);
                            NativeAuthenticationLayoutKt.a(modifier2, nativeAuthenticationLayoutContext, pagerState, focusManager, lVModalBottomSheetState2, nativeRegisterBottomSheetScreen3, z, str2, snackbarHostState, function5, function6, function7, function3, function4, z4, composableLambdaImpl, (Composer) obj, iA, iA2, i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i14 = i12 | 24576;
            if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                i14 |= gapComposerH.y(composableLambdaImpl) ? 131072 : 65536;
            }
            if ((i21 & 306783379) == 306783378) {
                z3 = true;
            } else {
                z3 = true;
            }
            if (gapComposerH.p(i21 & 1, z3)) {
                DTFunctionNameModifier dTFunctionNameModifier12 = new DTFunctionNameModifier("NativeAuthenticationLayout");
                if (i22 != 0) {
                    lVModalBottomSheetState3 = null;
                } else {
                    lVModalBottomSheetState3 = lVModalBottomSheetState;
                }
                if (i23 != 0) {
                    nativeRegisterBottomSheetScreen4 = null;
                } else {
                    nativeRegisterBottomSheetScreen4 = nativeRegisterBottomSheetScreen2;
                }
                if (i24 != 0) {
                    str3 = null;
                } else {
                    str3 = str;
                }
                if (i5 != 0) {
                    function8 = null;
                } else {
                    function8 = function0;
                }
                if (i7 != 0) {
                    function9 = null;
                } else {
                    function9 = function1;
                }
                if (i10 != 0) {
                    function10 = null;
                } else {
                    function10 = function2;
                }
                if (i13 != 0) {
                    z5 = false;
                } else {
                    z5 = z2;
                }
                OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                    gapComposerH.q(objX);
                }
                final CoroutineScope coroutineScope12 = (CoroutineScope) objX;
                int[] iArr12 = WhenMappings.f53478a;
                i15 = iArr12[nativeAuthenticationLayoutContext.ordinal()];
                if (i15 != 1) {
                    if (i15 != 2) {
                        list = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a;
                    } else {
                        if (i15 == 3) {
                            v40.g();
                            return;
                        }
                        list = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53486b;
                    }
                    listV = list;
                    z6 = z5;
                    function8 = function8;
                    i16 = 2;
                } else {
                    List list13 = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a;
                    i16 = 2;
                    NativeAuthenticationTitle nativeAuthenticationTitle114 = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_create_account, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                    z6 = z5;
                    NativeAuthenticationTitle nativeAuthenticationTitle115 = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_information, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description2, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                    if (z6) {
                        nativeAuthenticationTitle = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_address, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description_address, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                    } else {
                        nativeAuthenticationTitle = null;
                    }
                    listV = ArraysKt.v(new NativeAuthenticationTitle[]{nativeAuthenticationTitle114, nativeAuthenticationTitle115, nativeAuthenticationTitle, new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_information, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description3, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text"), new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_activate_account, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description_activation_code, null, 2, null), "nativeRegister_titleActivateAccount_text", "nativeRegister_descriptionActivationCode_text")});
                }
                i17 = iArr12[nativeAuthenticationLayoutContext.ordinal()];
                if (i17 != 1) {
                    if (z6) {
                        size = 5;
                    } else {
                        i18 = 4;
                    }
                    Unit unit113 = Unit.f71739a;
                    zY = gapComposerH.y(focusManager);
                    objX2 = gapComposerH.x();
                    if (zY) {
                        objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                            public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX2);
                    } else {
                        objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                            public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX2);
                    }
                    gapComposer = gapComposerH;
                    ScaffoldKt.a(WindowInsetsPadding_androidKt.a(SuspendingPointerInputFilterKt.a(dTFunctionNameModifier12, unit113, (PointerInputEventHandler) objX2)), null, null, ComposableLambdaKt.b(-680791422, new ae0(snackbarHostState, 1), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-377167413, new Function3() { // from class: le0
                        @Override // kotlin.jvm.functions.Function3
                        public final Object A(Object obj, Object obj2, Object obj3) {
                            String str4;
                            PaddingValues paddingValues = (PaddingValues) obj;
                            Composer composer2 = (Composer) obj2;
                            int iIntValue = ((Integer) obj3).intValue();
                            paddingValues.getClass();
                            if ((iIntValue & 6) == 0) {
                                iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                            }
                            if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                                OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                                Modifier modifierO = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2").o(SizeKt.f5052c);
                                Painter painterA = PainterResources_androidKt.a(R.drawable.native_login_background, composer2, 0);
                                ContentScale.f9447a.getClass();
                                Modifier modifierH = PaddingKt.h(PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), paddingValues);
                                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                                Alignment.f8582a.getClass();
                                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                                int iHashCode = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                                ComposeUiNode.b0.getClass();
                                Function0 function11 = ComposeUiNode.Companion.f9641b;
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function11);
                                } else {
                                    composer2.o();
                                }
                                Function2 function12 = ComposeUiNode.Companion.f9644f;
                                Updater.c(composer2, columnMeasurePolicyA, function12);
                                Function2 function13 = ComposeUiNode.Companion.f9643e;
                                Updater.c(composer2, persistentCompositionLocalMapN, function13);
                                Integer numValueOf = Integer.valueOf(iHashCode);
                                Function2 function14 = ComposeUiNode.Companion.g;
                                Updater.c(composer2, numValueOf, function14);
                                Function1 function15 = ComposeUiNode.Companion.f9645h;
                                Updater.b(composer2, function15);
                                Function2 function16 = ComposeUiNode.Companion.d;
                                Updater.c(composer2, modifierC, function16);
                                Modifier modifierD = SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
                                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                int iHashCode2 = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                                Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function11);
                                } else {
                                    composer2.o();
                                }
                                Updater.c(composer2, measurePolicyD, function12);
                                Updater.c(composer2, persistentCompositionLocalMapN2, function13);
                                cj.s(iHashCode2, composer2, function14, composer2, function15);
                                Updater.c(composer2, modifierC2, function16);
                                PagerState pagerState2 = pagerState;
                                boolean z7 = pagerState2.k() > 0;
                                EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                                ExitTransition exitTransitionH = EnterExitTransitionKt.h(null, 3);
                                Function0 function17 = function3;
                                CoroutineScope coroutineScope13 = coroutineScope12;
                                NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext2 = nativeAuthenticationLayoutContext;
                                ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(99358455, new r(function17, coroutineScope13, pagerState2, nativeAuthenticationLayoutContext2), composer2);
                                ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                                AnimatedVisibilityKt.c(columnScopeInstance, z7, null, enterTransitionF, exitTransitionH, null, composableLambdaImplB, composer2, 1600518, 18);
                                DTFunctionNameModifier dTFunctionNameModifier13 = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2");
                                BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                                BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                                LVPageNumberIndicatorKt.a(boxScopeInstance.g(dTFunctionNameModifier13, biasAlignment), pagerState2, null, composer2, 0, 4);
                                Modifier modifierC3 = ModifierExtKt.c(boxScopeInstance.g(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(composer2).o), Alignment.Companion.g), false, null, null, function4, 31);
                                int i25 = NativeAuthenticationLayoutKt.WhenMappings.f53478a[nativeAuthenticationLayoutContext2.ordinal()];
                                if (i25 == 1) {
                                    str4 = "nativeRegister_cross_button";
                                } else if (i25 == 2) {
                                    str4 = "nativeForgetPassword_cross_button";
                                } else {
                                    if (i25 != 3) {
                                        v40.g();
                                        return null;
                                    }
                                    str4 = "account_activation_close";
                                }
                                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).q, composer2, 0), StringResources_androidKt.c(composer2, R.string.alt_close), ModifierExtKt.e(modifierC3, str4), LVAppDesignKitTheme.c(composer2).f48361b.m, composer2, 8, 0);
                                composer2.r();
                                LVProgressIndicatorKt.a(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), pagerState2.k(), pagerState2.k() + 1, i18, Color.b(0.8f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), Color.b(0.4f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), new TweenSpec(1000, 200, EasingKt.f3863b), composer2, 0);
                                NativeAuthenticationTitleKt.a(SizeKt.d(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f), listV, pagerState2.k(), composer2, 0);
                                PagerKt.a(pagerState2, columnScopeInstance.a(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f, true), null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Alignment.Companion.f8591k, null, false, false, null, null, null, ComposableLambdaKt.b(228520436, new v10(composableLambdaImpl, 2), composer2), composer2, 102236160, 24576, 16060);
                                composer2.r();
                                if (z) {
                                    composer2.L(-554090323);
                                    LVLoadingOverlayKt.a(false, composer2, 0, 1);
                                    composer2.F();
                                } else {
                                    composer2.L(-554049961);
                                    composer2.F();
                                }
                                LVModalBottomSheetState lVModalBottomSheetState4 = lVModalBottomSheetState3;
                                if (lVModalBottomSheetState4 == null || !lVModalBottomSheetState4.a()) {
                                    composer2.L(-552683977);
                                    composer2.F();
                                } else {
                                    composer2.L(-553908601);
                                    String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                                    Function0 function18 = function10;
                                    boolean zK = composer2.K(function18);
                                    Object objX3 = composer2.x();
                                    if (zK || objX3 == Composer.Companion.f7939a) {
                                        objX3 = new ee0(function18, 2);
                                        composer2.q(objX3);
                                    }
                                    LVModalBottomSheetKt.b(Modifier.Companion.f8607b, strC, (Function0) objX3, lVModalBottomSheetState4, null, 0L, false, null, ComposableLambdaKt.b(-1062906429, new w0(nativeRegisterBottomSheetScreen4, str3, function8, coroutineScope13, lVModalBottomSheetState4, function9, function18), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663302, 240);
                                    composer2.F();
                                }
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH), gapComposer, 805309440, 502);
                    z4 = z6;
                    lVModalBottomSheetState2 = lVModalBottomSheetState3;
                    function7 = function10;
                    nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen4;
                    str2 = str3;
                    function5 = function8;
                    function6 = function9;
                    modifier2 = dTFunctionNameModifier12;
                } else if (i17 != i16) {
                    size = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a.size();
                } else {
                    if (i17 == 3) {
                        v40.g();
                        return;
                    }
                    size = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53486b.size();
                }
                i18 = size;
                Unit unit114 = Unit.f71739a;
                zY = gapComposerH.y(focusManager);
                objX2 = gapComposerH.x();
                if (zY) {
                    objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                        @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                        public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                            Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                            return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX2);
                } else {
                    objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                        @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                        public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                            Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                            return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX2);
                }
                gapComposer = gapComposerH;
                ScaffoldKt.a(WindowInsetsPadding_androidKt.a(SuspendingPointerInputFilterKt.a(dTFunctionNameModifier12, unit114, (PointerInputEventHandler) objX2)), null, null, ComposableLambdaKt.b(-680791422, new ae0(snackbarHostState, 1), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-377167413, new Function3() { // from class: le0
                    @Override // kotlin.jvm.functions.Function3
                    public final Object A(Object obj, Object obj2, Object obj3) {
                        String str4;
                        PaddingValues paddingValues = (PaddingValues) obj;
                        Composer composer2 = (Composer) obj2;
                        int iIntValue = ((Integer) obj3).intValue();
                        paddingValues.getClass();
                        if ((iIntValue & 6) == 0) {
                            iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                        }
                        if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                            OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                            Modifier modifierO = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2").o(SizeKt.f5052c);
                            Painter painterA = PainterResources_androidKt.a(R.drawable.native_login_background, composer2, 0);
                            ContentScale.f9447a.getClass();
                            Modifier modifierH = PaddingKt.h(PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), paddingValues);
                            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                            Alignment.f8582a.getClass();
                            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                            int iHashCode = Long.hashCode(composer2.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                            Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                            ComposeUiNode.b0.getClass();
                            Function0 function11 = ComposeUiNode.Companion.f9641b;
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function11);
                            } else {
                                composer2.o();
                            }
                            Function2 function12 = ComposeUiNode.Companion.f9644f;
                            Updater.c(composer2, columnMeasurePolicyA, function12);
                            Function2 function13 = ComposeUiNode.Companion.f9643e;
                            Updater.c(composer2, persistentCompositionLocalMapN, function13);
                            Integer numValueOf = Integer.valueOf(iHashCode);
                            Function2 function14 = ComposeUiNode.Companion.g;
                            Updater.c(composer2, numValueOf, function14);
                            Function1 function15 = ComposeUiNode.Companion.f9645h;
                            Updater.b(composer2, function15);
                            Function2 function16 = ComposeUiNode.Companion.d;
                            Updater.c(composer2, modifierC, function16);
                            Modifier modifierD = SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
                            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                            int iHashCode2 = Long.hashCode(composer2.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                            Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function11);
                            } else {
                                composer2.o();
                            }
                            Updater.c(composer2, measurePolicyD, function12);
                            Updater.c(composer2, persistentCompositionLocalMapN2, function13);
                            cj.s(iHashCode2, composer2, function14, composer2, function15);
                            Updater.c(composer2, modifierC2, function16);
                            PagerState pagerState2 = pagerState;
                            boolean z7 = pagerState2.k() > 0;
                            EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                            ExitTransition exitTransitionH = EnterExitTransitionKt.h(null, 3);
                            Function0 function17 = function3;
                            CoroutineScope coroutineScope13 = coroutineScope12;
                            NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext2 = nativeAuthenticationLayoutContext;
                            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(99358455, new r(function17, coroutineScope13, pagerState2, nativeAuthenticationLayoutContext2), composer2);
                            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                            AnimatedVisibilityKt.c(columnScopeInstance, z7, null, enterTransitionF, exitTransitionH, null, composableLambdaImplB, composer2, 1600518, 18);
                            DTFunctionNameModifier dTFunctionNameModifier13 = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2");
                            BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                            BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                            LVPageNumberIndicatorKt.a(boxScopeInstance.g(dTFunctionNameModifier13, biasAlignment), pagerState2, null, composer2, 0, 4);
                            Modifier modifierC3 = ModifierExtKt.c(boxScopeInstance.g(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(composer2).o), Alignment.Companion.g), false, null, null, function4, 31);
                            int i25 = NativeAuthenticationLayoutKt.WhenMappings.f53478a[nativeAuthenticationLayoutContext2.ordinal()];
                            if (i25 == 1) {
                                str4 = "nativeRegister_cross_button";
                            } else if (i25 == 2) {
                                str4 = "nativeForgetPassword_cross_button";
                            } else {
                                if (i25 != 3) {
                                    v40.g();
                                    return null;
                                }
                                str4 = "account_activation_close";
                            }
                            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).q, composer2, 0), StringResources_androidKt.c(composer2, R.string.alt_close), ModifierExtKt.e(modifierC3, str4), LVAppDesignKitTheme.c(composer2).f48361b.m, composer2, 8, 0);
                            composer2.r();
                            LVProgressIndicatorKt.a(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), pagerState2.k(), pagerState2.k() + 1, i18, Color.b(0.8f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), Color.b(0.4f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), new TweenSpec(1000, 200, EasingKt.f3863b), composer2, 0);
                            NativeAuthenticationTitleKt.a(SizeKt.d(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f), listV, pagerState2.k(), composer2, 0);
                            PagerKt.a(pagerState2, columnScopeInstance.a(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f, true), null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Alignment.Companion.f8591k, null, false, false, null, null, null, ComposableLambdaKt.b(228520436, new v10(composableLambdaImpl, 2), composer2), composer2, 102236160, 24576, 16060);
                            composer2.r();
                            if (z) {
                                composer2.L(-554090323);
                                LVLoadingOverlayKt.a(false, composer2, 0, 1);
                                composer2.F();
                            } else {
                                composer2.L(-554049961);
                                composer2.F();
                            }
                            LVModalBottomSheetState lVModalBottomSheetState4 = lVModalBottomSheetState3;
                            if (lVModalBottomSheetState4 == null || !lVModalBottomSheetState4.a()) {
                                composer2.L(-552683977);
                                composer2.F();
                            } else {
                                composer2.L(-553908601);
                                String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                                Function0 function18 = function10;
                                boolean zK = composer2.K(function18);
                                Object objX3 = composer2.x();
                                if (zK || objX3 == Composer.Companion.f7939a) {
                                    objX3 = new ee0(function18, 2);
                                    composer2.q(objX3);
                                }
                                LVModalBottomSheetKt.b(Modifier.Companion.f8607b, strC, (Function0) objX3, lVModalBottomSheetState4, null, 0L, false, null, ComposableLambdaKt.b(-1062906429, new w0(nativeRegisterBottomSheetScreen4, str3, function8, coroutineScope13, lVModalBottomSheetState4, function9, function18), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663302, 240);
                                composer2.F();
                            }
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposer, 805309440, 502);
                z4 = z6;
                lVModalBottomSheetState2 = lVModalBottomSheetState3;
                function7 = function10;
                nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen4;
                str2 = str3;
                function5 = function8;
                function6 = function9;
                modifier2 = dTFunctionNameModifier12;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                lVModalBottomSheetState2 = lVModalBottomSheetState;
                str2 = str;
                function5 = function0;
                function6 = function1;
                z4 = z2;
                nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen2;
                modifier2 = modifierE;
                function7 = function2;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: me0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i2 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i3);
                        NativeAuthenticationLayoutKt.a(modifier2, nativeAuthenticationLayoutContext, pagerState, focusManager, lVModalBottomSheetState2, nativeRegisterBottomSheetScreen3, z, str2, snackbarHostState, function5, function6, function7, function3, function4, z4, composableLambdaImpl, (Composer) obj, iA, iA2, i4);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i21 |= 805306368;
        i7 = i4 & 1024;
        if (i7 != 0) {
            i8 = i3 | 6;
        } else if ((i3 & 6) == 0) {
            if (gapComposerH.y(function1)) {
                i9 = 4;
            } else {
                i9 = 2;
            }
            i8 = i3 | i9;
        } else {
            i8 = i3;
        }
        i10 = i4 & 2048;
        if (i10 != 0) {
            if ((i3 & 48) == 0) {
                if (gapComposerH.y(function2)) {
                    i11 = 32;
                } else {
                    i11 = 16;
                }
                i8 |= i11;
            }
            if ((i3 & KyberEngine.KyberPolyBytes) != 0) {
                if (gapComposerH.y(function3)) {
                    i19 = 256;
                } else {
                    i19 = 128;
                }
                i8 |= i19;
            }
            if ((i3 & 3072) != 0) {
                i8 |= gapComposerH.y(function4) ? 2048 : 1024;
            }
            i12 = i8;
            i13 = i4 & 16384;
            if (i13 != 0) {
                i14 = i12;
                if ((i3 & 24576) == 0) {
                    i14 |= gapComposerH.b(z2) ? 16384 : 8192;
                }
                if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                    i14 |= gapComposerH.y(composableLambdaImpl) ? 131072 : 65536;
                }
                if ((i21 & 306783379) == 306783378) {
                    z3 = true;
                } else {
                    z3 = true;
                }
                if (gapComposerH.p(i21 & 1, z3)) {
                    DTFunctionNameModifier dTFunctionNameModifier13 = new DTFunctionNameModifier("NativeAuthenticationLayout");
                    if (i22 != 0) {
                        lVModalBottomSheetState3 = null;
                    } else {
                        lVModalBottomSheetState3 = lVModalBottomSheetState;
                    }
                    if (i23 != 0) {
                        nativeRegisterBottomSheetScreen4 = null;
                    } else {
                        nativeRegisterBottomSheetScreen4 = nativeRegisterBottomSheetScreen2;
                    }
                    if (i24 != 0) {
                        str3 = null;
                    } else {
                        str3 = str;
                    }
                    if (i5 != 0) {
                        function8 = null;
                    } else {
                        function8 = function0;
                    }
                    if (i7 != 0) {
                        function9 = null;
                    } else {
                        function9 = function1;
                    }
                    if (i10 != 0) {
                        function10 = null;
                    } else {
                        function10 = function2;
                    }
                    if (i13 != 0) {
                        z5 = false;
                    } else {
                        z5 = z2;
                    }
                    OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                    objX = gapComposerH.x();
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                        gapComposerH.q(objX);
                    }
                    final CoroutineScope coroutineScope13 = (CoroutineScope) objX;
                    int[] iArr13 = WhenMappings.f53478a;
                    i15 = iArr13[nativeAuthenticationLayoutContext.ordinal()];
                    if (i15 != 1) {
                        if (i15 != 2) {
                            list = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a;
                        } else {
                            if (i15 == 3) {
                                v40.g();
                                return;
                            }
                            list = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53486b;
                        }
                        listV = list;
                        z6 = z5;
                        function8 = function8;
                        i16 = 2;
                    } else {
                        List list14 = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a;
                        i16 = 2;
                        NativeAuthenticationTitle nativeAuthenticationTitle116 = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_create_account, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                        z6 = z5;
                        NativeAuthenticationTitle nativeAuthenticationTitle117 = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_information, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description2, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                        if (z6) {
                            nativeAuthenticationTitle = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_address, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description_address, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                        } else {
                            nativeAuthenticationTitle = null;
                        }
                        listV = ArraysKt.v(new NativeAuthenticationTitle[]{nativeAuthenticationTitle116, nativeAuthenticationTitle117, nativeAuthenticationTitle, new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_information, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description3, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text"), new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_activate_account, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description_activation_code, null, 2, null), "nativeRegister_titleActivateAccount_text", "nativeRegister_descriptionActivationCode_text")});
                    }
                    i17 = iArr13[nativeAuthenticationLayoutContext.ordinal()];
                    if (i17 != 1) {
                        if (z6) {
                            size = 5;
                        } else {
                            i18 = 4;
                        }
                        Unit unit115 = Unit.f71739a;
                        zY = gapComposerH.y(focusManager);
                        objX2 = gapComposerH.x();
                        if (zY) {
                            objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                    Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                    return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                                }
                            };
                            gapComposerH.q(objX2);
                        } else {
                            objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                    Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                    return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                                }
                            };
                            gapComposerH.q(objX2);
                        }
                        gapComposer = gapComposerH;
                        ScaffoldKt.a(WindowInsetsPadding_androidKt.a(SuspendingPointerInputFilterKt.a(dTFunctionNameModifier13, unit115, (PointerInputEventHandler) objX2)), null, null, ComposableLambdaKt.b(-680791422, new ae0(snackbarHostState, 1), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-377167413, new Function3() { // from class: le0
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj, Object obj2, Object obj3) {
                                String str4;
                                PaddingValues paddingValues = (PaddingValues) obj;
                                Composer composer2 = (Composer) obj2;
                                int iIntValue = ((Integer) obj3).intValue();
                                paddingValues.getClass();
                                if ((iIntValue & 6) == 0) {
                                    iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                                }
                                if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                                    OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                                    Modifier modifierO = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2").o(SizeKt.f5052c);
                                    Painter painterA = PainterResources_androidKt.a(R.drawable.native_login_background, composer2, 0);
                                    ContentScale.f9447a.getClass();
                                    Modifier modifierH = PaddingKt.h(PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), paddingValues);
                                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                                    Alignment.f8582a.getClass();
                                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                                    int iHashCode = Long.hashCode(composer2.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                    Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                                    ComposeUiNode.b0.getClass();
                                    Function0 function11 = ComposeUiNode.Companion.f9641b;
                                    if (composer2.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer2.B();
                                    if (composer2.getS()) {
                                        composer2.C(function11);
                                    } else {
                                        composer2.o();
                                    }
                                    Function2 function12 = ComposeUiNode.Companion.f9644f;
                                    Updater.c(composer2, columnMeasurePolicyA, function12);
                                    Function2 function13 = ComposeUiNode.Companion.f9643e;
                                    Updater.c(composer2, persistentCompositionLocalMapN, function13);
                                    Integer numValueOf = Integer.valueOf(iHashCode);
                                    Function2 function14 = ComposeUiNode.Companion.g;
                                    Updater.c(composer2, numValueOf, function14);
                                    Function1 function15 = ComposeUiNode.Companion.f9645h;
                                    Updater.b(composer2, function15);
                                    Function2 function16 = ComposeUiNode.Companion.d;
                                    Updater.c(composer2, modifierC, function16);
                                    Modifier modifierD = SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
                                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                    int iHashCode2 = Long.hashCode(composer2.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                                    Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
                                    if (composer2.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer2.B();
                                    if (composer2.getS()) {
                                        composer2.C(function11);
                                    } else {
                                        composer2.o();
                                    }
                                    Updater.c(composer2, measurePolicyD, function12);
                                    Updater.c(composer2, persistentCompositionLocalMapN2, function13);
                                    cj.s(iHashCode2, composer2, function14, composer2, function15);
                                    Updater.c(composer2, modifierC2, function16);
                                    PagerState pagerState2 = pagerState;
                                    boolean z7 = pagerState2.k() > 0;
                                    EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                                    ExitTransition exitTransitionH = EnterExitTransitionKt.h(null, 3);
                                    Function0 function17 = function3;
                                    CoroutineScope coroutineScope14 = coroutineScope13;
                                    NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext2 = nativeAuthenticationLayoutContext;
                                    ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(99358455, new r(function17, coroutineScope14, pagerState2, nativeAuthenticationLayoutContext2), composer2);
                                    ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                                    AnimatedVisibilityKt.c(columnScopeInstance, z7, null, enterTransitionF, exitTransitionH, null, composableLambdaImplB, composer2, 1600518, 18);
                                    DTFunctionNameModifier dTFunctionNameModifier14 = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2");
                                    BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                                    LVPageNumberIndicatorKt.a(boxScopeInstance.g(dTFunctionNameModifier14, biasAlignment), pagerState2, null, composer2, 0, 4);
                                    Modifier modifierC3 = ModifierExtKt.c(boxScopeInstance.g(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(composer2).o), Alignment.Companion.g), false, null, null, function4, 31);
                                    int i25 = NativeAuthenticationLayoutKt.WhenMappings.f53478a[nativeAuthenticationLayoutContext2.ordinal()];
                                    if (i25 == 1) {
                                        str4 = "nativeRegister_cross_button";
                                    } else if (i25 == 2) {
                                        str4 = "nativeForgetPassword_cross_button";
                                    } else {
                                        if (i25 != 3) {
                                            v40.g();
                                            return null;
                                        }
                                        str4 = "account_activation_close";
                                    }
                                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).q, composer2, 0), StringResources_androidKt.c(composer2, R.string.alt_close), ModifierExtKt.e(modifierC3, str4), LVAppDesignKitTheme.c(composer2).f48361b.m, composer2, 8, 0);
                                    composer2.r();
                                    LVProgressIndicatorKt.a(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), pagerState2.k(), pagerState2.k() + 1, i18, Color.b(0.8f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), Color.b(0.4f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), new TweenSpec(1000, 200, EasingKt.f3863b), composer2, 0);
                                    NativeAuthenticationTitleKt.a(SizeKt.d(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f), listV, pagerState2.k(), composer2, 0);
                                    PagerKt.a(pagerState2, columnScopeInstance.a(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f, true), null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Alignment.Companion.f8591k, null, false, false, null, null, null, ComposableLambdaKt.b(228520436, new v10(composableLambdaImpl, 2), composer2), composer2, 102236160, 24576, 16060);
                                    composer2.r();
                                    if (z) {
                                        composer2.L(-554090323);
                                        LVLoadingOverlayKt.a(false, composer2, 0, 1);
                                        composer2.F();
                                    } else {
                                        composer2.L(-554049961);
                                        composer2.F();
                                    }
                                    LVModalBottomSheetState lVModalBottomSheetState4 = lVModalBottomSheetState3;
                                    if (lVModalBottomSheetState4 == null || !lVModalBottomSheetState4.a()) {
                                        composer2.L(-552683977);
                                        composer2.F();
                                    } else {
                                        composer2.L(-553908601);
                                        String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                                        Function0 function18 = function10;
                                        boolean zK = composer2.K(function18);
                                        Object objX3 = composer2.x();
                                        if (zK || objX3 == Composer.Companion.f7939a) {
                                            objX3 = new ee0(function18, 2);
                                            composer2.q(objX3);
                                        }
                                        LVModalBottomSheetKt.b(Modifier.Companion.f8607b, strC, (Function0) objX3, lVModalBottomSheetState4, null, 0L, false, null, ComposableLambdaKt.b(-1062906429, new w0(nativeRegisterBottomSheetScreen4, str3, function8, coroutineScope14, lVModalBottomSheetState4, function9, function18), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663302, 240);
                                        composer2.F();
                                    }
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        }, gapComposerH), gapComposer, 805309440, 502);
                        z4 = z6;
                        lVModalBottomSheetState2 = lVModalBottomSheetState3;
                        function7 = function10;
                        nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen4;
                        str2 = str3;
                        function5 = function8;
                        function6 = function9;
                        modifier2 = dTFunctionNameModifier13;
                    } else if (i17 != i16) {
                        size = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a.size();
                    } else {
                        if (i17 == 3) {
                            v40.g();
                            return;
                        }
                        size = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53486b.size();
                    }
                    i18 = size;
                    Unit unit116 = Unit.f71739a;
                    zY = gapComposerH.y(focusManager);
                    objX2 = gapComposerH.x();
                    if (zY) {
                        objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                            public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX2);
                    } else {
                        objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                            public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX2);
                    }
                    gapComposer = gapComposerH;
                    ScaffoldKt.a(WindowInsetsPadding_androidKt.a(SuspendingPointerInputFilterKt.a(dTFunctionNameModifier13, unit116, (PointerInputEventHandler) objX2)), null, null, ComposableLambdaKt.b(-680791422, new ae0(snackbarHostState, 1), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-377167413, new Function3() { // from class: le0
                        @Override // kotlin.jvm.functions.Function3
                        public final Object A(Object obj, Object obj2, Object obj3) {
                            String str4;
                            PaddingValues paddingValues = (PaddingValues) obj;
                            Composer composer2 = (Composer) obj2;
                            int iIntValue = ((Integer) obj3).intValue();
                            paddingValues.getClass();
                            if ((iIntValue & 6) == 0) {
                                iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                            }
                            if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                                OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                                Modifier modifierO = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2").o(SizeKt.f5052c);
                                Painter painterA = PainterResources_androidKt.a(R.drawable.native_login_background, composer2, 0);
                                ContentScale.f9447a.getClass();
                                Modifier modifierH = PaddingKt.h(PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), paddingValues);
                                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                                Alignment.f8582a.getClass();
                                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                                int iHashCode = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                                ComposeUiNode.b0.getClass();
                                Function0 function11 = ComposeUiNode.Companion.f9641b;
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function11);
                                } else {
                                    composer2.o();
                                }
                                Function2 function12 = ComposeUiNode.Companion.f9644f;
                                Updater.c(composer2, columnMeasurePolicyA, function12);
                                Function2 function13 = ComposeUiNode.Companion.f9643e;
                                Updater.c(composer2, persistentCompositionLocalMapN, function13);
                                Integer numValueOf = Integer.valueOf(iHashCode);
                                Function2 function14 = ComposeUiNode.Companion.g;
                                Updater.c(composer2, numValueOf, function14);
                                Function1 function15 = ComposeUiNode.Companion.f9645h;
                                Updater.b(composer2, function15);
                                Function2 function16 = ComposeUiNode.Companion.d;
                                Updater.c(composer2, modifierC, function16);
                                Modifier modifierD = SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
                                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                int iHashCode2 = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                                Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function11);
                                } else {
                                    composer2.o();
                                }
                                Updater.c(composer2, measurePolicyD, function12);
                                Updater.c(composer2, persistentCompositionLocalMapN2, function13);
                                cj.s(iHashCode2, composer2, function14, composer2, function15);
                                Updater.c(composer2, modifierC2, function16);
                                PagerState pagerState2 = pagerState;
                                boolean z7 = pagerState2.k() > 0;
                                EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                                ExitTransition exitTransitionH = EnterExitTransitionKt.h(null, 3);
                                Function0 function17 = function3;
                                CoroutineScope coroutineScope14 = coroutineScope13;
                                NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext2 = nativeAuthenticationLayoutContext;
                                ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(99358455, new r(function17, coroutineScope14, pagerState2, nativeAuthenticationLayoutContext2), composer2);
                                ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                                AnimatedVisibilityKt.c(columnScopeInstance, z7, null, enterTransitionF, exitTransitionH, null, composableLambdaImplB, composer2, 1600518, 18);
                                DTFunctionNameModifier dTFunctionNameModifier14 = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2");
                                BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                                BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                                LVPageNumberIndicatorKt.a(boxScopeInstance.g(dTFunctionNameModifier14, biasAlignment), pagerState2, null, composer2, 0, 4);
                                Modifier modifierC3 = ModifierExtKt.c(boxScopeInstance.g(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(composer2).o), Alignment.Companion.g), false, null, null, function4, 31);
                                int i25 = NativeAuthenticationLayoutKt.WhenMappings.f53478a[nativeAuthenticationLayoutContext2.ordinal()];
                                if (i25 == 1) {
                                    str4 = "nativeRegister_cross_button";
                                } else if (i25 == 2) {
                                    str4 = "nativeForgetPassword_cross_button";
                                } else {
                                    if (i25 != 3) {
                                        v40.g();
                                        return null;
                                    }
                                    str4 = "account_activation_close";
                                }
                                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).q, composer2, 0), StringResources_androidKt.c(composer2, R.string.alt_close), ModifierExtKt.e(modifierC3, str4), LVAppDesignKitTheme.c(composer2).f48361b.m, composer2, 8, 0);
                                composer2.r();
                                LVProgressIndicatorKt.a(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), pagerState2.k(), pagerState2.k() + 1, i18, Color.b(0.8f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), Color.b(0.4f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), new TweenSpec(1000, 200, EasingKt.f3863b), composer2, 0);
                                NativeAuthenticationTitleKt.a(SizeKt.d(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f), listV, pagerState2.k(), composer2, 0);
                                PagerKt.a(pagerState2, columnScopeInstance.a(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f, true), null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Alignment.Companion.f8591k, null, false, false, null, null, null, ComposableLambdaKt.b(228520436, new v10(composableLambdaImpl, 2), composer2), composer2, 102236160, 24576, 16060);
                                composer2.r();
                                if (z) {
                                    composer2.L(-554090323);
                                    LVLoadingOverlayKt.a(false, composer2, 0, 1);
                                    composer2.F();
                                } else {
                                    composer2.L(-554049961);
                                    composer2.F();
                                }
                                LVModalBottomSheetState lVModalBottomSheetState4 = lVModalBottomSheetState3;
                                if (lVModalBottomSheetState4 == null || !lVModalBottomSheetState4.a()) {
                                    composer2.L(-552683977);
                                    composer2.F();
                                } else {
                                    composer2.L(-553908601);
                                    String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                                    Function0 function18 = function10;
                                    boolean zK = composer2.K(function18);
                                    Object objX3 = composer2.x();
                                    if (zK || objX3 == Composer.Companion.f7939a) {
                                        objX3 = new ee0(function18, 2);
                                        composer2.q(objX3);
                                    }
                                    LVModalBottomSheetKt.b(Modifier.Companion.f8607b, strC, (Function0) objX3, lVModalBottomSheetState4, null, 0L, false, null, ComposableLambdaKt.b(-1062906429, new w0(nativeRegisterBottomSheetScreen4, str3, function8, coroutineScope14, lVModalBottomSheetState4, function9, function18), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663302, 240);
                                    composer2.F();
                                }
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH), gapComposer, 805309440, 502);
                    z4 = z6;
                    lVModalBottomSheetState2 = lVModalBottomSheetState3;
                    function7 = function10;
                    nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen4;
                    str2 = str3;
                    function5 = function8;
                    function6 = function9;
                    modifier2 = dTFunctionNameModifier13;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    lVModalBottomSheetState2 = lVModalBottomSheetState;
                    str2 = str;
                    function5 = function0;
                    function6 = function1;
                    z4 = z2;
                    nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen2;
                    modifier2 = modifierE;
                    function7 = function2;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: me0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i2 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i3);
                            NativeAuthenticationLayoutKt.a(modifier2, nativeAuthenticationLayoutContext, pagerState, focusManager, lVModalBottomSheetState2, nativeRegisterBottomSheetScreen3, z, str2, snackbarHostState, function5, function6, function7, function3, function4, z4, composableLambdaImpl, (Composer) obj, iA, iA2, i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i14 = i12 | 24576;
            if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                i14 |= gapComposerH.y(composableLambdaImpl) ? 131072 : 65536;
            }
            if ((i21 & 306783379) == 306783378) {
                z3 = true;
            } else {
                z3 = true;
            }
            if (gapComposerH.p(i21 & 1, z3)) {
                DTFunctionNameModifier dTFunctionNameModifier14 = new DTFunctionNameModifier("NativeAuthenticationLayout");
                if (i22 != 0) {
                    lVModalBottomSheetState3 = null;
                } else {
                    lVModalBottomSheetState3 = lVModalBottomSheetState;
                }
                if (i23 != 0) {
                    nativeRegisterBottomSheetScreen4 = null;
                } else {
                    nativeRegisterBottomSheetScreen4 = nativeRegisterBottomSheetScreen2;
                }
                if (i24 != 0) {
                    str3 = null;
                } else {
                    str3 = str;
                }
                if (i5 != 0) {
                    function8 = null;
                } else {
                    function8 = function0;
                }
                if (i7 != 0) {
                    function9 = null;
                } else {
                    function9 = function1;
                }
                if (i10 != 0) {
                    function10 = null;
                } else {
                    function10 = function2;
                }
                if (i13 != 0) {
                    z5 = false;
                } else {
                    z5 = z2;
                }
                OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                    gapComposerH.q(objX);
                }
                final CoroutineScope coroutineScope14 = (CoroutineScope) objX;
                int[] iArr14 = WhenMappings.f53478a;
                i15 = iArr14[nativeAuthenticationLayoutContext.ordinal()];
                if (i15 != 1) {
                    if (i15 != 2) {
                        list = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a;
                    } else {
                        if (i15 == 3) {
                            v40.g();
                            return;
                        }
                        list = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53486b;
                    }
                    listV = list;
                    z6 = z5;
                    function8 = function8;
                    i16 = 2;
                } else {
                    List list15 = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a;
                    i16 = 2;
                    NativeAuthenticationTitle nativeAuthenticationTitle118 = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_create_account, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                    z6 = z5;
                    NativeAuthenticationTitle nativeAuthenticationTitle119 = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_information, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description2, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                    if (z6) {
                        nativeAuthenticationTitle = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_address, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description_address, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                    } else {
                        nativeAuthenticationTitle = null;
                    }
                    listV = ArraysKt.v(new NativeAuthenticationTitle[]{nativeAuthenticationTitle118, nativeAuthenticationTitle119, nativeAuthenticationTitle, new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_information, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description3, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text"), new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_activate_account, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description_activation_code, null, 2, null), "nativeRegister_titleActivateAccount_text", "nativeRegister_descriptionActivationCode_text")});
                }
                i17 = iArr14[nativeAuthenticationLayoutContext.ordinal()];
                if (i17 != 1) {
                    if (z6) {
                        size = 5;
                    } else {
                        i18 = 4;
                    }
                    Unit unit117 = Unit.f71739a;
                    zY = gapComposerH.y(focusManager);
                    objX2 = gapComposerH.x();
                    if (zY) {
                        objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                            public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX2);
                    } else {
                        objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                            public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX2);
                    }
                    gapComposer = gapComposerH;
                    ScaffoldKt.a(WindowInsetsPadding_androidKt.a(SuspendingPointerInputFilterKt.a(dTFunctionNameModifier14, unit117, (PointerInputEventHandler) objX2)), null, null, ComposableLambdaKt.b(-680791422, new ae0(snackbarHostState, 1), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-377167413, new Function3() { // from class: le0
                        @Override // kotlin.jvm.functions.Function3
                        public final Object A(Object obj, Object obj2, Object obj3) {
                            String str4;
                            PaddingValues paddingValues = (PaddingValues) obj;
                            Composer composer2 = (Composer) obj2;
                            int iIntValue = ((Integer) obj3).intValue();
                            paddingValues.getClass();
                            if ((iIntValue & 6) == 0) {
                                iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                            }
                            if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                                OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                                Modifier modifierO = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2").o(SizeKt.f5052c);
                                Painter painterA = PainterResources_androidKt.a(R.drawable.native_login_background, composer2, 0);
                                ContentScale.f9447a.getClass();
                                Modifier modifierH = PaddingKt.h(PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), paddingValues);
                                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                                Alignment.f8582a.getClass();
                                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                                int iHashCode = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                                ComposeUiNode.b0.getClass();
                                Function0 function11 = ComposeUiNode.Companion.f9641b;
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function11);
                                } else {
                                    composer2.o();
                                }
                                Function2 function12 = ComposeUiNode.Companion.f9644f;
                                Updater.c(composer2, columnMeasurePolicyA, function12);
                                Function2 function13 = ComposeUiNode.Companion.f9643e;
                                Updater.c(composer2, persistentCompositionLocalMapN, function13);
                                Integer numValueOf = Integer.valueOf(iHashCode);
                                Function2 function14 = ComposeUiNode.Companion.g;
                                Updater.c(composer2, numValueOf, function14);
                                Function1 function15 = ComposeUiNode.Companion.f9645h;
                                Updater.b(composer2, function15);
                                Function2 function16 = ComposeUiNode.Companion.d;
                                Updater.c(composer2, modifierC, function16);
                                Modifier modifierD = SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
                                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                int iHashCode2 = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                                Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function11);
                                } else {
                                    composer2.o();
                                }
                                Updater.c(composer2, measurePolicyD, function12);
                                Updater.c(composer2, persistentCompositionLocalMapN2, function13);
                                cj.s(iHashCode2, composer2, function14, composer2, function15);
                                Updater.c(composer2, modifierC2, function16);
                                PagerState pagerState2 = pagerState;
                                boolean z7 = pagerState2.k() > 0;
                                EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                                ExitTransition exitTransitionH = EnterExitTransitionKt.h(null, 3);
                                Function0 function17 = function3;
                                CoroutineScope coroutineScope15 = coroutineScope14;
                                NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext2 = nativeAuthenticationLayoutContext;
                                ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(99358455, new r(function17, coroutineScope15, pagerState2, nativeAuthenticationLayoutContext2), composer2);
                                ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                                AnimatedVisibilityKt.c(columnScopeInstance, z7, null, enterTransitionF, exitTransitionH, null, composableLambdaImplB, composer2, 1600518, 18);
                                DTFunctionNameModifier dTFunctionNameModifier15 = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2");
                                BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                                BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                                LVPageNumberIndicatorKt.a(boxScopeInstance.g(dTFunctionNameModifier15, biasAlignment), pagerState2, null, composer2, 0, 4);
                                Modifier modifierC3 = ModifierExtKt.c(boxScopeInstance.g(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(composer2).o), Alignment.Companion.g), false, null, null, function4, 31);
                                int i25 = NativeAuthenticationLayoutKt.WhenMappings.f53478a[nativeAuthenticationLayoutContext2.ordinal()];
                                if (i25 == 1) {
                                    str4 = "nativeRegister_cross_button";
                                } else if (i25 == 2) {
                                    str4 = "nativeForgetPassword_cross_button";
                                } else {
                                    if (i25 != 3) {
                                        v40.g();
                                        return null;
                                    }
                                    str4 = "account_activation_close";
                                }
                                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).q, composer2, 0), StringResources_androidKt.c(composer2, R.string.alt_close), ModifierExtKt.e(modifierC3, str4), LVAppDesignKitTheme.c(composer2).f48361b.m, composer2, 8, 0);
                                composer2.r();
                                LVProgressIndicatorKt.a(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), pagerState2.k(), pagerState2.k() + 1, i18, Color.b(0.8f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), Color.b(0.4f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), new TweenSpec(1000, 200, EasingKt.f3863b), composer2, 0);
                                NativeAuthenticationTitleKt.a(SizeKt.d(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f), listV, pagerState2.k(), composer2, 0);
                                PagerKt.a(pagerState2, columnScopeInstance.a(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f, true), null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Alignment.Companion.f8591k, null, false, false, null, null, null, ComposableLambdaKt.b(228520436, new v10(composableLambdaImpl, 2), composer2), composer2, 102236160, 24576, 16060);
                                composer2.r();
                                if (z) {
                                    composer2.L(-554090323);
                                    LVLoadingOverlayKt.a(false, composer2, 0, 1);
                                    composer2.F();
                                } else {
                                    composer2.L(-554049961);
                                    composer2.F();
                                }
                                LVModalBottomSheetState lVModalBottomSheetState4 = lVModalBottomSheetState3;
                                if (lVModalBottomSheetState4 == null || !lVModalBottomSheetState4.a()) {
                                    composer2.L(-552683977);
                                    composer2.F();
                                } else {
                                    composer2.L(-553908601);
                                    String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                                    Function0 function18 = function10;
                                    boolean zK = composer2.K(function18);
                                    Object objX3 = composer2.x();
                                    if (zK || objX3 == Composer.Companion.f7939a) {
                                        objX3 = new ee0(function18, 2);
                                        composer2.q(objX3);
                                    }
                                    LVModalBottomSheetKt.b(Modifier.Companion.f8607b, strC, (Function0) objX3, lVModalBottomSheetState4, null, 0L, false, null, ComposableLambdaKt.b(-1062906429, new w0(nativeRegisterBottomSheetScreen4, str3, function8, coroutineScope15, lVModalBottomSheetState4, function9, function18), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663302, 240);
                                    composer2.F();
                                }
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH), gapComposer, 805309440, 502);
                    z4 = z6;
                    lVModalBottomSheetState2 = lVModalBottomSheetState3;
                    function7 = function10;
                    nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen4;
                    str2 = str3;
                    function5 = function8;
                    function6 = function9;
                    modifier2 = dTFunctionNameModifier14;
                } else if (i17 != i16) {
                    size = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a.size();
                } else {
                    if (i17 == 3) {
                        v40.g();
                        return;
                    }
                    size = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53486b.size();
                }
                i18 = size;
                Unit unit118 = Unit.f71739a;
                zY = gapComposerH.y(focusManager);
                objX2 = gapComposerH.x();
                if (zY) {
                    objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                        @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                        public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                            Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                            return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX2);
                } else {
                    objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                        @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                        public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                            Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                            return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX2);
                }
                gapComposer = gapComposerH;
                ScaffoldKt.a(WindowInsetsPadding_androidKt.a(SuspendingPointerInputFilterKt.a(dTFunctionNameModifier14, unit118, (PointerInputEventHandler) objX2)), null, null, ComposableLambdaKt.b(-680791422, new ae0(snackbarHostState, 1), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-377167413, new Function3() { // from class: le0
                    @Override // kotlin.jvm.functions.Function3
                    public final Object A(Object obj, Object obj2, Object obj3) {
                        String str4;
                        PaddingValues paddingValues = (PaddingValues) obj;
                        Composer composer2 = (Composer) obj2;
                        int iIntValue = ((Integer) obj3).intValue();
                        paddingValues.getClass();
                        if ((iIntValue & 6) == 0) {
                            iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                        }
                        if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                            OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                            Modifier modifierO = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2").o(SizeKt.f5052c);
                            Painter painterA = PainterResources_androidKt.a(R.drawable.native_login_background, composer2, 0);
                            ContentScale.f9447a.getClass();
                            Modifier modifierH = PaddingKt.h(PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), paddingValues);
                            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                            Alignment.f8582a.getClass();
                            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                            int iHashCode = Long.hashCode(composer2.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                            Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                            ComposeUiNode.b0.getClass();
                            Function0 function11 = ComposeUiNode.Companion.f9641b;
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function11);
                            } else {
                                composer2.o();
                            }
                            Function2 function12 = ComposeUiNode.Companion.f9644f;
                            Updater.c(composer2, columnMeasurePolicyA, function12);
                            Function2 function13 = ComposeUiNode.Companion.f9643e;
                            Updater.c(composer2, persistentCompositionLocalMapN, function13);
                            Integer numValueOf = Integer.valueOf(iHashCode);
                            Function2 function14 = ComposeUiNode.Companion.g;
                            Updater.c(composer2, numValueOf, function14);
                            Function1 function15 = ComposeUiNode.Companion.f9645h;
                            Updater.b(composer2, function15);
                            Function2 function16 = ComposeUiNode.Companion.d;
                            Updater.c(composer2, modifierC, function16);
                            Modifier modifierD = SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
                            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                            int iHashCode2 = Long.hashCode(composer2.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                            Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function11);
                            } else {
                                composer2.o();
                            }
                            Updater.c(composer2, measurePolicyD, function12);
                            Updater.c(composer2, persistentCompositionLocalMapN2, function13);
                            cj.s(iHashCode2, composer2, function14, composer2, function15);
                            Updater.c(composer2, modifierC2, function16);
                            PagerState pagerState2 = pagerState;
                            boolean z7 = pagerState2.k() > 0;
                            EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                            ExitTransition exitTransitionH = EnterExitTransitionKt.h(null, 3);
                            Function0 function17 = function3;
                            CoroutineScope coroutineScope15 = coroutineScope14;
                            NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext2 = nativeAuthenticationLayoutContext;
                            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(99358455, new r(function17, coroutineScope15, pagerState2, nativeAuthenticationLayoutContext2), composer2);
                            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                            AnimatedVisibilityKt.c(columnScopeInstance, z7, null, enterTransitionF, exitTransitionH, null, composableLambdaImplB, composer2, 1600518, 18);
                            DTFunctionNameModifier dTFunctionNameModifier15 = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2");
                            BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                            BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                            LVPageNumberIndicatorKt.a(boxScopeInstance.g(dTFunctionNameModifier15, biasAlignment), pagerState2, null, composer2, 0, 4);
                            Modifier modifierC3 = ModifierExtKt.c(boxScopeInstance.g(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(composer2).o), Alignment.Companion.g), false, null, null, function4, 31);
                            int i25 = NativeAuthenticationLayoutKt.WhenMappings.f53478a[nativeAuthenticationLayoutContext2.ordinal()];
                            if (i25 == 1) {
                                str4 = "nativeRegister_cross_button";
                            } else if (i25 == 2) {
                                str4 = "nativeForgetPassword_cross_button";
                            } else {
                                if (i25 != 3) {
                                    v40.g();
                                    return null;
                                }
                                str4 = "account_activation_close";
                            }
                            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).q, composer2, 0), StringResources_androidKt.c(composer2, R.string.alt_close), ModifierExtKt.e(modifierC3, str4), LVAppDesignKitTheme.c(composer2).f48361b.m, composer2, 8, 0);
                            composer2.r();
                            LVProgressIndicatorKt.a(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), pagerState2.k(), pagerState2.k() + 1, i18, Color.b(0.8f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), Color.b(0.4f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), new TweenSpec(1000, 200, EasingKt.f3863b), composer2, 0);
                            NativeAuthenticationTitleKt.a(SizeKt.d(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f), listV, pagerState2.k(), composer2, 0);
                            PagerKt.a(pagerState2, columnScopeInstance.a(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f, true), null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Alignment.Companion.f8591k, null, false, false, null, null, null, ComposableLambdaKt.b(228520436, new v10(composableLambdaImpl, 2), composer2), composer2, 102236160, 24576, 16060);
                            composer2.r();
                            if (z) {
                                composer2.L(-554090323);
                                LVLoadingOverlayKt.a(false, composer2, 0, 1);
                                composer2.F();
                            } else {
                                composer2.L(-554049961);
                                composer2.F();
                            }
                            LVModalBottomSheetState lVModalBottomSheetState4 = lVModalBottomSheetState3;
                            if (lVModalBottomSheetState4 == null || !lVModalBottomSheetState4.a()) {
                                composer2.L(-552683977);
                                composer2.F();
                            } else {
                                composer2.L(-553908601);
                                String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                                Function0 function18 = function10;
                                boolean zK = composer2.K(function18);
                                Object objX3 = composer2.x();
                                if (zK || objX3 == Composer.Companion.f7939a) {
                                    objX3 = new ee0(function18, 2);
                                    composer2.q(objX3);
                                }
                                LVModalBottomSheetKt.b(Modifier.Companion.f8607b, strC, (Function0) objX3, lVModalBottomSheetState4, null, 0L, false, null, ComposableLambdaKt.b(-1062906429, new w0(nativeRegisterBottomSheetScreen4, str3, function8, coroutineScope15, lVModalBottomSheetState4, function9, function18), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663302, 240);
                                composer2.F();
                            }
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposer, 805309440, 502);
                z4 = z6;
                lVModalBottomSheetState2 = lVModalBottomSheetState3;
                function7 = function10;
                nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen4;
                str2 = str3;
                function5 = function8;
                function6 = function9;
                modifier2 = dTFunctionNameModifier14;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                lVModalBottomSheetState2 = lVModalBottomSheetState;
                str2 = str;
                function5 = function0;
                function6 = function1;
                z4 = z2;
                nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen2;
                modifier2 = modifierE;
                function7 = function2;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: me0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i2 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i3);
                        NativeAuthenticationLayoutKt.a(modifier2, nativeAuthenticationLayoutContext, pagerState, focusManager, lVModalBottomSheetState2, nativeRegisterBottomSheetScreen3, z, str2, snackbarHostState, function5, function6, function7, function3, function4, z4, composableLambdaImpl, (Composer) obj, iA, iA2, i4);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i8 |= 48;
        if ((i3 & KyberEngine.KyberPolyBytes) != 0) {
            if (gapComposerH.y(function3)) {
                i19 = 256;
            } else {
                i19 = 128;
            }
            i8 |= i19;
        }
        if ((i3 & 3072) != 0) {
            i8 |= gapComposerH.y(function4) ? 2048 : 1024;
        }
        i12 = i8;
        i13 = i4 & 16384;
        if (i13 != 0) {
            i14 = i12;
            if ((i3 & 24576) == 0) {
                i14 |= gapComposerH.b(z2) ? 16384 : 8192;
            }
            if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                i14 |= gapComposerH.y(composableLambdaImpl) ? 131072 : 65536;
            }
            if ((i21 & 306783379) == 306783378) {
                z3 = true;
            } else {
                z3 = true;
            }
            if (gapComposerH.p(i21 & 1, z3)) {
                DTFunctionNameModifier dTFunctionNameModifier15 = new DTFunctionNameModifier("NativeAuthenticationLayout");
                if (i22 != 0) {
                    lVModalBottomSheetState3 = null;
                } else {
                    lVModalBottomSheetState3 = lVModalBottomSheetState;
                }
                if (i23 != 0) {
                    nativeRegisterBottomSheetScreen4 = null;
                } else {
                    nativeRegisterBottomSheetScreen4 = nativeRegisterBottomSheetScreen2;
                }
                if (i24 != 0) {
                    str3 = null;
                } else {
                    str3 = str;
                }
                if (i5 != 0) {
                    function8 = null;
                } else {
                    function8 = function0;
                }
                if (i7 != 0) {
                    function9 = null;
                } else {
                    function9 = function1;
                }
                if (i10 != 0) {
                    function10 = null;
                } else {
                    function10 = function2;
                }
                if (i13 != 0) {
                    z5 = false;
                } else {
                    z5 = z2;
                }
                OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                    gapComposerH.q(objX);
                }
                final CoroutineScope coroutineScope15 = (CoroutineScope) objX;
                int[] iArr15 = WhenMappings.f53478a;
                i15 = iArr15[nativeAuthenticationLayoutContext.ordinal()];
                if (i15 != 1) {
                    if (i15 != 2) {
                        list = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a;
                    } else {
                        if (i15 == 3) {
                            v40.g();
                            return;
                        }
                        list = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53486b;
                    }
                    listV = list;
                    z6 = z5;
                    function8 = function8;
                    i16 = 2;
                } else {
                    List list16 = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a;
                    i16 = 2;
                    NativeAuthenticationTitle nativeAuthenticationTitle1110 = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_create_account, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                    z6 = z5;
                    NativeAuthenticationTitle nativeAuthenticationTitle1111 = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_information, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description2, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                    if (z6) {
                        nativeAuthenticationTitle = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_address, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description_address, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                    } else {
                        nativeAuthenticationTitle = null;
                    }
                    listV = ArraysKt.v(new NativeAuthenticationTitle[]{nativeAuthenticationTitle1110, nativeAuthenticationTitle1111, nativeAuthenticationTitle, new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_information, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description3, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text"), new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_activate_account, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description_activation_code, null, 2, null), "nativeRegister_titleActivateAccount_text", "nativeRegister_descriptionActivationCode_text")});
                }
                i17 = iArr15[nativeAuthenticationLayoutContext.ordinal()];
                if (i17 != 1) {
                    if (z6) {
                        size = 5;
                    } else {
                        i18 = 4;
                    }
                    Unit unit119 = Unit.f71739a;
                    zY = gapComposerH.y(focusManager);
                    objX2 = gapComposerH.x();
                    if (zY) {
                        objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                            public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX2);
                    } else {
                        objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                            public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                                return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX2);
                    }
                    gapComposer = gapComposerH;
                    ScaffoldKt.a(WindowInsetsPadding_androidKt.a(SuspendingPointerInputFilterKt.a(dTFunctionNameModifier15, unit119, (PointerInputEventHandler) objX2)), null, null, ComposableLambdaKt.b(-680791422, new ae0(snackbarHostState, 1), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-377167413, new Function3() { // from class: le0
                        @Override // kotlin.jvm.functions.Function3
                        public final Object A(Object obj, Object obj2, Object obj3) {
                            String str4;
                            PaddingValues paddingValues = (PaddingValues) obj;
                            Composer composer2 = (Composer) obj2;
                            int iIntValue = ((Integer) obj3).intValue();
                            paddingValues.getClass();
                            if ((iIntValue & 6) == 0) {
                                iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                            }
                            if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                                OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                                Modifier modifierO = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2").o(SizeKt.f5052c);
                                Painter painterA = PainterResources_androidKt.a(R.drawable.native_login_background, composer2, 0);
                                ContentScale.f9447a.getClass();
                                Modifier modifierH = PaddingKt.h(PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), paddingValues);
                                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                                Alignment.f8582a.getClass();
                                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                                int iHashCode = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                                ComposeUiNode.b0.getClass();
                                Function0 function11 = ComposeUiNode.Companion.f9641b;
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function11);
                                } else {
                                    composer2.o();
                                }
                                Function2 function12 = ComposeUiNode.Companion.f9644f;
                                Updater.c(composer2, columnMeasurePolicyA, function12);
                                Function2 function13 = ComposeUiNode.Companion.f9643e;
                                Updater.c(composer2, persistentCompositionLocalMapN, function13);
                                Integer numValueOf = Integer.valueOf(iHashCode);
                                Function2 function14 = ComposeUiNode.Companion.g;
                                Updater.c(composer2, numValueOf, function14);
                                Function1 function15 = ComposeUiNode.Companion.f9645h;
                                Updater.b(composer2, function15);
                                Function2 function16 = ComposeUiNode.Companion.d;
                                Updater.c(composer2, modifierC, function16);
                                Modifier modifierD = SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
                                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                int iHashCode2 = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                                Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function11);
                                } else {
                                    composer2.o();
                                }
                                Updater.c(composer2, measurePolicyD, function12);
                                Updater.c(composer2, persistentCompositionLocalMapN2, function13);
                                cj.s(iHashCode2, composer2, function14, composer2, function15);
                                Updater.c(composer2, modifierC2, function16);
                                PagerState pagerState2 = pagerState;
                                boolean z7 = pagerState2.k() > 0;
                                EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                                ExitTransition exitTransitionH = EnterExitTransitionKt.h(null, 3);
                                Function0 function17 = function3;
                                CoroutineScope coroutineScope16 = coroutineScope15;
                                NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext2 = nativeAuthenticationLayoutContext;
                                ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(99358455, new r(function17, coroutineScope16, pagerState2, nativeAuthenticationLayoutContext2), composer2);
                                ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                                AnimatedVisibilityKt.c(columnScopeInstance, z7, null, enterTransitionF, exitTransitionH, null, composableLambdaImplB, composer2, 1600518, 18);
                                DTFunctionNameModifier dTFunctionNameModifier16 = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2");
                                BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                                BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                                LVPageNumberIndicatorKt.a(boxScopeInstance.g(dTFunctionNameModifier16, biasAlignment), pagerState2, null, composer2, 0, 4);
                                Modifier modifierC3 = ModifierExtKt.c(boxScopeInstance.g(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(composer2).o), Alignment.Companion.g), false, null, null, function4, 31);
                                int i25 = NativeAuthenticationLayoutKt.WhenMappings.f53478a[nativeAuthenticationLayoutContext2.ordinal()];
                                if (i25 == 1) {
                                    str4 = "nativeRegister_cross_button";
                                } else if (i25 == 2) {
                                    str4 = "nativeForgetPassword_cross_button";
                                } else {
                                    if (i25 != 3) {
                                        v40.g();
                                        return null;
                                    }
                                    str4 = "account_activation_close";
                                }
                                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).q, composer2, 0), StringResources_androidKt.c(composer2, R.string.alt_close), ModifierExtKt.e(modifierC3, str4), LVAppDesignKitTheme.c(composer2).f48361b.m, composer2, 8, 0);
                                composer2.r();
                                LVProgressIndicatorKt.a(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), pagerState2.k(), pagerState2.k() + 1, i18, Color.b(0.8f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), Color.b(0.4f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), new TweenSpec(1000, 200, EasingKt.f3863b), composer2, 0);
                                NativeAuthenticationTitleKt.a(SizeKt.d(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f), listV, pagerState2.k(), composer2, 0);
                                PagerKt.a(pagerState2, columnScopeInstance.a(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f, true), null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Alignment.Companion.f8591k, null, false, false, null, null, null, ComposableLambdaKt.b(228520436, new v10(composableLambdaImpl, 2), composer2), composer2, 102236160, 24576, 16060);
                                composer2.r();
                                if (z) {
                                    composer2.L(-554090323);
                                    LVLoadingOverlayKt.a(false, composer2, 0, 1);
                                    composer2.F();
                                } else {
                                    composer2.L(-554049961);
                                    composer2.F();
                                }
                                LVModalBottomSheetState lVModalBottomSheetState4 = lVModalBottomSheetState3;
                                if (lVModalBottomSheetState4 == null || !lVModalBottomSheetState4.a()) {
                                    composer2.L(-552683977);
                                    composer2.F();
                                } else {
                                    composer2.L(-553908601);
                                    String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                                    Function0 function18 = function10;
                                    boolean zK = composer2.K(function18);
                                    Object objX3 = composer2.x();
                                    if (zK || objX3 == Composer.Companion.f7939a) {
                                        objX3 = new ee0(function18, 2);
                                        composer2.q(objX3);
                                    }
                                    LVModalBottomSheetKt.b(Modifier.Companion.f8607b, strC, (Function0) objX3, lVModalBottomSheetState4, null, 0L, false, null, ComposableLambdaKt.b(-1062906429, new w0(nativeRegisterBottomSheetScreen4, str3, function8, coroutineScope16, lVModalBottomSheetState4, function9, function18), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663302, 240);
                                    composer2.F();
                                }
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH), gapComposer, 805309440, 502);
                    z4 = z6;
                    lVModalBottomSheetState2 = lVModalBottomSheetState3;
                    function7 = function10;
                    nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen4;
                    str2 = str3;
                    function5 = function8;
                    function6 = function9;
                    modifier2 = dTFunctionNameModifier15;
                } else if (i17 != i16) {
                    size = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a.size();
                } else {
                    if (i17 == 3) {
                        v40.g();
                        return;
                    }
                    size = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53486b.size();
                }
                i18 = size;
                Unit unit1110 = Unit.f71739a;
                zY = gapComposerH.y(focusManager);
                objX2 = gapComposerH.x();
                if (zY) {
                    objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                        @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                        public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                            Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                            return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX2);
                } else {
                    objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                        @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                        public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                            Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                            return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX2);
                }
                gapComposer = gapComposerH;
                ScaffoldKt.a(WindowInsetsPadding_androidKt.a(SuspendingPointerInputFilterKt.a(dTFunctionNameModifier15, unit1110, (PointerInputEventHandler) objX2)), null, null, ComposableLambdaKt.b(-680791422, new ae0(snackbarHostState, 1), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-377167413, new Function3() { // from class: le0
                    @Override // kotlin.jvm.functions.Function3
                    public final Object A(Object obj, Object obj2, Object obj3) {
                        String str4;
                        PaddingValues paddingValues = (PaddingValues) obj;
                        Composer composer2 = (Composer) obj2;
                        int iIntValue = ((Integer) obj3).intValue();
                        paddingValues.getClass();
                        if ((iIntValue & 6) == 0) {
                            iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                        }
                        if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                            OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                            Modifier modifierO = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2").o(SizeKt.f5052c);
                            Painter painterA = PainterResources_androidKt.a(R.drawable.native_login_background, composer2, 0);
                            ContentScale.f9447a.getClass();
                            Modifier modifierH = PaddingKt.h(PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), paddingValues);
                            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                            Alignment.f8582a.getClass();
                            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                            int iHashCode = Long.hashCode(composer2.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                            Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                            ComposeUiNode.b0.getClass();
                            Function0 function11 = ComposeUiNode.Companion.f9641b;
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function11);
                            } else {
                                composer2.o();
                            }
                            Function2 function12 = ComposeUiNode.Companion.f9644f;
                            Updater.c(composer2, columnMeasurePolicyA, function12);
                            Function2 function13 = ComposeUiNode.Companion.f9643e;
                            Updater.c(composer2, persistentCompositionLocalMapN, function13);
                            Integer numValueOf = Integer.valueOf(iHashCode);
                            Function2 function14 = ComposeUiNode.Companion.g;
                            Updater.c(composer2, numValueOf, function14);
                            Function1 function15 = ComposeUiNode.Companion.f9645h;
                            Updater.b(composer2, function15);
                            Function2 function16 = ComposeUiNode.Companion.d;
                            Updater.c(composer2, modifierC, function16);
                            Modifier modifierD = SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
                            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                            int iHashCode2 = Long.hashCode(composer2.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                            Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function11);
                            } else {
                                composer2.o();
                            }
                            Updater.c(composer2, measurePolicyD, function12);
                            Updater.c(composer2, persistentCompositionLocalMapN2, function13);
                            cj.s(iHashCode2, composer2, function14, composer2, function15);
                            Updater.c(composer2, modifierC2, function16);
                            PagerState pagerState2 = pagerState;
                            boolean z7 = pagerState2.k() > 0;
                            EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                            ExitTransition exitTransitionH = EnterExitTransitionKt.h(null, 3);
                            Function0 function17 = function3;
                            CoroutineScope coroutineScope16 = coroutineScope15;
                            NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext2 = nativeAuthenticationLayoutContext;
                            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(99358455, new r(function17, coroutineScope16, pagerState2, nativeAuthenticationLayoutContext2), composer2);
                            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                            AnimatedVisibilityKt.c(columnScopeInstance, z7, null, enterTransitionF, exitTransitionH, null, composableLambdaImplB, composer2, 1600518, 18);
                            DTFunctionNameModifier dTFunctionNameModifier16 = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2");
                            BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                            BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                            LVPageNumberIndicatorKt.a(boxScopeInstance.g(dTFunctionNameModifier16, biasAlignment), pagerState2, null, composer2, 0, 4);
                            Modifier modifierC3 = ModifierExtKt.c(boxScopeInstance.g(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(composer2).o), Alignment.Companion.g), false, null, null, function4, 31);
                            int i25 = NativeAuthenticationLayoutKt.WhenMappings.f53478a[nativeAuthenticationLayoutContext2.ordinal()];
                            if (i25 == 1) {
                                str4 = "nativeRegister_cross_button";
                            } else if (i25 == 2) {
                                str4 = "nativeForgetPassword_cross_button";
                            } else {
                                if (i25 != 3) {
                                    v40.g();
                                    return null;
                                }
                                str4 = "account_activation_close";
                            }
                            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).q, composer2, 0), StringResources_androidKt.c(composer2, R.string.alt_close), ModifierExtKt.e(modifierC3, str4), LVAppDesignKitTheme.c(composer2).f48361b.m, composer2, 8, 0);
                            composer2.r();
                            LVProgressIndicatorKt.a(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), pagerState2.k(), pagerState2.k() + 1, i18, Color.b(0.8f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), Color.b(0.4f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), new TweenSpec(1000, 200, EasingKt.f3863b), composer2, 0);
                            NativeAuthenticationTitleKt.a(SizeKt.d(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f), listV, pagerState2.k(), composer2, 0);
                            PagerKt.a(pagerState2, columnScopeInstance.a(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f, true), null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Alignment.Companion.f8591k, null, false, false, null, null, null, ComposableLambdaKt.b(228520436, new v10(composableLambdaImpl, 2), composer2), composer2, 102236160, 24576, 16060);
                            composer2.r();
                            if (z) {
                                composer2.L(-554090323);
                                LVLoadingOverlayKt.a(false, composer2, 0, 1);
                                composer2.F();
                            } else {
                                composer2.L(-554049961);
                                composer2.F();
                            }
                            LVModalBottomSheetState lVModalBottomSheetState4 = lVModalBottomSheetState3;
                            if (lVModalBottomSheetState4 == null || !lVModalBottomSheetState4.a()) {
                                composer2.L(-552683977);
                                composer2.F();
                            } else {
                                composer2.L(-553908601);
                                String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                                Function0 function18 = function10;
                                boolean zK = composer2.K(function18);
                                Object objX3 = composer2.x();
                                if (zK || objX3 == Composer.Companion.f7939a) {
                                    objX3 = new ee0(function18, 2);
                                    composer2.q(objX3);
                                }
                                LVModalBottomSheetKt.b(Modifier.Companion.f8607b, strC, (Function0) objX3, lVModalBottomSheetState4, null, 0L, false, null, ComposableLambdaKt.b(-1062906429, new w0(nativeRegisterBottomSheetScreen4, str3, function8, coroutineScope16, lVModalBottomSheetState4, function9, function18), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663302, 240);
                                composer2.F();
                            }
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposer, 805309440, 502);
                z4 = z6;
                lVModalBottomSheetState2 = lVModalBottomSheetState3;
                function7 = function10;
                nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen4;
                str2 = str3;
                function5 = function8;
                function6 = function9;
                modifier2 = dTFunctionNameModifier15;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                lVModalBottomSheetState2 = lVModalBottomSheetState;
                str2 = str;
                function5 = function0;
                function6 = function1;
                z4 = z2;
                nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen2;
                modifier2 = modifierE;
                function7 = function2;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: me0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i2 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i3);
                        NativeAuthenticationLayoutKt.a(modifier2, nativeAuthenticationLayoutContext, pagerState, focusManager, lVModalBottomSheetState2, nativeRegisterBottomSheetScreen3, z, str2, snackbarHostState, function5, function6, function7, function3, function4, z4, composableLambdaImpl, (Composer) obj, iA, iA2, i4);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i14 = i12 | 24576;
        if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
            i14 |= gapComposerH.y(composableLambdaImpl) ? 131072 : 65536;
        }
        if ((i21 & 306783379) == 306783378) {
            z3 = true;
        } else {
            z3 = true;
        }
        if (gapComposerH.p(i21 & 1, z3)) {
            DTFunctionNameModifier dTFunctionNameModifier16 = new DTFunctionNameModifier("NativeAuthenticationLayout");
            if (i22 != 0) {
                lVModalBottomSheetState3 = null;
            } else {
                lVModalBottomSheetState3 = lVModalBottomSheetState;
            }
            if (i23 != 0) {
                nativeRegisterBottomSheetScreen4 = null;
            } else {
                nativeRegisterBottomSheetScreen4 = nativeRegisterBottomSheetScreen2;
            }
            if (i24 != 0) {
                str3 = null;
            } else {
                str3 = str;
            }
            if (i5 != 0) {
                function8 = null;
            } else {
                function8 = function0;
            }
            if (i7 != 0) {
                function9 = null;
            } else {
                function9 = function1;
            }
            if (i10 != 0) {
                function10 = null;
            } else {
                function10 = function2;
            }
            if (i13 != 0) {
                z5 = false;
            } else {
                z5 = z2;
            }
            OpaqueKey opaqueKey16 = ComposerKt.f7940a;
            objX = gapComposerH.x();
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX);
            }
            final CoroutineScope coroutineScope16 = (CoroutineScope) objX;
            int[] iArr16 = WhenMappings.f53478a;
            i15 = iArr16[nativeAuthenticationLayoutContext.ordinal()];
            if (i15 != 1) {
                if (i15 != 2) {
                    list = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a;
                } else {
                    if (i15 == 3) {
                        v40.g();
                        return;
                    }
                    list = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53486b;
                }
                listV = list;
                z6 = z5;
                function8 = function8;
                i16 = 2;
            } else {
                List list17 = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a;
                i16 = 2;
                NativeAuthenticationTitle nativeAuthenticationTitle1112 = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_create_account, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                z6 = z5;
                NativeAuthenticationTitle nativeAuthenticationTitle1113 = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_information, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description2, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                if (z6) {
                    nativeAuthenticationTitle = new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_address, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description_address, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text");
                } else {
                    nativeAuthenticationTitle = null;
                }
                listV = ArraysKt.v(new NativeAuthenticationTitle[]{nativeAuthenticationTitle1112, nativeAuthenticationTitle1113, nativeAuthenticationTitle, new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_information, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description3, null, 2, null), "nativeRegister_title_text", "nativeRegister_description_text"), new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_native_register_title_activate_account, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description_activation_code, null, 2, null), "nativeRegister_titleActivateAccount_text", "nativeRegister_descriptionActivationCode_text")});
            }
            i17 = iArr16[nativeAuthenticationLayoutContext.ordinal()];
            if (i17 != 1) {
                if (z6) {
                    size = 5;
                } else {
                    i18 = 4;
                }
                Unit unit1111 = Unit.f71739a;
                zY = gapComposerH.y(focusManager);
                objX2 = gapComposerH.x();
                if (zY) {
                    objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                        @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                        public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                            Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                            return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX2);
                } else {
                    objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                        @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                        public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                            Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                            return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX2);
                }
                gapComposer = gapComposerH;
                ScaffoldKt.a(WindowInsetsPadding_androidKt.a(SuspendingPointerInputFilterKt.a(dTFunctionNameModifier16, unit1111, (PointerInputEventHandler) objX2)), null, null, ComposableLambdaKt.b(-680791422, new ae0(snackbarHostState, 1), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-377167413, new Function3() { // from class: le0
                    @Override // kotlin.jvm.functions.Function3
                    public final Object A(Object obj, Object obj2, Object obj3) {
                        String str4;
                        PaddingValues paddingValues = (PaddingValues) obj;
                        Composer composer2 = (Composer) obj2;
                        int iIntValue = ((Integer) obj3).intValue();
                        paddingValues.getClass();
                        if ((iIntValue & 6) == 0) {
                            iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                        }
                        if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                            OpaqueKey opaqueKey17 = ComposerKt.f7940a;
                            Modifier modifierO = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2").o(SizeKt.f5052c);
                            Painter painterA = PainterResources_androidKt.a(R.drawable.native_login_background, composer2, 0);
                            ContentScale.f9447a.getClass();
                            Modifier modifierH = PaddingKt.h(PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), paddingValues);
                            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                            Alignment.f8582a.getClass();
                            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                            int iHashCode = Long.hashCode(composer2.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                            Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                            ComposeUiNode.b0.getClass();
                            Function0 function11 = ComposeUiNode.Companion.f9641b;
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function11);
                            } else {
                                composer2.o();
                            }
                            Function2 function12 = ComposeUiNode.Companion.f9644f;
                            Updater.c(composer2, columnMeasurePolicyA, function12);
                            Function2 function13 = ComposeUiNode.Companion.f9643e;
                            Updater.c(composer2, persistentCompositionLocalMapN, function13);
                            Integer numValueOf = Integer.valueOf(iHashCode);
                            Function2 function14 = ComposeUiNode.Companion.g;
                            Updater.c(composer2, numValueOf, function14);
                            Function1 function15 = ComposeUiNode.Companion.f9645h;
                            Updater.b(composer2, function15);
                            Function2 function16 = ComposeUiNode.Companion.d;
                            Updater.c(composer2, modifierC, function16);
                            Modifier modifierD = SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
                            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                            int iHashCode2 = Long.hashCode(composer2.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                            Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function11);
                            } else {
                                composer2.o();
                            }
                            Updater.c(composer2, measurePolicyD, function12);
                            Updater.c(composer2, persistentCompositionLocalMapN2, function13);
                            cj.s(iHashCode2, composer2, function14, composer2, function15);
                            Updater.c(composer2, modifierC2, function16);
                            PagerState pagerState2 = pagerState;
                            boolean z7 = pagerState2.k() > 0;
                            EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                            ExitTransition exitTransitionH = EnterExitTransitionKt.h(null, 3);
                            Function0 function17 = function3;
                            CoroutineScope coroutineScope17 = coroutineScope16;
                            NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext2 = nativeAuthenticationLayoutContext;
                            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(99358455, new r(function17, coroutineScope17, pagerState2, nativeAuthenticationLayoutContext2), composer2);
                            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                            AnimatedVisibilityKt.c(columnScopeInstance, z7, null, enterTransitionF, exitTransitionH, null, composableLambdaImplB, composer2, 1600518, 18);
                            DTFunctionNameModifier dTFunctionNameModifier17 = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2");
                            BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                            BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                            LVPageNumberIndicatorKt.a(boxScopeInstance.g(dTFunctionNameModifier17, biasAlignment), pagerState2, null, composer2, 0, 4);
                            Modifier modifierC3 = ModifierExtKt.c(boxScopeInstance.g(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(composer2).o), Alignment.Companion.g), false, null, null, function4, 31);
                            int i25 = NativeAuthenticationLayoutKt.WhenMappings.f53478a[nativeAuthenticationLayoutContext2.ordinal()];
                            if (i25 == 1) {
                                str4 = "nativeRegister_cross_button";
                            } else if (i25 == 2) {
                                str4 = "nativeForgetPassword_cross_button";
                            } else {
                                if (i25 != 3) {
                                    v40.g();
                                    return null;
                                }
                                str4 = "account_activation_close";
                            }
                            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).q, composer2, 0), StringResources_androidKt.c(composer2, R.string.alt_close), ModifierExtKt.e(modifierC3, str4), LVAppDesignKitTheme.c(composer2).f48361b.m, composer2, 8, 0);
                            composer2.r();
                            LVProgressIndicatorKt.a(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), pagerState2.k(), pagerState2.k() + 1, i18, Color.b(0.8f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), Color.b(0.4f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), new TweenSpec(1000, 200, EasingKt.f3863b), composer2, 0);
                            NativeAuthenticationTitleKt.a(SizeKt.d(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f), listV, pagerState2.k(), composer2, 0);
                            PagerKt.a(pagerState2, columnScopeInstance.a(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f, true), null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Alignment.Companion.f8591k, null, false, false, null, null, null, ComposableLambdaKt.b(228520436, new v10(composableLambdaImpl, 2), composer2), composer2, 102236160, 24576, 16060);
                            composer2.r();
                            if (z) {
                                composer2.L(-554090323);
                                LVLoadingOverlayKt.a(false, composer2, 0, 1);
                                composer2.F();
                            } else {
                                composer2.L(-554049961);
                                composer2.F();
                            }
                            LVModalBottomSheetState lVModalBottomSheetState4 = lVModalBottomSheetState3;
                            if (lVModalBottomSheetState4 == null || !lVModalBottomSheetState4.a()) {
                                composer2.L(-552683977);
                                composer2.F();
                            } else {
                                composer2.L(-553908601);
                                String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                                Function0 function18 = function10;
                                boolean zK = composer2.K(function18);
                                Object objX3 = composer2.x();
                                if (zK || objX3 == Composer.Companion.f7939a) {
                                    objX3 = new ee0(function18, 2);
                                    composer2.q(objX3);
                                }
                                LVModalBottomSheetKt.b(Modifier.Companion.f8607b, strC, (Function0) objX3, lVModalBottomSheetState4, null, 0L, false, null, ComposableLambdaKt.b(-1062906429, new w0(nativeRegisterBottomSheetScreen4, str3, function8, coroutineScope17, lVModalBottomSheetState4, function9, function18), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663302, 240);
                                composer2.F();
                            }
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposer, 805309440, 502);
                z4 = z6;
                lVModalBottomSheetState2 = lVModalBottomSheetState3;
                function7 = function10;
                nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen4;
                str2 = str3;
                function5 = function8;
                function6 = function9;
                modifier2 = dTFunctionNameModifier16;
            } else if (i17 != i16) {
                size = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53485a.size();
            } else {
                if (i17 == 3) {
                    v40.g();
                    return;
                }
                size = com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitleKt.f53486b.size();
            }
            i18 = size;
            Unit unit1112 = Unit.f71739a;
            zY = gapComposerH.y(focusManager);
            objX2 = gapComposerH.x();
            if (zY) {
                objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                        Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                    }
                };
                gapComposerH.q(objX2);
            } else {
                objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1
                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                        Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 6), continuation, 7);
                        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                    }
                };
                gapComposerH.q(objX2);
            }
            gapComposer = gapComposerH;
            ScaffoldKt.a(WindowInsetsPadding_androidKt.a(SuspendingPointerInputFilterKt.a(dTFunctionNameModifier16, unit1112, (PointerInputEventHandler) objX2)), null, null, ComposableLambdaKt.b(-680791422, new ae0(snackbarHostState, 1), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-377167413, new Function3() { // from class: le0
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    String str4;
                    PaddingValues paddingValues = (PaddingValues) obj;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    paddingValues.getClass();
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                        OpaqueKey opaqueKey17 = ComposerKt.f7940a;
                        Modifier modifierO = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2").o(SizeKt.f5052c);
                        Painter painterA = PainterResources_androidKt.a(R.drawable.native_login_background, composer2, 0);
                        ContentScale.f9447a.getClass();
                        Modifier modifierH = PaddingKt.h(PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), paddingValues);
                        Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                        Alignment.f8582a.getClass();
                        ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                        int iHashCode = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                        ComposeUiNode.b0.getClass();
                        Function0 function11 = ComposeUiNode.Companion.f9641b;
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function11);
                        } else {
                            composer2.o();
                        }
                        Function2 function12 = ComposeUiNode.Companion.f9644f;
                        Updater.c(composer2, columnMeasurePolicyA, function12);
                        Function2 function13 = ComposeUiNode.Companion.f9643e;
                        Updater.c(composer2, persistentCompositionLocalMapN, function13);
                        Integer numValueOf = Integer.valueOf(iHashCode);
                        Function2 function14 = ComposeUiNode.Companion.g;
                        Updater.c(composer2, numValueOf, function14);
                        Function1 function15 = ComposeUiNode.Companion.f9645h;
                        Updater.b(composer2, function15);
                        Function2 function16 = ComposeUiNode.Companion.d;
                        Updater.c(composer2, modifierC, function16);
                        Modifier modifierD = SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        int iHashCode2 = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                        Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function11);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, measurePolicyD, function12);
                        Updater.c(composer2, persistentCompositionLocalMapN2, function13);
                        cj.s(iHashCode2, composer2, function14, composer2, function15);
                        Updater.c(composer2, modifierC2, function16);
                        PagerState pagerState2 = pagerState;
                        boolean z7 = pagerState2.k() > 0;
                        EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                        ExitTransition exitTransitionH = EnterExitTransitionKt.h(null, 3);
                        Function0 function17 = function3;
                        CoroutineScope coroutineScope17 = coroutineScope16;
                        NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext2 = nativeAuthenticationLayoutContext;
                        ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(99358455, new r(function17, coroutineScope17, pagerState2, nativeAuthenticationLayoutContext2), composer2);
                        ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                        AnimatedVisibilityKt.c(columnScopeInstance, z7, null, enterTransitionF, exitTransitionH, null, composableLambdaImplB, composer2, 1600518, 18);
                        DTFunctionNameModifier dTFunctionNameModifier17 = new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2");
                        BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                        LVPageNumberIndicatorKt.a(boxScopeInstance.g(dTFunctionNameModifier17, biasAlignment), pagerState2, null, composer2, 0, 4);
                        Modifier modifierC3 = ModifierExtKt.c(boxScopeInstance.g(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(composer2).o), Alignment.Companion.g), false, null, null, function4, 31);
                        int i25 = NativeAuthenticationLayoutKt.WhenMappings.f53478a[nativeAuthenticationLayoutContext2.ordinal()];
                        if (i25 == 1) {
                            str4 = "nativeRegister_cross_button";
                        } else if (i25 == 2) {
                            str4 = "nativeForgetPassword_cross_button";
                        } else {
                            if (i25 != 3) {
                                v40.g();
                                return null;
                            }
                            str4 = "account_activation_close";
                        }
                        IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).q, composer2, 0), StringResources_androidKt.c(composer2, R.string.alt_close), ModifierExtKt.e(modifierC3, str4), LVAppDesignKitTheme.c(composer2).f48361b.m, composer2, 8, 0);
                        composer2.r();
                        LVProgressIndicatorKt.a(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), pagerState2.k(), pagerState2.k() + 1, i18, Color.b(0.8f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), Color.b(0.4f, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), new TweenSpec(1000, 200, EasingKt.f3863b), composer2, 0);
                        NativeAuthenticationTitleKt.a(SizeKt.d(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f), listV, pagerState2.k(), composer2, 0);
                        PagerKt.a(pagerState2, columnScopeInstance.a(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f, true), null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Alignment.Companion.f8591k, null, false, false, null, null, null, ComposableLambdaKt.b(228520436, new v10(composableLambdaImpl, 2), composer2), composer2, 102236160, 24576, 16060);
                        composer2.r();
                        if (z) {
                            composer2.L(-554090323);
                            LVLoadingOverlayKt.a(false, composer2, 0, 1);
                            composer2.F();
                        } else {
                            composer2.L(-554049961);
                            composer2.F();
                        }
                        LVModalBottomSheetState lVModalBottomSheetState4 = lVModalBottomSheetState3;
                        if (lVModalBottomSheetState4 == null || !lVModalBottomSheetState4.a()) {
                            composer2.L(-552683977);
                            composer2.F();
                        } else {
                            composer2.L(-553908601);
                            String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                            Function0 function18 = function10;
                            boolean zK = composer2.K(function18);
                            Object objX3 = composer2.x();
                            if (zK || objX3 == Composer.Companion.f7939a) {
                                objX3 = new ee0(function18, 2);
                                composer2.q(objX3);
                            }
                            LVModalBottomSheetKt.b(Modifier.Companion.f8607b, strC, (Function0) objX3, lVModalBottomSheetState4, null, 0L, false, null, ComposableLambdaKt.b(-1062906429, new w0(nativeRegisterBottomSheetScreen4, str3, function8, coroutineScope17, lVModalBottomSheetState4, function9, function18), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663302, 240);
                            composer2.F();
                        }
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposer, 805309440, 502);
            z4 = z6;
            lVModalBottomSheetState2 = lVModalBottomSheetState3;
            function7 = function10;
            nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen4;
            str2 = str3;
            function5 = function8;
            function6 = function9;
            modifier2 = dTFunctionNameModifier16;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            lVModalBottomSheetState2 = lVModalBottomSheetState;
            str2 = str;
            function5 = function0;
            function6 = function1;
            z4 = z2;
            nativeRegisterBottomSheetScreen3 = nativeRegisterBottomSheetScreen2;
            modifier2 = modifierE;
            function7 = function2;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: me0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i3);
                    NativeAuthenticationLayoutKt.a(modifier2, nativeAuthenticationLayoutContext, pagerState, focusManager, lVModalBottomSheetState2, nativeRegisterBottomSheetScreen3, z, str2, snackbarHostState, function5, function6, function7, function3, function4, z4, composableLambdaImpl, (Composer) obj, iA, iA2, i4);
                    return Unit.f71739a;
                }
            };
        }
    }
}
