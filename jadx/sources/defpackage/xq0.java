package defpackage;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.SaversKt$NonNullValueClassSaver$1;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.Hyphens;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.repairs.components.RepairConfirmAddressLoadingScreenKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class xq0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81179b;

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f81179b) {
            case 0:
                Composer composer = (Composer) obj;
                ((Integer) obj2).getClass();
                composer.L(323828157);
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("QuickAccessFiltersCategory$lambda$1$0");
                Dp.Companion companion = Dp.f11004c;
                Modifier modifierK = PaddingKt.k(dTFunctionNameModifier, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                composer.F();
                return modifierK;
            case 1:
                Composer composer2 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer2.L(-2028131634);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("QuickAccessFiltersContainerContent$lambda$1"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                composer2.F();
                return modifierM;
            case 2:
                Composer composer3 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer3.L(-5396411);
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                Modifier modifierC = OffsetKt.c(new DTFunctionNameModifier("QuickAccessFiltersEntryPoint_AlbwjTQ$lambda$19$1$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).g, 1);
                composer3.F();
                return modifierC;
            case 3:
                ((Integer) obj2).getClass();
                RepairConfirmAddressLoadingScreenKt.a((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 4:
                return Integer.valueOf(((Integer) obj).intValue() + 1);
            case 5:
                return obj2;
            case 6:
                AnnotatedString annotatedString = (AnnotatedString) obj2;
                SaverKt$Saver$1 saverKt$Saver$1 = SaversKt.f10504a;
                return CollectionsKt.l(annotatedString.f10420c, SaversKt.a(annotatedString.f10419b, SaversKt.f10505b, (SaverScope) obj));
            case 7:
                SaverKt$Saver$1 saverKt$Saver$2 = SaversKt.f10504a;
                return Integer.valueOf(((TextDecoration) obj2).f10968a);
            case 8:
                TextGeometricTransform textGeometricTransform = (TextGeometricTransform) obj2;
                SaverKt$Saver$1 saverKt$Saver$3 = SaversKt.f10504a;
                return CollectionsKt.l(Float.valueOf(textGeometricTransform.f10976a), Float.valueOf(textGeometricTransform.f10977b));
            case 9:
                SaverScope saverScope = (SaverScope) obj;
                TextIndent textIndent = (TextIndent) obj2;
                SaverKt$Saver$1 saverKt$Saver$4 = SaversKt.f10504a;
                TextUnit textUnit = new TextUnit(textIndent.f10979a);
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$1 = SaversKt.x;
                return CollectionsKt.l(SaversKt.a(textUnit, saversKt$NonNullValueClassSaver$1, saverScope), SaversKt.a(new TextUnit(textIndent.f10980b), saversKt$NonNullValueClassSaver$1, saverScope));
            case 10:
                SaverKt$Saver$1 saverKt$Saver$5 = SaversKt.f10504a;
                return Integer.valueOf(((FontWeight) obj2).f10734b);
            case 11:
                LinkAnnotation.Url url = (LinkAnnotation.Url) obj2;
                SaverKt$Saver$1 saverKt$Saver$6 = SaversKt.f10504a;
                return CollectionsKt.l(url.f10458a, SaversKt.a(url.f10459b, SaversKt.f10511j, (SaverScope) obj));
            case 12:
                SaverKt$Saver$1 saverKt$Saver$7 = SaversKt.f10504a;
                return Float.valueOf(((BaselineShift) obj2).f10924a);
            case 13:
                SaverScope saverScope2 = (SaverScope) obj;
                List list = (List) obj2;
                SaverKt$Saver$1 saverKt$Saver$8 = SaversKt.f10504a;
                ArrayList arrayList = new ArrayList(list.size());
                int size = list.size();
                for (int i2 = 0; i2 < size; i2++) {
                    arrayList.add(SaversKt.a((AnnotatedString.Range) list.get(i2), SaversKt.f10506c, saverScope2));
                }
                return arrayList;
            case 14:
                TextRange textRange = (TextRange) obj2;
                SaverKt$Saver$1 saverKt$Saver$9 = SaversKt.f10504a;
                return CollectionsKt.l(Integer.valueOf((int) (textRange.f10566a >> 32)), Integer.valueOf((int) (textRange.f10566a & BodyPartID.bodyIdMax)));
            case 15:
                SaverScope saverScope3 = (SaverScope) obj;
                Shadow shadow = (Shadow) obj2;
                SaverKt$Saver$1 saverKt$Saver$10 = SaversKt.f10504a;
                return CollectionsKt.l(SaversKt.a(new Color(shadow.f8926a), SaversKt.r, saverScope3), SaversKt.a(new Offset(shadow.f8927b), SaversKt.z, saverScope3), Float.valueOf(shadow.f8928c));
            case 16:
                SaverKt$Saver$1 saverKt$Saver$11 = SaversKt.f10504a;
                return Integer.valueOf(((TextAlign) obj2).f10964a);
            case 17:
                SaverKt$Saver$1 saverKt$Saver$12 = SaversKt.f10504a;
                return Integer.valueOf(((TextDirection) obj2).f10973a);
            case 18:
                SaverKt$Saver$1 saverKt$Saver$13 = SaversKt.f10504a;
                return Integer.valueOf(((Hyphens) obj2).f10930a);
            case 19:
                SaverKt$Saver$1 saverKt$Saver$14 = SaversKt.f10504a;
                return Integer.valueOf(((FontStyle) obj2).f10717a);
            case 20:
                SaverKt$Saver$1 saverKt$Saver$15 = SaversKt.f10504a;
                return Integer.valueOf(((FontSynthesis) obj2).f10721a);
            case 21:
                SaverScope saverScope4 = (SaverScope) obj;
                TextUnit textUnit2 = (TextUnit) obj2;
                SaverKt$Saver$1 saverKt$Saver$16 = SaversKt.f10504a;
                TextUnit.f11023b.getClass();
                return textUnit2 != null ? TextUnit.a(textUnit2.f11025a, TextUnit.d) : false ? Boolean.FALSE : CollectionsKt.l(Float.valueOf(TextUnit.c(textUnit2.f11025a)), SaversKt.a(new TextUnitType(TextUnit.b(textUnit2.f11025a)), SaversKt.y, saverScope4));
            case 22:
                LinkAnnotation.Clickable clickable = (LinkAnnotation.Clickable) obj2;
                SaverKt$Saver$1 saverKt$Saver$17 = SaversKt.f10504a;
                return CollectionsKt.l(clickable.f10455a, SaversKt.a(clickable.f10456b, SaversKt.f10511j, (SaverScope) obj));
            case 23:
                SaverKt$Saver$1 saverKt$Saver$18 = SaversKt.f10504a;
                long j2 = ((TextUnitType) obj2).f11028a;
                TextUnitType.f11026b.getClass();
                if (TextUnitType.a(j2, TextUnitType.d)) {
                    return 0;
                }
                if (TextUnitType.a(j2, TextUnitType.f11027c)) {
                    return 1;
                }
                return Boolean.FALSE;
            case 24:
                Offset offset = (Offset) obj2;
                SaverKt$Saver$1 saverKt$Saver$19 = SaversKt.f10504a;
                Offset.f8806b.getClass();
                return offset != null ? Offset.c(offset.f8808a, Offset.d) : false ? Boolean.FALSE : CollectionsKt.l(Float.valueOf(Float.intBitsToFloat((int) (offset.f8808a >> 32))), Float.valueOf(Float.intBitsToFloat((int) (offset.f8808a & BodyPartID.bodyIdMax))));
            case 25:
                SaverScope saverScope5 = (SaverScope) obj;
                SaverKt$Saver$1 saverKt$Saver$20 = SaversKt.f10504a;
                List list2 = ((LocaleList) obj2).f10873b;
                ArrayList arrayList2 = new ArrayList(list2.size());
                int size2 = list2.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    Locale locale = (Locale) list2.get(i3);
                    Locale.Companion companion2 = Locale.f10870b;
                    arrayList2.add(SaversKt.a(locale, SaversKt.B, saverScope5));
                }
                return arrayList2;
            case 26:
                SaverKt$Saver$1 saverKt$Saver$21 = SaversKt.f10504a;
                return ((Locale) obj2).f10871a.toLanguageTag();
            case 27:
                SaverScope saverScope6 = (SaverScope) obj;
                LineHeightStyle lineHeightStyle = (LineHeightStyle) obj2;
                SaverKt$Saver$1 saverKt$Saver$22 = SaversKt.f10504a;
                return CollectionsKt.l(SaversKt.a(new LineHeightStyle.Alignment(lineHeightStyle.f10945a), SaversKt.D, saverScope6), SaversKt.a(new LineHeightStyle.Trim(lineHeightStyle.f10946b), SaversKt.E, saverScope6), SaversKt.a(new LineHeightStyle.Mode(lineHeightStyle.f10947c), SaversKt.F, saverScope6));
            case 28:
                SaverKt$Saver$1 saverKt$Saver$23 = SaversKt.f10504a;
                return Float.valueOf(((LineHeightStyle.Alignment) obj2).f10951a);
            default:
                SaverKt$Saver$1 saverKt$Saver$24 = SaversKt.f10504a;
                return Integer.valueOf(((LineHeightStyle.Trim) obj2).f10958a);
        }
    }

    public /* synthetic */ xq0(int i2, byte b2) {
        this.f81179b = i2;
    }
}
