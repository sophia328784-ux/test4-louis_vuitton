package defpackage;

import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.foundation.text.selection.SelectionMagnifierKt;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.EmojiSupportMatch;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.NonNullValueClassSaver;
import androidx.compose.ui.text.ParagraphStyle;
import androidx.compose.ui.text.PlatformParagraphStyle;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.SaversKt$NonNullValueClassSaver$1;
import androidx.compose.ui.text.Savers_androidKt;
import androidx.compose.ui.text.TextLinkStyles;
import androidx.compose.ui.text.UrlAnnotation;
import androidx.compose.ui.text.VerbatimTtsAnnotation;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.style.Hyphens;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.TextUnit;
import com.batch.android.s.b;
import com.dynamicyield.sdk.wrapper.core.enums.ChoiceType;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.SemanticSearchVariation;
import com.vuitton.android.presentation.compose.animation.Nav3TransitionsKt;
import com.vuitton.android.presentation.extensions.SemanticsPropertyReceiverExtKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.SearchBottomBarKt;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.KProperty;
import kotlin.sequences.Sequence;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.SerializersCacheKt;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.EnumSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.SerializerCache;
import kotlinx.serialization.internal.StringSerializer;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class yt0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81439b;

    public /* synthetic */ yt0(int i2) {
        this.f81439b = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        boolean z = false;
        textMotion = null;
        TextMotion textMotion = null;
        switch (this.f81439b) {
            case 0:
                SaverKt$Saver$1 saverKt$Saver$1 = SaversKt.f10504a;
                obj.getClass();
                return new Locale((String) obj);
            case 1:
                SaverKt$Saver$1 saverKt$Saver$2 = SaversKt.f10504a;
                obj.getClass();
                List list = (List) obj;
                Object obj2 = list.get(0);
                String str = obj2 != null ? (String) obj2 : null;
                str.getClass();
                Object obj3 = list.get(1);
                SaverKt$Saver$1 saverKt$Saver$3 = SaversKt.f10511j;
                return new LinkAnnotation.Clickable(str, ((!Intrinsics.c(obj3, Boolean.FALSE) || (saverKt$Saver$3 instanceof NonNullValueClassSaver)) && obj3 != null) ? (TextLinkStyles) saverKt$Saver$3.f8439b.invoke(obj3) : null, null);
            case 2:
                SaverKt$Saver$1 saverKt$Saver$4 = SaversKt.f10504a;
                obj.getClass();
                List list2 = (List) obj;
                Object obj4 = list2.get(0);
                LineHeightStyle.Alignment.Companion companion = LineHeightStyle.Alignment.f10948b;
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$1 = SaversKt.D;
                Boolean bool = Boolean.FALSE;
                Intrinsics.c(obj4, bool);
                LineHeightStyle.Alignment alignment = obj4 != null ? (LineHeightStyle.Alignment) saversKt$NonNullValueClassSaver$1.f10516b.invoke(obj4) : null;
                alignment.getClass();
                float f2 = alignment.f10951a;
                Object obj5 = list2.get(1);
                LineHeightStyle.Trim.Companion companion2 = LineHeightStyle.Trim.f10955b;
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$2 = SaversKt.E;
                Intrinsics.c(obj5, bool);
                LineHeightStyle.Trim trim = obj5 != null ? (LineHeightStyle.Trim) saversKt$NonNullValueClassSaver$2.f10516b.invoke(obj5) : null;
                trim.getClass();
                int i2 = trim.f10958a;
                Object obj6 = list2.get(2);
                LineHeightStyle.Mode.Companion companion3 = LineHeightStyle.Mode.f10952b;
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$3 = SaversKt.F;
                Intrinsics.c(obj6, bool);
                LineHeightStyle.Mode mode = obj6 != null ? (LineHeightStyle.Mode) saversKt$NonNullValueClassSaver$3.f10516b.invoke(obj6) : null;
                mode.getClass();
                return new LineHeightStyle(f2, i2, mode.f10954a, null);
            case 3:
                SaverKt$Saver$1 saverKt$Saver$5 = SaversKt.f10504a;
                obj.getClass();
                float fFloatValue = ((Float) obj).floatValue();
                LineHeightStyle.Alignment.a(fFloatValue);
                return new LineHeightStyle.Alignment(fFloatValue);
            case 4:
                SaverKt$Saver$1 saverKt$Saver$6 = SaversKt.f10504a;
                obj.getClass();
                return new LineHeightStyle.Trim(((Integer) obj).intValue());
            case 5:
                SaverKt$Saver$1 saverKt$Saver$7 = SaversKt.f10504a;
                obj.getClass();
                return new LineHeightStyle.Mode(((Integer) obj).intValue());
            case 6:
                SaverKt$Saver$1 saverKt$Saver$8 = SaversKt.f10504a;
                String str2 = obj != null ? (String) obj : null;
                str2.getClass();
                return new VerbatimTtsAnnotation(str2);
            case 7:
                SaverKt$Saver$1 saverKt$Saver$9 = SaversKt.f10504a;
                String str3 = obj != null ? (String) obj : null;
                str3.getClass();
                return new UrlAnnotation(str3);
            case 8:
                SaverKt$Saver$1 saverKt$Saver$10 = SaversKt.f10504a;
                obj.getClass();
                List list3 = (List) obj;
                Object obj7 = list3.get(0);
                TextAlign.Companion companion4 = TextAlign.f10959b;
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$4 = SaversKt.s;
                Boolean bool2 = Boolean.FALSE;
                Intrinsics.c(obj7, bool2);
                TextAlign textAlign = obj7 != null ? (TextAlign) saversKt$NonNullValueClassSaver$4.f10516b.invoke(obj7) : null;
                textAlign.getClass();
                int i3 = textAlign.f10964a;
                Object obj8 = list3.get(1);
                TextDirection.Companion companion5 = TextDirection.f10969b;
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$5 = SaversKt.t;
                Intrinsics.c(obj8, bool2);
                TextDirection textDirection = obj8 != null ? (TextDirection) saversKt$NonNullValueClassSaver$5.f10516b.invoke(obj8) : null;
                textDirection.getClass();
                int i4 = textDirection.f10973a;
                Object obj9 = list3.get(2);
                TextUnit.Companion companion6 = TextUnit.f11023b;
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$6 = SaversKt.x;
                Intrinsics.c(obj9, bool2);
                TextUnit textUnit = obj9 != null ? (TextUnit) saversKt$NonNullValueClassSaver$6.f10516b.invoke(obj9) : null;
                textUnit.getClass();
                long j2 = textUnit.f11025a;
                Object obj10 = list3.get(3);
                TextIndent.Companion companion7 = TextIndent.f10978c;
                SaverKt$Saver$1 saverKt$Saver$11 = SaversKt.m;
                TextIndent textIndent = ((!Intrinsics.c(obj10, bool2) || (saverKt$Saver$11 instanceof NonNullValueClassSaver)) && obj10 != null) ? (TextIndent) saverKt$Saver$11.f8439b.invoke(obj10) : null;
                Object obj11 = list3.get(4);
                PlatformParagraphStyle.Companion companion8 = PlatformParagraphStyle.f10497c;
                boolean zC = Intrinsics.c(obj11, bool2);
                SaverKt$Saver$1 saverKt$Saver$12 = Savers_androidKt.f10518a;
                PlatformParagraphStyle platformParagraphStyle = ((!zC || (saverKt$Saver$12 instanceof NonNullValueClassSaver)) && obj11 != null) ? (PlatformParagraphStyle) saverKt$Saver$12.f8439b.invoke(obj11) : null;
                Object obj12 = list3.get(5);
                LineHeightStyle.Companion companion9 = LineHeightStyle.d;
                SaverKt$Saver$1 saverKt$Saver$13 = SaversKt.C;
                LineHeightStyle lineHeightStyle = ((!Intrinsics.c(obj12, bool2) || (saverKt$Saver$13 instanceof NonNullValueClassSaver)) && obj12 != null) ? (LineHeightStyle) saverKt$Saver$13.f8439b.invoke(obj12) : null;
                Object obj13 = list3.get(6);
                LineBreak.Companion companion10 = LineBreak.f10931b;
                boolean zC2 = Intrinsics.c(obj13, bool2);
                SaverKt$Saver$1 saverKt$Saver$14 = Savers_androidKt.f10520c;
                LineBreak lineBreak = ((!zC2 || (saverKt$Saver$14 instanceof NonNullValueClassSaver)) && obj13 != null) ? (LineBreak) saverKt$Saver$14.f8439b.invoke(obj13) : null;
                lineBreak.getClass();
                int i5 = lineBreak.f10933a;
                Object obj14 = list3.get(7);
                Hyphens.Companion companion11 = Hyphens.f10928b;
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$7 = SaversKt.u;
                Intrinsics.c(obj14, bool2);
                Hyphens hyphens = obj14 != null ? (Hyphens) saversKt$NonNullValueClassSaver$7.f10516b.invoke(obj14) : null;
                hyphens.getClass();
                int i6 = hyphens.f10930a;
                Object obj15 = list3.get(8);
                TextMotion.Companion companion12 = TextMotion.f10981c;
                boolean zC3 = Intrinsics.c(obj15, bool2);
                SaverKt$Saver$1 saverKt$Saver$15 = Savers_androidKt.d;
                if ((!zC3 || (saverKt$Saver$15 instanceof NonNullValueClassSaver)) && obj15 != null) {
                    textMotion = (TextMotion) saverKt$Saver$15.f8439b.invoke(obj15);
                }
                return new ParagraphStyle(i3, i4, j2, textIndent, platformParagraphStyle, lineHeightStyle, i5, i6, textMotion, (DefaultConstructorMarker) null);
            case 9:
                obj.getClass();
                List list4 = (List) obj;
                Object obj16 = list4.get(0);
                Boolean bool3 = obj16 != null ? (Boolean) obj16 : null;
                bool3.getClass();
                boolean zBooleanValue = bool3.booleanValue();
                Object obj17 = list4.get(1);
                EmojiSupportMatch.Companion companion13 = EmojiSupportMatch.f10450b;
                boolean zC4 = Intrinsics.c(obj17, Boolean.FALSE);
                SaverKt$Saver$1 saverKt$Saver$16 = Savers_androidKt.f10519b;
                EmojiSupportMatch emojiSupportMatch = ((!zC4 || (saverKt$Saver$16 instanceof NonNullValueClassSaver)) && obj17 != null) ? (EmojiSupportMatch) saverKt$Saver$16.f8439b.invoke(obj17) : null;
                emojiSupportMatch.getClass();
                return new PlatformParagraphStyle(emojiSupportMatch.f10452a, zBooleanValue, (DefaultConstructorMarker) null);
            case 10:
                obj.getClass();
                return new EmojiSupportMatch(((Integer) obj).intValue());
            case 11:
                obj.getClass();
                return new LineBreak(((Integer) obj).intValue());
            case 12:
                obj.getClass();
                List list5 = (List) obj;
                Object obj18 = list5.get(0);
                TextMotion.Linearity.Companion companion14 = TextMotion.Linearity.f10985b;
                boolean zC5 = Intrinsics.c(obj18, Boolean.FALSE);
                SaverKt$Saver$1 saverKt$Saver$17 = Savers_androidKt.f10521e;
                TextMotion.Linearity linearity = ((!zC5 || (saverKt$Saver$17 instanceof NonNullValueClassSaver)) && obj18 != null) ? (TextMotion.Linearity) saverKt$Saver$17.f8439b.invoke(obj18) : null;
                linearity.getClass();
                int i7 = linearity.f10988a;
                Object obj19 = list5.get(1);
                Boolean bool4 = obj19 != null ? (Boolean) obj19 : null;
                bool4.getClass();
                return new TextMotion(i7, bool4.booleanValue(), null);
            case 13:
                obj.getClass();
                return new TextMotion.Linearity(((Integer) obj).intValue());
            case 14:
                return new ScrollState(((Integer) obj).intValue());
            case 15:
                PointerType pointerType = (PointerType) obj;
                yt0 yt0Var = ScrollableKt.f4674a;
                PointerType.f9367b.getClass();
                int i8 = PointerType.d;
                if (pointerType != null && pointerType.f9371a == i8) {
                    z = true;
                }
                return Boolean.valueOf(!z);
            case 16:
                int iIntValue = ((Integer) obj).intValue();
                float f3 = SearchBottomBarKt.f62854a;
                return Integer.valueOf(iIntValue * 2);
            case 17:
                int iIntValue2 = ((Integer) obj).intValue();
                float f4 = SearchBottomBarKt.f62854a;
                return Integer.valueOf(iIntValue2 * 2);
            case 18:
                AnimatedContentTransitionScope animatedContentTransitionScope = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope.getClass();
                return Nav3TransitionsKt.a(animatedContentTransitionScope);
            case 19:
                AnimatedContentTransitionScope animatedContentTransitionScope2 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope2.getClass();
                return Nav3TransitionsKt.b(animatedContentTransitionScope2);
            case 20:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertyReceiverExtKt.a(semanticsPropertyReceiver);
                return Unit.f71739a;
            case 21:
                KProperty[] kPropertyArr = SemanticsPropertiesKt.f10359a;
                SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.f10334e;
                Unit unit = Unit.f71739a;
                ((SemanticsPropertyReceiver) obj).a(semanticsPropertyKey, unit);
                return unit;
            case 22:
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 23:
                Offset offset = (Offset) obj;
                AnimationVector2D animationVector2D = SelectionMagnifierKt.f6432a;
                long j3 = offset.f8808a;
                return (9223372034707292159L & j3) != 9205357640488583168L ? new AnimationVector2D(Float.intBitsToFloat((int) (j3 >> 32)), Float.intBitsToFloat((int) (offset.f8808a & BodyPartID.bodyIdMax))) : SelectionMagnifierKt.f6432a;
            case 24:
                AnimationVector2D animationVector2D2 = (AnimationVector2D) obj;
                AnimationVector2D animationVector2D3 = SelectionMagnifierKt.f6432a;
                return new Offset((((long) Float.floatToRawIntBits(animationVector2D2.f3824b)) & BodyPartID.bodyIdMax) | (((long) Float.floatToRawIntBits(animationVector2D2.f3823a)) << 32));
            case 25:
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder = (ClassSerialDescriptorBuilder) obj;
                classSerialDescriptorBuilder.getClass();
                EmptyList emptyList = EmptyList.f71768b;
                classSerialDescriptorBuilder.a(b.a.f24015b, IntSerializer.f75625b, emptyList, false);
                StringSerializer stringSerializer = StringSerializer.f75684a;
                classSerialDescriptorBuilder.a("name", StringSerializer.f75685b, emptyList, false);
                classSerialDescriptorBuilder.a("type", new EnumSerializer("com.dynamicyield.sdk.wrapper.core.enums.ChoiceType", ChoiceType.values()).getF19838b(), emptyList, false);
                classSerialDescriptorBuilder.a("variations", new ArrayListSerializer(SemanticSearchVariation.INSTANCE.serializer()).f75570b, emptyList, false);
                classSerialDescriptorBuilder.a("groups", new ArrayListSerializer(stringSerializer).f75570b, emptyList, false);
                classSerialDescriptorBuilder.a("decisionId", BuiltinSerializersKt.d(stringSerializer).getF19838b(), emptyList, false);
                return Unit.f71739a;
            case 26:
                Sequence sequence = (Sequence) obj;
                sequence.getClass();
                return sequence.getF74480a();
            case 27:
                Iterable iterable = (Iterable) obj;
                iterable.getClass();
                return iterable.iterator();
            case 28:
                return Boolean.valueOf(obj == null);
            default:
                KClass kClass = (KClass) obj;
                SerializerCache serializerCache = SerializersCacheKt.f75525a;
                kClass.getClass();
                KSerializer kSerializerD = SerializersKt.d(kClass);
                if (kSerializerD != null) {
                    return kSerializerD;
                }
                if (JvmClassMappingKt.b(kClass).isInterface()) {
                    return new PolymorphicSerializer(kClass);
                }
                return null;
        }
    }
}
