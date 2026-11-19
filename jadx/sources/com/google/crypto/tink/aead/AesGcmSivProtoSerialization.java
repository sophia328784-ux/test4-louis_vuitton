package com.google.crypto.tink.aead;

import com.google.crypto.tink.internal.KeyParser;
import com.google.crypto.tink.internal.KeySerializer;
import com.google.crypto.tink.internal.ParametersParser;
import com.google.crypto.tink.internal.ParametersSerializer;
import com.google.crypto.tink.internal.Util;
import com.google.crypto.tink.proto.OutputPrefixType;
import com.google.crypto.tink.util.Bytes;
import defpackage.x1;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes2.dex */
abstract class AesGcmSivProtoSerialization {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ParametersSerializer f33925a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ParametersParser f33926b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final KeySerializer f33927c;
    public static final KeyParser d;

    /* JADX INFO: renamed from: com.google.crypto.tink.aead.AesGcmSivProtoSerialization$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f33928a;

        static {
            int[] iArr = new int[OutputPrefixType.values().length];
            f33928a = iArr;
            try {
                iArr[OutputPrefixType.TINK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33928a[OutputPrefixType.CRUNCHY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f33928a[OutputPrefixType.LEGACY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f33928a[OutputPrefixType.RAW.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    static {
        Bytes bytesB = Util.b("type.googleapis.com/google.crypto.tink.AesGcmSivKey");
        f33925a = ParametersSerializer.a(new x1(15), AesGcmSivParameters.class);
        f33926b = ParametersParser.a(new x1(16), bytesB);
        f33927c = KeySerializer.a(new x1(17), AesGcmSivKey.class);
        d = KeyParser.a(new a(2), bytesB);
    }

    public static AesGcmSivParameters.Variant a(OutputPrefixType outputPrefixType) throws GeneralSecurityException {
        int i2 = AnonymousClass1.f33928a[outputPrefixType.ordinal()];
        if (i2 == 1) {
            return AesGcmSivParameters.Variant.f33922b;
        }
        if (i2 == 2 || i2 == 3) {
            return AesGcmSivParameters.Variant.f33923c;
        }
        if (i2 == 4) {
            return AesGcmSivParameters.Variant.d;
        }
        throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + outputPrefixType.m());
    }
}
