package org.bouncycastle.crypto.generators;

import com.linkplay.medialib.ContentTree;
import defpackage.md;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.params.GOST3410Parameters;
import org.bouncycastle.crypto.params.GOST3410ValidationParameters;
import org.bouncycastle.util.BigIntegers;

/* JADX INFO: loaded from: classes5.dex */
public class GOST3410ParametersGenerator {
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private static final BigInteger TWO = BigInteger.valueOf(2);
    private SecureRandom init_random;
    private int size;
    private int typeproc;

    private int procedure_A(int i2, int i3, BigInteger[] bigIntegerArr, int i4) {
        int i5;
        BigInteger bigInteger;
        BigInteger[] bigIntegerArr2;
        int i6;
        BigInteger[] bigIntegerArr3;
        BigInteger bigInteger2;
        BigInteger bigInteger3;
        int iNextInt = i2;
        while (true) {
            if (iNextInt >= 0 && iNextInt <= 65536) {
                break;
            }
            iNextInt = this.init_random.nextInt() / 32768;
        }
        int iNextInt2 = i3;
        while (true) {
            i5 = 1;
            if (iNextInt2 >= 0 && iNextInt2 <= 65536 && iNextInt2 / 2 != 0) {
                break;
            }
            iNextInt2 = (this.init_random.nextInt() / 32768) + 1;
        }
        BigInteger bigInteger4 = new BigInteger(Integer.toString(iNextInt2));
        BigInteger bigInteger5 = new BigInteger("19381");
        BigInteger bigInteger6 = new BigInteger(Integer.toString(iNextInt));
        int i7 = 0;
        BigInteger[] bigIntegerArr4 = {bigInteger6};
        int[] iArr = {i4};
        int i8 = 0;
        int i9 = 0;
        while (iArr[i8] >= 17) {
            int length = iArr.length + 1;
            int[] iArr2 = new int[length];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            iArr = new int[length];
            System.arraycopy(iArr2, 0, iArr, 0, length);
            i9 = i8 + 1;
            iArr[i9] = iArr[i8] / 2;
            i8 = i9;
        }
        BigInteger[] bigIntegerArr5 = new BigInteger[i9 + 1];
        int i10 = 16;
        bigIntegerArr5[i9] = new BigInteger("8003", 16);
        int i11 = i9 - 1;
        int i12 = 0;
        while (i12 < i9) {
            int i13 = iArr[i11] / i10;
            while (true) {
                int length2 = bigIntegerArr4.length;
                BigInteger[] bigIntegerArr6 = new BigInteger[length2];
                System.arraycopy(bigIntegerArr4, i7, bigIntegerArr6, i7, bigIntegerArr4.length);
                bigIntegerArr2 = new BigInteger[i13 + 1];
                System.arraycopy(bigIntegerArr6, i7, bigIntegerArr2, i7, length2);
                int i14 = i7;
                while (i14 < i13) {
                    int i15 = i14 + 1;
                    bigIntegerArr2[i15] = bigIntegerArr2[i14].multiply(bigInteger5).add(bigInteger4).mod(TWO.pow(i10));
                    i14 = i15;
                }
                BigInteger bigInteger7 = new BigInteger(ContentTree.ROOT_ID);
                int i16 = i7;
                while (i16 < i13) {
                    bigInteger7 = bigInteger7.add(bigIntegerArr2[i16].multiply(TWO.pow(i16 * 16)));
                    i16++;
                    i7 = i7;
                }
                i6 = i7;
                bigIntegerArr2[i6] = bigIntegerArr2[i13];
                BigInteger bigInteger8 = TWO;
                int i17 = i11 + 1;
                BigInteger bigIntegerAdd = bigInteger8.pow(iArr[i11] - i5).divide(bigIntegerArr5[i17]).add(bigInteger8.pow(iArr[i11] - i5).multiply(bigInteger7).divide(bigIntegerArr5[i17].multiply(bigInteger8.pow(i13 * 16))));
                BigInteger bigIntegerMod = bigIntegerAdd.mod(bigInteger8);
                BigInteger bigInteger9 = ONE;
                if (bigIntegerMod.compareTo(bigInteger9) == 0) {
                    bigIntegerAdd = bigIntegerAdd.add(bigInteger9);
                }
                BigInteger bigInteger10 = bigIntegerAdd;
                int i18 = i6;
                while (true) {
                    bigIntegerArr3 = bigIntegerArr5;
                    long j2 = i18;
                    BigInteger bigIntegerMultiply = bigIntegerArr5[i17].multiply(bigInteger10.add(BigInteger.valueOf(j2)));
                    BigInteger bigInteger11 = ONE;
                    BigInteger bigIntegerAdd2 = bigIntegerMultiply.add(bigInteger11);
                    bigIntegerArr3[i11] = bigIntegerAdd2;
                    bigInteger2 = bigInteger4;
                    BigInteger bigInteger12 = TWO;
                    bigInteger3 = bigInteger5;
                    if (bigIntegerAdd2.compareTo(bigInteger12.pow(iArr[i11])) != 1) {
                        if (bigInteger12.modPow(bigIntegerArr3[i17].multiply(bigInteger10.add(BigInteger.valueOf(j2))), bigIntegerArr3[i11]).compareTo(bigInteger11) == 0 && bigInteger12.modPow(bigInteger10.add(BigInteger.valueOf(j2)), bigIntegerArr3[i11]).compareTo(bigInteger11) != 0) {
                            break;
                        }
                        i18 += 2;
                        bigIntegerArr5 = bigIntegerArr3;
                        bigInteger4 = bigInteger2;
                        bigInteger5 = bigInteger3;
                    } else {
                        i7 = i6;
                        i5 = 1;
                        bigIntegerArr5 = bigIntegerArr3;
                        bigIntegerArr4 = bigIntegerArr2;
                        bigInteger4 = bigInteger2;
                        bigInteger5 = bigInteger3;
                        i10 = 16;
                    }
                }
            }
            i11--;
            if (i11 < 0) {
                bigIntegerArr[i6] = bigIntegerArr3[i6];
                bigIntegerArr[1] = bigIntegerArr3[1];
                bigInteger = bigIntegerArr2[i6];
                return bigInteger.intValue();
            }
            i12++;
            i5 = 1;
            i10 = 16;
            i7 = i6;
            bigIntegerArr5 = bigIntegerArr3;
            bigIntegerArr4 = bigIntegerArr2;
            bigInteger4 = bigInteger2;
            bigInteger5 = bigInteger3;
        }
        bigInteger = bigIntegerArr4[i7];
        return bigInteger.intValue();
    }

