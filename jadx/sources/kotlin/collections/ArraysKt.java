package kotlin.collections;

import defpackage.b21;
import defpackage.md;
import defpackage.zy0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.UByteArray;
import kotlin.UIntArray;
import kotlin.ULongArray;
import kotlin.UShortArray;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.ranges.IntRange;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"kotlin/collections/ArraysKt__ArraysJVMKt", "kotlin/collections/ArraysKt__ArraysKt", "kotlin/collections/ArraysKt___ArraysJvmKt", "kotlin/collections/ArraysKt___ArraysKt"}, k = 4, mv = {2, 4, 0}, xi = 49)
public abstract class ArraysKt extends ArraysKt___ArraysKt {
    public static int A(Object[] objArr) {
        objArr.getClass();
        return objArr.length - 1;
    }

    public static Integer B(int i2, int[] iArr) {
        iArr.getClass();
        if (i2 < 0 || i2 >= iArr.length) {
            return null;
        }
        return Integer.valueOf(iArr[i2]);
    }

    public static Object C(int i2, Object[] objArr) {
        objArr.getClass();
        if (i2 < 0 || i2 >= objArr.length) {
            return null;
        }
        return objArr[i2];
    }

    public static int D(int i2, int[] iArr) {
        iArr.getClass();
        int length = iArr.length;
        for (int i3 = 0; i3 < length; i3++) {
            if (i2 == iArr[i3]) {
                return i3;
            }
        }
        return -1;
    }

    public static int E(Object[] objArr, Object obj) {
        objArr.getClass();
        int i2 = 0;
        if (obj == null) {
            int length = objArr.length;
            while (i2 < length) {
                if (objArr[i2] == null) {
                    return i2;
                }
                i2++;
            }
            return -1;
        }
        int length2 = objArr.length;
        while (i2 < length2) {
            if (obj.equals(objArr[i2])) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static String G(byte[] bArr, String str, Function1 function1, int i2) {
        String str2 = (i2 & 2) != 0 ? "" : "[";
        String str3 = (i2 & 4) == 0 ? "]" : "";
        if ((i2 & 32) != 0) {
            function1 = null;
        }
        bArr.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) str2);
        int i3 = 0;
        for (byte b2 : bArr) {
            i3++;
            if (i3 > 1) {
                sb.append((CharSequence) str);
            }
            if (function1 != null) {
                sb.append((CharSequence) function1.invoke(Byte.valueOf(b2)));
            } else {
                sb.append((CharSequence) String.valueOf((int) b2));
            }
        }
        sb.append((CharSequence) str3);
        return sb.toString();
    }

    public static String H(Object[] objArr, String str, String str2, String str3, Function1 function1, int i2) {
        if ((i2 & 1) != 0) {
            str = ", ";
        }
        String str4 = str;
        String str5 = (i2 & 2) != 0 ? "" : str2;
        String str6 = (i2 & 4) != 0 ? "" : str3;
        if ((i2 & 32) != 0) {
            function1 = null;
        }
        objArr.getClass();
        StringBuilder sb = new StringBuilder();
        ArraysKt___ArraysKt.b(objArr, sb, str4, str5, str6, "...", function1);
        return sb.toString();
    }

    public static Object I(Object[] objArr) {
        objArr.getClass();
        if (objArr.length != 0) {
            return objArr[objArr.length - 1];
        }
        zy0.c("Array is empty.");
        return null;
    }

    public static int J(Object obj, Object[] objArr) {
        objArr.getClass();
        if (obj == null) {
            int length = objArr.length - 1;
            if (length >= 0) {
                while (true) {
                    int i2 = length - 1;
                    if (objArr[length] == null) {
                        return length;
                    }
                    if (i2 >= 0) {
                        length = i2;
                    }
                }
            }
        } else {
            int length2 = objArr.length - 1;
            if (length2 >= 0) {
                while (true) {
                    int i3 = length2 - 1;
                    if (obj.equals(objArr[length2])) {
                        return length2;
                    }
                    if (i3 < 0) {
                        break;
                    }
                    length2 = i3;
                }
            }
        }
        return -1;
    }

    public static Float K(float[] fArr) {
        fArr.getClass();
        if (fArr.length == 0) {
            return null;
        }
        return Float.valueOf(fArr[fArr.length - 1]);
    }

