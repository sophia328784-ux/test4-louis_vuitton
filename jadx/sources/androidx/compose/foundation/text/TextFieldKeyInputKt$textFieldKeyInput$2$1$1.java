package androidx.compose.foundation.text;

import android.view.KeyCharacterMap;
import androidx.compose.foundation.text.selection.TextFieldPreparedSelection;
import androidx.compose.foundation.text.selection.TextPreparedSelectionState;
import androidx.compose.ui.input.key.KeyEvent;
import androidx.compose.ui.input.key.KeyEventType;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.CommitTextCommand;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.TextFieldValue;
import defpackage.v40;
import defpackage.z21;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
final /* synthetic */ class TextFieldKeyInputKt$textFieldKeyInput$2$1$1 extends FunctionReferenceImpl implements Function1<KeyEvent, Boolean> {
    /* JADX WARN: Code duplicated, block: B:20:0x0075  */
    /* JADX WARN: Code duplicated, block: B:25:0x0085  */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        CommitTextCommand commitTextCommand;
        final KeyCommand keyCommandA;
        Integer numValueOf;
        android.view.KeyEvent keyEvent = ((KeyEvent) obj).f9235a;
        final TextFieldKeyInput textFieldKeyInput = (TextFieldKeyInput) this.receiver;
        TextPreparedSelectionState textPreparedSelectionState = textFieldKeyInput.f5971f;
        boolean z = textFieldKeyInput.d;
        boolean z2 = true;
        if (keyEvent.getAction() != 0 || Character.isISOControl(keyEvent.getUnicodeChar())) {
            commitTextCommand = null;
        } else {
            DeadKeyCombiner deadKeyCombiner = textFieldKeyInput.f5973i;
            deadKeyCombiner.getClass();
            int unicodeChar = keyEvent.getUnicodeChar();
            if ((Integer.MIN_VALUE & unicodeChar) != 0) {
                deadKeyCombiner.f5890a = Integer.valueOf(unicodeChar & Integer.MAX_VALUE);
                numValueOf = null;
            } else {
                Integer num = deadKeyCombiner.f5890a;
                if (num != null) {
                    deadKeyCombiner.f5890a = null;
                    int deadChar = KeyCharacterMap.getDeadChar(num.intValue(), unicodeChar);
                    Integer numValueOf2 = Integer.valueOf(deadChar);
                    if (deadChar == 0) {
                        numValueOf2 = null;
                    }
                    if (numValueOf2 != null) {
                        unicodeChar = numValueOf2.intValue();
                    }
                    numValueOf = Integer.valueOf(unicodeChar);
                } else {
                    numValueOf = Integer.valueOf(unicodeChar);
                }
            }
            if (numValueOf != null) {
                commitTextCommand = new CommitTextCommand(new StringBuilder().appendCodePoint(numValueOf.intValue()).toString(), 1);
            } else {
                commitTextCommand = null;
            }
        }
        if (commitTextCommand == null) {
            int iB = KeyEvent_androidKt.b(keyEvent);
            KeyEventType.f9236a.getClass();
            if (iB != KeyEventType.f9238c || (keyCommandA = textFieldKeyInput.f5974j.a(keyEvent)) == null || (keyCommandA.getEditsText() && !z)) {
                z2 = false;
            } else {
                final Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
                ref$BooleanRef.f71917b = true;
                Function1 function1 = new Function1() { // from class: androidx.compose.foundation.text.i
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Integer numC;
                        Integer numD;
                        Integer numD2;
                        Integer numC2;
                        TextLayoutResult textLayoutResult;
                        TextLayoutResult textLayoutResult2;
                        TextLayoutResultProxy textLayoutResultProxy;
                        TextLayoutResultProxy textLayoutResultProxy2;
                        Integer numC3;
                        Integer numD3;
                        Integer numD4;
                        Integer numC4;
                        TextLayoutResult textLayoutResult3;
                        TextLayoutResult textLayoutResult4;
                        TextLayoutResultProxy textLayoutResultProxy3;
                        TextLayoutResultProxy textLayoutResultProxy4;
                        UndoManager.Entry entry;
                        TextFieldPreparedSelection textFieldPreparedSelection = (TextFieldPreparedSelection) obj2;
                        int i2 = TextFieldKeyInput.WhenMappings.f5976a[keyCommandA.ordinal()];
                        TextFieldKeyInput textFieldKeyInput2 = textFieldKeyInput;
                        Ref$BooleanRef ref$BooleanRef2 = ref$BooleanRef;
                        TextFieldValue textFieldValue = null;
                        switch (i2) {
                            case 1:
                                textFieldKeyInput2.f5968b.d(false);
                                break;
                            case 2:
                                textFieldKeyInput2.f5968b.q();
                                break;
                            case 3:
                                textFieldKeyInput2.f5968b.f();
                                break;
                            case 4:
                                textFieldPreparedSelection.f6339e.f6500a = null;
                                if (textFieldPreparedSelection.g.f10420c.length() > 0) {
                                    if (!TextRange.c(textFieldPreparedSelection.f6340f)) {
                                        boolean zE = textFieldPreparedSelection.e();
                                        long j2 = textFieldPreparedSelection.f6340f;
                                        if (!zE) {
                                            int iE = TextRange.e(j2);
                                            textFieldPreparedSelection.o(iE, iE);
                                        } else {
                                            int iF = TextRange.f(j2);
                                            textFieldPreparedSelection.o(iF, iF);
                                        }
                                    } else {
                                        textFieldPreparedSelection.g();
                                    }
                                }
                                break;
                            case 5:
                                textFieldPreparedSelection.f6339e.f6500a = null;
                                if (textFieldPreparedSelection.g.f10420c.length() > 0) {
                                    if (!TextRange.c(textFieldPreparedSelection.f6340f)) {
                                        boolean zE2 = textFieldPreparedSelection.e();
                                        long j3 = textFieldPreparedSelection.f6340f;
                                        if (!zE2) {
                                            int iF2 = TextRange.f(j3);
                                            textFieldPreparedSelection.o(iF2, iF2);
                                        } else {
                                            int iE2 = TextRange.e(j3);
                                            textFieldPreparedSelection.o(iE2, iE2);
                                        }
                                    } else {
                                        textFieldPreparedSelection.k();
                                    }
                                }
                                break;
                            case 6:
                                TextPreparedSelectionState textPreparedSelectionState2 = textFieldPreparedSelection.f6339e;
                                textPreparedSelectionState2.f6500a = null;
                                AnnotatedString annotatedString = textFieldPreparedSelection.g;
                                String str = annotatedString.f10420c;
                                String str2 = annotatedString.f10420c;
                                if (str.length() > 0) {
                                    if (!textFieldPreparedSelection.e()) {
                                        textPreparedSelectionState2.f6500a = null;
                                        if (str2.length() > 0 && (numC = textFieldPreparedSelection.c()) != null) {
                                            int iIntValue = numC.intValue();
                                            textFieldPreparedSelection.o(iIntValue, iIntValue);
                                        }
                                    } else {
                                        textPreparedSelectionState2.f6500a = null;
                                        if (str2.length() > 0 && (numD = textFieldPreparedSelection.d()) != null) {
                                            int iIntValue2 = numD.intValue();
                                            textFieldPreparedSelection.o(iIntValue2, iIntValue2);
                                        }
                                    }
                                }
                                break;
                            case 7:
                                TextPreparedSelectionState textPreparedSelectionState3 = textFieldPreparedSelection.f6339e;
                                textPreparedSelectionState3.f6500a = null;
                                AnnotatedString annotatedString2 = textFieldPreparedSelection.g;
                                String str3 = annotatedString2.f10420c;
                                String str4 = annotatedString2.f10420c;
                                if (str3.length() > 0) {
                                    if (!textFieldPreparedSelection.e()) {
                                        textPreparedSelectionState3.f6500a = null;
                                        if (str4.length() > 0 && (numD2 = textFieldPreparedSelection.d()) != null) {
                                            int iIntValue3 = numD2.intValue();
                                            textFieldPreparedSelection.o(iIntValue3, iIntValue3);
                                        }
                                    } else {
                                        textPreparedSelectionState3.f6500a = null;
                                        if (str4.length() > 0 && (numC2 = textFieldPreparedSelection.c()) != null) {
                                            int iIntValue4 = numC2.intValue();
                                            textFieldPreparedSelection.o(iIntValue4, iIntValue4);
                                        }
                                    }
                                }
                                break;
                            case 8:
                                textFieldPreparedSelection.j();
                                break;
                            case 9:
                                textFieldPreparedSelection.h();
                                break;
                            case 10:
                                if (textFieldPreparedSelection.g.f10420c.length() > 0 && (textLayoutResult = textFieldPreparedSelection.f6338c) != null) {
                                    int iF3 = textFieldPreparedSelection.f(textLayoutResult, -1);
                                    textFieldPreparedSelection.o(iF3, iF3);
                                }
                                break;
                            case 11:
                                if (textFieldPreparedSelection.g.f10420c.length() > 0 && (textLayoutResult2 = textFieldPreparedSelection.f6338c) != null) {
                                    int iF4 = textFieldPreparedSelection.f(textLayoutResult2, 1);
                                    textFieldPreparedSelection.o(iF4, iF4);
                                }
                                break;
                            case 12:
                                if (textFieldPreparedSelection.g.f10420c.length() > 0 && (textLayoutResultProxy = textFieldPreparedSelection.f6453i) != null) {
                                    int iR = textFieldPreparedSelection.r(textLayoutResultProxy, -1);
                                    textFieldPreparedSelection.o(iR, iR);
                                }
                                break;
                            case 13:
                                if (textFieldPreparedSelection.g.f10420c.length() > 0 && (textLayoutResultProxy2 = textFieldPreparedSelection.f6453i) != null) {
                                    int iR2 = textFieldPreparedSelection.r(textLayoutResultProxy2, 1);
                                    textFieldPreparedSelection.o(iR2, iR2);
                                }
                                break;
                            case 14:
                                textFieldPreparedSelection.m();
                                break;
                            case 15:
                                textFieldPreparedSelection.l();
                                break;
                            case 16:
                                textFieldPreparedSelection.f6339e.f6500a = null;
                                if (textFieldPreparedSelection.g.f10420c.length() > 0) {
                                    if (!textFieldPreparedSelection.e()) {
                                        textFieldPreparedSelection.l();
                                    } else {
                                        textFieldPreparedSelection.m();
                                    }
                                }
                                break;
                            case 17:
                                textFieldPreparedSelection.f6339e.f6500a = null;
                                if (textFieldPreparedSelection.g.f10420c.length() > 0) {
                                    if (!textFieldPreparedSelection.e()) {
                                        textFieldPreparedSelection.m();
                                    } else {
                                        textFieldPreparedSelection.l();
                                    }
                                }
                                break;
                            case 18:
                                textFieldPreparedSelection.f6339e.f6500a = null;
                                if (textFieldPreparedSelection.g.f10420c.length() > 0) {
                                    textFieldPreparedSelection.o(0, 0);
                                }
                                break;
                            case 19:
                                textFieldPreparedSelection.f6339e.f6500a = null;
                                AnnotatedString annotatedString3 = textFieldPreparedSelection.g;
                                if (annotatedString3.f10420c.length() > 0) {
                                    int length = annotatedString3.f10420c.length();
                                    textFieldPreparedSelection.o(length, length);
                                }
                                break;
                            case 20:
                                List listQ = textFieldPreparedSelection.q(new z21(0));
                                if (listQ != null) {
                                    textFieldKeyInput2.a(listQ);
                                }
                                break;
                            case 21:
                                List listQ2 = textFieldPreparedSelection.q(new z21(1));
                                if (listQ2 != null) {
                                    textFieldKeyInput2.a(listQ2);
                                }
                                break;
                            case 22:
                                List listQ3 = textFieldPreparedSelection.q(new z21(2));
                                if (listQ3 != null) {
                                    textFieldKeyInput2.a(listQ3);
                                }
                                break;
                            case 23:
                                List listQ4 = textFieldPreparedSelection.q(new z21(3));
                                if (listQ4 != null) {
                                    textFieldKeyInput2.a(listQ4);
                                }
                                break;
                            case 24:
                                List listQ5 = textFieldPreparedSelection.q(new z21(4));
                                if (listQ5 != null) {
                                    textFieldKeyInput2.a(listQ5);
                                }
                                break;
                            case 25:
                                List listQ6 = textFieldPreparedSelection.q(new z21(5));
                                if (listQ6 != null) {
                                    textFieldKeyInput2.a(listQ6);
                                }
                                break;
                            case 26:
                                if (!textFieldKeyInput2.f5970e) {
                                    textFieldKeyInput2.a(CollectionsKt.O(new CommitTextCommand("\n", 1)));
                                } else {
                                    ref$BooleanRef2.f71917b = ((Boolean) textFieldKeyInput2.f5967a.x.invoke(new ImeAction(textFieldKeyInput2.l))).booleanValue();
                                }
                                break;
                            case 27:
                                if (!textFieldKeyInput2.f5970e) {
                                    textFieldKeyInput2.a(CollectionsKt.O(new CommitTextCommand("\t", 1)));
                                } else {
                                    ref$BooleanRef2.f71917b = false;
                                }
                                break;
                            case 28:
                                textFieldPreparedSelection.f6339e.f6500a = null;
                                AnnotatedString annotatedString4 = textFieldPreparedSelection.g;
                                if (annotatedString4.f10420c.length() > 0) {
                                    textFieldPreparedSelection.o(0, annotatedString4.f10420c.length());
                                }
                                break;
                            case 29:
                                textFieldPreparedSelection.g();
                                textFieldPreparedSelection.n();
                                break;
                            case 30:
                                textFieldPreparedSelection.k();
                                textFieldPreparedSelection.n();
                                break;
                            case 31:
                                TextPreparedSelectionState textPreparedSelectionState4 = textFieldPreparedSelection.f6339e;
                                textPreparedSelectionState4.f6500a = null;
                                AnnotatedString annotatedString5 = textFieldPreparedSelection.g;
                                String str5 = annotatedString5.f10420c;
                                String str6 = annotatedString5.f10420c;
                                if (str5.length() > 0) {
                                    if (textFieldPreparedSelection.e()) {
                                        textPreparedSelectionState4.f6500a = null;
                                        if (str6.length() > 0 && (numD3 = textFieldPreparedSelection.d()) != null) {
                                            int iIntValue5 = numD3.intValue();
                                            textFieldPreparedSelection.o(iIntValue5, iIntValue5);
                                        }
                                    } else {
                                        textPreparedSelectionState4.f6500a = null;
                                        if (str6.length() > 0 && (numC3 = textFieldPreparedSelection.c()) != null) {
                                            int iIntValue6 = numC3.intValue();
                                            textFieldPreparedSelection.o(iIntValue6, iIntValue6);
                                        }
                                    }
                                }
                                textFieldPreparedSelection.n();
                                break;
                            case 32:
                                TextPreparedSelectionState textPreparedSelectionState5 = textFieldPreparedSelection.f6339e;
                                textPreparedSelectionState5.f6500a = null;
                                AnnotatedString annotatedString6 = textFieldPreparedSelection.g;
                                String str7 = annotatedString6.f10420c;
                                String str8 = annotatedString6.f10420c;
                                if (str7.length() > 0) {
                                    if (textFieldPreparedSelection.e()) {
                                        textPreparedSelectionState5.f6500a = null;
                                        if (str8.length() > 0 && (numC4 = textFieldPreparedSelection.c()) != null) {
                                            int iIntValue7 = numC4.intValue();
                                            textFieldPreparedSelection.o(iIntValue7, iIntValue7);
                                        }
                                    } else {
                                        textPreparedSelectionState5.f6500a = null;
                                        if (str8.length() > 0 && (numD4 = textFieldPreparedSelection.d()) != null) {
                                            int iIntValue8 = numD4.intValue();
                                            textFieldPreparedSelection.o(iIntValue8, iIntValue8);
                                        }
                                    }
                                }
                                textFieldPreparedSelection.n();
                                break;
                            case 33:
                                textFieldPreparedSelection.j();
                                textFieldPreparedSelection.n();
                                break;
                            case 34:
                                textFieldPreparedSelection.h();
                                textFieldPreparedSelection.n();
                                break;
                            case 35:
                                textFieldPreparedSelection.m();
                                textFieldPreparedSelection.n();
                                break;
                            case 36:
                                textFieldPreparedSelection.l();
                                textFieldPreparedSelection.n();
                                break;
                            case 37:
                                textFieldPreparedSelection.f6339e.f6500a = null;
                                if (textFieldPreparedSelection.g.f10420c.length() > 0) {
                                    if (textFieldPreparedSelection.e()) {
                                        textFieldPreparedSelection.m();
                                    } else {
                                        textFieldPreparedSelection.l();
                                    }
                                }
                                textFieldPreparedSelection.n();
                                break;
                            case 38:
                                textFieldPreparedSelection.f6339e.f6500a = null;
                                if (textFieldPreparedSelection.g.f10420c.length() > 0) {
                                    if (textFieldPreparedSelection.e()) {
                                        textFieldPreparedSelection.l();
                                    } else {
                                        textFieldPreparedSelection.m();
                                    }
                                }
                                textFieldPreparedSelection.n();
                                break;
                            case 39:
                                if (textFieldPreparedSelection.g.f10420c.length() > 0 && (textLayoutResult3 = textFieldPreparedSelection.f6338c) != null) {
                                    int iF5 = textFieldPreparedSelection.f(textLayoutResult3, -1);
                                    textFieldPreparedSelection.o(iF5, iF5);
                                }
                                textFieldPreparedSelection.n();
                                break;
                            case 40:
                                if (textFieldPreparedSelection.g.f10420c.length() > 0 && (textLayoutResult4 = textFieldPreparedSelection.f6338c) != null) {
                                    int iF6 = textFieldPreparedSelection.f(textLayoutResult4, 1);
                                    textFieldPreparedSelection.o(iF6, iF6);
                                }
                                textFieldPreparedSelection.n();
                                break;
                            case 41:
                                if (textFieldPreparedSelection.g.f10420c.length() > 0 && (textLayoutResultProxy3 = textFieldPreparedSelection.f6453i) != null) {
                                    int iR3 = textFieldPreparedSelection.r(textLayoutResultProxy3, -1);
                                    textFieldPreparedSelection.o(iR3, iR3);
                                }
                                textFieldPreparedSelection.n();
                                break;
                            case EACTags.CURRENCY_CODE /* 42 */:
                                if (textFieldPreparedSelection.g.f10420c.length() > 0 && (textLayoutResultProxy4 = textFieldPreparedSelection.f6453i) != null) {
                                    int iR4 = textFieldPreparedSelection.r(textLayoutResultProxy4, 1);
                                    textFieldPreparedSelection.o(iR4, iR4);
                                }
                                textFieldPreparedSelection.n();
                                break;
                            case EACTags.DATE_OF_BIRTH /* 43 */:
                                textFieldPreparedSelection.f6339e.f6500a = null;
                                if (textFieldPreparedSelection.g.f10420c.length() > 0) {
                                    textFieldPreparedSelection.o(0, 0);
                                }
                                textFieldPreparedSelection.n();
                                break;
                            case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                                textFieldPreparedSelection.f6339e.f6500a = null;
                                AnnotatedString annotatedString7 = textFieldPreparedSelection.g;
                                if (annotatedString7.f10420c.length() > 0) {
                                    int length2 = annotatedString7.f10420c.length();
                                    textFieldPreparedSelection.o(length2, length2);
                                }
                                textFieldPreparedSelection.n();
                                break;
                            case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                                textFieldPreparedSelection.f6339e.f6500a = null;
                                if (textFieldPreparedSelection.g.f10420c.length() > 0) {
                                    long j4 = textFieldPreparedSelection.f6340f;
                                    TextRange.Companion companion = TextRange.f10564b;
                                    int i3 = (int) (j4 & BodyPartID.bodyIdMax);
                                    textFieldPreparedSelection.o(i3, i3);
                                }
                                break;
                            case 46:
                                UndoManager undoManager = textFieldKeyInput2.f5972h;
                                if (undoManager != null) {
                                    undoManager.a(TextFieldValue.a(textFieldPreparedSelection.f6452h, textFieldPreparedSelection.g, textFieldPreparedSelection.f6340f, 4));
                                }
                                UndoManager undoManager2 = textFieldKeyInput2.f5972h;
                                if (undoManager2 != null) {
                                    UndoManager.Entry entry2 = undoManager2.f6030b;
                                    if (entry2 != null && (entry = entry2.f6034a) != null) {
                                        undoManager2.f6030b = entry;
                                        undoManager2.d -= entry2.f6035b.f10840a.f10420c.length();
                                        undoManager2.f6031c = new UndoManager.Entry(undoManager2.f6031c, entry2.f6035b);
                                        textFieldValue = entry.f6035b;
                                    }
                                    if (textFieldValue != null) {
                                        textFieldKeyInput2.f5975k.invoke(textFieldValue);
                                    }
                                }
                                break;
                            case EACTags.PIN_USAGE_POLICY /* 47 */:
                                UndoManager undoManager3 = textFieldKeyInput2.f5972h;
                                if (undoManager3 != null) {
                                    UndoManager.Entry entry3 = undoManager3.f6031c;
                                    if (entry3 != null) {
                                        undoManager3.f6031c = entry3.f6034a;
                                        undoManager3.f6030b = new UndoManager.Entry(undoManager3.f6030b, entry3.f6035b);
                                        undoManager3.d = entry3.f6035b.f10840a.f10420c.length() + undoManager3.d;
                                        textFieldValue = entry3.f6035b;
                                    }
                                    if (textFieldValue != null) {
                                        textFieldKeyInput2.f5975k.invoke(textFieldValue);
                                    }
                                }
                                break;
                            case 48:
                            case 49:
                                break;
                            default:
                                v40.g();
                                return null;
                        }
                        return Unit.f71739a;
                    }
                };
                TextFieldValue textFieldValue = textFieldKeyInput.f5969c;
                TextFieldPreparedSelection textFieldPreparedSelection = new TextFieldPreparedSelection(textFieldValue, textFieldKeyInput.g, textFieldKeyInput.f5967a.d(), textPreparedSelectionState);
                function1.invoke(textFieldPreparedSelection);
                boolean zB = TextRange.b(textFieldPreparedSelection.f6340f, textFieldValue.f10841b);
                AnnotatedString annotatedString = textFieldPreparedSelection.g;
                if (!zB || !Intrinsics.c(annotatedString, textFieldValue.f10840a)) {
                    textFieldKeyInput.f5975k.invoke(TextFieldValue.a(textFieldPreparedSelection.f6452h, annotatedString, textFieldPreparedSelection.f6340f, 4));
                }
                UndoManager undoManager = textFieldKeyInput.f5972h;
                if (undoManager != null) {
                    undoManager.f6033f = true;
                }
                z2 = ref$BooleanRef.f71917b;
            }
        } else if (z) {
            textFieldKeyInput.a(CollectionsKt.O(commitTextCommand));
            textPreparedSelectionState.f6500a = null;
        } else {
            z2 = false;
        }
        return Boolean.valueOf(z2);
    }
}
