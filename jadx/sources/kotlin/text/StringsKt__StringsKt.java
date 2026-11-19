package kotlin.text;

import defpackage.b21;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.sequences.SequencesKt___SequencesKt$asIterable$$inlined$Iterable$1;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlin-stdlib"}, k = 5, mv = {2, 4, 0}, xi = 49, xs = "kotlin/text/StringsKt")
public class StringsKt__StringsKt extends StringsKt__StringsJVMKt {
    public static final int c(int i2, CharSequence charSequence, String str, boolean z) {
        charSequence.getClass();
        str.getClass();
        return (z || !(charSequence instanceof String)) ? d(charSequence, str, i2, charSequence.length(), z, false) : ((String) charSequence).indexOf(str, i2);
    }

    public static final int d(CharSequence charSequence, CharSequence charSequence2, int i2, int i3, boolean z, boolean z2) {
        IntProgression intProgression;
        CharSequence charSequence3 = charSequence2;
        int i4 = i2;
        int i5 = i3;
        if (z2) {
            int iT = StringsKt.t(charSequence);
            if (i4 > iT) {
                i4 = iT;
            }
            if (i5 < 0) {
                i5 = 0;
            }
            IntProgression.INSTANCE.getClass();
            intProgression = new IntProgression(i4, i5, -1);
        } else {
            if (i4 < 0) {
                i4 = 0;
            }
            int length = charSequence.length();
            if (i5 > length) {
                i5 = length;
            }
            intProgression = new IntRange(i4, i5);
        }
        boolean z3 = charSequence instanceof String;
        int i6 = intProgression.d;
        int i7 = intProgression.f71952c;
        int i8 = intProgression.f71951b;
        if (z3 && (charSequence3 instanceof String)) {
            if ((i6 > 0 && i8 <= i7) || (i6 < 0 && i7 <= i8)) {
                int i9 = i8;
                while (true) {
                    String str = (String) charSequence3;
                    if (StringsKt.D(str, 0, z, (String) charSequence, i9, str.length())) {
                        return i9;
                    }
                    if (i9 != i7) {
                        i9 += i6;
                    }
                }
            }
        } else if ((i6 > 0 && i8 <= i7) || (i6 < 0 && i7 <= i8)) {
            int i10 = i8;
            while (!f(charSequence3, 0, charSequence, i10, charSequence3.length(), z)) {
                if (i10 != i7) {
                    i10 += i6;
                    charSequence3 = charSequence2;
                }
            }
            return i10;
        }
        return -1;
    }

    public static final int e(CharSequence charSequence, char[] cArr, int i2, boolean z) {
        charSequence.getClass();
        if (!z && cArr.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(ArraysKt.P(cArr), i2);
        }
        if (i2 < 0) {
            i2 = 0;
        }
        int length = charSequence.length() - 1;
        if (i2 > length) {
            return -1;
        }
        while (true) {
            char cCharAt = charSequence.charAt(i2);
            for (char c2 : cArr) {
                if (CharsKt__CharKt.a(c2, cCharAt, z)) {
                    return i2;
                }
            }
            if (i2 == length) {
                return -1;
            }
            i2++;
        }
    }

    public static final boolean f(CharSequence charSequence, int i2, CharSequence charSequence2, int i3, int i4, boolean z) {
        charSequence.getClass();
        charSequence2.getClass();
        if (i3 < 0 || i2 < 0 || i2 > charSequence.length() - i4 || i3 > charSequence2.length() - i4) {
            return false;
        }
        for (int i5 = 0; i5 < i4; i5++) {
            if (!CharsKt__CharKt.a(charSequence.charAt(i2 + i5), charSequence2.charAt(i3 + i5), z)) {
                return false;
            }
        }
        return true;
    }

    public static final void g(int i2) {
        if (i2 >= 0) {
            return;
        }
        b21.n(pq0.k(i2, "Limit must be non-negative, but was "));
    }

    public static final List h(int i2, CharSequence charSequence, String str, boolean z) {
        g(i2);
        int length = 0;
        int iC = c(0, charSequence, str, z);
        if (iC == -1 || i2 == 1) {
            return CollectionsKt.O(charSequence.toString());
        }
        boolean z2 = i2 > 0;
        int i3 = 10;
        if (z2 && i2 <= 10) {
            i3 = i2;
        }
        ArrayList arrayList = new ArrayList(i3);
        do {
            arrayList.add(charSequence.subSequence(length, iC).toString());
            length = str.length() + iC;
            if (z2 && arrayList.size() == i2 - 1) {
                break;
            }
            iC = c(length, charSequence, str, z);
        } while (iC != -1);
        arrayList.add(charSequence.subSequence(length, charSequence.length()).toString());
        return arrayList;
    }

