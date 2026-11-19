package defpackage;

import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.animation.core.TransitionKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.text.StringHelpers_androidKt;
import androidx.compose.foundation.text.TextFieldScrollerPosition;
import androidx.compose.foundation.text.selection.TextFieldPreparedSelection;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.TopAppBarState;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.NonNullValueClassSaver;
import androidx.compose.ui.text.PlatformSpanStyle;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLinkStyles;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.input.DeleteSurroundingTextCommand;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.emoji2.text.EmojiCompat;
import androidx.sqlite.SQLiteStatement;
import com.dynatrace.agent.compose.userinteraction.handler.TouchUserInteractionHandler;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.presentation.extensions.SemanticsPropertyReceiverExtKt;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouScreenKt;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class z21 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81518b;

    public /* synthetic */ z21(int i2) {
        this.f81518b = i2;
    }

    /* JADX WARN: Code duplicated, block: B:127:0x030b  */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int iOffsetByCodePoints;
        TextLinkStyles f10459b;
        SpanStyle spanStyle;
        TextRange textRange = null;
        switch (this.f81518b) {
            case 0:
                TextFieldPreparedSelection textFieldPreparedSelection = (TextFieldPreparedSelection) obj;
                String str = textFieldPreparedSelection.g.f10420c;
                long j2 = textFieldPreparedSelection.f6340f;
                TextRange.Companion companion = TextRange.f10564b;
                int i2 = (int) (j2 & BodyPartID.bodyIdMax);
                if (i2 > 0) {
                    EmojiCompat emojiCompatC = StringHelpers_androidKt.c();
                    if (emojiCompatC != null) {
                        int iC = emojiCompatC.c(str, i2 - 1);
                        if (iC >= 0) {
                            iOffsetByCodePoints = iC;
                        } else if (i2 <= 0) {
                            iOffsetByCodePoints = -1;
                        } else {
                            iOffsetByCodePoints = Character.offsetByCodePoints(str, i2, -1);
                        }
                    } else if (i2 <= 0) {
                        iOffsetByCodePoints = -1;
                    } else {
                        iOffsetByCodePoints = Character.offsetByCodePoints(str, i2, -1);
                    }
                } else {
                    iOffsetByCodePoints = -1;
                }
                if (iOffsetByCodePoints == -1) {
                    return null;
                }
                return new DeleteSurroundingTextCommand(((int) (textFieldPreparedSelection.f6340f & BodyPartID.bodyIdMax)) - iOffsetByCodePoints, 0);
            case 1:
                TextFieldPreparedSelection textFieldPreparedSelection2 = (TextFieldPreparedSelection) obj;
                String str2 = textFieldPreparedSelection2.g.f10420c;
                long j3 = textFieldPreparedSelection2.f6340f;
                TextRange.Companion companion2 = TextRange.f10564b;
                int iA = StringHelpers_androidKt.a((int) (j3 & BodyPartID.bodyIdMax), str2);
                if (iA != -1) {
                    return new DeleteSurroundingTextCommand(0, iA - ((int) (textFieldPreparedSelection2.f6340f & BodyPartID.bodyIdMax)));
                }
                return null;
            case 2:
                TextFieldPreparedSelection textFieldPreparedSelection3 = (TextFieldPreparedSelection) obj;
                Integer numD = textFieldPreparedSelection3.d();
                if (numD == null) {
                    return null;
                }
                int iIntValue = numD.intValue();
                long j4 = textFieldPreparedSelection3.f6340f;
                TextRange.Companion companion3 = TextRange.f10564b;
                return new DeleteSurroundingTextCommand(((int) (j4 & BodyPartID.bodyIdMax)) - iIntValue, 0);
            case 3:
                TextFieldPreparedSelection textFieldPreparedSelection4 = (TextFieldPreparedSelection) obj;
                Integer numC = textFieldPreparedSelection4.c();
                if (numC == null) {
                    return null;
                }
                int iIntValue2 = numC.intValue();
                long j5 = textFieldPreparedSelection4.f6340f;
                TextRange.Companion companion4 = TextRange.f10564b;
                return new DeleteSurroundingTextCommand(0, iIntValue2 - ((int) (j5 & BodyPartID.bodyIdMax)));
            case 4:
                TextFieldPreparedSelection textFieldPreparedSelection5 = (TextFieldPreparedSelection) obj;
                Integer numB = textFieldPreparedSelection5.b();
                if (numB == null) {
                    return null;
                }
                int iIntValue3 = numB.intValue();
                long j6 = textFieldPreparedSelection5.f6340f;
                TextRange.Companion companion5 = TextRange.f10564b;
                return new DeleteSurroundingTextCommand(((int) (j6 & BodyPartID.bodyIdMax)) - iIntValue3, 0);
            case 5:
                TextFieldPreparedSelection textFieldPreparedSelection6 = (TextFieldPreparedSelection) obj;
                Integer numA = textFieldPreparedSelection6.a();
                if (numA == null) {
                    return null;
                }
                int iIntValue4 = numA.intValue();
                long j7 = textFieldPreparedSelection6.f6340f;
                TextRange.Companion companion6 = TextRange.f10564b;
                return new DeleteSurroundingTextCommand(0, iIntValue4 - ((int) (j7 & BodyPartID.bodyIdMax)));
            case 6:
                List list = (List) obj;
                Object obj2 = list.get(1);
                obj2.getClass();
                Orientation orientation = ((Boolean) obj2).booleanValue() ? Orientation.Vertical : Orientation.Horizontal;
                Object obj3 = list.get(0);
                obj3.getClass();
                return new TextFieldScrollerPosition(orientation, ((Float) obj3).floatValue());
            case 7:
                return Unit.f71739a;
            case 8:
                TextFieldValue.Companion companion7 = TextFieldValue.d;
                obj.getClass();
                List list2 = (List) obj;
                Object obj4 = list2.get(0);
                SaverKt$Saver$1 saverKt$Saver$1 = SaversKt.f10504a;
                Boolean bool = Boolean.FALSE;
                AnnotatedString annotatedString = ((!Intrinsics.c(obj4, bool) || (saverKt$Saver$1 instanceof NonNullValueClassSaver)) && obj4 != null) ? (AnnotatedString) saverKt$Saver$1.f8439b.invoke(obj4) : null;
                annotatedString.getClass();
                Object obj5 = list2.get(1);
                TextRange.Companion companion8 = TextRange.f10564b;
                SaverKt$Saver$1 saverKt$Saver$2 = SaversKt.p;
                if ((!Intrinsics.c(obj5, bool) || (saverKt$Saver$2 instanceof NonNullValueClassSaver)) && obj5 != null) {
                    textRange = (TextRange) saverKt$Saver$2.f8439b.invoke(obj5);
                }
                textRange.getClass();
                return new TextFieldValue(annotatedString, textRange.f10566a, (TextRange) null, 4, (DefaultConstructorMarker) null);
            case 9:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = TextKt.f7383a;
                return Unit.f71739a;
            case 10:
                AnnotatedString.Range range = (AnnotatedString.Range) obj;
                Object obj6 = range.f10428a;
                if (!(obj6 instanceof LinkAnnotation) || (f10459b = ((LinkAnnotation) obj6).getF10459b()) == null || (f10459b.f10557a == null && f10459b.f10558b == null && f10459b.f10559c == null && f10459b.d == null)) {
                    return CollectionsKt.l(range);
                }
                Object obj7 = range.f10428a;
                obj7.getClass();
                TextLinkStyles f10459b2 = ((LinkAnnotation) obj7).getF10459b();
                if (f10459b2 == null || (spanStyle = f10459b2.f10557a) == null) {
                    spanStyle = new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 65535, (DefaultConstructorMarker) null);
                }
                return CollectionsKt.l(range, new AnnotatedString.Range(spanStyle, range.f10429b, range.f10430c));
            case 11:
                SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.B;
                Unit unit = Unit.f71739a;
                ((SemanticsPropertyReceiver) obj).a(semanticsPropertyKey, unit);
                return unit;
            case 12:
                float f2 = ThankYouScreenKt.f65243a;
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 13:
                int iIntValue5 = ((Integer) obj).intValue();
                float f3 = ThankYouScreenKt.f65243a;
                return Integer.valueOf(iIntValue5 / 4);
            case 14:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                float f4 = ThankYouScreenKt.f65243a;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver);
                return Unit.f71739a;
            case 15:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                float f5 = ThankYouScreenKt.f65243a;
                semanticsPropertyReceiver2.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver2);
                return Unit.f71739a;
            case 16:
                float f6 = ThankYouScreenKt.f65243a;
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 17:
                SemanticsPropertyReceiver semanticsPropertyReceiver3 = (SemanticsPropertyReceiver) obj;
                float f7 = ThankYouScreenKt.f65243a;
                semanticsPropertyReceiver3.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver3);
                return Unit.f71739a;
            case 18:
                float f8 = ThankYouScreenKt.f65243a;
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 19:
                float f9 = ThankYouScreenKt.f65243a;
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 20:
                SemanticsPropertyReceiver semanticsPropertyReceiver4 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver4.getClass();
                SemanticsPropertyReceiverExtKt.a(semanticsPropertyReceiver4);
                return Unit.f71739a;
            case 21:
                SemanticsPropertyReceiver semanticsPropertyReceiver5 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver5.getClass();
                SemanticsPropertiesKt.w(semanticsPropertyReceiver5, 1.0f);
                return Unit.f71739a;
            case 22:
                ((Integer) obj).intValue();
                return Unit.f71739a;
            case 23:
                SemanticsPropertyReceiver semanticsPropertyReceiver6 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver6.getClass();
                SemanticsPropertiesKt.v(semanticsPropertyReceiver6, true);
                return Unit.f71739a;
            case 24:
                SemanticsPropertyReceiver semanticsPropertyReceiver7 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver7.getClass();
                SemanticsPropertiesKt.w(semanticsPropertyReceiver7, 2.0f);
                return Unit.f71739a;
            case 25:
                SemanticsPropertyReceiver semanticsPropertyReceiver8 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver8.getClass();
                SemanticsPropertiesKt.w(semanticsPropertyReceiver8, 2.0f);
                return Unit.f71739a;
            case 26:
                List list3 = (List) obj;
                return new TopAppBarState(((Number) list3.get(0)).floatValue(), ((Number) list3.get(1)).floatValue(), ((Number) list3.get(2)).floatValue());
            case 27:
                DTFunctionNameModifier dTFunctionNameModifier = (DTFunctionNameModifier) obj;
                int i3 = TouchUserInteractionHandler.f26685b;
                dTFunctionNameModifier.getClass();
                return dTFunctionNameModifier.f26697b;
            case 28:
                SQLiteStatement sQLiteStatement = (SQLiteStatement) obj;
                sQLiteStatement.getClass();
                return Boolean.valueOf(sQLiteStatement.Q1());
            default:
                SeekableTransitionState seekableTransitionState = (SeekableTransitionState) obj;
                long j8 = seekableTransitionState.f3924f;
                SnapshotStateObserver snapshotStateObserver = seekableTransitionState.f3925h;
                if (snapshotStateObserver != null) {
                    snapshotStateObserver.e(seekableTransitionState, TransitionKt.f4016a, seekableTransitionState.g);
                }
                long j9 = seekableTransitionState.f3924f;
                if (j8 != j9) {
                    SeekableTransitionState.SeekingAnimationState seekingAnimationState = seekableTransitionState.o;
                    if (seekingAnimationState != null) {
                        if (seekingAnimationState.f3929a > j9) {
                            seekableTransitionState.l();
                        } else {
                            seekingAnimationState.g = j9;
                            if (seekingAnimationState.f3930b == null) {
                                seekingAnimationState.f3934h = MathKt.d((1.0d - ((double) seekingAnimationState.f3932e.a(0))) * seekableTransitionState.f3924f);
                            }
                        }
                    } else if (j9 != 0) {
                        seekableTransitionState.o();
                    }
                }
                return Unit.f71739a;
        }
    }
}
