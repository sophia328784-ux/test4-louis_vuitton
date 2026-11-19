package com.google.crypto.tink.mac;

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
abstract class AesCmacProtoSerialization {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ParametersSerializer f34048a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ParametersParser f34049b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final KeySerializer f34050c;
    public static final KeyParser d;

    /* JADX INFO: renamed from: com.google.crypto.tink.mac.AesCmacProtoSerialization$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f34051a;

        static {
            int[] iArr = new int[OutputPrefixType.values().length];
            f34051a = iArr;
            try {
                iArr[OutputPrefixType.TINK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34051a[OutputPrefixType.CRUNCHY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34051a[OutputPrefixType.LEGACY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f34051a[OutputPrefixType.RAW.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    static {
        Bytes bytesB = Util.b("type.googleapis.com/google.crypto.tink.AesCmacKey");
        f34048a = ParametersSerializer.a(new x1(15), AesCmacParameters.class);
        f34049b = ParametersParser.a(new x1(16), bytesB);
        f34050c = KeySerializer.a(new x1(17), AesCmacKey.class);
        d = KeyParser.a(new a(0), bytesB);
    }

    public static AesCmacParameters.Variant a(OutputPrefixType outputPrefixType) throws GeneralSecurityException {
        int i2 = AnonymousClass1.f34051a[outputPrefixType.ordinal()];
        if (i2 == 1) {
            return AesCmacParameters.Variant.f34044b;
        }
        if (i2 == 2) {
            return AesCmacParameters.Variant.f34045c;
        }
        if (i2 == 3) {
            return AesCmacParameters.Variant.d;
        }
        if (i2 == 4) {
            return AesCmacParameters.Variant.f34046e;
        }
        throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + outputPrefixType.m());
    }
}
