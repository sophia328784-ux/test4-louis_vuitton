package com.google.crypto.tink.internal;

import com.google.crypto.tink.proto.KeyData;
import com.google.crypto.tink.proto.OutputPrefixType;
import com.google.crypto.tink.shaded.protobuf.ByteString;
import com.google.crypto.tink.util.Bytes;
import com.google.errorprone.annotations.Immutable;
import defpackage.v40;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes2.dex */
@Immutable
public final class ProtoKeySerialization implements Serialization {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f34017a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Bytes f34018b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ByteString f34019c;
    public final KeyData.KeyMaterialType d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final OutputPrefixType f34020e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Integer f34021f;

    public ProtoKeySerialization(String str, ByteString byteString, KeyData.KeyMaterialType keyMaterialType, OutputPrefixType outputPrefixType, Integer num) {
        this.f34017a = str;
        this.f34018b = Util.b(str);
        this.f34019c = byteString;
        this.d = keyMaterialType;
        this.f34020e = outputPrefixType;
        this.f34021f = num;
    }

    public static ProtoKeySerialization a(String str, ByteString byteString, KeyData.KeyMaterialType keyMaterialType, OutputPrefixType outputPrefixType, Integer num) throws GeneralSecurityException {
        if (outputPrefixType == OutputPrefixType.RAW) {
            if (num != null) {
                v40.j("Keys with output prefix type raw should not have an id requirement.");
                return null;
            }
        } else if (num == null) {
            v40.j("Keys with output prefix type different from raw should have an id requirement.");
            return null;
        }
        return new ProtoKeySerialization(str, byteString, keyMaterialType, outputPrefixType, num);
    }
}
