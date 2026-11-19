package io.jsonwebtoken.impl.crypto;

import defpackage.az;
import defpackage.fc;
import io.jsonwebtoken.JwtException;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.lang.Assert;
import io.jsonwebtoken.lang.Strings;
import java.security.Key;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.ECGenParameterSpec;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public abstract class EllipticCurveProvider extends SignatureProvider {
    private static final Map<SignatureAlgorithm, String> EC_CURVE_NAMES = createEcCurveNames();

    /* JADX INFO: renamed from: io.jsonwebtoken.impl.crypto.EllipticCurveProvider$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$jsonwebtoken$SignatureAlgorithm;

        static {
            int[] iArr = new int[SignatureAlgorithm.values().length];
            $SwitchMap$io$jsonwebtoken$SignatureAlgorithm = iArr;
            try {
                iArr[SignatureAlgorithm.ES256.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$jsonwebtoken$SignatureAlgorithm[SignatureAlgorithm.ES384.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$jsonwebtoken$SignatureAlgorithm[SignatureAlgorithm.ES512.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public EllipticCurveProvider(SignatureAlgorithm signatureAlgorithm, Key key) {
        super(signatureAlgorithm, key);
        Assert.isTrue(signatureAlgorithm.isEllipticCurve(), "SignatureAlgorithm must be an Elliptic Curve algorithm.");
    }

    private static Map<SignatureAlgorithm, String> createEcCurveNames() {
        HashMap map = new HashMap();
        map.put(SignatureAlgorithm.ES256, "secp256r1");
        map.put(SignatureAlgorithm.ES384, "secp384r1");
        map.put(SignatureAlgorithm.ES512, "secp521r1");
        return map;
    }

    public static KeyPair generateKeyPair(String str, String str2, SignatureAlgorithm signatureAlgorithm, SecureRandom secureRandom) {
        Assert.notNull(signatureAlgorithm, "SignatureAlgorithm argument cannot be null.");
        Assert.isTrue(signatureAlgorithm.isEllipticCurve(), "SignatureAlgorithm argument must represent an Elliptic Curve algorithm.");
        try {
            KeyPairGenerator keyPairGenerator = Strings.hasText(str2) ? KeyPairGenerator.getInstance(str, str2) : KeyPairGenerator.getInstance(str);
            keyPairGenerator.initialize(new ECGenParameterSpec(EC_CURVE_NAMES.get(signatureAlgorithm)), secureRandom);
            return keyPairGenerator.generateKeyPair();
        } catch (Exception e2) {
            az.s(fc.g(e2, new StringBuilder("Unable to generate Elliptic Curve KeyPair: ")), e2);
            return null;
        }
    }

    public static int getSignatureByteArrayLength(SignatureAlgorithm signatureAlgorithm) throws JwtException {
        int i2 = AnonymousClass1.$SwitchMap$io$jsonwebtoken$SignatureAlgorithm[signatureAlgorithm.ordinal()];
        if (i2 == 1) {
            return 64;
        }
        if (i2 == 2) {
            return 96;
        }
        if (i2 == 3) {
            return 132;
        }
        throw new JwtException("Unsupported Algorithm: " + signatureAlgorithm.name());
    }

    public static byte[] transcodeSignatureToConcat(byte[] bArr, int i2) throws JwtException {
        int i3;
        if (bArr.length < 8 || bArr[0] != 48) {
            throw new JwtException("Invalid ECDSA signature format");
        }
        byte b2 = bArr[1];
        if (b2 > 0) {
            i3 = 2;
        } else {
            if (b2 != -127) {
                throw new JwtException("Invalid ECDSA signature format");
            }
            i3 = 3;
        }
        int i4 = bArr[i3 + 1];
        int i5 = i4;
        while (i5 > 0 && bArr[((i3 + 2) + i4) - i5] == 0) {
            i5--;
        }
        int i6 = i3 + 2 + i4;
        int i7 = bArr[i6 + 1];
        int i8 = i7;
        while (i8 > 0 && bArr[((i6 + 2) + i7) - i8] == 0) {
            i8--;
        }
        int iMax = Math.max(Math.max(i5, i8), i2 / 2);
        int i9 = bArr[i3 - 1];
        if ((i9 & 255) != bArr.length - i3 || (i9 & 255) != i4 + 4 + i7 || bArr[i3] != 2 || bArr[i6] != 2) {
            throw new JwtException("Invalid ECDSA signature format");
        }
        int i10 = iMax * 2;
        byte[] bArr2 = new byte[i10];
        System.arraycopy(bArr, i6 - i5, bArr2, iMax - i5, i5);
        System.arraycopy(bArr, ((i6 + 2) + i7) - i8, bArr2, i10 - i8, i8);
        return bArr2;
    }

    public static byte[] transcodeSignatureToDER(byte[] bArr) throws JwtException {
        byte[] bArr2;
        int length = bArr.length / 2;
        int i2 = length;
        while (i2 > 0 && bArr[length - i2] == 0) {
            i2--;
        }
        int i3 = length - i2;
        int i4 = bArr[i3] < 0 ? i2 + 1 : i2;
        int i5 = length;
        while (i5 > 0 && bArr[(length * 2) - i5] == 0) {
            i5--;
        }
        int i6 = (length * 2) - i5;
        int i7 = bArr[i6] < 0 ? i5 + 1 : i5;
        int i8 = i4 + 4 + i7;
        if (i8 > 255) {
            throw new JwtException("Invalid ECDSA signature format");
        }
        int i9 = 1;
        if (i8 < 128) {
            bArr2 = new byte[i4 + 6 + i7];
        } else {
            bArr2 = new byte[i4 + 7 + i7];
            bArr2[1] = -127;
            i9 = 2;
        }
        bArr2[0] = 48;
        bArr2[i9] = (byte) i8;
        bArr2[i9 + 1] = 2;
        bArr2[i9 + 2] = (byte) i4;
        int i10 = i9 + 3 + i4;
        System.arraycopy(bArr, i3, bArr2, i10 - i2, i2);
        bArr2[i10] = 2;
        bArr2[i10 + 1] = (byte) i7;
        System.arraycopy(bArr, i6, bArr2, ((i10 + 2) + i7) - i5, i5);
        return bArr2;
    }

    public static KeyPair generateKeyPair(SignatureAlgorithm signatureAlgorithm) {
        return generateKeyPair(signatureAlgorithm, SignatureProvider.DEFAULT_SECURE_RANDOM);
    }

    public static KeyPair generateKeyPair(SignatureAlgorithm signatureAlgorithm, SecureRandom secureRandom) {
        return generateKeyPair("EC", null, signatureAlgorithm, secureRandom);
    }

    public static KeyPair generateKeyPair() {
        return generateKeyPair(SignatureAlgorithm.ES512);
    }
}
