package defpackage;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
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
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.certificates.components.transfer.TransferCertificateConfirmationComposableKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt__StringsKt;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.internal.Constants;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ua implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80269b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f80270c;
    public final /* synthetic */ String d;

    public /* synthetic */ ua(String str, String str2, int i2) {
        this.f80269b = i2;
        this.f80270c = str;
        this.d = str2;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2 = this.f80269b;
        String str = this.d;
        String str2 = this.f80270c;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Modifier modifierE = ModifierExtKt.e(PaddingKt.k(new DTFunctionNameModifier("AudioGuideTextBottomSheet$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48417f, 1), "audioGuide_cardTextDescription_text");
                    AnnotatedString.Builder builder = new AnnotatedString.Builder(0, 1, null);
                    if (str2 != null) {
                        List listSplit$default = StringsKt__StringsKt.split$default(str, new String[]{str2}, false, 2, 2, null);
                        builder.e((String) (listSplit$default.size() > 0 ? listSplit$default.get(0) : ""));
                        FontWeight.f10727c.getClass();
                        int iH = builder.h(new SpanStyle(0L, 0L, FontWeight.f10731i, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, Constants.CallType.SIX_DIGITS, (DefaultConstructorMarker) null));
                        try {
                            builder.e(str2);
                            builder.f(iH);
                            builder.e((String) (1 < listSplit$default.size() ? listSplit$default.get(1) : ""));
                        } catch (Throwable th) {
                            builder.f(iH);
                            throw th;
                        }
                    } else {
                        builder.e(str);
                    }
                    TextKt.d(builder.i(), modifierE, LVAppDesignKitTheme.c(composer).f48361b.f48382k, 0L, 0L, null, 0L, 0, false, 0, 0, null, null, LVAppDesignKitTheme.n(composer).g, composer, 0, 0, 262136);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            default:
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer2 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((iIntValue2 & 6) == 0) {
                    iIntValue2 |= composer2.K(paddingValues) ? 4 : 2;
                }
                if (composer2.p(1 & iIntValue2, (iIntValue2 & 19) != 18)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Modifier modifierH = PaddingKt.h(BackgroundKt.b(new DTFunctionNameModifier("TransferCertificateConfirmationScreen$lambda$1").o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer2).f48361b.f48375b, RectangleShapeKt.f8913a), paddingValues);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                    Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                    ComposeUiNode.b0.getClass();
                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function0);
                    } else {
                        composer2.o();
                    }
                    Function2 function2 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer2, measurePolicyD, function2);
                    Function2 function3 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer2, persistentCompositionLocalMapN, function3);
                    Integer numValueOf = Integer.valueOf(iHashCode);
                    Function2 function4 = ComposeUiNode.Companion.g;
                    Updater.c(composer2, numValueOf, function4);
                    Function1 function1 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer2, function1);
                    Function2 function5 = ComposeUiNode.Companion.d;
                    Modifier modifierK = PaddingKt.k(n00.c(composer2, modifierC, function5, "TransferCertificateConfirmationScreen$lambda$1", 1.0f), LVAppDesignKitTheme.l(composer2).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                    BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, composer2, 0);
                    int iHashCode2 = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierK);
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function0);
                    } else {
                        composer2.o();
                    }
                    Updater.c(composer2, columnMeasurePolicyA, function2);
                    Updater.c(composer2, persistentCompositionLocalMapN2, function3);
                    cj.s(iHashCode2, composer2, function4, composer2, function1);
                    TextKt.c(StringResources_androidKt.c(composer2, R.string.certificate_transfer_step3_title), PaddingKt.m(a.f(composer2, modifierC2, function5, "TransferCertificateConfirmationScreen$lambda$1"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48416e, 5), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer2).f48426f, composer2, 0, 0, 131068);
                    Modifier modifierI = PaddingKt.i(BackgroundKt.b(tr.d("TransferCertificateConfirmationScreen$lambda$1", 1.0f), LVAppDesignKitTheme.c(composer2).f48361b.f48374a, LVAppDesignKitTheme.j(composer2).f48410b), LVAppDesignKitTheme.l(composer2).f48416e);
                    ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, composer2, 0);
                    int iHashCode3 = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer2.n();
                    Modifier modifierC3 = ComposedModifierKt.c(composer2, modifierI);
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function0);
                    } else {
                        composer2.o();
                    }
                    Updater.c(composer2, columnMeasurePolicyA2, function2);
                    Updater.c(composer2, persistentCompositionLocalMapN3, function3);
                    cj.s(iHashCode3, composer2, function4, composer2, function1);
                    Updater.c(composer2, modifierC3, function5);
                    TransferCertificateConfirmationComposableKt.a(0, composer2, str2);
                    DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(composer2).f48361b.q, composer2, 0, 3);
                    TransferCertificateConfirmationComposableKt.c(str2, str, composer2, 0);
                    composer2.r();
                    composer2.r();
                    composer2.r();
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
        }
    }
}
