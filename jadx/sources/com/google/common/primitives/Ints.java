package com.google.common.primitives;

import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
import java.util.Spliterator;
import java.util.Spliterators;

/* JADX INFO: loaded from: classes.dex */
public abstract class Ints extends IntsMethodsForWeb {

    public static final class IntArrayAsList extends AbstractList<Integer> implements RandomAccess, Serializable {
        private static final long serialVersionUID = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int[] f33776b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f33777c;
        public final int d;

        public IntArrayAsList(int i2, int i3, int[] iArr) {
            this.f33776b = iArr;
            this.f33777c = i2;
            this.d = i3;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean contains(Object obj) {
            return (obj instanceof Integer) && Ints.e(((Integer) obj).intValue(), this.f33777c, this.d, this.f33776b) != -1;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof IntArrayAsList)) {
                return super.equals(obj);
            }
            IntArrayAsList intArrayAsList = (IntArrayAsList) obj;
            int size = size();
            if (intArrayAsList.size() != size) {
                return false;
            }
            for (int i2 = 0; i2 < size; i2++) {
                if (this.f33776b[this.f33777c + i2] != intArrayAsList.f33776b[intArrayAsList.f33777c + i2]) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object get(int i2) {
            Preconditions.j(i2, size());
            return Integer.valueOf(this.f33776b[this.f33777c + i2]);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public final int hashCode() {
            int iHashCode = 1;
            for (int i2 = this.f33777c; i2 < this.d; i2++) {
                iHashCode = (iHashCode * 31) + Integer.hashCode(this.f33776b[i2]);
            }
            return iHashCode;
        }

        @Override // java.util.AbstractList, java.util.List
        public final int indexOf(Object obj) {
            if (!(obj instanceof Integer)) {
                return -1;
            }
            int iIntValue = ((Integer) obj).intValue();
            int i2 = this.d;
            int i3 = this.f33777c;
            int iE = Ints.e(iIntValue, i3, i2, this.f33776b);
            if (iE >= 0) {
                return iE - i3;
            }
            return -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public final int lastIndexOf(Object obj) {
            int i2;
            if (obj instanceof Integer) {
                int iIntValue = ((Integer) obj).intValue();
                int i3 = this.d;
                do {
                    i3--;
                    i2 = this.f33777c;
                    if (i3 < i2) {
                        i3 = -1;
                        break;
                    }
                } while (this.f33776b[i3] != iIntValue);
                if (i3 >= 0) {
                    return i3 - i2;
                }
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object set(int i2, Object obj) {
            Integer num = (Integer) obj;
            Preconditions.j(i2, size());
            int i3 = this.f33777c + i2;
            int[] iArr = this.f33776b;
            int i4 = iArr[i3];
            num.getClass();
            iArr[i3] = num.intValue();
            return Integer.valueOf(i4);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.d - this.f33777c;
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.List
        public final Spliterator spliterator() {
            return Spliterators.spliterator(this.f33776b, this.f33777c, this.d, 0);
        }

        @Override // java.util.AbstractList, java.util.List
        public final List subList(int i2, int i3) {
            Preconditions.o(i2, i3, size());
            if (i2 == i3) {
                return Collections.EMPTY_LIST;
            }
            int i4 = this.f33777c;
            return new IntArrayAsList(i2 + i4, i4 + i3, this.f33776b);
        }

        @Override // java.util.AbstractCollection
        public final String toString() {
            StringBuilder sb = new StringBuilder(size() * 5);
            sb.append('[');
            int[] iArr = this.f33776b;
            int i2 = this.f33777c;
            sb.append(iArr[i2]);
            while (true) {
                i2++;
                if (i2 >= this.d) {
                    sb.append(']');
                    return sb.toString();
                }
                sb.append(", ");
                sb.append(iArr[i2]);
            }
        }
    }

    public static List a(int... iArr) {
        return iArr.length == 0 ? Collections.EMPTY_LIST : new IntArrayAsList(0, iArr.length, iArr);
    }

    public static int b(long j2) {
        int i2 = (int) j2;
        Preconditions.d(j2, "Out of range: %s", ((long) i2) == j2);
        return i2;
    }

    public static int c(int i2, int i3) {
        Preconditions.f("min (%s) must be less than or equal to max (%s)", i3, 1073741823, i3 <= 1073741823);
        return Math.min(Math.max(i2, i3), 1073741823);
    }

    public static int d(byte b2, byte b3, byte b4, byte b5) {
        return (b2 << 24) | ((b3 & 255) << 16) | ((b4 & 255) << 8) | (b5 & 255);
    }

    public static int e(int i2, int i3, int i4, int[] iArr) {
        while (i3 < i4) {
            if (iArr[i3] == i2) {
                return i3;
            }
            i3++;
        }
        return -1;
    }

    public static int f(long j2) {
        if (j2 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        if (j2 < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        return (int) j2;
    }

    public static int[] g(Collection collection) {
        if (collection instanceof IntArrayAsList) {
            IntArrayAsList intArrayAsList = (IntArrayAsList) collection;
            return Arrays.copyOfRange(intArrayAsList.f33776b, intArrayAsList.f33777c, intArrayAsList.d);
        }
        Object[] array = collection.toArray();
        int length = array.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            Object obj = array[i2];
            obj.getClass();
            iArr[i2] = ((Number) obj).intValue();
        }
        return iArr;
    }

    /* JADX WARN: Code duplicated, block: B:4:0x000a  */
    public static Integer h(String str) {
        byte b2;
        Long lValueOf;
        byte b3;
        str.getClass();
        if (!str.isEmpty()) {
            int i2 = str.charAt(0) == '-' ? 1 : 0;
            if (i2 != str.length()) {
                int i3 = i2 + 1;
                char cCharAt = str.charAt(i2);
                if (cCharAt < 128) {
                    b2 = Longs.AsciiDigits.f33778a[cCharAt];
                } else {
                    byte[] bArr = Longs.AsciiDigits.f33778a;
                    b2 = -1;
                }
                if (b2 >= 0 && b2 < 10) {
                    long j2 = -b2;
                    while (true) {
                        if (i3 >= str.length()) {
                            if (i2 == 0) {
                                if (j2 != Long.MIN_VALUE) {
                                    lValueOf = Long.valueOf(-j2);
                                    break;
                                }
                                break;
                            }
                            lValueOf = Long.valueOf(j2);
                            break;
                        }
                        int i4 = i3 + 1;
                        char cCharAt2 = str.charAt(i3);
                        if (cCharAt2 < 128) {
                            b3 = Longs.AsciiDigits.f33778a[cCharAt2];
                        } else {
                            byte[] bArr2 = Longs.AsciiDigits.f33778a;
                            b3 = -1;
                        }
                        if (b3 >= 0 && b3 < 10 && j2 >= -922337203685477580L) {
                            long j3 = j2 * 10;
                            long j4 = b3;
                            if (j3 >= Long.MIN_VALUE + j4) {
                                j2 = j3 - j4;
                                i3 = i4;
                            }
                        }
                        lValueOf = null;
                        break;
                    }
                }
                lValueOf = null;
                break;
            }
            lValueOf = null;
            break;
        }
        lValueOf = null;
        break;
        if (lValueOf == null || lValueOf.longValue() != lValueOf.intValue()) {
            return null;
        }
        return Integer.valueOf(lValueOf.intValue());
    }
}
