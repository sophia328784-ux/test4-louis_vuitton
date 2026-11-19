package androidx.compose.foundation.text.input.internal;

import android.os.CancellationSignal;
import android.view.inputmethod.DeleteGesture;
import android.view.inputmethod.DeleteRangeGesture;
import android.view.inputmethod.HandwritingGesture;
import android.view.inputmethod.InsertGesture;
import android.view.inputmethod.JoinOrSplitGesture;
import android.view.inputmethod.PreviewableHandwritingGesture;
import android.view.inputmethod.RemoveSpaceGesture;
import android.view.inputmethod.SelectGesture;
import android.view.inputmethod.SelectRangeGesture;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.RectHelper_androidKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.TextGranularity;
import androidx.compose.ui.text.TextInclusionStrategy;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.CommitTextCommand;
import androidx.compose.ui.text.input.DeleteSurroundingTextCommand;
import androidx.compose.ui.text.input.EditCommand;
import androidx.compose.ui.text.input.SetSelectionCommand;
import defpackage.ro;
import defpackage.xo0;
import kotlin.Metadata;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class HandwritingGestureApi34 {
    public static int a(HandwritingGesture handwritingGesture, xo0 xo0Var) {
        String fallbackText = handwritingGesture.getFallbackText();
        if (fallbackText == null) {
            return 3;
        }
        xo0Var.invoke(new CommitTextCommand(fallbackText, 1));
        return 5;
    }

    public static void b(long j2, AnnotatedString annotatedString, boolean z, xo0 xo0Var) {
        if (z) {
            TextRange.Companion companion = TextRange.f10564b;
            int iCharCount = (int) (j2 >> 32);
            int iCharCount2 = (int) (j2 & BodyPartID.bodyIdMax);
            int iCodePointBefore = iCharCount > 0 ? Character.codePointBefore(annotatedString, iCharCount) : 10;
            int iCodePointAt = iCharCount2 < annotatedString.f10420c.length() ? Character.codePointAt(annotatedString, iCharCount2) : 10;
            if (HandwritingGesture_androidKt.i(iCodePointBefore) && (HandwritingGesture_androidKt.h(iCodePointAt) || HandwritingGesture_androidKt.g(iCodePointAt))) {
                do {
                    iCharCount -= Character.charCount(iCodePointBefore);
                    if (iCharCount == 0) {
                        break;
                    } else {
                        iCodePointBefore = Character.codePointBefore(annotatedString, iCharCount);
                    }
                } while (HandwritingGesture_androidKt.i(iCodePointBefore));
                j2 = TextRangeKt.a(iCharCount, iCharCount2);
            } else if (HandwritingGesture_androidKt.i(iCodePointAt) && (HandwritingGesture_androidKt.h(iCodePointBefore) || HandwritingGesture_androidKt.g(iCodePointBefore))) {
                do {
                    iCharCount2 += Character.charCount(iCodePointAt);
                    if (iCharCount2 == annotatedString.f10420c.length()) {
                        break;
                    } else {
                        iCodePointAt = Character.codePointAt(annotatedString, iCharCount2);
                    }
                } while (HandwritingGesture_androidKt.i(iCodePointAt));
                j2 = TextRangeKt.a(iCharCount, iCharCount2);
            }
        }
        TextRange.Companion companion2 = TextRange.f10564b;
        int i2 = (int) (BodyPartID.bodyIdMax & j2);
        xo0Var.invoke(new HandwritingGesture_androidKt$compoundEditCommand$1(new EditCommand[]{new SetSelectionCommand(i2, i2), new DeleteSurroundingTextCommand(TextRange.d(j2), 0)}));
    }

    /* JADX WARN: Code duplicated, block: B:132:0x0280  */
    public static int c(LegacyTextFieldState legacyTextFieldState, HandwritingGesture handwritingGesture, TextFieldSelectionManager textFieldSelectionManager, ViewConfiguration viewConfiguration, xo0 xo0Var) {
        long jH;
        String string;
        int i2;
        TextLayoutResultProxy textLayoutResultProxyD;
        TextLayoutResult textLayoutResult;
        TextLayoutResultProxy textLayoutResultProxyD2;
        TextLayoutResult textLayoutResult2;
        TextLayoutResult textLayoutResult3;
        TextLayoutInput textLayoutInput;
        AnnotatedString annotatedString = legacyTextFieldState.f5932j;
        if (annotatedString == null) {
            return 3;
        }
        TextLayoutResultProxy textLayoutResultProxyD3 = legacyTextFieldState.d();
        if (!annotatedString.equals((textLayoutResultProxyD3 == null || (textLayoutResult3 = textLayoutResultProxyD3.f6011a) == null || (textLayoutInput = textLayoutResult3.f10552a) == null) ? null : textLayoutInput.f10543a)) {
            return 3;
        }
        if (handwritingGesture instanceof SelectGesture) {
            SelectGesture selectGesture = (SelectGesture) handwritingGesture;
            long jF = HandwritingGesture_androidKt.f(legacyTextFieldState, RectHelper_androidKt.c(selectGesture.getSelectionArea()), e(selectGesture.getGranularity()));
            if (TextRange.c(jF)) {
                return a(selectGesture, xo0Var);
            }
            xo0Var.invoke(new SetSelectionCommand((int) (jF >> 32), (int) (jF & BodyPartID.bodyIdMax)));
            if (textFieldSelectionManager != null) {
                textFieldSelectionManager.h(true);
                return 1;
            }
        } else {
            if (handwritingGesture instanceof DeleteGesture) {
                DeleteGesture deleteGesture = (DeleteGesture) handwritingGesture;
                int iE = e(deleteGesture.getGranularity());
                long jF2 = HandwritingGesture_androidKt.f(legacyTextFieldState, RectHelper_androidKt.c(deleteGesture.getDeletionArea()), iE);
                if (TextRange.c(jF2)) {
                    return a(deleteGesture, xo0Var);
                }
                TextGranularity.f10536a.getClass();
                b(jF2, annotatedString, iE == TextGranularity.f10537b, xo0Var);
                return 1;
            }
            if (!(handwritingGesture instanceof SelectRangeGesture)) {
                if (handwritingGesture instanceof DeleteRangeGesture) {
                    DeleteRangeGesture deleteRangeGesture = (DeleteRangeGesture) handwritingGesture;
                    int iE2 = e(deleteRangeGesture.getGranularity());
                    long jB = HandwritingGesture_androidKt.b(legacyTextFieldState, RectHelper_androidKt.c(deleteRangeGesture.getDeletionStartArea()), RectHelper_androidKt.c(deleteRangeGesture.getDeletionEndArea()), iE2);
                    if (TextRange.c(jB)) {
                        return a(deleteRangeGesture, xo0Var);
                    }
                    TextGranularity.f10536a.getClass();
                    b(jB, annotatedString, iE2 == TextGranularity.f10537b, xo0Var);
                    return 1;
                }
                if (handwritingGesture instanceof JoinOrSplitGesture) {
                    JoinOrSplitGesture joinOrSplitGesture = (JoinOrSplitGesture) handwritingGesture;
                    if (viewConfiguration == null) {
                        return a(joinOrSplitGesture, xo0Var);
                    }
                    int iA = HandwritingGesture_androidKt.a(legacyTextFieldState, HandwritingGesture_androidKt.d(joinOrSplitGesture.getJoinOrSplitPoint()), viewConfiguration);
                    if (iA == -1 || !((textLayoutResultProxyD2 = legacyTextFieldState.d()) == null || (textLayoutResult2 = textLayoutResultProxyD2.f6011a) == null || !HandwritingGesture_androidKt.c(textLayoutResult2, iA))) {
                        return a(joinOrSplitGesture, xo0Var);
                    }
                    int iCharCount = iA;
                    while (iCharCount > 0) {
                        int iCodePointBefore = Character.codePointBefore(annotatedString, iCharCount);
                        if (!HandwritingGesture_androidKt.h(iCodePointBefore)) {
                            break;
                        }
                        iCharCount -= Character.charCount(iCodePointBefore);
                    }
                    while (iA < annotatedString.f10420c.length()) {
                        int iCodePointAt = Character.codePointAt(annotatedString, iA);
                        if (!HandwritingGesture_androidKt.h(iCodePointAt)) {
                            break;
                        }
                        iA += Character.charCount(iCodePointAt);
                    }
                    long jA = TextRangeKt.a(iCharCount, iA);
                    if (!TextRange.c(jA)) {
                        b(jA, annotatedString, false, xo0Var);
                        return 1;
                    }
                    int i3 = (int) (jA >> 32);
                    xo0Var.invoke(new HandwritingGesture_androidKt$compoundEditCommand$1(new EditCommand[]{new SetSelectionCommand(i3, i3), new CommitTextCommand(" ", 1)}));
                    return 1;
                }
                if (handwritingGesture instanceof InsertGesture) {
                    InsertGesture insertGesture = (InsertGesture) handwritingGesture;
                    if (viewConfiguration == null) {
                        return a(insertGesture, xo0Var);
                    }
                    int iA2 = HandwritingGesture_androidKt.a(legacyTextFieldState, HandwritingGesture_androidKt.d(insertGesture.getInsertionPoint()), viewConfiguration);
                    if (iA2 == -1 || !((textLayoutResultProxyD = legacyTextFieldState.d()) == null || (textLayoutResult = textLayoutResultProxyD.f6011a) == null || !HandwritingGesture_androidKt.c(textLayoutResult, iA2))) {
                        return a(insertGesture, xo0Var);
                    }
                    xo0Var.invoke(new HandwritingGesture_androidKt$compoundEditCommand$1(new EditCommand[]{new SetSelectionCommand(iA2, iA2), new CommitTextCommand(insertGesture.getTextToInsert(), 1)}));
                    return 1;
                }
                if (!(handwritingGesture instanceof RemoveSpaceGesture)) {
                    return 2;
                }
                RemoveSpaceGesture removeSpaceGesture = (RemoveSpaceGesture) handwritingGesture;
                TextLayoutResultProxy textLayoutResultProxyD4 = legacyTextFieldState.d();
                TextLayoutResult textLayoutResult4 = textLayoutResultProxyD4 != null ? textLayoutResultProxyD4.f6011a : null;
                long jD = HandwritingGesture_androidKt.d(removeSpaceGesture.getStartPoint());
                long jD2 = HandwritingGesture_androidKt.d(removeSpaceGesture.getEndPoint());
                LayoutCoordinates layoutCoordinatesC = legacyTextFieldState.c();
                if (textLayoutResult4 != null) {
                    MultiParagraph multiParagraph = textLayoutResult4.f10553b;
                    if (layoutCoordinatesC == null) {
                        TextRange.f10564b.getClass();
                        jH = TextRange.f10565c;
                    } else {
                        long jF3 = layoutCoordinatesC.f(jD);
                        long jF4 = layoutCoordinatesC.f(jD2);
                        int iE3 = HandwritingGesture_androidKt.e(multiParagraph, jF3, viewConfiguration);
                        int iE4 = HandwritingGesture_androidKt.e(multiParagraph, jF4, viewConfiguration);
                        if (iE3 != -1) {
                            if (iE4 != -1) {
                                iE3 = Math.min(iE3, iE4);
                            }
                            iE4 = iE3;
                        } else if (iE4 == -1) {
                            TextRange.f10564b.getClass();
                            jH = TextRange.f10565c;
                        }
                        float fB = (multiParagraph.b(iE4) + multiParagraph.f(iE4)) / 2.0f;
                        int i4 = (int) (jF3 >> 32);
                        int i5 = (int) (jF4 >> 32);
                        Rect rect = new Rect(Math.min(Float.intBitsToFloat(i4), Float.intBitsToFloat(i5)), fB - 0.1f, Math.max(Float.intBitsToFloat(i4), Float.intBitsToFloat(i5)), fB + 0.1f);
                        TextGranularity.f10536a.getClass();
                        jH = multiParagraph.h(rect, 0, TextInclusionStrategy.Companion.f10538a);
                    }
                } else {
                    TextRange.f10564b.getClass();
                    jH = TextRange.f10565c;
                }
                if (TextRange.c(jH)) {
                    return a(removeSpaceGesture, xo0Var);
                }
                Ref$IntRef ref$IntRef = new Ref$IntRef();
                ref$IntRef.f71919b = -1;
                Ref$IntRef ref$IntRef2 = new Ref$IntRef();
                ref$IntRef2.f71919b = -1;
                String str = annotatedString.subSequence(TextRange.f(jH), TextRange.e(jH)).f10420c;
                Regex regex = new Regex("\\s+");
                str.getClass();
                MatchResult matchResultB = regex.b(str);
                if (matchResultB == null) {
                    string = str.toString();
                } else {
                    int length = str.length();
                    StringBuilder sb = new StringBuilder(length);
                    int i6 = 0;
                    do {
                        sb.append((CharSequence) str, i6, matchResultB.d().f71951b);
                        if (ref$IntRef.f71919b == -1) {
                            ref$IntRef.f71919b = matchResultB.d().f71951b;
                        }
                        ref$IntRef2.f71919b = matchResultB.d().f71952c + 1;
                        sb.append((CharSequence) "");
                        i6 = matchResultB.d().f71952c + 1;
                        matchResultB = matchResultB.next();
                        if (i6 >= length) {
                            break;
                        }
                    } while (matchResultB != null);
                    if (i6 < length) {
                        sb.append((CharSequence) str, i6, length);
                    }
                    string = sb.toString();
                }
                int i7 = ref$IntRef.f71919b;
                if (i7 == -1 || (i2 = ref$IntRef2.f71919b) == -1) {
                    return a(removeSpaceGesture, xo0Var);
                }
                int i8 = (int) (jH >> 32);
                xo0Var.invoke(new HandwritingGesture_androidKt$compoundEditCommand$1(new EditCommand[]{new SetSelectionCommand(i8 + i7, i8 + i2), new CommitTextCommand(string.substring(i7, string.length() - (TextRange.d(jH) - ref$IntRef2.f71919b)), 1)}));
                return 1;
            }
            SelectRangeGesture selectRangeGesture = (SelectRangeGesture) handwritingGesture;
            long jB2 = HandwritingGesture_androidKt.b(legacyTextFieldState, RectHelper_androidKt.c(selectRangeGesture.getSelectionStartArea()), RectHelper_androidKt.c(selectRangeGesture.getSelectionEndArea()), e(selectRangeGesture.getGranularity()));
            if (TextRange.c(jB2)) {
                return a(selectRangeGesture, xo0Var);
            }
            xo0Var.invoke(new SetSelectionCommand((int) (jB2 >> 32), (int) (jB2 & BodyPartID.bodyIdMax)));
            if (textFieldSelectionManager != null) {
                textFieldSelectionManager.h(true);
            }
        }
        return 1;
    }

    public static boolean d(LegacyTextFieldState legacyTextFieldState, PreviewableHandwritingGesture previewableHandwritingGesture, TextFieldSelectionManager textFieldSelectionManager, CancellationSignal cancellationSignal) {
        TextLayoutResult textLayoutResult;
        TextLayoutInput textLayoutInput;
        AnnotatedString annotatedString = legacyTextFieldState.f5932j;
        if (annotatedString == null) {
            return false;
        }
        TextLayoutResultProxy textLayoutResultProxyD = legacyTextFieldState.d();
        if (!annotatedString.equals((textLayoutResultProxyD == null || (textLayoutResult = textLayoutResultProxyD.f6011a) == null || (textLayoutInput = textLayoutResult.f10552a) == null) ? null : textLayoutInput.f10543a)) {
            return false;
        }
        if (previewableHandwritingGesture instanceof SelectGesture) {
            SelectGesture selectGesture = (SelectGesture) previewableHandwritingGesture;
            if (textFieldSelectionManager != null) {
                textFieldSelectionManager.t(HandwritingGesture_androidKt.f(legacyTextFieldState, RectHelper_androidKt.c(selectGesture.getSelectionArea()), e(selectGesture.getGranularity())));
            }
        } else if (previewableHandwritingGesture instanceof DeleteGesture) {
            DeleteGesture deleteGesture = (DeleteGesture) previewableHandwritingGesture;
            if (textFieldSelectionManager != null) {
                textFieldSelectionManager.r(HandwritingGesture_androidKt.f(legacyTextFieldState, RectHelper_androidKt.c(deleteGesture.getDeletionArea()), e(deleteGesture.getGranularity())));
            }
        } else if (previewableHandwritingGesture instanceof SelectRangeGesture) {
            SelectRangeGesture selectRangeGesture = (SelectRangeGesture) previewableHandwritingGesture;
            if (textFieldSelectionManager != null) {
                textFieldSelectionManager.t(HandwritingGesture_androidKt.b(legacyTextFieldState, RectHelper_androidKt.c(selectRangeGesture.getSelectionStartArea()), RectHelper_androidKt.c(selectRangeGesture.getSelectionEndArea()), e(selectRangeGesture.getGranularity())));
            }
        } else {
            if (!(previewableHandwritingGesture instanceof DeleteRangeGesture)) {
                return false;
            }
            DeleteRangeGesture deleteRangeGesture = (DeleteRangeGesture) previewableHandwritingGesture;
            if (textFieldSelectionManager != null) {
                textFieldSelectionManager.r(HandwritingGesture_androidKt.b(legacyTextFieldState, RectHelper_androidKt.c(deleteRangeGesture.getDeletionStartArea()), RectHelper_androidKt.c(deleteRangeGesture.getDeletionEndArea()), e(deleteRangeGesture.getGranularity())));
            }
        }
        int i2 = 1;
        if (cancellationSignal != null) {
            cancellationSignal.setOnCancelListener(new ro(textFieldSelectionManager, i2));
        }
        return true;
    }

    public static int e(int i2) {
        if (i2 == 1) {
            TextGranularity.f10536a.getClass();
            return TextGranularity.f10537b;
        }
        if (i2 != 2) {
            TextGranularity.f10536a.getClass();
            return 0;
        }
        TextGranularity.f10536a.getClass();
        return 0;
    }
}