    private long procedure_Aa(long j2, long j3, BigInteger[] bigIntegerArr, int i2) {
        int i3;
        BigInteger bigInteger;
        BigInteger[] bigIntegerArr2;
        int i4;
        BigInteger bigInteger2;
        int[] iArr;
        long jNextInt = j2;
        while (true) {
            if (jNextInt >= 0 && jNextInt <= 4294967296L) {
                break;
            }
            jNextInt = this.init_random.nextInt() * 2;
        }
        long jNextInt2 = j3;
        while (true) {
            i3 = 1;
            if (jNextInt2 >= 0 && jNextInt2 <= 4294967296L && jNextInt2 / 2 != 0) {
                break;
            }
            jNextInt2 = (this.init_random.nextInt() * 2) + 1;
        }
        BigInteger bigInteger3 = new BigInteger(Long.toString(jNextInt2));
        BigInteger bigInteger4 = new BigInteger("97781173");
        BigInteger bigInteger5 = new BigInteger(Long.toString(jNextInt));
        int i5 = 0;
        BigInteger[] bigIntegerArr3 = {bigInteger5};
        int[] iArr2 = {i2};
        int i6 = 0;
        int i7 = 0;
        while (iArr2[i6] >= 33) {
            int length = iArr2.length + 1;
            int[] iArr3 = new int[length];
            System.arraycopy(iArr2, 0, iArr3, 0, iArr2.length);
            iArr2 = new int[length];
            System.arraycopy(iArr3, 0, iArr2, 0, length);
            i7 = i6 + 1;
            iArr2[i7] = iArr2[i6] / 2;
            i6 = i7;
        }
        BigInteger[] bigIntegerArr4 = new BigInteger[i7 + 1];
        bigIntegerArr4[i7] = new BigInteger("8000000B", 16);
        int i8 = i7 - 1;
        int i9 = 0;
        while (i9 < i7) {
            int i10 = 32;
            int i11 = iArr2[i8] / 32;
            while (true) {
                int length2 = bigIntegerArr3.length;
                BigInteger[] bigIntegerArr5 = new BigInteger[length2];
                System.arraycopy(bigIntegerArr3, i5, bigIntegerArr5, i5, bigIntegerArr3.length);
                bigIntegerArr2 = new BigInteger[i11 + 1];
                System.arraycopy(bigIntegerArr5, i5, bigIntegerArr2, i5, length2);
                int i12 = i5;
                while (i12 < i11) {
                    int i13 = i12 + 1;
                    bigIntegerArr2[i13] = bigIntegerArr2[i12].multiply(bigInteger4).add(bigInteger3).mod(TWO.pow(i10));
                    i12 = i13;
                }
                BigInteger bigInteger6 = new BigInteger(ContentTree.ROOT_ID);
                int i14 = i5;
                while (i14 < i11) {
                    bigInteger6 = bigInteger6.add(bigIntegerArr2[i14].multiply(TWO.pow(i14 * 32)));
                    i14++;
                    i5 = i5;
                }
                i4 = i5;
                bigIntegerArr2[i4] = bigIntegerArr2[i11];
                BigInteger bigInteger7 = TWO;
                int i15 = i8 + 1;
                BigInteger bigIntegerAdd = bigInteger7.pow(iArr2[i8] - i3).divide(bigIntegerArr4[i15]).add(bigInteger7.pow(iArr2[i8] - i3).multiply(bigInteger6).divide(bigIntegerArr4[i15].multiply(bigInteger7.pow(i11 * 32))));
                BigInteger bigIntegerMod = bigIntegerAdd.mod(bigInteger7);
                BigInteger bigInteger8 = ONE;
                if (bigIntegerMod.compareTo(bigInteger8) == 0) {
                    bigIntegerAdd = bigIntegerAdd.add(bigInteger8);
                }
                BigInteger bigInteger9 = bigIntegerAdd;
                int i16 = i4;
                while (true) {
                    long j4 = i16;
                    BigInteger bigIntegerMultiply = bigIntegerArr4[i15].multiply(bigInteger9.add(BigInteger.valueOf(j4)));
                    BigInteger bigInteger10 = ONE;
                    BigInteger bigIntegerAdd2 = bigIntegerMultiply.add(bigInteger10);
                    bigIntegerArr4[i8] = bigIntegerAdd2;
                    bigInteger2 = bigInteger3;
                    BigInteger bigInteger11 = TWO;
                    iArr = iArr2;
                    if (bigIntegerAdd2.compareTo(bigInteger11.pow(iArr[i8])) != 1) {
                        if (bigInteger11.modPow(bigIntegerArr4[i15].multiply(bigInteger9.add(BigInteger.valueOf(j4))), bigIntegerArr4[i8]).compareTo(bigInteger10) == 0 && bigInteger11.modPow(bigInteger9.add(BigInteger.valueOf(j4)), bigIntegerArr4[i8]).compareTo(bigInteger10) != 0) {
                            break;
                        }
                        i16 += 2;
                        bigInteger3 = bigInteger2;
                        iArr2 = iArr;
                    } else {
                        i5 = i4;
                        bigInteger3 = bigInteger2;
                        iArr2 = iArr;
                        i3 = 1;
                        bigIntegerArr3 = bigIntegerArr2;
                        i10 = 32;
                    }
                }
            }
            i8--;
            if (i8 < 0) {
                bigIntegerArr[i4] = bigIntegerArr4[i4];
                bigIntegerArr[1] = bigIntegerArr4[1];
                bigInteger = bigIntegerArr2[i4];
                return bigInteger.longValue();
            }
            i9++;
            i3 = 1;
            i5 = i4;
            bigInteger3 = bigInteger2;
            iArr2 = iArr;
            bigIntegerArr3 = bigIntegerArr2;
        }
        bigInteger = bigIntegerArr3[i5];
        return bigInteger.longValue();
    }

