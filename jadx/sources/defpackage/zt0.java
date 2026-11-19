package defpackage;

import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.text.TextFieldScrollerPosition;
import androidx.compose.material3.SheetState;
import androidx.compose.material3.SwipeToDismissBoxState;
import androidx.compose.material3.SwipeToDismissBoxValue;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.text.EmojiSupportMatch;
import androidx.compose.ui.text.ParagraphStyle;
import androidx.compose.ui.text.PlatformParagraphStyle;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.SaversKt$NonNullValueClassSaver$1;
import androidx.compose.ui.text.Savers_androidKt;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLinkStyles;
import androidx.compose.ui.text.UrlAnnotation;
import androidx.compose.ui.text.VerbatimTtsAnnotation;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.Hyphens;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.TextUnit;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.AlphaKt;
import com.vuitton.android.designkit.ui.theme.GradientKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.animation.Nav3TransitionsKt;
import com.vuitton.android.presentation.screen.authentication.social.SocialRegisterViewModelImpl;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldReadOnlyUiModel;
import com.vuitton.android.presentation.screen.search.components.SuggestionCarouselComposableKt;
import com.vuitton.android.presentation.screen.services.components.ServicesScreenKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializersCacheKt;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.internal.SerializerCache;
import kotlinx.serialization.modules.SerializersModuleKt;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zt0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81716b;

    public /* synthetic */ zt0(SocialRegisterViewModelImpl socialRegisterViewModelImpl) {
        this.f81716b = 21;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f81716b) {
            case 0:
                SaverKt$Saver$1 saverKt$Saver$1 = SaversKt.f10504a;
                return Integer.valueOf(((LineHeightStyle.Mode) obj2).f10954a);
            case 1:
                SaverKt$Saver$1 saverKt$Saver$2 = SaversKt.f10504a;
                return ((VerbatimTtsAnnotation) obj2).f10573a;
            case 2:
                SaverScope saverScope = (SaverScope) obj;
                ParagraphStyle paragraphStyle = (ParagraphStyle) obj2;
                SaverKt$Saver$1 saverKt$Saver$3 = SaversKt.f10504a;
                Object objA = SaversKt.a(new TextAlign(paragraphStyle.f10479a), SaversKt.s, saverScope);
                Object objA2 = SaversKt.a(new TextDirection(paragraphStyle.f10480b), SaversKt.t, saverScope);
                Object objA3 = SaversKt.a(new TextUnit(paragraphStyle.f10481c), SaversKt.x, saverScope);
                TextIndent textIndent = paragraphStyle.d;
                TextIndent.Companion companion = TextIndent.f10978c;
                Object objA4 = SaversKt.a(textIndent, SaversKt.m, saverScope);
                PlatformParagraphStyle platformParagraphStyle = paragraphStyle.f10482e;
                PlatformParagraphStyle.Companion companion2 = PlatformParagraphStyle.f10497c;
                Object objA5 = SaversKt.a(platformParagraphStyle, Savers_androidKt.f10518a, saverScope);
                LineHeightStyle lineHeightStyle = paragraphStyle.f10483f;
                LineHeightStyle.Companion companion3 = LineHeightStyle.d;
                Object objA6 = SaversKt.a(lineHeightStyle, SaversKt.C, saverScope);
                Object objA7 = SaversKt.a(new LineBreak(paragraphStyle.g), Savers_androidKt.f10520c, saverScope);
                Object objA8 = SaversKt.a(new Hyphens(paragraphStyle.f10484h), SaversKt.u, saverScope);
                TextMotion textMotion = paragraphStyle.f10485i;
                TextMotion.Companion companion4 = TextMotion.f10981c;
                return CollectionsKt.l(objA, objA2, objA3, objA4, objA5, objA6, objA7, objA8, SaversKt.a(textMotion, Savers_androidKt.d, saverScope));
            case 3:
                SaverKt$Saver$1 saverKt$Saver$4 = SaversKt.f10504a;
                return ((UrlAnnotation) obj2).f10572a;
            case 4:
                SaverScope saverScope2 = (SaverScope) obj;
                SpanStyle spanStyle = (SpanStyle) obj2;
                SaverKt$Saver$1 saverKt$Saver$5 = SaversKt.f10504a;
                Color color = new Color(spanStyle.f10522a.getF10927a());
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$1 = SaversKt.r;
                Object objA9 = SaversKt.a(color, saversKt$NonNullValueClassSaver$1, saverScope2);
                TextUnit textUnit = new TextUnit(spanStyle.fontSize);
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$2 = SaversKt.x;
                Object objA10 = SaversKt.a(textUnit, saversKt$NonNullValueClassSaver$2, saverScope2);
                FontWeight fontWeight = spanStyle.fontWeight;
                FontWeight.Companion companion5 = FontWeight.f10727c;
                Object objA11 = SaversKt.a(fontWeight, SaversKt.n, saverScope2);
                FontStyle fontStyle = spanStyle.fontStyle;
                FontStyle.Companion companion6 = FontStyle.f10715b;
                Object objA12 = SaversKt.a(fontStyle, SaversKt.v, saverScope2);
                FontSynthesis fontSynthesis = spanStyle.fontSynthesis;
                FontSynthesis.Companion companion7 = FontSynthesis.f10718b;
                Object objA13 = SaversKt.a(fontSynthesis, SaversKt.w, saverScope2);
                String str = spanStyle.fontFeatureSettings;
                Object objA14 = SaversKt.a(new TextUnit(spanStyle.letterSpacing), saversKt$NonNullValueClassSaver$2, saverScope2);
                BaselineShift baselineShift = spanStyle.baselineShift;
                BaselineShift.Companion companion8 = BaselineShift.f10922b;
                Object objA15 = SaversKt.a(baselineShift, SaversKt.o, saverScope2);
                TextGeometricTransform textGeometricTransform = spanStyle.textGeometricTransform;
                TextGeometricTransform.Companion companion9 = TextGeometricTransform.f10975c;
                Object objA16 = SaversKt.a(textGeometricTransform, SaversKt.l, saverScope2);
                LocaleList localeList = spanStyle.localeList;
                LocaleList.Companion companion10 = LocaleList.d;
                Object objA17 = SaversKt.a(localeList, SaversKt.A, saverScope2);
                Object objA18 = SaversKt.a(new Color(spanStyle.l), saversKt$NonNullValueClassSaver$1, saverScope2);
                TextDecoration textDecoration = spanStyle.background;
                TextDecoration.Companion companion11 = TextDecoration.f10965b;
                Object objA19 = SaversKt.a(textDecoration, SaversKt.f10512k, saverScope2);
                Shadow shadow = spanStyle.shadow;
                Shadow.Companion companion12 = Shadow.d;
                return CollectionsKt.l(objA9, objA10, objA11, objA12, objA13, -1, str, objA14, objA15, objA16, objA17, objA18, objA19, SaversKt.a(shadow, SaversKt.q, saverScope2));
            case 5:
                SaverScope saverScope3 = (SaverScope) obj;
                TextLinkStyles textLinkStyles = (TextLinkStyles) obj2;
                SaverKt$Saver$1 saverKt$Saver$6 = SaversKt.f10504a;
                SpanStyle spanStyle2 = textLinkStyles.f10557a;
                SaverKt$Saver$1 saverKt$Saver$7 = SaversKt.f10510i;
                return CollectionsKt.l(SaversKt.a(spanStyle2, saverKt$Saver$7, saverScope3), SaversKt.a(textLinkStyles.f10558b, saverKt$Saver$7, saverScope3), SaversKt.a(textLinkStyles.f10559c, saverKt$Saver$7, saverScope3), SaversKt.a(textLinkStyles.d, saverKt$Saver$7, saverScope3));
            case 6:
                PlatformParagraphStyle platformParagraphStyle2 = (PlatformParagraphStyle) obj2;
                Boolean boolValueOf = Boolean.valueOf(platformParagraphStyle2.f10498a);
                SaverKt$Saver$1 saverKt$Saver$8 = SaversKt.f10504a;
                return CollectionsKt.l(boolValueOf, SaversKt.a(new EmojiSupportMatch(platformParagraphStyle2.f10499b), Savers_androidKt.f10519b, (SaverScope) obj));
            case 7:
                return Integer.valueOf(((EmojiSupportMatch) obj2).f10452a);
            case 8:
                return Integer.valueOf(((LineBreak) obj2).f10933a);
            case 9:
                TextMotion textMotion2 = (TextMotion) obj2;
                return CollectionsKt.l(SaversKt.a(new TextMotion.Linearity(textMotion2.f10983a), Savers_androidKt.f10521e, (SaverScope) obj), Boolean.valueOf(textMotion2.f10984b));
            case 10:
                return Integer.valueOf(((TextMotion.Linearity) obj2).f10988a);
            case 11:
                return Integer.valueOf(((SnapshotMutableIntStateImpl) ((ScrollState) obj2).f4290a).f());
            case 12:
                AnimatedContentTransitionScope animatedContentTransitionScope = (AnimatedContentTransitionScope) obj;
                ((Integer) obj2).getClass();
                animatedContentTransitionScope.getClass();
                return Nav3TransitionsKt.b(animatedContentTransitionScope);
            case 13:
                return new Pair(obj, obj2);
            case 14:
                KClass kClass = (KClass) obj;
                List list = (List) obj2;
                SerializerCache serializerCache = SerializersCacheKt.f75525a;
                kClass.getClass();
                list.getClass();
                ArrayList arrayListF = SerializersKt.f(SerializersModuleKt.f75847a, list, true);
                arrayListF.getClass();
                return SerializersKt.a(kClass, arrayListF, new db(list, 12));
            case 15:
                KClass kClass2 = (KClass) obj;
                List list2 = (List) obj2;
                SerializerCache serializerCache2 = SerializersCacheKt.f75525a;
                kClass2.getClass();
                list2.getClass();
                ArrayList arrayListF2 = SerializersKt.f(SerializersModuleKt.f75847a, list2, true);
                arrayListF2.getClass();
                KSerializer kSerializerA = SerializersKt.a(kClass2, arrayListF2, new db(list2, 13));
                if (kSerializerA != null) {
                    return BuiltinSerializersKt.d(kSerializerA);
                }
                return null;
            case 16:
                ((Integer) obj2).getClass();
                ServicesScreenKt.d((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 17:
                ((Integer) obj2).getClass();
                ServicesScreenKt.c((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 18:
                return ((SheetState) obj2).c();
            case 19:
                Composer composer = (Composer) obj;
                ((Integer) obj2).getClass();
                composer.L(1950723981);
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Modifier modifierA = GradientKt.a(new DTFunctionNameModifier("SlideShowCard$lambda$0$1$0$0$2$2"), GradientKt.f48344c);
                composer.F();
                return modifierA;
            case 20:
                Composer composer2 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer2.L(-1201025036);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                Modifier modifierA2 = GradientKt.a(new DTFunctionNameModifier("SlideShowCard$lambda$0$1$0$0$2$3"), AlphaKt.f48329c);
                composer2.F();
                return modifierA2;
            case 21:
                FormFieldGenericUiModel formFieldGenericUiModel = (FormFieldGenericUiModel) obj2;
                ((FormUiModel) obj).getClass();
                formFieldGenericUiModel.getClass();
                if (!(formFieldGenericUiModel instanceof FormFieldUiModel)) {
                    return formFieldGenericUiModel;
                }
                FormFieldUiModel formFieldUiModel = (FormFieldUiModel) formFieldGenericUiModel;
                return SocialRegisterViewModelImpl.WhenMappings.f54096a[formFieldUiModel.d.ordinal()] == 1 ? FormFieldUiModel.c(formFieldUiModel, false, null, new FormFieldReadOnlyUiModel(formFieldUiModel.i(false), false), null, null, null, null, false, false, 1018) : formFieldGenericUiModel;
            case 22:
                Composer composer3 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer3.L(-875235359);
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                Modifier modifierB = BackgroundKt.b(new DTFunctionNameModifier("StoryFooter$lambda$0"), Color.b(LVAppDesignKitTheme.h(composer3).f48403c, LVAppDesignKitTheme.c(composer3).f48361b.u), RectangleShapeKt.f8913a);
                composer3.F();
                return modifierB;
            case 23:
                ((Integer) obj2).getClass();
                SuggestionCarouselComposableKt.e((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 24:
                return (SwipeToDismissBoxValue) ((SnapshotMutableStateImpl) ((SwipeToDismissBoxState) obj2).f7346a.g).getF10755b();
            case 25:
                return Integer.valueOf(((IntrinsicMeasurable) obj).M(((Integer) obj2).intValue()));
            case 26:
                return Integer.valueOf(((IntrinsicMeasurable) obj).S(((Integer) obj2).intValue()));
            case 27:
                return Integer.valueOf(((IntrinsicMeasurable) obj).H(((Integer) obj2).intValue()));
            case 28:
                return Integer.valueOf(((IntrinsicMeasurable) obj).l(((Integer) obj2).intValue()));
            default:
                TextFieldScrollerPosition textFieldScrollerPosition = (TextFieldScrollerPosition) obj2;
                return CollectionsKt.P(Float.valueOf(((SnapshotMutableFloatStateImpl) textFieldScrollerPosition.f6000a).a()), Boolean.valueOf(((Orientation) ((SnapshotMutableStateImpl) textFieldScrollerPosition.f6004f).getF10755b()) == Orientation.Vertical));
        }
    }

    public /* synthetic */ zt0(int i2, int i3) {
        this.f81716b = i3;
    }

    public /* synthetic */ zt0(int i2) {
        this.f81716b = i2;
    }
}
