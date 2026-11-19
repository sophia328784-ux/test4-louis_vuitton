package androidx.media3.exoplayer.source;

import java.util.Arrays;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public interface ShuffleOrder {
    DefaultShuffleOrder a(int i2, int i3);

    int b(int i2);

    int c(int i2);

    default ShuffleOrder d() {
        return this;
    }

    int e();

    DefaultShuffleOrder f();

    int g();

    int getLength();

    default ShuffleOrder h(int i2) {
        return f().i(0, i2);
    }

    DefaultShuffleOrder i(int i2, int i3);

    public static class DefaultShuffleOrder implements ShuffleOrder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Random f15597a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int[] f15598b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int[] f15599c;

        public DefaultShuffleOrder(int[] iArr, Random random) {
            this.f15598b = iArr;
            this.f15597a = random;
            this.f15599c = new int[iArr.length];
            for (int i2 = 0; i2 < iArr.length; i2++) {
                this.f15599c[iArr[i2]] = i2;
            }
        }

        @Override // androidx.media3.exoplayer.source.ShuffleOrder
        public final DefaultShuffleOrder a(int i2, int i3) {
            int i4 = i3 - i2;
            int[] iArr = this.f15598b;
            int[] iArr2 = new int[iArr.length - i4];
            int i5 = 0;
            for (int i6 = 0; i6 < iArr.length; i6++) {
                int i7 = iArr[i6];
                if (i7 < i2 || i7 >= i3) {
                    int i8 = i6 - i5;
                    if (i7 >= i2) {
                        i7 -= i4;
                    }
                    iArr2[i8] = i7;
                } else {
                    i5++;
                }
            }
            return new DefaultShuffleOrder(iArr2, new Random(this.f15597a.nextLong()));
        }

        @Override // androidx.media3.exoplayer.source.ShuffleOrder
        public final int b(int i2) {
            int i3 = this.f15599c[i2] - 1;
            if (i3 >= 0) {
                return this.f15598b[i3];
            }
            return -1;
        }

        @Override // androidx.media3.exoplayer.source.ShuffleOrder
        public final int c(int i2) {
            int i3 = this.f15599c[i2] + 1;
            int[] iArr = this.f15598b;
            if (i3 < iArr.length) {
                return iArr[i3];
            }
            return -1;
        }

        @Override // androidx.media3.exoplayer.source.ShuffleOrder
        public final int e() {
            int[] iArr = this.f15598b;
            if (iArr.length > 0) {
                return iArr[iArr.length - 1];
            }
            return -1;
        }

        @Override // androidx.media3.exoplayer.source.ShuffleOrder
        public final DefaultShuffleOrder f() {
            return new DefaultShuffleOrder(0, new Random(this.f15597a.nextLong()));
        }

        @Override // androidx.media3.exoplayer.source.ShuffleOrder
        public final int g() {
            int[] iArr = this.f15598b;
            if (iArr.length > 0) {
                return iArr[0];
            }
            return -1;
        }

        @Override // androidx.media3.exoplayer.source.ShuffleOrder
        public final int getLength() {
            return this.f15598b.length;
        }

        @Override // androidx.media3.exoplayer.source.ShuffleOrder
        public final DefaultShuffleOrder i(int i2, int i3) {
            int[] iArr;
            Random random;
            int[] iArr2 = new int[i3];
            int[] iArr3 = new int[i3];
            int i4 = 0;
            while (true) {
                iArr = this.f15598b;
                random = this.f15597a;
                if (i4 >= i3) {
                    break;
                }
                iArr2[i4] = random.nextInt(iArr.length + 1);
                int i5 = i4 + 1;
                int iNextInt = random.nextInt(i5);
                iArr3[i4] = iArr3[iNextInt];
                iArr3[iNextInt] = i4 + i2;
                i4 = i5;
            }
            Arrays.sort(iArr2);
            int[] iArr4 = new int[iArr.length + i3];
            int i6 = 0;
            int i7 = 0;
            for (int i8 = 0; i8 < iArr.length + i3; i8++) {
                if (i6 >= i3 || i7 != iArr2[i6]) {
                    int i9 = i7 + 1;
                    int i10 = iArr[i7];
                    iArr4[i8] = i10;
                    if (i10 >= i2) {
                        iArr4[i8] = i10 + i3;
                    }
                    i7 = i9;
                } else {
                    iArr4[i8] = iArr3[i6];
                    i6++;
                }
            }
            return new DefaultShuffleOrder(iArr4, new Random(random.nextLong()));
        }

        public DefaultShuffleOrder(int i2, long j2) {
            this(i2, new Random(j2));
        }

        public DefaultShuffleOrder(int[] iArr, long j2) {
            this(Arrays.copyOf(iArr, iArr.length), new Random(j2));
        }

        public DefaultShuffleOrder(int i2) {
            this(i2, new Random());
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public DefaultShuffleOrder(int i2, Random random) {
            int[] iArr = new int[i2];
            int i3 = 0;
            while (i3 < i2) {
                int i4 = i3 + 1;
                int iNextInt = random.nextInt(i4);
                iArr[i3] = iArr[iNextInt];
                iArr[iNextInt] = i3;
                i3 = i4;
            }
            this(iArr, random);
        }
    }
}