    private void procedure_B(int i2, int i3, BigInteger[] bigIntegerArr) {
        int i4;
        int iNextInt = i2;
        while (true) {
            if (iNextInt >= 0 && iNextInt <= 65536) {
                break;
            } else {
                iNextInt = this.init_random.nextInt() / 32768;
            }
        }
        int iNextInt2 = i3;
        while (true) {
            i4 = 1;
            if (iNextInt2 >= 0 && iNextInt2 <= 65536 && iNextInt2 / 2 != 0) {
                break;
            } else {
                iNextInt2 = (this.init_random.nextInt() / 32768) + 1;
            }
        }
        BigInteger[] bigIntegerArr2 = new BigInteger[2];
        BigInteger bigInteger = new BigInteger(Integer.toString(iNextInt2));
        BigInteger bigInteger2 = new BigInteger("19381");
        int iProcedure_A = procedure_A(iNextInt, iNextInt2, bigIntegerArr2, 256);
        BigInteger bigInteger3 = bigIntegerArr2[0];
        int iProcedure_A2 = procedure_A(iProcedure_A, iNextInt2, bigIntegerArr2, 512);
        BigInteger bigInteger4 = bigIntegerArr2[0];
        BigInteger[] bigIntegerArr3 = new BigInteger[65];
        bigIntegerArr3[0] = new BigInteger(Integer.toString(iProcedure_A2));
        while (true) {
            int i5 = 0;
            while (i5 < 64) {
                int i6 = i5 + 1;
                bigIntegerArr3[i6] = bigIntegerArr3[i5].multiply(bigInteger2).add(bigInteger).mod(TWO.pow(16));
                i5 = i6;
            }
            BigInteger bigInteger5 = new BigInteger(ContentTree.ROOT_ID);
            for (int i7 = 0; i7 < 64; i7++) {
                bigInteger5 = bigInteger5.add(bigIntegerArr3[i7].multiply(TWO.pow(i7 * 16)));
            }
            bigIntegerArr3[0] = bigIntegerArr3[64];
            BigInteger bigInteger6 = TWO;
            BigInteger bigIntegerAdd = bigInteger6.pow(1023).divide(bigInteger3.multiply(bigInteger4)).add(bigInteger6.pow(1023).multiply(bigInteger5).divide(bigInteger3.multiply(bigInteger4).multiply(bigInteger6.pow(1024))));
            BigInteger bigIntegerMod = bigIntegerAdd.mod(bigInteger6);
            BigInteger bigInteger7 = ONE;
            if (bigIntegerMod.compareTo(bigInteger7) == 0) {
                bigIntegerAdd = bigIntegerAdd.add(bigInteger7);
            }
            BigInteger bigInteger8 = bigIntegerAdd;
            int i8 = 0;
            while (true) {
                long j2 = i8;
                BigInteger bigIntegerMultiply = bigInteger3.multiply(bigInteger4).multiply(bigInteger8.add(BigInteger.valueOf(j2)));
                BigInteger bigInteger9 = ONE;
                BigInteger bigIntegerAdd2 = bigIntegerMultiply.add(bigInteger9);
                BigInteger bigInteger10 = TWO;
                if (bigIntegerAdd2.compareTo(bigInteger10.pow(1024)) == i4) {
                    break;
                }
                int i9 = i4;
                if (bigInteger10.modPow(bigInteger3.multiply(bigInteger4).multiply(bigInteger8.add(BigInteger.valueOf(j2))), bigIntegerAdd2).compareTo(bigInteger9) == 0 && bigInteger10.modPow(bigInteger3.multiply(bigInteger8.add(BigInteger.valueOf(j2))), bigIntegerAdd2).compareTo(bigInteger9) != 0) {
                    bigIntegerArr[0] = bigIntegerAdd2;
                    bigIntegerArr[i9] = bigInteger3;
                    return;
                } else {
                    i8 += 2;
                    i4 = i9;
                }
            }
        }
    }

