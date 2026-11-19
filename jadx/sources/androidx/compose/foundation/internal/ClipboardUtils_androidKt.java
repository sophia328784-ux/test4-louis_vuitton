package androidx.compose.foundation.internal;

import android.content.ClipData;
import android.os.Parcel;
import android.text.Annotation;
import android.text.Spanned;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.platform.ClipEntry;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.PlatformSpanStyle;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ClipboardUtils_androidKt {
    public static final AnnotatedString a(ClipEntry clipEntry) {
        CharSequence text;
        int i2;
        byte b2;
        int i3;
        int i4 = 0;
        ClipData.Item itemAt = clipEntry.f10004a.getItemAt(0);
        if (itemAt == null || (text = itemAt.getText()) == null) {
            return null;
        }
        byte b3 = 2;
        if (!(text instanceof Spanned)) {
            return new AnnotatedString(text.toString(), null, 2, null);
        }
        Spanned spanned = (Spanned) text;
        Annotation[] annotationArr = (Annotation[]) spanned.getSpans(0, spanned.length(), Annotation.class);
        ArrayList arrayList = new ArrayList();
        int iA = ArraysKt.A(annotationArr);
        if (iA >= 0) {
            int i5 = 0;
            while (true) {
                Annotation annotation = annotationArr[i5];
                if (Intrinsics.c(annotation.getKey(), "androidx.compose.text.SpanStyle")) {
                    int spanStart = spanned.getSpanStart(annotation);
                    int spanEnd = spanned.getSpanEnd(annotation);
                    DecodeHelper decodeHelper = new DecodeHelper(annotation.getValue());
                    MutableSpanStyle mutableSpanStyle = new MutableSpanStyle(0L, 0L, null, null, null, null, null, 0L, null, null, null, 0L, null, null, 16383, null);
                    while (true) {
                        Parcel parcel = decodeHelper.f4899a;
                        if (parcel.dataAvail() > 1) {
                            byte b4 = parcel.readByte();
                            if (b4 != 1) {
                                i4 = i4;
                                if (b4 == b3) {
                                    if (parcel.dataAvail() >= 5) {
                                        mutableSpanStyle.f4902b = decodeHelper.b();
                                    } else {
                                        arrayList.add(new AnnotatedString.Range(new SpanStyle(mutableSpanStyle.f4901a, mutableSpanStyle.f4902b, mutableSpanStyle.f4903c, mutableSpanStyle.d, mutableSpanStyle.f4904e, mutableSpanStyle.f4905f, mutableSpanStyle.g, mutableSpanStyle.f4906h, mutableSpanStyle.f4907i, mutableSpanStyle.f4908j, mutableSpanStyle.f4909k, mutableSpanStyle.l, mutableSpanStyle.m, mutableSpanStyle.n, (PlatformSpanStyle) null, (DrawStyle) null, 49152, (DefaultConstructorMarker) null), spanStart, spanEnd));
                                    }
                                } else if (b4 == 3) {
                                    if (parcel.dataAvail() >= 4) {
                                        mutableSpanStyle.f4903c = new FontWeight(parcel.readInt());
                                        b3 = 2;
                                    } else {
                                        arrayList.add(new AnnotatedString.Range(new SpanStyle(mutableSpanStyle.f4901a, mutableSpanStyle.f4902b, mutableSpanStyle.f4903c, mutableSpanStyle.d, mutableSpanStyle.f4904e, mutableSpanStyle.f4905f, mutableSpanStyle.g, mutableSpanStyle.f4906h, mutableSpanStyle.f4907i, mutableSpanStyle.f4908j, mutableSpanStyle.f4909k, mutableSpanStyle.l, mutableSpanStyle.m, mutableSpanStyle.n, (PlatformSpanStyle) null, (DrawStyle) null, 49152, (DefaultConstructorMarker) null), spanStart, spanEnd));
                                    }
                                } else if (b4 == 4) {
                                    if (parcel.dataAvail() >= 1) {
                                        byte b5 = parcel.readByte();
                                        if (b5 != 0 && b5 == 1) {
                                            FontStyle.f10715b.getClass();
                                            i2 = FontStyle.f10716c;
                                        } else {
                                            FontStyle.f10715b.getClass();
                                            i2 = i4;
                                        }
                                        mutableSpanStyle.d = new FontStyle(i2);
                                        b3 = 2;
                                    } else {
                                        arrayList.add(new AnnotatedString.Range(new SpanStyle(mutableSpanStyle.f4901a, mutableSpanStyle.f4902b, mutableSpanStyle.f4903c, mutableSpanStyle.d, mutableSpanStyle.f4904e, mutableSpanStyle.f4905f, mutableSpanStyle.g, mutableSpanStyle.f4906h, mutableSpanStyle.f4907i, mutableSpanStyle.f4908j, mutableSpanStyle.f4909k, mutableSpanStyle.l, mutableSpanStyle.m, mutableSpanStyle.n, (PlatformSpanStyle) null, (DrawStyle) null, 49152, (DefaultConstructorMarker) null), spanStart, spanEnd));
                                    }
                                } else if (b4 != 5) {
                                    b2 = 2;
                                    if (b4 == 6) {
                                        mutableSpanStyle.g = parcel.readString();
                                    } else if (b4 == 7) {
                                        if (parcel.dataAvail() >= 5) {
                                            mutableSpanStyle.f4906h = decodeHelper.b();
                                        } else {
                                            arrayList.add(new AnnotatedString.Range(new SpanStyle(mutableSpanStyle.f4901a, mutableSpanStyle.f4902b, mutableSpanStyle.f4903c, mutableSpanStyle.d, mutableSpanStyle.f4904e, mutableSpanStyle.f4905f, mutableSpanStyle.g, mutableSpanStyle.f4906h, mutableSpanStyle.f4907i, mutableSpanStyle.f4908j, mutableSpanStyle.f4909k, mutableSpanStyle.l, mutableSpanStyle.m, mutableSpanStyle.n, (PlatformSpanStyle) null, (DrawStyle) null, 49152, (DefaultConstructorMarker) null), spanStart, spanEnd));
                                        }
                                    } else if (b4 == 8) {
                                        if (parcel.dataAvail() >= 4) {
                                            mutableSpanStyle.f4907i = new BaselineShift(parcel.readFloat());
                                        } else {
                                            arrayList.add(new AnnotatedString.Range(new SpanStyle(mutableSpanStyle.f4901a, mutableSpanStyle.f4902b, mutableSpanStyle.f4903c, mutableSpanStyle.d, mutableSpanStyle.f4904e, mutableSpanStyle.f4905f, mutableSpanStyle.g, mutableSpanStyle.f4906h, mutableSpanStyle.f4907i, mutableSpanStyle.f4908j, mutableSpanStyle.f4909k, mutableSpanStyle.l, mutableSpanStyle.m, mutableSpanStyle.n, (PlatformSpanStyle) null, (DrawStyle) null, 49152, (DefaultConstructorMarker) null), spanStart, spanEnd));
                                        }
                                    } else if (b4 == 9) {
                                        if (parcel.dataAvail() >= 8) {
                                            mutableSpanStyle.f4908j = new TextGeometricTransform(parcel.readFloat(), parcel.readFloat());
                                        } else {
                                            arrayList.add(new AnnotatedString.Range(new SpanStyle(mutableSpanStyle.f4901a, mutableSpanStyle.f4902b, mutableSpanStyle.f4903c, mutableSpanStyle.d, mutableSpanStyle.f4904e, mutableSpanStyle.f4905f, mutableSpanStyle.g, mutableSpanStyle.f4906h, mutableSpanStyle.f4907i, mutableSpanStyle.f4908j, mutableSpanStyle.f4909k, mutableSpanStyle.l, mutableSpanStyle.m, mutableSpanStyle.n, (PlatformSpanStyle) null, (DrawStyle) null, 49152, (DefaultConstructorMarker) null), spanStart, spanEnd));
                                        }
                                    } else if (b4 == 10) {
                                        if (parcel.dataAvail() >= 8) {
                                            mutableSpanStyle.l = decodeHelper.a();
                                        } else {
                                            arrayList.add(new AnnotatedString.Range(new SpanStyle(mutableSpanStyle.f4901a, mutableSpanStyle.f4902b, mutableSpanStyle.f4903c, mutableSpanStyle.d, mutableSpanStyle.f4904e, mutableSpanStyle.f4905f, mutableSpanStyle.g, mutableSpanStyle.f4906h, mutableSpanStyle.f4907i, mutableSpanStyle.f4908j, mutableSpanStyle.f4909k, mutableSpanStyle.l, mutableSpanStyle.m, mutableSpanStyle.n, (PlatformSpanStyle) null, (DrawStyle) null, 49152, (DefaultConstructorMarker) null), spanStart, spanEnd));
                                        }
                                    } else if (b4 != 11) {
                                        if (b4 == 12) {
                                            if (parcel.dataAvail() >= 20) {
                                                long jA = decodeHelper.a();
                                                float f2 = parcel.readFloat();
                                                float f3 = parcel.readFloat();
                                                long jFloatToRawIntBits = Float.floatToRawIntBits(f2);
                                                int iFloatToRawIntBits = Float.floatToRawIntBits(f3);
                                                CharSequence charSequence = text;
                                                long j2 = (jFloatToRawIntBits << 32) | (((long) iFloatToRawIntBits) & BodyPartID.bodyIdMax);
                                                Offset.Companion companion = Offset.f8806b;
                                                mutableSpanStyle.n = new Shadow(jA, j2, parcel.readFloat(), null);
                                                text = charSequence;
                                            } else {
                                                arrayList.add(new AnnotatedString.Range(new SpanStyle(mutableSpanStyle.f4901a, mutableSpanStyle.f4902b, mutableSpanStyle.f4903c, mutableSpanStyle.d, mutableSpanStyle.f4904e, mutableSpanStyle.f4905f, mutableSpanStyle.g, mutableSpanStyle.f4906h, mutableSpanStyle.f4907i, mutableSpanStyle.f4908j, mutableSpanStyle.f4909k, mutableSpanStyle.l, mutableSpanStyle.m, mutableSpanStyle.n, (PlatformSpanStyle) null, (DrawStyle) null, 49152, (DefaultConstructorMarker) null), spanStart, spanEnd));
                                            }
                                        }
                                        b3 = b2;
                                    } else if (parcel.dataAvail() >= 4) {
                                        int i6 = parcel.readInt();
                                        TextDecoration.f10965b.getClass();
                                        TextDecoration textDecoration = TextDecoration.f10967e;
                                        int i7 = (textDecoration.f10968a & i6) != 0 ? 1 : i4;
                                        TextDecoration textDecoration2 = TextDecoration.d;
                                        int i8 = (i6 & textDecoration2.f10968a) != 0 ? 1 : i4;
                                        if (i7 != 0 && i8 != 0) {
                                            List listP = CollectionsKt.P(textDecoration, textDecoration2);
                                            Integer numValueOf = Integer.valueOf(i4);
                                            int size = listP.size();
                                            for (int i9 = i4; i9 < size; i9++) {
                                                numValueOf = Integer.valueOf(numValueOf.intValue() | ((TextDecoration) listP.get(i9)).f10968a);
                                            }
                                            textDecoration = new TextDecoration(numValueOf.intValue());
                                        } else if (i7 == 0) {
                                            textDecoration = i8 != 0 ? textDecoration2 : TextDecoration.f10966c;
                                        }
                                        mutableSpanStyle.m = textDecoration;
                                    } else {
                                        arrayList.add(new AnnotatedString.Range(new SpanStyle(mutableSpanStyle.f4901a, mutableSpanStyle.f4902b, mutableSpanStyle.f4903c, mutableSpanStyle.d, mutableSpanStyle.f4904e, mutableSpanStyle.f4905f, mutableSpanStyle.g, mutableSpanStyle.f4906h, mutableSpanStyle.f4907i, mutableSpanStyle.f4908j, mutableSpanStyle.f4909k, mutableSpanStyle.l, mutableSpanStyle.m, mutableSpanStyle.n, (PlatformSpanStyle) null, (DrawStyle) null, 49152, (DefaultConstructorMarker) null), spanStart, spanEnd));
                                    }
                                    b3 = b2;
                                } else if (parcel.dataAvail() >= 1) {
                                    byte b6 = parcel.readByte();
                                    if (b6 == 0) {
                                        FontSynthesis.f10718b.getClass();
                                        i3 = i4;
                                    } else if (b6 == 1) {
                                        FontSynthesis.f10718b.getClass();
                                        i3 = FontSynthesis.f10720e;
                                    } else {
                                        if (b6 == 3) {
                                            FontSynthesis.f10718b.getClass();
                                            i3 = FontSynthesis.d;
                                        } else {
                                            b2 = 2;
                                            if (b6 == 2) {
                                                FontSynthesis.f10718b.getClass();
                                                i3 = FontSynthesis.f10719c;
                                            } else {
                                                FontSynthesis.f10718b.getClass();
                                                i3 = i4;
                                            }
                                        }
                                        mutableSpanStyle.f4904e = new FontSynthesis(i3);
                                        b3 = b2;
                                    }
                                    b2 = 2;
                                    mutableSpanStyle.f4904e = new FontSynthesis(i3);
                                    b3 = b2;
                                } else {
                                    arrayList.add(new AnnotatedString.Range(new SpanStyle(mutableSpanStyle.f4901a, mutableSpanStyle.f4902b, mutableSpanStyle.f4903c, mutableSpanStyle.d, mutableSpanStyle.f4904e, mutableSpanStyle.f4905f, mutableSpanStyle.g, mutableSpanStyle.f4906h, mutableSpanStyle.f4907i, mutableSpanStyle.f4908j, mutableSpanStyle.f4909k, mutableSpanStyle.l, mutableSpanStyle.m, mutableSpanStyle.n, (PlatformSpanStyle) null, (DrawStyle) null, 49152, (DefaultConstructorMarker) null), spanStart, spanEnd));
                                }
                                i4 = i4;
                            } else if (parcel.dataAvail() >= 8) {
                                mutableSpanStyle.f4901a = decodeHelper.a();
                            }
                        }
                        i4 = i4;
                        arrayList.add(new AnnotatedString.Range(new SpanStyle(mutableSpanStyle.f4901a, mutableSpanStyle.f4902b, mutableSpanStyle.f4903c, mutableSpanStyle.d, mutableSpanStyle.f4904e, mutableSpanStyle.f4905f, mutableSpanStyle.g, mutableSpanStyle.f4906h, mutableSpanStyle.f4907i, mutableSpanStyle.f4908j, mutableSpanStyle.f4909k, mutableSpanStyle.l, mutableSpanStyle.m, mutableSpanStyle.n, (PlatformSpanStyle) null, (DrawStyle) null, 49152, (DefaultConstructorMarker) null), spanStart, spanEnd));
                    }
                } else {
                    text = text;
                    i4 = i4;
                }
                if (i5 == iA) {
                    break;
                }
                i5++;
                i4 = i4;
                text = text;
                b3 = 2;
            }
        } else {
            text = text;
        }
        return new AnnotatedString(text.toString(), arrayList, null, 4, null);
    }

    /*  JADX ERROR: NullPointerException in pass: ConstructorVisitor
        java.lang.NullPointerException
        */
    public static final androidx.compose.ui.platform.ClipEntry b(
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r21v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:215)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:150)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:415)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
        */
    /*  JADX ERROR: NullPointerException in pass: ConstructorVisitor
        java.lang.NullPointerException
        */
}