    public static boolean i(CharSequence charSequence, String str) {
        str.getClass();
        charSequence.getClass();
        return charSequence instanceof String ? StringsKt.P(str, (String) charSequence, false) : f(str, 0, charSequence, 0, charSequence.length(), false);
    }

    public static List split$default(CharSequence charSequence, String[] strArr, final boolean z, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            z = false;
        }
        if ((i3 & 4) != 0) {
            i2 = 0;
        }
        charSequence.getClass();
        strArr.getClass();
        if (strArr.length == 1) {
            String str = strArr[0];
            if (str.length() > 0) {
                return h(i2, charSequence, str, z);
            }
        }
        g(i2);
        final List listAsList = Arrays.asList(strArr);
        listAsList.getClass();
        SequencesKt___SequencesKt$asIterable$$inlined$Iterable$1 sequencesKt___SequencesKt$asIterable$$inlined$Iterable$1 = new SequencesKt___SequencesKt$asIterable$$inlined$Iterable$1(new DelimitedRangesSequence(charSequence, 0, i2, new Function2() { // from class: kotlin.text.b
            /* JADX WARN: Code duplicated, block: B:8:0x002c A[EDGE_INSN: B:8:0x002c->B:49:0x00cb BREAK  A[LOOP:0: B:20:0x0059->B:31:0x008d]] */
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj2, Object obj3) {
                Object next;
                Pair pair;
                String str2;
                Object next2;
                String str3;
                CharSequence charSequence2 = (CharSequence) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                charSequence2.getClass();
                List list = listAsList;
                boolean z2 = z;
                if (z2 || list.size() != 1) {
                    if (iIntValue < 0) {
                        iIntValue = 0;
                    }
                    IntRange intRange = new IntRange(iIntValue, charSequence2.length());
                    boolean z3 = charSequence2 instanceof String;
                    int i4 = intRange.d;
                    int i5 = intRange.f71952c;
                    int i6 = intRange.f71951b;
                    if (!z3) {
                        if ((i4 > 0 && i6 <= i5) || (i4 < 0 && i5 <= i6)) {
                            int i7 = i6;
                            while (true) {
                                Iterator it = list.iterator();
                                do {
                                    if (!it.hasNext()) {
                                        next = null;
                                        break;
                                    }
                                    next = it.next();
                                    str2 = (String) next;
                                } while (!StringsKt__StringsKt.f(str2, 0, charSequence2, i7, str2.length(), z2));
                                String str4 = (String) next;
                                if (str4 == null) {
                                    if (i7 == i5) {
                                        pair = null;
                                        break;
                                    }
                                    i7 += i4;
                                } else {
                                    pair = new Pair(Integer.valueOf(i7), str4);
                                    break;
                                }
                            }
                        } else {
                            pair = null;
                            break;
                        }
                    } else if ((i4 > 0 && i6 <= i5) || (i4 < 0 && i5 <= i6)) {
                        int i8 = i6;
                        while (true) {
                            Iterator it2 = list.iterator();
                            do {
                                if (!it2.hasNext()) {
                                    next2 = null;
                                    break;
                                }
                                next2 = it2.next();
                                str3 = (String) next2;
                            } while (!StringsKt.D(str3, 0, z2, (String) charSequence2, i8, str3.length()));
                            String str5 = (String) next2;
                            if (str5 == null) {
                                if (i8 == i5) {
                                    pair = null;
                                    break;
                                }
                                i8 += i4;
                            } else {
                                pair = new Pair(Integer.valueOf(i8), str5);
                                break;
                            }
                        }
                    } else {
                        pair = null;
                        break;
                    }
                } else {
                    String str6 = (String) CollectionsKt.g0(list);
                    int iV = StringsKt.v(charSequence2, str6, iIntValue, false, 4);
                    if (iV < 0) {
                        pair = null;
                        break;
                    }
                    pair = new Pair(Integer.valueOf(iV), str6);
                }
                if (pair != null) {
                    return new Pair(pair.f71705b, Integer.valueOf(((String) pair.f71706c).length()));
                }
                return null;
            }
        }));
        ArrayList arrayList = new ArrayList(CollectionsKt.t(sequencesKt___SequencesKt$asIterable$$inlined$Iterable$1, 10));
        for (IntRange intRange : sequencesKt___SequencesKt$asIterable$$inlined$Iterable$1.f74484b) {
            intRange.getClass();
            arrayList.add(charSequence.subSequence(intRange.f71951b, intRange.f71952c + 1).toString());
        }
        return arrayList;
    }
}