    private void procedure_Bb(long j2, long j3, BigInteger[] bigIntegerArr) {
        int i2;
        long jNextInt = j2;
        while (true) {
            if (jNextInt >= 0 && jNextInt <= 4294967296L) {
                break;
            } else {
                jNextInt = this.init_random.nextInt() * 2;
            }
        }
        long jNextInt2 = j3;
        while (true) {
            i2 = 1;
            if (jNextInt2 >= 0 && jNextInt2 <= 4294967296L && jNextInt2 / 2 != 0) {
                break;
            }
            long j4 = jNextInt;
            jNextInt2 = (this.init_random.nextInt() * 2) + 1;
            jNextInt = j4;
        }
        BigInteger[] bigIntegerArr2 = new BigInteger[2];
        BigInteger bigInteger = new BigInteger(Long.toString(jNextInt2));
        BigInteger bigInteger2 = new BigInteger("97781173");
        long jProcedure_Aa = procedure_Aa(jNextInt, jNextInt2, bigIntegerArr2, 256);
        BigInteger bigInteger3 = bigIntegerArr2[0];
        long jProcedure_Aa2 = procedure_Aa(jProcedure_Aa, jNextInt2, bigIntegerArr2, 512);
        BigInteger bigInteger4 = bigIntegerArr2[0];
        BigInteger[] bigIntegerArr3 = new BigInteger[33];
        bigIntegerArr3[0] = new BigInteger(Long.toString(jProcedure_Aa2));
        while (true) {
            int i3 = 0;
            while (i3 < 32) {
                int i4 = i3 + 1;
                bigIntegerArr3[i4] = bigIntegerArr3[i3].multiply(bigInteger2).add(bigInteger).mod(TWO.pow(32));
                i3 = i4;
            }
            BigInteger bigInteger5 = new BigInteger(ContentTree.ROOT_ID);
            for (int i5 = 0; i5 < 32; i5++) {
                bigInteger5 = bigInteger5.add(bigIntegerArr3[i5].multiply(TWO.pow(i5 * 32)));
            }
            bigIntegerArr3[0] = bigIntegerArr3[32];
            BigInteger bigInteger6 = TWO;
            BigInteger bigIntegerAdd = bigInteger6.pow(1023).divide(bigInteger3.multiply(bigInteger4)).add(bigInteger6.pow(1023).multiply(bigInteger5).divide(bigInteger3.multiply(bigInteger4).multiply(bigInteger6.pow(1024))));
            BigInteger bigIntegerMod = bigIntegerAdd.mod(bigInteger6);
            BigInteger bigInteger7 = ONE;
            if (bigIntegerMod.compareTo(bigInteger7) == 0) {
                bigIntegerAdd = bigIntegerAdd.add(bigInteger7);
            }
            int i6 = 0;
            while (true) {
                long j5 = i6;
                BigInteger bigIntegerMultiply = bigInteger3.multiply(bigInteger4).multiply(bigIntegerAdd.add(BigInteger.valueOf(j5)));
                BigInteger bigInteger8 = ONE;
                BigInteger bigIntegerAdd2 = bigIntegerMultiply.add(bigInteger8);
                BigInteger bigInteger9 = TWO;
                if (bigIntegerAdd2.compareTo(bigInteger9.pow(1024)) == i2) {
                    break;
                }
                int i7 = i2;
                if (bigInteger9.modPow(bigInteger3.multiply(bigInteger4).multiply(bigIntegerAdd.add(BigInteger.valueOf(j5))), bigIntegerAdd2).compareTo(bigInteger8) == 0 && bigInteger9.modPow(bigInteger3.multiply(bigIntegerAdd.add(BigInteger.valueOf(j5))), bigIntegerAdd2).compareTo(bigInteger8) != 0) {
                    bigIntegerArr[0] = bigIntegerAdd2;
                    bigIntegerArr[i7] = bigInteger3;
                    return;
                } else {
                    i6 += 2;
                    i2 = i7;
                }
            }
        }
    }

