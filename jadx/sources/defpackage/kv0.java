package defpackage;

import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.internal.TextFieldImplKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.LinkInteractionListener;
import androidx.compose.ui.text.PlatformSpanStyle;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLinkStyles;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.FloatingTopBarType;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVFloatingTopBarKt;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.options.settings.components.SettingsComposableKt;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightScreenKt;
import com.vuitton.android.presentation.screen.storemode.components.StoreModeInvalidKt;
import com.vuitton.android.presentation.screen.thankyou.components.ComposableSingletons$ThankYouScreenKt;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouScreenKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.internal.Constants;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class kv0 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75877b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f75878c;

    public /* synthetic */ kv0(Function0 function0, int i2) {
        this.f75877b = i2;
        this.f75878c = function0;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2 = this.f75877b;
        Object objI = null;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Function0 function0 = this.f75878c;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer.p(1 & iIntValue, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    SettingsComposableKt.a(function0, composer, 0);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                FormFieldGenericUiModel formFieldGenericUiModel = (FormFieldGenericUiModel) obj;
                Composer composer2 = (Composer) obj2;
                ((Integer) obj3).getClass();
                formFieldGenericUiModel.getClass();
                composer2.L(-495892276);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                if (formFieldGenericUiModel.getD() == FormSectionTypeUiModel.ALL_MARKETING_COMMUNICATIONS_CONSENTS) {
                    composer2.L(1560898947);
                    String strC = StringResources_androidKt.c(composer2, R.string.mylv_settings_gcm_description_2);
                    String strB = StringResources_androidKt.b(R.string.mylv_privacy_policy_consent, new Object[]{strC}, composer2);
                    int iV = StringsKt.v(strB, strC, 0, false, 6);
                    if (iV < 0) {
                        iV = 0;
                    }
                    int length = strC.length() + iV;
                    AnnotatedString.Builder builder = new AnnotatedString.Builder(0, 1, null);
                    builder.e(strB);
                    TextDecoration.f10965b.getClass();
                    builder.c(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61439, (DefaultConstructorMarker) null), iV, length);
                    TextLinkStyles textLinkStyles = new TextLinkStyles(new SpanStyle(LVAppDesignKitTheme.c(composer2).f48361b.m, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, Constants.CallType.HOST, (DefaultConstructorMarker) null), null, null, null, 14, null);
                    boolean zK = composer2.K(function0);
                    Object objX = composer2.x();
                    if (zK || objX == composer$Companion$Empty$1) {
                        objX = new c3(function0, 4);
                        composer2.q(objX);
                    }
                    builder.a(new LinkAnnotation.Clickable("privacy_policy_link", textLinkStyles, (LinkInteractionListener) objX), iV, length);
                    objI = builder.i();
                    composer2.F();
                } else {
                    composer2.L(1562123850);
                    composer2.F();
                }
                composer2.F();
                return objI;
            case 2:
                FormFieldGenericUiModel formFieldGenericUiModel2 = (FormFieldGenericUiModel) obj;
                Composer composer3 = (Composer) obj2;
                ((Integer) obj3).getClass();
                formFieldGenericUiModel2.getClass();
                composer3.L(1505861982);
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                objI = formFieldGenericUiModel2.getD() == FormSectionTypeUiModel.ALL_MARKETING_COMMUNICATIONS_CONSENTS ? function0 : null;
                composer3.F();
                return objI;
            case 3:
                Composer composer4 = (Composer) obj2;
                ((Integer) obj3).getClass();
                float f2 = SpotlightScreenKt.f64602a;
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                LVFloatingTopBarKt.a(null, FloatingTopBarType.Close, null, null, StringResources_androidKt.c(composer4, R.string.alt_close), this.f75878c, null, null, composer4, 48, 205);
                return Unit.f71739a;
            case 4:
                Composer composer5 = (Composer) obj2;
                ((Integer) obj3).getClass();
                float f3 = SpotlightScreenKt.f64602a;
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                LVFloatingTopBarKt.a(null, FloatingTopBarType.Back, null, null, StringResources_androidKt.c(composer5, R.string.alt_back), this.f75878c, null, null, composer5, 48, 205);
                return Unit.f71739a;
            case 5:
                MeasureScope measureScope = (MeasureScope) obj;
                Measurable measurable = (Measurable) obj2;
                Constraints constraints = (Constraints) obj3;
                float f4 = TextFieldImplKt.f7647a;
                float f5 = ((Dp) function0.mo47invoke()).f11006b;
                long j2 = constraints.f10999a;
                Dp.f11004c.getClass();
                Placeable placeableT = measurable.T(Constraints.a(constraints.f10999a, 0, 0, ConstraintsKt.f(Dp.b(f5, Dp.f11005e) ? 0 : measureScope.B0(f5), j2), 0, 11));
                return measureScope.V0(placeableT.f9548b, placeableT.f9549c, MapsKt.c(), new a2(placeableT, 18));
            case 6:
                ((Integer) obj3).getClass();
                float f6 = ThankYouScreenKt.f65243a;
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                Modifier modifierG = n00.g("ThankYouScreen$lambda$11$1$0", "thankYou_closeButton_button");
                ComposableSingletons$ThankYouScreenKt.f65236a.getClass();
                IconButtonKt.a(this.f75878c, modifierG, false, null, null, ComposableSingletons$ThankYouScreenKt.f65237b, (Composer) obj2, 1572864, 60);
                return Unit.f71739a;
            default:
                Composer composer6 = (Composer) obj2;
                ((Integer) obj3).getClass();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                Modifier modifierO = new DTFunctionNameModifier("WishlistComposable$lambda$16").o(SizeKt.f5052c);
                Color.f8866b.getClass();
                Modifier modifierB = BackgroundKt.b(modifierO, Color.b(0.85f, Color.f8867c), RectangleShapeKt.f8913a);
                Object objX2 = composer6.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new r61(2);
                    composer6.q(objX2);
                }
                StoreModeInvalidKt.a(0, composer6, ModifierExtKt.c(modifierB, false, null, null, (Function0) objX2, 27), function0);
                return Unit.f71739a;
        }
    }
}
