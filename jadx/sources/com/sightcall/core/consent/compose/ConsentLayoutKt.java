package com.sightcall.core.consent.compose;

import android.content.Context;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.material3.ScaffoldKt;
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
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.PlatformSpanStyle;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.sightcall.core.R;
import com.sightcall.core.consent.ConsentEnum;
import com.sightcall.core.consent.ConsentViewModel;
import defpackage.f9;
import defpackage.fc;
import defpackage.fg;
import defpackage.jx;
import defpackage.lp;
import defpackage.wh;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\u001a_\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00010\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00010\t2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00010\t2\u0006\u0010\f\u001a\u00020\rH\u0007¢\u0006\u0002\u0010\u000e\u001a\r\u0010\u000f\u001a\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0010¨\u0006\u0011²\u0006\u0012\u0010\u0012\u001a\n \u0014*\u0004\u0018\u00010\u00130\u0013X\u008a\u0084\u0002"}, d2 = {"ConsentParentScreen", "", "consentTitle", "", "declineTitle", "declineBody", "consentBody", "Landroidx/compose/ui/text/AnnotatedString;", "onAccept", "Lkotlin/Function0;", "onDecline", "onDeclineBack", "viewModel", "Lcom/sightcall/core/consent/ConsentViewModel;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/sightcall/core/consent/ConsentViewModel;Landroidx/compose/runtime/Composer;I)V", "PreviewConsentScreen", "(Landroidx/compose/runtime/Composer;I)V", "core_release", "consentState", "Lcom/sightcall/core/consent/ConsentEnum;", "kotlin.jvm.PlatformType"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class ConsentLayoutKt {
    public static final void ConsentParentScreen(String str, String str2, String str3, AnnotatedString annotatedString, Function0<Unit> function0, Function0<Unit> function1, Function0<Unit> function2, ConsentViewModel consentViewModel, Composer composer, int i2) {
        int i3;
        String str4;
        GapComposer gapComposer;
        str.getClass();
        str2.getClass();
        str3.getClass();
        annotatedString.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        consentViewModel.getClass();
        GapComposer gapComposerH = composer.h(649597029);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(str) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(str2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            str4 = str3;
            i3 |= gapComposerH.K(str4) ? 256 : 128;
        } else {
            str4 = str3;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.K(annotatedString) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function0) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function1) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.y(function2) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i3 |= gapComposerH.y(consentViewModel) ? 8388608 : 4194304;
        }
        if ((i3 & 4793491) == 4793490 && gapComposerH.i()) {
            gapComposerH.D();
            gapComposer = gapComposerH;
        } else {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            MutableLiveData<ConsentEnum> consentState = consentViewModel.getConsentState();
            ConsentEnum value = ConsentEnum.SHOW_CONSENT_VIEW;
            LifecycleOwner lifecycleOwner = (LifecycleOwner) gapComposerH.k(LocalLifecycleOwnerKt.f13562a);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                if (consentState.isInitialized()) {
                    value = consentState.getValue();
                }
                objX = SnapshotStateKt.g(value);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            boolean zY = gapComposerH.y(consentState) | gapComposerH.y(lifecycleOwner);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new jx(consentState, lifecycleOwner, mutableState, 14);
                gapComposerH.q(objX2);
            }
            EffectsKt.b(consentState, lifecycleOwner, (Function1) objX2, gapComposerH);
            WindowInsetsHolder.y.getClass();
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, null, null, null, null, 0, 0L, 0L, WindowInsetsHolder.Companion.c(gapComposerH).l, ComposableLambdaKt.b(-1787205260, new f9(context, str, annotatedString, function0, function1, consentViewModel, str2, str4, function2, mutableState), gapComposerH), gapComposer, 805306368, 255);
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new fg(str, str2, str3, annotatedString, function0, function1, function2, consentViewModel, i2);
        }
    }

    private static final ConsentEnum ConsentParentScreen$lambda$0(State<? extends ConsentEnum> state) {
        return (ConsentEnum) state.getF10755b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ConsentParentScreen$lambda$1(Context context, String str, AnnotatedString annotatedString, Function0 function0, Function0 function1, ConsentViewModel consentViewModel, String str2, String str3, Function0 function2, State state, PaddingValues paddingValues, Composer composer, int i2) {
        int i3;
        Composer composer2 = composer;
        paddingValues.getClass();
        if ((i2 & 6) == 0) {
            i3 = i2 | (composer2.K(paddingValues) ? 4 : 2);
        } else {
            i3 = i2;
        }
        if ((i3 & 19) == 18 && composer2.i()) {
            composer2.D();
        } else {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierH = PaddingKt.h(new DTFunctionNameModifier("ConsentParentScreen$lambda$1").o(SizeKt.f5052c), paddingValues);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iG = composer2.G();
            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
            Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
            ComposeUiNode.b0.getClass();
            Function0 function3 = ComposeUiNode.Companion.f9641b;
            if (composer2.getF7976a() == null) {
                ComposablesKt.b();
                throw null;
            }
            composer2.B();
            if (composer2.getS()) {
                composer2.C(function3);
            } else {
                composer2.o();
            }
            Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
            Function2 function4 = ComposeUiNode.Companion.g;
            if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG))) {
                fc.A(function4, iG, composer2, iG);
            }
            Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
            if (ConsentParentScreen$lambda$0(state) == ConsentEnum.SHOW_CONSENT_VIEW) {
                composer2.L(1208857457);
                ConsentViewKt.ConsentView(context, str, annotatedString, function0, function1, consentViewModel, composer2, 0);
                composer2 = composer2;
                composer2.F();
            } else if (ConsentParentScreen$lambda$0(state) == ConsentEnum.SHOW_DECLINE_VIEW) {
                composer2.L(1209232309);
                ConsentDeclineViewKt.ConsentDeclineView(context, str2, str3, function2, composer2, 0);
                composer2.F();
            } else {
                composer2.L(1209477364);
                composer2.F();
            }
            composer2.r();
        }
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ConsentParentScreen$lambda$2(String str, String str2, String str3, AnnotatedString annotatedString, Function0 function0, Function0 function1, Function0 function2, ConsentViewModel consentViewModel, int i2, Composer composer, int i3) {
        ConsentParentScreen(str, str2, str3, annotatedString, function0, function1, function2, consentViewModel, composer, RecomposeScopeImplKt.a(i2 | 1));
        return Unit.f71739a;
    }

    public static final void PreviewConsentScreen(Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(754253091);
        if (i2 == 0 && gapComposerH.i()) {
            gapComposerH.D();
        } else {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            AnnotatedString.Builder builder = new AnnotatedString.Builder(0, 1, null);
            String string = context.getString(R.string.consent_privacy_policy);
            string.getClass();
            builder.e(string);
            Color.f8866b.getClass();
            long j2 = Color.g;
            TextDecoration.f10965b.getClass();
            int iH = builder.h(new SpanStyle(j2, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61438, (DefaultConstructorMarker) null));
            try {
                builder.e("Privacy Policy");
                builder.f(iH);
                AnnotatedString annotatedStringI = builder.i();
                Object objX = gapComposerH.x();
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = new lp(16);
                    gapComposerH.q(objX);
                }
                Function0 function0 = (Function0) objX;
                Object objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new lp(17);
                    gapComposerH.q(objX2);
                }
                Function0 function1 = (Function0) objX2;
                Object objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = new lp(18);
                    gapComposerH.q(objX3);
                }
                ConsentParentScreen("Information about your data", "Decline", "You have declined the privacy policy.", annotatedStringI, function0, function1, (Function0) objX3, new ConsentViewModel(), gapComposerH, 1794486);
            } catch (Throwable th) {
                builder.f(iH);
                throw th;
            }
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new wh(i2, 3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit PreviewConsentScreen$lambda$4(int i2, Composer composer, int i3) {
        PreviewConsentScreen(composer, RecomposeScopeImplKt.a(i2 | 1));
        return Unit.f71739a;
    }
}