    private BigInteger procedure_C(BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger bigIntegerSubtract = bigInteger.subtract(ONE);
        BigInteger bigIntegerDivide = bigIntegerSubtract.divide(bigInteger2);
        int iBitLength = bigInteger.bitLength();
        while (true) {
            BigInteger bigIntegerCreateRandomBigInteger = BigIntegers.createRandomBigInteger(iBitLength, this.init_random);
            BigInteger bigInteger3 = ONE;
            if (bigIntegerCreateRandomBigInteger.compareTo(bigInteger3) > 0 && bigIntegerCreateRandomBigInteger.compareTo(bigIntegerSubtract) < 0) {
                BigInteger bigIntegerModPow = bigIntegerCreateRandomBigInteger.modPow(bigIntegerDivide, bigInteger);
                if (bigIntegerModPow.compareTo(bigInteger3) != 0) {
                    return bigIntegerModPow;
                }
            }
        }
    }

    public GOST3410Parameters generateParameters() {
        long j2;
        GOST3410ParametersGenerator gOST3410ParametersGenerator;
        BigInteger[] bigIntegerArr = new BigInteger[2];
        int i2 = this.typeproc;
        SecureRandom secureRandom = this.init_random;
        if (i2 == 1) {
            int iNextInt = secureRandom.nextInt();
            int iNextInt2 = this.init_random.nextInt();
            int i3 = this.size;
            if (i3 == 512) {
                procedure_A(iNextInt, iNextInt2, bigIntegerArr, 512);
            } else {
                if (i3 != 1024) {
                    md.n("Ooops! key size 512 or 1024 bit.");
                    return null;
                }
                procedure_B(iNextInt, iNextInt2, bigIntegerArr);
            }
            BigInteger bigInteger = bigIntegerArr[0];
            BigInteger bigInteger2 = bigIntegerArr[1];
            return new GOST3410Parameters(bigInteger, bigInteger2, procedure_C(bigInteger, bigInteger2), new GOST3410ValidationParameters(iNextInt, iNextInt2));
        }
        long jNextLong = secureRandom.nextLong();
        long jNextLong2 = this.init_random.nextLong();
        int i4 = this.size;
        if (i4 == 512) {
            j2 = jNextLong;
            gOST3410ParametersGenerator = this;
            gOST3410ParametersGenerator.procedure_Aa(j2, jNextLong2, bigIntegerArr, 512);
        } else {
            if (i4 != 1024) {
                md.k("Ooops! key size 512 or 1024 bit.");
                return null;
            }
            j2 = jNextLong;
            gOST3410ParametersGenerator = this;
            gOST3410ParametersGenerator.procedure_Bb(j2, jNextLong2, bigIntegerArr);
        }
        BigInteger bigInteger3 = bigIntegerArr[0];
        BigInteger bigInteger4 = bigIntegerArr[1];
        return new GOST3410Parameters(bigInteger3, bigInteger4, gOST3410ParametersGenerator.procedure_C(bigInteger3, bigInteger4), new GOST3410ValidationParameters(j2, jNextLong2));
    }

    public void init(int i2, int i3, SecureRandom secureRandom) {
        this.size = i2;
        this.typeproc = i3;
        this.init_random = secureRandom;
    }
}
