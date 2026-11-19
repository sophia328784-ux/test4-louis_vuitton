package com.vuitton.android.presentation.screen.options.settings.components;

import android.content.Context;
import androidx.activity.compose.BackHandlerKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVSwitchKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVSwitchLegalState;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.presentation.screen.options.settings.SettingsViewModel;
import com.vuitton.android.presentation.screen.options.settings.components.EditSettingsComposableKt;
import com.vuitton.android.presentation.screen.options.settings.models.SettingsTrackingUiModel;
import com.vuitton.android.presentation.screen.options.settings.models.SettingsViewState;
import defpackage.aw;
import defpackage.cj;
import defpackage.g0;
import defpackage.h0;
import defpackage.k0;
import defpackage.n00;
import defpackage.o0;
import defpackage.rv;
import defpackage.wv;
import defpackage.zv;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KFunction;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class EditSettingsComposableKt {
    public static final void a(SettingsViewModel settingsViewModel, Function0 function0, Function0 function1, Composer composer, int i2) {
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Object editSettingsComposableKt$EditSettingsComposable$5$1;
        final SettingsViewModel settingsViewModel2;
        settingsViewModel.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(1390355269);
        final int i3 = 4;
        int i4 = i2 | (gapComposerH.K(settingsViewModel) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128);
        if (gapComposerH.p(i4 & 1, (i4 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(settingsViewModel.getT(), gapComposerH);
            int i5 = i4 & 14;
            boolean z = ((i4 & 112) == 32) | (i5 == 4);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (z || objX == composer$Companion$Empty$2) {
                objX = new aw(settingsViewModel, function0, 0);
                gapComposerH.q(objX);
            }
            BackHandlerKt.a(false, (Function0) objX, gapComposerH, 0, 1);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$2) {
                objX2 = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState = (SnackbarHostState) objX2;
            Unit unit = Unit.f71739a;
            boolean zY = (i5 == 4) | gapComposerH.y(context);
            Object objX3 = gapComposerH.x();
            if (zY || objX3 == composer$Companion$Empty$2) {
                objX3 = new EditSettingsComposableKt$EditSettingsComposable$2$1(settingsViewModel, snackbarHostState, context, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX3);
            boolean z2 = i5 == 4;
            Object objX4 = gapComposerH.x();
            if (z2 || objX4 == composer$Companion$Empty$2) {
                objX4 = new EditSettingsComposableKt$EditSettingsComposable$3$1(settingsViewModel, null);
                gapComposerH.q(objX4);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX4);
            SettingsViewState settingsViewState = (SettingsViewState) mutableStateB.getF10755b();
            boolean z3 = i5 == 4;
            Object objX5 = gapComposerH.x();
            if (z3 || objX5 == composer$Companion$Empty$2) {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                EditSettingsComposableKt$EditSettingsComposable$4$1 editSettingsComposableKt$EditSettingsComposable$4$1 = new EditSettingsComposableKt$EditSettingsComposable$4$1(0, settingsViewModel, SettingsViewModel.class, "saveSettingsClicked", "saveSettingsClicked()V", 0);
                gapComposerH.q(editSettingsComposableKt$EditSettingsComposable$4$1);
                objX5 = editSettingsComposableKt$EditSettingsComposable$4$1;
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
            }
            Function0 function2 = (Function0) ((KFunction) objX5);
            boolean z4 = i5 == 4;
            Object objX6 = gapComposerH.x();
            if (z4 || objX6 == composer$Companion$Empty$1) {
                editSettingsComposableKt$EditSettingsComposable$5$1 = new EditSettingsComposableKt$EditSettingsComposable$5$1(0, settingsViewModel, SettingsViewModel.class, "isSaveButtonEnabled", "isSaveButtonEnabled()Z", 0);
                settingsViewModel2 = settingsViewModel;
                gapComposerH.q(editSettingsComposableKt$EditSettingsComposable$5$1);
            } else {
                editSettingsComposableKt$EditSettingsComposable$5$1 = objX6;
                settingsViewModel2 = settingsViewModel;
            }
            Function0 function3 = (Function0) ((KFunction) editSettingsComposableKt$EditSettingsComposable$5$1);
            boolean z5 = ((i4 & 896) == 256) | (i5 == 4);
            Object objX7 = gapComposerH.x();
            if (z5 || objX7 == composer$Companion$Empty$1) {
                objX7 = new aw(function1, settingsViewModel2);
                gapComposerH.q(objX7);
            }
            Function0 function4 = (Function0) objX7;
            boolean z6 = i5 == 4;
            Object objX8 = gapComposerH.x();
            if (z6 || objX8 == composer$Companion$Empty$1) {
                final int i6 = 2;
                objX8 = new Function1() { // from class: vv
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i7 = i6;
                        boolean zBooleanValue = ((Boolean) obj).booleanValue();
                        switch (i7) {
                            case 0:
                                settingsViewModel2.cc(new SettingsTrackingUiModel.SmsConsentToggleEvent(zBooleanValue));
                                break;
                            case 1:
                                settingsViewModel2.cc(new SettingsTrackingUiModel.EmailTrackingToggleEvent(zBooleanValue));
                                break;
                            case 2:
                                settingsViewModel2.cc(new SettingsTrackingUiModel.ContactByPhoneToggleEvent(zBooleanValue));
                                break;
                            case 3:
                                settingsViewModel2.cc(new SettingsTrackingUiModel.ContactBySmsToggleEvent(zBooleanValue));
                                break;
                            case 4:
                                settingsViewModel2.cc(new SettingsTrackingUiModel.ContactByMailToggleEvent(zBooleanValue));
                                break;
                            default:
                                settingsViewModel2.cc(new SettingsTrackingUiModel.NewsletterToggleEvent(zBooleanValue));
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX8);
            }
            Function1 function5 = (Function1) objX8;
            boolean z7 = i5 == 4;
            Object objX9 = gapComposerH.x();
            final int i7 = 3;
            if (z7 || objX9 == composer$Companion$Empty$1) {
                objX9 = new Function1() { // from class: vv
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i8 = i7;
                        boolean zBooleanValue = ((Boolean) obj).booleanValue();
                        switch (i8) {
                            case 0:
                                settingsViewModel2.cc(new SettingsTrackingUiModel.SmsConsentToggleEvent(zBooleanValue));
                                break;
                            case 1:
                                settingsViewModel2.cc(new SettingsTrackingUiModel.EmailTrackingToggleEvent(zBooleanValue));
                                break;
                            case 2:
                                settingsViewModel2.cc(new SettingsTrackingUiModel.ContactByPhoneToggleEvent(zBooleanValue));
                                break;
                            case 3:
                                settingsViewModel2.cc(new SettingsTrackingUiModel.ContactBySmsToggleEvent(zBooleanValue));
                                break;
                            case 4:
                                settingsViewModel2.cc(new SettingsTrackingUiModel.ContactByMailToggleEvent(zBooleanValue));
                                break;
                            default:
                                settingsViewModel2.cc(new SettingsTrackingUiModel.NewsletterToggleEvent(zBooleanValue));
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX9);
            }
            Function1 function6 = (Function1) objX9;
            boolean z8 = i5 == 4;
            Object objX10 = gapComposerH.x();
            if (z8 || objX10 == composer$Companion$Empty$1) {
                objX10 = new Function1() { // from class: vv
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i8 = i3;
                        boolean zBooleanValue = ((Boolean) obj).booleanValue();
                        switch (i8) {
                            case 0:
                                settingsViewModel2.cc(new SettingsTrackingUiModel.SmsConsentToggleEvent(zBooleanValue));
                                break;
                            case 1:
                                settingsViewModel2.cc(new SettingsTrackingUiModel.EmailTrackingToggleEvent(zBooleanValue));
                                break;
                            case 2:
                                settingsViewModel2.cc(new SettingsTrackingUiModel.ContactByPhoneToggleEvent(zBooleanValue));
                                break;
                            case 3:
                                settingsViewModel2.cc(new SettingsTrackingUiModel.ContactBySmsToggleEvent(zBooleanValue));
                                break;
                            case 4:
                                settingsViewModel2.cc(new SettingsTrackingUiModel.ContactByMailToggleEvent(zBooleanValue));
                                break;
                            default:
                                settingsViewModel2.cc(new SettingsTrackingUiModel.NewsletterToggleEvent(zBooleanValue));
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX10);
            }
            Function1 function7 = (Function1) objX10;
            boolean z9 = i5 == 4;
            Object objX11 = gapComposerH.x();
            if (z9 || objX11 == composer$Companion$Empty$1) {
                final int i8 = 5;
                objX11 = new Function1() { // from class: vv
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i9 = i8;
                        boolean zBooleanValue = ((Boolean) obj).booleanValue();
                        switch (i9) {
                            case 0:
                                settingsViewModel2.cc(new SettingsTrackingUiModel.SmsConsentToggleEvent(zBooleanValue));
                                break;
                            case 1:
                                settingsViewModel2.cc(new SettingsTrackingUiModel.EmailTrackingToggleEvent(zBooleanValue));
                                break;
                            case 2:
                                settingsViewModel2.cc(new SettingsTrackingUiModel.ContactByPhoneToggleEvent(zBooleanValue));
                                break;
                            case 3:
                                settingsViewModel2.cc(new SettingsTrackingUiModel.ContactBySmsToggleEvent(zBooleanValue));
                                break;
                            case 4:
                                settingsViewModel2.cc(new SettingsTrackingUiModel.ContactByMailToggleEvent(zBooleanValue));
                                break;
                            default:
                                settingsViewModel2.cc(new SettingsTrackingUiModel.NewsletterToggleEvent(zBooleanValue));
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX11);
            }
            Function1 function8 = (Function1) objX11;
            boolean z10 = i5 == 4;
            Object objX12 = gapComposerH.x();
            if (z10 || objX12 == composer$Companion$Empty$1) {
                final int i9 = 0;
                objX12 = new Function1() { // from class: vv
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i10 = i9;
                        boolean zBooleanValue = ((Boolean) obj).booleanValue();
                        switch (i10) {
                            case 0:
                                settingsViewModel2.cc(new SettingsTrackingUiModel.SmsConsentToggleEvent(zBooleanValue));
                                break;
                            case 1:
                                settingsViewModel2.cc(new SettingsTrackingUiModel.EmailTrackingToggleEvent(zBooleanValue));
                                break;
                            case 2:
                                settingsViewModel2.cc(new SettingsTrackingUiModel.ContactByPhoneToggleEvent(zBooleanValue));
                                break;
                            case 3:
                                settingsViewModel2.cc(new SettingsTrackingUiModel.ContactBySmsToggleEvent(zBooleanValue));
                                break;
                            case 4:
                                settingsViewModel2.cc(new SettingsTrackingUiModel.ContactByMailToggleEvent(zBooleanValue));
                                break;
                            default:
                                settingsViewModel2.cc(new SettingsTrackingUiModel.NewsletterToggleEvent(zBooleanValue));
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX12);
            }
            Function1 function9 = (Function1) objX12;
            boolean z11 = i5 == 4;
            Object objX13 = gapComposerH.x();
            if (z11 || objX13 == composer$Companion$Empty$1) {
                final int i10 = 1;
                objX13 = new Function1() { // from class: vv
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i11 = i10;
                        boolean zBooleanValue = ((Boolean) obj).booleanValue();
                        switch (i11) {
                            case 0:
                                settingsViewModel2.cc(new SettingsTrackingUiModel.SmsConsentToggleEvent(zBooleanValue));
                                break;
                            case 1:
                                settingsViewModel2.cc(new SettingsTrackingUiModel.EmailTrackingToggleEvent(zBooleanValue));
                                break;
                            case 2:
                                settingsViewModel2.cc(new SettingsTrackingUiModel.ContactByPhoneToggleEvent(zBooleanValue));
                                break;
                            case 3:
                                settingsViewModel2.cc(new SettingsTrackingUiModel.ContactBySmsToggleEvent(zBooleanValue));
                                break;
                            case 4:
                                settingsViewModel2.cc(new SettingsTrackingUiModel.ContactByMailToggleEvent(zBooleanValue));
                                break;
                            default:
                                settingsViewModel2.cc(new SettingsTrackingUiModel.NewsletterToggleEvent(zBooleanValue));
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX13);
            }
            Function1 function10 = (Function1) objX13;
            boolean z12 = i5 == 4;
            Object objX14 = gapComposerH.x();
            if (z12 || objX14 == composer$Companion$Empty$1) {
                objX14 = new wv(settingsViewModel2, 0);
                gapComposerH.q(objX14);
            }
            Function0 function11 = (Function0) objX14;
            boolean z13 = i5 == 4;
            Object objX15 = gapComposerH.x();
            if (z13 || objX15 == composer$Companion$Empty$1) {
                objX15 = new wv(settingsViewModel2, 1);
                gapComposerH.q(objX15);
            }
            b(settingsViewState, snackbarHostState, function0, function2, function3, function4, function5, function6, function7, function8, function9, function10, function11, (Function0) objX15, gapComposerH, ((i4 << 3) & 896) | 48);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rv(i2, 2, settingsViewModel, function0, function1);
        }
    }

    public static final void b(final SettingsViewState settingsViewState, final SnackbarHostState snackbarHostState, final Function0 function0, final Function0 function1, final Function0 function2, final Function0 function3, final Function1 function4, final Function1 function5, final Function1 function6, final Function1 function7, final Function1 function8, final Function1 function9, final Function0 function10, final Function0 function11, Composer composer, final int i2) {
        int i3;
        Function0 function12;
        Function0 function13;
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(-268748030);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(settingsViewState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(snackbarHostState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function0) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            function12 = function1;
            i3 |= gapComposerH.y(function12) ? 2048 : 1024;
        } else {
            function12 = function1;
        }
        if ((i2 & 24576) == 0) {
            function13 = function2;
            i3 |= gapComposerH.y(function13) ? 16384 : 8192;
        } else {
            function13 = function2;
        }
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i3 |= gapComposerH.y(function3) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i3 |= gapComposerH.y(function4) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i3 |= gapComposerH.y(function5) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i3 |= gapComposerH.y(function6) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i3 |= gapComposerH.y(function7) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if (gapComposerH.p(i3 & 1, ((i3 & 306783379) == 306783378 && (((((gapComposerH.y(function8) ? (char) 4 : (char) 2) | (gapComposerH.y(function9) ? ' ' : (char) 16)) | (gapComposerH.y(function10) ? 256 : 128)) | (gapComposerH.y(function11) ? 2048 : 1024)) & 1171) == 1170) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, ComposableLambdaKt.b(2075987134, new o0(function0, 29), gapComposerH), null, ComposableLambdaKt.b(-1547147268, new g0(snackbarHostState, 25), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-682838573, new h0(settingsViewState, LVModalBottomSheetKt.f(0, 7, gapComposerH, null), function11, function13, function12, function4, function5, function6, function7, function9, function8, function10, function3), gapComposerH), gapComposer, 805309488, 501);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: xv
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    EditSettingsComposableKt.b(settingsViewState, snackbarHostState, function0, function1, function2, function3, function4, function5, function6, function7, function8, function9, function10, function11, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void c(Modifier modifier, String str, boolean z, boolean z2, String str2, String str3, Function1 function1, Composer composer, int i2, int i3) {
        boolean z3;
        int i4;
        String str4;
        boolean z4;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "SettingSwitchBlock");
        }
        GapComposer gapComposerH = composer.h(-69917978);
        int i5 = i2 | 6 | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128);
        int i6 = i3 & 8;
        if (i6 != 0) {
            i4 = i5 | 3072;
            z3 = z2;
        } else {
            z3 = z2;
            i4 = i5 | (gapComposerH.b(z3) ? 2048 : 1024);
        }
        int i7 = i4 | (gapComposerH.y(function1) ? 1048576 : 524288);
        if (gapComposerH.p(i7 & 1, (599187 & i7) != 599186)) {
            dTFunctionNameModifier = new DTFunctionNameModifier("SettingSwitchBlock");
            if (i6 != 0) {
                z3 = true;
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.g, Alignment.Companion.l, gapComposerH, 54);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            int i8 = i7 >> 3;
            TextKt.c(str, PaddingKt.m(cj.b("SettingSwitchBlock", RowScopeInstance.f5040a, 1.0f, true), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11).o(ModifierExtKt.e(new DTFunctionNameModifier("SettingSwitchBlock"), str2)), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48428i, gapComposerH, i8 & 14, 0, 131064);
            str4 = str3;
            gapComposerH = gapComposerH;
            Modifier modifierG = n00.g("SettingSwitchBlock", str4);
            LVSwitchLegalState lVSwitchLegalState = z ? LVSwitchLegalState.ACCEPTED : LVSwitchLegalState.DENIED;
            boolean z5 = (3670016 & i7) == 1048576;
            Object objX = gapComposerH.x();
            if (z5 || objX == Composer.Companion.f7939a) {
                objX = new k0(function1, 9);
                gapComposerH.q(objX);
            }
            boolean z6 = z3;
            LVSwitchKt.c(modifierG, lVSwitchLegalState, z6, (Function1) objX, gapComposerH, i8 & 896, 0);
            gapComposerH.Z(true);
            z4 = z6;
        } else {
            str4 = str3;
            gapComposerH.D();
            z4 = z3;
        }
        Modifier modifier2 = dTFunctionNameModifier;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zv(modifier2, str, z, z4, str2, str4, function1, i2, i3);
        }
    }
}