    public static int L(int[] iArr) {
        if (iArr.length == 0) {
            b21.x();
            return 0;
        }
        int i2 = iArr[0];
        int i3 = 1;
        int length = iArr.length - 1;
        if (1 <= length) {
            while (true) {
                int i4 = iArr[i3];
                if (i2 < i4) {
                    i2 = i4;
                }
                if (i3 == length) {
                    break;
                }
                i3++;
            }
        }
        return i2;
    }

    public static Integer M(int[] iArr) {
        iArr.getClass();
        if (iArr.length == 0) {
            return null;
        }
        int i2 = iArr[0];
        int i3 = 1;
        int length = iArr.length - 1;
        if (1 <= length) {
            while (true) {
                int i4 = iArr[i3];
                if (i2 > i4) {
                    i2 = i4;
                }
                if (i3 == length) {
                    break;
                }
                i3++;
            }
        }
        return Integer.valueOf(i2);
    }

    public static Object[] N(Object[] objArr, Object[] objArr2) {
        objArr.getClass();
        objArr2.getClass();
        int length = objArr.length;
        int length2 = objArr2.length;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, length + length2);
        System.arraycopy(objArr2, 0, objArrCopyOf, length, length2);
        return objArrCopyOf;
    }

    public static void O(Object[] objArr) {
        objArr.getClass();
        int length = (objArr.length / 2) - 1;
        if (length < 0) {
            return;
        }
        int length2 = objArr.length - 1;
        if (length < 0) {
            return;
        }
        int i2 = 0;
        while (true) {
            Object obj = objArr[i2];
            objArr[i2] = objArr[length2];
            objArr[length2] = obj;
            length2--;
            if (i2 == length) {
                return;
            } else {
                i2++;
            }
        }
    }

    public static char P(char[] cArr) {
        int length = cArr.length;
        if (length == 0) {
            zy0.c("Array is empty.");
            return (char) 0;
        }
        if (length == 1) {
            return cArr[0];
        }
        md.n("Array has more than one element.");
        return (char) 0;
    }

    public static Object Q(Object[] objArr) {
        objArr.getClass();
        int length = objArr.length;
        if (length == 0) {
            zy0.c("Array is empty.");
            return null;
        }
        if (length == 1) {
            return objArr[0];
        }
        md.n("Array has more than one element.");
        return null;
    }

    public static List R(Comparator comparator, Object[] objArr) {
        objArr.getClass();
        if (objArr.length != 0) {
            objArr = Arrays.copyOf(objArr, objArr.length);
            if (objArr.length > 1) {
                Arrays.sort(objArr, comparator);
            }
        }
        List listAsList = Arrays.asList(objArr);
        listAsList.getClass();
        return listAsList;
    }

    public static List S(double[] dArr) {
        dArr.getClass();
        int length = dArr.length;
        if (length == 0) {
            return EmptyList.f71768b;
        }
        if (length == 1) {
            return CollectionsKt.O(Double.valueOf(dArr[0]));
        }
        ArrayList arrayList = new ArrayList(dArr.length);
        for (double d : dArr) {
            arrayList.add(Double.valueOf(d));
        }
        return arrayList;
    }

    public static List T(float[] fArr) {
        fArr.getClass();
        int length = fArr.length;
        if (length == 0) {
            return EmptyList.f71768b;
        }
        if (length == 1) {
            return CollectionsKt.O(Float.valueOf(fArr[0]));
        }
        ArrayList arrayList = new ArrayList(fArr.length);
        for (float f2 : fArr) {
            arrayList.add(Float.valueOf(f2));
        }
        return arrayList;
    }

    public static List U(int[] iArr) {
        iArr.getClass();
        int length = iArr.length;
        if (length == 0) {
            return EmptyList.f71768b;
        }
        if (length == 1) {
            return CollectionsKt.O(Integer.valueOf(iArr[0]));
        }
        ArrayList arrayList = new ArrayList(iArr.length);
        for (int i2 : iArr) {
            arrayList.add(Integer.valueOf(i2));
        }
        return arrayList;
    }

    public static List V(long[] jArr) {
        jArr.getClass();
        int length = jArr.length;
        if (length == 0) {
            return EmptyList.f71768b;
        }
        if (length == 1) {
            return CollectionsKt.O(Long.valueOf(jArr[0]));
        }
        ArrayList arrayList = new ArrayList(jArr.length);
        for (long j2 : jArr) {
            arrayList.add(Long.valueOf(j2));
        }
        return arrayList;
    }

    public static List W(Object[] objArr) {
        objArr.getClass();
        int length = objArr.length;
        if (length == 0) {
            return EmptyList.f71768b;
        }
        if (length == 1) {
            return CollectionsKt.O(objArr[0]);
        }
        List listAsList = Arrays.asList(Arrays.copyOf(objArr, objArr.length));
        listAsList.getClass();
        return listAsList;
    }

    public static List X(boolean[] zArr) {
        zArr.getClass();
        int length = zArr.length;
        if (length == 0) {
            return EmptyList.f71768b;
        }
        if (length == 1) {
            return CollectionsKt.O(Boolean.valueOf(zArr[0]));
        }
        ArrayList arrayList = new ArrayList(zArr.length);
        for (boolean z : zArr) {
            arrayList.add(Boolean.valueOf(z));
        }
        return arrayList;
    }

    public static ArrayList Y(Object[] objArr) {
        return new ArrayList(new ArrayAsCollection(objArr, false));
    }

    public static Set Z(Object[] objArr) {
        objArr.getClass();
        int length = objArr.length;
        if (length == 0) {
            return EmptySet.f71770b;
        }
        if (length == 1) {
            return SetsKt.h(objArr[0]);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(MapsKt.g(objArr.length));
        ArraysKt___ArraysKt.c(objArr, linkedHashSet);
        return linkedHashSet;
    }

    public static ArrayList a0(Object[] objArr, Object[] objArr2) {
        objArr.getClass();
        objArr2.getClass();
        int iMin = Math.min(objArr.length, objArr2.length);
        ArrayList arrayList = new ArrayList(iMin);
        for (int i2 = 0; i2 < iMin; i2++) {
            arrayList.add(new Pair(objArr[i2], objArr2[i2]));
        }
        return arrayList;
    }

    public static List d(Object[] objArr) {
        objArr.getClass();
        List listAsList = Arrays.asList(objArr);
        listAsList.getClass();
        return listAsList;
    }

    public static Sequence e(final Object[] objArr) {
        objArr.getClass();
        return objArr.length == 0 ? SequencesKt.e() : new Sequence<Object>() { // from class: kotlin.collections.ArraysKt___ArraysKt$asSequence$$inlined$Sequence$1
            @Override // kotlin.sequences.Sequence
            public final Iterator iterator() {
                return ArrayIteratorKt.a(objArr);
            }
        };
    }

    public static boolean f(Object obj, Object[] objArr) {
        objArr.getClass();
        return E(objArr, obj) >= 0;
    }

    public static boolean g(int[] iArr, int i2) {
        iArr.getClass();
        return D(i2, iArr) >= 0;
    }

    public static boolean h(Object[] objArr, Object[] objArr2) {
        if (objArr == objArr2) {
            return true;
        }
        if (objArr != null && objArr2 != null && objArr.length == objArr2.length) {
            int length = objArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                Object obj = objArr[i2];
                Object obj2 = objArr2[i2];
                if (obj != obj2) {
                    if (obj != null && obj2 != null) {
                        if ((obj instanceof Object[]) && (obj2 instanceof Object[])) {
                            if (!h((Object[]) obj, (Object[]) obj2)) {
                            }
                        } else if ((obj instanceof byte[]) && (obj2 instanceof byte[])) {
                            if (!Arrays.equals((byte[]) obj, (byte[]) obj2)) {
                            }
                        } else if ((obj instanceof short[]) && (obj2 instanceof short[])) {
                            if (!Arrays.equals((short[]) obj, (short[]) obj2)) {
                            }
                        } else if ((obj instanceof int[]) && (obj2 instanceof int[])) {
                            if (!Arrays.equals((int[]) obj, (int[]) obj2)) {
                            }
                        } else if ((obj instanceof long[]) && (obj2 instanceof long[])) {
                            if (!Arrays.equals((long[]) obj, (long[]) obj2)) {
                            }
                        } else if ((obj instanceof float[]) && (obj2 instanceof float[])) {
                            if (!Arrays.equals((float[]) obj, (float[]) obj2)) {
                            }
                        } else if ((obj instanceof double[]) && (obj2 instanceof double[])) {
                            if (!Arrays.equals((double[]) obj, (double[]) obj2)) {
                            }
                        } else if ((obj instanceof char[]) && (obj2 instanceof char[])) {
                            if (!Arrays.equals((char[]) obj, (char[]) obj2)) {
                            }
                        } else if ((obj instanceof boolean[]) && (obj2 instanceof boolean[])) {
                            if (!Arrays.equals((boolean[]) obj, (boolean[]) obj2)) {
                            }
                        } else if ((obj instanceof UByteArray) && (obj2 instanceof UByteArray)) {
                            if (!Arrays.equals(((UByteArray) obj).f71720b, ((UByteArray) obj2).f71720b)) {
                            }
                        } else if ((obj instanceof UShortArray) && (obj2 instanceof UShortArray)) {
                            if (!Arrays.equals(((UShortArray) obj).f71736b, ((UShortArray) obj2).f71736b)) {
                            }
                        } else if ((obj instanceof UIntArray) && (obj2 instanceof UIntArray)) {
                            if (!Arrays.equals(((UIntArray) obj).f71725b, ((UIntArray) obj2).f71725b)) {
                            }
                        } else if ((obj instanceof ULongArray) && (obj2 instanceof ULongArray)) {
                            if (!Arrays.equals(((ULongArray) obj).f71730b, ((ULongArray) obj2).f71730b)) {
                            }
                        } else if (!obj.equals(obj2)) {
                        }
                    }
                }
            }
            return true;
        }
        return false;
    }

    public static void i(int i2, int i3, int i4, int[] iArr, int[] iArr2) {
        iArr.getClass();
        iArr2.getClass();
        System.arraycopy(iArr, i3, iArr2, i2, i4 - i3);
    }

    public static void j(int i2, byte[] bArr, int i3, byte[] bArr2, int i4) {
        bArr.getClass();
        bArr2.getClass();
        System.arraycopy(bArr, i3, bArr2, i2, i4 - i3);
    }

    public static void k(int i2, long[] jArr, int i3, long[] jArr2, int i4) {
        jArr.getClass();
        jArr2.getClass();
        System.arraycopy(jArr, i3, jArr2, i2, i4 - i3);
    }

    public static void l(Object[] objArr, Object[] objArr2, int i2, int i3, int i4) {
        objArr.getClass();
        objArr2.getClass();
        System.arraycopy(objArr, i3, objArr2, i2, i4 - i3);
    }

    public static /* synthetic */ void m(int i2, int i3, int i4, int[] iArr, int[] iArr2) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        if ((i4 & 8) != 0) {
            i3 = iArr.length;
        }
        i(i2, 0, i3, iArr, iArr2);
    }

    public static /* synthetic */ void n(Object[] objArr, Object[] objArr2, int i2, int i3, int i4) {
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        if ((i4 & 8) != 0) {
            i3 = objArr.length;
        }
        l(objArr, objArr2, 0, i2, i3);
    }

    public static byte[] o(byte[] bArr, int i2, int i3) {
        bArr.getClass();
        ArraysKt__ArraysJVMKt.a(i3, bArr.length);
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i2, i3);
        bArrCopyOfRange.getClass();
        return bArrCopyOfRange;
    }

    public static float[] p(float[] fArr, int i2) {
        fArr.getClass();
        ArraysKt__ArraysJVMKt.a(i2, fArr.length);
        float[] fArrCopyOfRange = Arrays.copyOfRange(fArr, 0, i2);
        fArrCopyOfRange.getClass();
        return fArrCopyOfRange;
    }

    public static Object[] q(int i2, int i3, Object[] objArr) {
        objArr.getClass();
        ArraysKt__ArraysJVMKt.a(i3, objArr.length);
        Object[] objArrCopyOfRange = Arrays.copyOfRange(objArr, i2, i3);
        objArrCopyOfRange.getClass();
        return objArrCopyOfRange;
    }

    public static void r(Object[] objArr, int i2, int i3, Object obj) {
        objArr.getClass();
        Arrays.fill(objArr, i2, i3, obj);
    }

    public static void s(int i2, int i3, int i4, int[] iArr) {
        if ((i4 & 4) != 0) {
            i3 = iArr.length;
        }
        iArr.getClass();
        Arrays.fill(iArr, 0, i3, i2);
    }

    public static void u(long[] jArr, long j2) {
        int length = jArr.length;
        jArr.getClass();
        Arrays.fill(jArr, 0, length, j2);
    }

    public static ArrayList v(Object[] objArr) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : objArr) {
            if (obj != null) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static Object w(Object[] objArr) {
        objArr.getClass();
        if (objArr.length != 0) {
            return objArr[0];
        }
        zy0.c("Array is empty.");
        return null;
    }

    public static Object x(Object[] objArr) {
        objArr.getClass();
        if (objArr.length == 0) {
            return null;
        }
        return objArr[0];
    }

    public static IntRange y(int[] iArr) {
        return new IntRange(0, iArr.length - 1);
    }

    public static int z(long[] jArr) {
        jArr.getClass();
        return jArr.length - 1;
    }
}
