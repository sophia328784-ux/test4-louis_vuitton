package defpackage;

import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
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
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.aicompanion.components.chat.AICompanionPromptSuggestionsKt;
import com.vuitton.android.presentation.screen.search.models.AutocompleteDisplayUiModel;
import com.vuitton.android.presentation.screen.search.models.SearchMatchUiModel;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class m1 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76143b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f76144c;
    public final /* synthetic */ List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function1 f76145e;

    public /* synthetic */ m1(Modifier modifier, List list, Function1 function1) {
        this.f76144c = modifier;
        this.d = list;
        this.f76145e = function1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r4v8, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v3 */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f76143b;
        Function1 function1 = this.f76145e;
        List list = this.d;
        Modifier modifierE = this.f76144c;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                AICompanionPromptSuggestionsKt.b(modifierE, list, function1, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            default:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                String str = "AutocompleteMatchComposable$lambda$0";
                if (modifierE != null) {
                    modifierE = a.e(modifierE, "AutocompleteMatchComposable$lambda$0");
                }
                int i3 = 2;
                ?? r9 = 0;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    boolean zY = composer.y(list);
                    Object objX = composer.x();
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (zY || objX == composer$Companion$Empty$1) {
                        objX = new ud(list, 17);
                        composer.q(objX);
                    }
                    Modifier modifierB = SemanticsModifierKt.b(modifierE, false, (Function1) objX);
                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer, 0);
                    int iHashCode = Long.hashCode(composer.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
                    Modifier modifierC = ComposedModifierKt.c(composer, modifierB);
                    ComposeUiNode.b0.getClass();
                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                    DefaultConstructorMarker defaultConstructorMarker = null;
                    if (composer.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer.B();
                    if (composer.getS()) {
                        composer.C(function0);
                    } else {
                        composer.o();
                    }
                    Updater.c(composer, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer, modifierC, ComposeUiNode.Companion.d);
                    composer.L(1793861941);
                    int i4 = 0;
                    for (Object obj3 : list) {
                        int i5 = i4 + 1;
                        if (i4 < 0) {
                            ?? r4 = defaultConstructorMarker;
                            CollectionsKt.t0();
                            throw r4;
                        }
                        SearchMatchUiModel searchMatchUiModel = (SearchMatchUiModel) obj3;
                        Modifier modifierD = tr.d(str, 1.0f);
                        boolean zK = composer.K(function1) | composer.y(searchMatchUiModel);
                        Object objX2 = composer.x();
                        if (zK || objX2 == composer$Companion$Empty$1) {
                            objX2 = new p01(function1, searchMatchUiModel, 8);
                            composer.q(objX2);
                        }
                        Modifier modifierK = PaddingKt.k(ClickableKt.d(modifierD, false, null, null, (Function0) objX2, 15), LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, i3);
                        boolean zD = composer.d(i4);
                        Object objX3 = composer.x();
                        if (zD || objX3 == composer$Companion$Empty$1) {
                            objX3 = new hb(i4, 24);
                            composer.q(objX3);
                        }
                        Modifier modifierB2 = SemanticsModifierKt.b(modifierK, r9, (Function1) objX3);
                        Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                        Alignment.f8582a.getClass();
                        RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, composer, r9);
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        int iHashCode2 = Long.hashCode(composer.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer.n();
                        Modifier modifierC2 = ComposedModifierKt.c(composer, modifierB2);
                        ComposeUiNode.b0.getClass();
                        Function0 function2 = ComposeUiNode.Companion.f9641b;
                        if (composer.getF7976a() == null) {
                            ?? r5 = defaultConstructorMarker;
                            ComposablesKt.b();
                            throw r5;
                        }
                        composer.B();
                        if (composer.getS()) {
                            composer.C(function2);
                        } else {
                            composer.o();
                        }
                        Updater.c(composer, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer, persistentCompositionLocalMapN2, ComposeUiNode.Companion.f9643e);
                        Updater.c(composer, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                        Updater.b(composer, ComposeUiNode.Companion.f9645h);
                        Modifier modifierK2 = PaddingKt.k(a.f(composer, modifierC2, ComposeUiNode.Companion.d, str), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48415c, 1);
                        composer.L(737688502);
                        AnnotatedString.Builder builder = new AnnotatedString.Builder(r9, 1, defaultConstructorMarker);
                        composer.L(737690677);
                        for (AutocompleteDisplayUiModel autocompleteDisplayUiModel : searchMatchUiModel.f64256b) {
                            boolean z = autocompleteDisplayUiModel.f64240b;
                            String str2 = autocompleteDisplayUiModel.f64239a;
                            if (z) {
                                composer.L(-256468860);
                                FontWeight.f10727c.getClass();
                                int iH = builder.h(new SpanStyle(LVAppDesignKitTheme.c(composer).f48361b.m, 0L, FontWeight.f10728e, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 65530, (DefaultConstructorMarker) null));
                                try {
                                    builder.e(str2);
                                    builder.f(iH);
                                    composer.F();
                                } catch (Throwable th) {
                                    builder.f(iH);
                                    throw th;
                                }
                            } else {
                                composer.L(-256578786);
                                composer.F();
                                builder.e(str2);
                            }
                        }
                        composer.F();
                        AnnotatedString annotatedStringI = builder.i();
                        composer.F();
                        Composer composer2 = composer;
                        TextKt.d(annotatedStringI, modifierK2, LVAppDesignKitTheme.c(composer).f48361b.l, 0L, 0L, null, 0L, 0, false, 0, 0, null, null, LVAppDesignKitTheme.n(composer).l, composer2, 0, 0, 262136);
                        composer2.r();
                        str = str;
                        defaultConstructorMarker = defaultConstructorMarker;
                        composer = composer2;
                        i4 = i5;
                        i3 = i3;
                        composer$Companion$Empty$1 = composer$Companion$Empty$1;
                        r9 = r9 == true ? 1 : 0;
                    }
                    Composer composer3 = composer;
                    composer3.F();
                    composer3.r();
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                } else {
                    composer.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ m1(Modifier modifier, List list, Function1 function1, int i2) {
        this.f76144c = modifier;
        this.d = list;
        this.f76145e = function1;
    }
}
