package org.bouncycastle.crypto.tls;

import defpackage.b21;
import defpackage.md;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.constraints.ConstraintUtils;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.RSAKeyParameters;
import org.bouncycastle.crypto.params.RSAPrivateCrtKeyParameters;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.BigIntegers;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public abstract class TlsRsaKeyExchange {
    private static final BigInteger ONE = BigInteger.valueOf(1);
    public static final int PRE_MASTER_SECRET_LENGTH = 48;

    private TlsRsaKeyExchange() {
    }

    private static int caddTo(int i2, int i3, byte[] bArr, byte[] bArr2) {
        int i4 = i3 & 255;
        int i5 = 0;
        for (int i6 = i2 - 1; i6 >= 0; i6--) {
            int i7 = (bArr2[i6] & 255) + (bArr[i6] & i4) + i5;
            bArr2[i6] = (byte) i7;
            i5 = i7 >>> 8;
        }
        return i5;
    }

    private static int checkPkcs1Encoding2(byte[] bArr, int i2, int i3) {
        int i4 = (i2 - i3) - 10;
        int length = bArr.length - i2;
        int length2 = (bArr.length - 1) - i3;
        for (int i5 = 0; i5 < length; i5++) {
            i4 |= -(bArr[i5] & 255);
        }
        int i6 = -((bArr[length] & 255) ^ 2);
        while (true) {
            i6 |= i4;
            length++;
            if (length >= length2) {
                return ((-(bArr[length2] & 255)) | i6) >> 31;
            }
            i4 = (bArr[length] & 255) - 1;
        }
    }

    private static BigInteger convertInput(BigInteger bigInteger, byte[] bArr, int i2, int i3) {
        BigInteger bigIntegerFromUnsignedByteArray = BigIntegers.fromUnsignedByteArray(bArr, i2, i3);
        if (bigIntegerFromUnsignedByteArray.compareTo(bigInteger) < 0) {
            return bigIntegerFromUnsignedByteArray;
        }
        b21.q("input too large for RSA cipher.");
        return null;
    }

    public static byte[] decryptPreMasterSecret(byte[] bArr, int i2, int i3, RSAKeyParameters rSAKeyParameters, int i4, SecureRandom secureRandom) {
        String str;
        if (bArr == null || i3 < 1 || i3 > getInputLimit(rSAKeyParameters) || i2 < 0 || i2 > bArr.length - i3) {
            str = "input not a valid EncryptedPreMasterSecret";
        } else if (rSAKeyParameters.isPrivate()) {
            BigInteger modulus = rSAKeyParameters.getModulus();
            int iBitLength = modulus.bitLength();
            if (iBitLength >= 512) {
                CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties("RSA", ConstraintUtils.bitsOfSecurityFor(modulus), rSAKeyParameters, CryptoServicePurpose.DECRYPTION));
                if ((i4 & 65535) == i4) {
                    SecureRandom secureRandom2 = CryptoServicesRegistrar.getSecureRandom(secureRandom);
                    byte[] bArr2 = new byte[48];
                    secureRandom2.nextBytes(bArr2);
                    try {
                        byte[] bArrRsaBlinded = rsaBlinded(rSAKeyParameters, convertInput(modulus, bArr, i2, i3), secureRandom2);
                        int length = bArrRsaBlinded.length - 48;
                        int iCheckPkcs1Encoding2 = checkPkcs1Encoding2(bArrRsaBlinded, (iBitLength - 1) / 8, 48) | ((-((Pack.bigEndianToShort(bArrRsaBlinded, length) ^ i4) & 65535)) >> 31);
                        for (int i5 = 0; i5 < 48; i5++) {
                            bArr2[i5] = (byte) ((bArr2[i5] & iCheckPkcs1Encoding2) | (bArrRsaBlinded[length + i5] & (~iCheckPkcs1Encoding2)));
                        }
                        Arrays.fill(bArrRsaBlinded, (byte) 0);
                    } catch (Exception unused) {
                    }
                    return bArr2;
                }
                str = "'protocolVersion' must be a 16 bit value";
            } else {
                str = "'privateKey' must be at least 512 bits";
            }
        } else {
            str = "'privateKey' must be an RSA private key";
        }
        md.n(str);
        return null;
    }

    public static int getInputLimit(RSAKeyParameters rSAKeyParameters) {
        return (rSAKeyParameters.getModulus().bitLength() + 7) / 8;
    }

    private static BigInteger rsa(RSAKeyParameters rSAKeyParameters, BigInteger bigInteger) {
        return bigInteger.modPow(rSAKeyParameters.getExponent(), rSAKeyParameters.getModulus());
    }

    private static byte[] rsaBlinded(RSAKeyParameters rSAKeyParameters, BigInteger bigInteger, SecureRandom secureRandom) {
        RSAPrivateCrtKeyParameters rSAPrivateCrtKeyParameters;
        BigInteger publicExponent;
        BigInteger modulus = rSAKeyParameters.getModulus();
        int iBitLength = (modulus.bitLength() / 8) + 1;
        if (!(rSAKeyParameters instanceof RSAPrivateCrtKeyParameters) || (publicExponent = (rSAPrivateCrtKeyParameters = (RSAPrivateCrtKeyParameters) rSAKeyParameters).getPublicExponent()) == null) {
            return toBytes(rsa(rSAKeyParameters, bigInteger), iBitLength);
        }
        BigInteger bigInteger2 = ONE;
        BigInteger bigIntegerCreateRandomInRange = BigIntegers.createRandomInRange(bigInteger2, modulus.subtract(bigInteger2), secureRandom);
        BigInteger bigIntegerModPow = bigIntegerCreateRandomInRange.modPow(publicExponent, modulus);
        BigInteger bigIntegerModOddInverse = BigIntegers.modOddInverse(modulus, bigIntegerCreateRandomInRange);
        BigInteger bigIntegerRsaCrt = rsaCrt(rSAPrivateCrtKeyParameters, bigIntegerModPow.multiply(bigInteger).mod(modulus));
        BigInteger bigIntegerMod = bigIntegerModOddInverse.add(bigInteger2).multiply(bigIntegerRsaCrt).mod(modulus);
        byte[] bytes = toBytes(bigIntegerRsaCrt, iBitLength);
        byte[] bytes2 = toBytes(modulus, iBitLength);
        byte[] bytes3 = toBytes(bigIntegerMod, iBitLength);
        caddTo(iBitLength, subFrom(iBitLength, bytes, bytes3), bytes2, bytes3);
        return bytes3;
    }

    private static BigInteger rsaCrt(RSAPrivateCrtKeyParameters rSAPrivateCrtKeyParameters, BigInteger bigInteger) {
        BigInteger publicExponent = rSAPrivateCrtKeyParameters.getPublicExponent();
        BigInteger p = rSAPrivateCrtKeyParameters.getP();
        BigInteger q = rSAPrivateCrtKeyParameters.getQ();
        BigInteger dp = rSAPrivateCrtKeyParameters.getDP();
        BigInteger dq = rSAPrivateCrtKeyParameters.getDQ();
        BigInteger qInv = rSAPrivateCrtKeyParameters.getQInv();
        BigInteger bigIntegerModPow = bigInteger.remainder(p).modPow(dp, p);
        BigInteger bigIntegerModPow2 = bigInteger.remainder(q).modPow(dq, q);
        BigInteger bigIntegerAdd = bigIntegerModPow.subtract(bigIntegerModPow2).multiply(qInv).mod(p).multiply(q).add(bigIntegerModPow2);
        if (bigIntegerAdd.modPow(publicExponent, rSAPrivateCrtKeyParameters.getModulus()).equals(bigInteger)) {
            return bigIntegerAdd;
        }
        md.k("RSA engine faulty decryption/signing detected");
        return null;
    }

    private static int subFrom(int i2, byte[] bArr, byte[] bArr2) {
        int i3 = 0;
        for (int i4 = i2 - 1; i4 >= 0; i4--) {
            int i5 = ((bArr2[i4] & 255) - (bArr[i4] & 255)) + i3;
            bArr2[i4] = (byte) i5;
            i3 = i5 >> 8;
        }
        return i3;
    }

    private static byte[] toBytes(BigInteger bigInteger, int i2) {
        byte[] byteArray = bigInteger.toByteArray();
        byte[] bArr = new byte[i2];
        System.arraycopy(byteArray, 0, bArr, i2 - byteArray.length, byteArray.length);
        return bArr;
    }
}
