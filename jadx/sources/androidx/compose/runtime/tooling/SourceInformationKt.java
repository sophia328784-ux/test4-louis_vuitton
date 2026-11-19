package androidx.compose.runtime.tooling;

import com.sightcall.advancedannotations.domain.parser.AnnotationParser;
import com.sightcall.advancedannotations.domain.parser.ColorParser;
import java.util.ArrayList;
import java.util.List;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"runtime"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SourceInformationKt {
    /* JADX WARN: Code duplicated, block: B:107:0x0244  */
    /* JADX WARN: Code duplicated, block: B:114:0x025d  */
    /* JADX WARN: Code duplicated, block: B:115:0x0266  */
    /* JADX WARN: Code duplicated, block: B:118:0x026f  */
    /* JADX WARN: Code duplicated, block: B:119:0x027c  */
    /* JADX WARN: Code duplicated, block: B:122:0x0292  */
    /* JADX WARN: Code duplicated, block: B:123:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:126:0x02aa  */
    /* JADX WARN: Code duplicated, block: B:127:0x02af  */
    /* JADX WARN: Code duplicated, block: B:129:0x02b2  */
    /* JADX WARN: Code duplicated, block: B:134:0x02d3  */
    /* JADX WARN: Code duplicated, block: B:137:0x02e5  */
    /* JADX WARN: Code duplicated, block: B:138:0x02e7  */
    /* JADX WARN: Code duplicated, block: B:141:0x02f1  */
    /* JADX WARN: Code duplicated, block: B:143:0x0303  */
    /* JADX WARN: Code duplicated, block: B:181:0x02c4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:185:0x0249 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v19, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v23 */
    public static final SourceInformation a(String str) throws ParseException {
        boolean z;
        boolean z2;
        String strE;
        int i2;
        String str2;
        int i3;
        EmptyList emptyList;
        List list;
        String strE2;
        String str3;
        String strSubstring;
        ArrayList arrayList;
        ?? r4;
        Integer numValueOf;
        Integer numValueOf2;
        int iIntValue;
        String strE3;
        String str4;
        SourceInfoParserState sourceInfoParserState = new SourceInfoParserState(str);
        char c2 = '(';
        int i4 = 1;
        if (sourceInfoParserState.c(ColorParser.ColorInstruction)) {
            sourceInfoParserState.f8571b++;
            if (sourceInfoParserState.c(ColorParser.ColorInstruction)) {
                sourceInfoParserState.f8571b++;
                z = true;
            } else {
                z = false;
            }
            if (sourceInfoParserState.c('(')) {
                sourceInfoParserState.f8571b++;
                strE = sourceInfoParserState.e(")");
                sourceInfoParserState.b();
                sourceInfoParserState.f8571b++;
                z2 = true;
            } else {
                z2 = true;
            }
            RandomAccess randomAccess = EmptyList.f71768b;
            while (true) {
                i2 = sourceInfoParserState.f8571b;
                str2 = sourceInfoParserState.f8570a;
                if (i2 >= str2.length() - i4 || !Character.isLetter(str2.charAt(sourceInfoParserState.f8571b)) || str2.charAt(sourceInfoParserState.f8571b + i4) != c2) {
                    break;
                }
                char cCharAt = str2.charAt(sourceInfoParserState.f8571b);
                i4 = i4;
                if (cCharAt != 'N') {
                    int i5 = sourceInfoParserState.f8571b;
                    if (cCharAt != 'P') {
                        sourceInfoParserState.f8571b = i5 + 2;
                        int i6 = 0;
                        while (true) {
                            if (i6 <= 0 && sourceInfoParserState.c(')')) {
                                sourceInfoParserState.b();
                                sourceInfoParserState.f8571b++;
                                break;
                            }
                            if (sourceInfoParserState.a()) {
                                sourceInfoParserState.f("unexpected end");
                                throw null;
                            }
                            if (sourceInfoParserState.c(c2)) {
                                i6++;
                            } else if (sourceInfoParserState.c(')')) {
                                i6--;
                            }
                            sourceInfoParserState.f8571b++;
                        }
                    } else {
                        sourceInfoParserState.f8571b = i5 + 2;
                        ArrayList arrayList2 = new ArrayList();
                        int i7 = 0;
                        for (char c3 = ')'; !sourceInfoParserState.a() && !sourceInfoParserState.c(c3); c3 = ')') {
                            if (sourceInfoParserState.c('!')) {
                                sourceInfoParserState.f8571b++;
                                String strE4 = sourceInfoParserState.e("!,)");
                                if (strE4.length() != 0) {
                                    int i8 = Integer.parseInt(strE4);
                                    int i9 = 0;
                                    while (i8 > 0) {
                                        int size = arrayList2.size();
                                        int i10 = 0;
                                        while (true) {
                                            if (i10 >= size) {
                                                arrayList2.add(new ParameterSourceInformation(i9, null, null, 6, null));
                                                i8--;
                                                break;
                                            }
                                            if (((ParameterSourceInformation) arrayList2.get(i10)).f8567a == i9) {
                                                i9++;
                                                break;
                                            }
                                            i10++;
                                        }
                                    }
                                } else {
                                    i7 = i4;
                                }
                            } else {
                                int iD = sourceInfoParserState.d("!:,)");
                                if (sourceInfoParserState.c(':')) {
                                    sourceInfoParserState.f8571b++;
                                    String strE5 = sourceInfoParserState.e("!,)");
                                    int iV = StringsKt.v(strE5, "c#", 0, false, 2);
                                    if (iV >= 0) {
                                        strE5 = StringsKt.K(strE5, iV, 2 + iV, "androidx.compose.").toString();
                                    }
                                    str4 = strE5;
                                } else {
                                    str4 = null;
                                }
                                if (i7 != 0) {
                                    int i11 = 0;
                                    while (i11 < iD) {
                                        int size2 = arrayList2.size();
                                        int i12 = 0;
                                        while (true) {
                                            if (i12 >= size2) {
                                                int i13 = i11;
                                                arrayList2.add(new ParameterSourceInformation(i13, null, null, 6, null));
                                                i11 = i13;
                                                break;
                                            }
                                            if (((ParameterSourceInformation) arrayList2.get(i12)).f8567a == i11) {
                                                i11++;
                                                break;
                                            }
                                            i12++;
                                        }
                                    }
                                    i7 = 0;
                                }
                                arrayList2.add(new ParameterSourceInformation(iD, null, str4, 2, null));
                            }
                            if (sourceInfoParserState.c(',')) {
                                sourceInfoParserState.f8571b++;
                            }
                        }
                        sourceInfoParserState.b();
                        sourceInfoParserState.f8571b++;
                        randomAccess = arrayList2;
                    }
                } else {
                    sourceInfoParserState.f8571b += 2;
                    ArrayList arrayList3 = new ArrayList();
                    while (!sourceInfoParserState.a() && !sourceInfoParserState.c(')')) {
                        String strE6 = sourceInfoParserState.e(":,)");
                        if (sourceInfoParserState.c(':')) {
                            sourceInfoParserState.f8571b++;
                            strE3 = sourceInfoParserState.e(",)");
                            int iV2 = StringsKt.v(strE3, "c#", 0, false, 2);
                            if (iV2 >= 0) {
                                strE3 = StringsKt.K(strE3, iV2, 2 + iV2, "androidx.compose.").toString();
                            }
                        } else {
                            strE3 = null;
                        }
                        arrayList3.add(new ParameterSourceInformation(arrayList3.size(), strE6, strE3));
                        if (sourceInfoParserState.c(',')) {
                            sourceInfoParserState.f8571b++;
                        }
                    }
                    sourceInfoParserState.b();
                    sourceInfoParserState.f8571b++;
                    randomAccess = arrayList3;
                }
                c2 = '(';
            }
            i3 = i4;
            emptyList = EmptyList.f71768b;
            if (sourceInfoParserState.c(':')) {
                sourceInfoParserState.f8571b++;
                list = emptyList;
            } else {
                arrayList = new ArrayList();
                while (!sourceInfoParserState.a() && !sourceInfoParserState.c(':')) {
                    if (sourceInfoParserState.c('*')) {
                        sourceInfoParserState.f8571b++;
                        r4 = i3;
                    } else {
                        r4 = 0;
                    }
                    if (sourceInfoParserState.c(AnnotationParser.AnnotationInstruction)) {
                        numValueOf = null;
                    } else {
                        numValueOf = Integer.valueOf(sourceInfoParserState.d("@") + 1);
                    }
                    sourceInfoParserState.f8571b++;
                    int iD2 = sourceInfoParserState.d("L,:");
                    if (sourceInfoParserState.c('L')) {
                        sourceInfoParserState.f8571b++;
                        numValueOf2 = Integer.valueOf(sourceInfoParserState.d(",:"));
                    } else {
                        numValueOf2 = null;
                    }
                    if (numValueOf != null) {
                        iIntValue = numValueOf.intValue();
                    } else {
                        iIntValue = -1;
                    }
                    arrayList.add(new LocationSourceInformation(iIntValue, iD2, numValueOf2 != null ? numValueOf2.intValue() : -1, r4));
                    if (sourceInfoParserState.c(',')) {
                        sourceInfoParserState.f8571b++;
                    }
                }
                sourceInfoParserState.f8571b++;
                list = arrayList;
            }
            strE2 = sourceInfoParserState.e("#");
            if (strE2.length() > 0) {
                str3 = strE2;
            } else {
                str3 = null;
            }
            if (sourceInfoParserState.c('#')) {
                int i14 = sourceInfoParserState.f8571b + 1;
                sourceInfoParserState.f8571b = i14;
                strSubstring = str2.substring(i14, str2.length());
            } else {
                strSubstring = null;
            }
            return new SourceInformation(z2, z, strE, str3, randomAccess, strSubstring, list, str);
        }
        z = false;
        z2 = false;
        strE = null;
        RandomAccess randomAccess2 = EmptyList.f71768b;
        while (true) {
            i2 = sourceInfoParserState.f8571b;
            str2 = sourceInfoParserState.f8570a;
            if (i2 >= str2.length() - i4) {
                break;
            }
            break;
        }
        i3 = i4;
        emptyList = EmptyList.f71768b;
        if (sourceInfoParserState.c(':')) {
            arrayList = new ArrayList();
            while (!sourceInfoParserState.a()) {
                if (sourceInfoParserState.c('*')) {
                    sourceInfoParserState.f8571b++;
                    r4 = i3;
                } else {
                    r4 = 0;
                }
                if (sourceInfoParserState.c(AnnotationParser.AnnotationInstruction)) {
                    numValueOf = Integer.valueOf(sourceInfoParserState.d("@") + 1);
                } else {
                    numValueOf = null;
                }
                sourceInfoParserState.f8571b++;
                int iD3 = sourceInfoParserState.d("L,:");
                if (sourceInfoParserState.c('L')) {
                    sourceInfoParserState.f8571b++;
                    numValueOf2 = Integer.valueOf(sourceInfoParserState.d(",:"));
                } else {
                    numValueOf2 = null;
                }
                if (numValueOf != null) {
                    iIntValue = numValueOf.intValue();
                } else {
                    iIntValue = -1;
                }
                arrayList.add(new LocationSourceInformation(iIntValue, iD3, numValueOf2 != null ? numValueOf2.intValue() : -1, r4));
                if (sourceInfoParserState.c(',')) {
                    sourceInfoParserState.f8571b++;
                }
            }
            sourceInfoParserState.f8571b++;
            list = arrayList;
        } else {
            sourceInfoParserState.f8571b++;
            list = emptyList;
        }
        strE2 = sourceInfoParserState.e("#");
        if (strE2.length() > 0) {
            str3 = strE2;
        } else {
            str3 = null;
        }
        if (sourceInfoParserState.c('#')) {
            int i15 = sourceInfoParserState.f8571b + 1;
            sourceInfoParserState.f8571b = i15;
            strSubstring = str2.substring(i15, str2.length());
        } else {
            strSubstring = null;
        }
        return new SourceInformation(z2, z, strE, str3, randomAccess2, strSubstring, list, str);
    }
}
