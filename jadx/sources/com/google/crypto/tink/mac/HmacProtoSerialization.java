package com.google.crypto.tink.mac;

import com.google.crypto.tink.internal.KeyParser;
import com.google.crypto.tink.internal.KeySerializer;
import com.google.crypto.tink.internal.ParametersParser;
import com.google.crypto.tink.internal.ParametersSerializer;
import com.google.crypto.tink.internal.Util;
import com.google.crypto.tink.proto.HashType;
import com.google.crypto.tink.proto.OutputPrefixType;
import com.google.crypto.tink.util.Bytes;
import defpackage.x1;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes2.dex */
abstract class HmacProtoSerialization {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ParametersSerializer f34074a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ParametersParser f34075b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final KeySerializer f34076c;
    public static final KeyParser d;

    /* JADX INFO: renamed from: com.google.crypto.tink.mac.HmacProtoSerialization$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f34077a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f34078b;

        static {
            int[] iArr = new int[OutputPrefixType.values().length];
            f34078b = iArr;
            try {
                iArr[OutputPrefixType.TINK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34078b[OutputPrefixType.CRUNCHY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34078b[OutputPrefixType.LEGACY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f34078b[OutputPrefixType.RAW.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[HashType.values().length];
            f34077a = iArr2;
            try {
                iArr2[HashType.SHA1.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f34077a[HashType.SHA224.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f34077a[HashType.SHA256.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f34077a[HashType.SHA384.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f34077a[HashType.SHA512.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    static {
        Bytes bytesB = Util.b("type.googleapis.com/google.crypto.tink.HmacKey");
        f34074a = ParametersSerializer.a(new x1(15), HmacParameters.class);
        f34075b = ParametersParser.a(new x1(16), bytesB);
        f34076c = KeySerializer.a(new x1(17), HmacKey.class);
        d = KeyParser.a(new a(1), bytesB);
    }

    public static HmacParameters.HashType a(HashType hashType) throws GeneralSecurityException {
        int i2 = AnonymousClass1.f34077a[hashType.ordinal()];
        if (i2 == 1) {
            return HmacParameters.HashType.f34065b;
        }
        if (i2 == 2) {
            return HmacParameters.HashType.f34066c;
        }
        if (i2 == 3) {
            return HmacParameters.HashType.d;
        }
        if (i2 == 4) {
            return HmacParameters.HashType.f34067e;
        }
        if (i2 == 5) {
            return HmacParameters.HashType.f34068f;
        }
        throw new GeneralSecurityException("Unable to parse HashType: " + hashType.m());
    }

    public static HmacParameters.Variant b(OutputPrefixType outputPrefixType) throws GeneralSecurityException {
        int i2 = AnonymousClass1.f34078b[outputPrefixType.ordinal()];
        if (i2 == 1) {
            return HmacParameters.Variant.f34070b;
        }
        if (i2 == 2) {
            return HmacParameters.Variant.f34071c;
        }
        if (i2 == 3) {
            return HmacParameters.Variant.d;
        }
        if (i2 == 4) {
            return HmacParameters.Variant.f34072e;
        }
        throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + outputPrefixType.m());
    }
}
