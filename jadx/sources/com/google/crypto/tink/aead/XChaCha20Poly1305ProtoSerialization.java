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
abstract class XChaCha20Poly1305ProtoSerialization {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ParametersSerializer f33944a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ParametersParser f33945b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final KeySerializer f33946c;
    public static final KeyParser d;

    /* JADX INFO: renamed from: com.google.crypto.tink.aead.XChaCha20Poly1305ProtoSerialization$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f33947a;

        static {
            int[] iArr = new int[OutputPrefixType.values().length];
            f33947a = iArr;
            try {
                iArr[OutputPrefixType.TINK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33947a[OutputPrefixType.CRUNCHY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f33947a[OutputPrefixType.LEGACY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f33947a[OutputPrefixType.RAW.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    static {
        Bytes bytesB = Util.b("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key");
        f33944a = ParametersSerializer.a(new x1(15), XChaCha20Poly1305Parameters.class);
        f33945b = ParametersParser.a(new x1(16), bytesB);
        f33946c = KeySerializer.a(new x1(17), XChaCha20Poly1305Key.class);
        d = KeyParser.a(new a(4), bytesB);
    }

    public static XChaCha20Poly1305Parameters.Variant a(OutputPrefixType outputPrefixType) throws GeneralSecurityException {
        int i2 = AnonymousClass1.f33947a[outputPrefixType.ordinal()];
        if (i2 == 1) {
            return XChaCha20Poly1305Parameters.Variant.f33941b;
        }
        if (i2 == 2 || i2 == 3) {
            return XChaCha20Poly1305Parameters.Variant.f33942c;
        }
        if (i2 == 4) {
            return XChaCha20Poly1305Parameters.Variant.d;
        }
        throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + outputPrefixType.m());
    }
}
