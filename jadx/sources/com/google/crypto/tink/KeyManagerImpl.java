package com.google.crypto.tink;

import com.google.crypto.tink.internal.KeyTypeManager;
import com.google.crypto.tink.proto.KeyData;
import com.google.crypto.tink.shaded.protobuf.AbstractMessageLite;
import com.google.crypto.tink.shaded.protobuf.ByteString;
import com.google.crypto.tink.shaded.protobuf.InvalidProtocolBufferException;
import com.google.crypto.tink.shaded.protobuf.MessageLite;
import defpackage.fc;
import defpackage.md;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes2.dex */
class KeyManagerImpl<PrimitiveT, KeyProtoT extends MessageLite> implements KeyManager<PrimitiveT> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KeyTypeManager f33842a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Class f33843b;

    public KeyManagerImpl(KeyTypeManager<KeyProtoT> keyTypeManager, Class<PrimitiveT> cls) {
        if (!keyTypeManager.f33988b.keySet().contains(cls) && !Void.class.equals(cls)) {
            md.n(fc.i("Given internalKeyMananger ", keyTypeManager.toString(), " does not support primitive class ", cls.getName()));
            throw null;
        }
        this.f33842a = keyTypeManager;
        this.f33843b = cls;
    }

    @Override // com.google.crypto.tink.KeyManager
    public final MessageLite a(ByteString byteString) throws GeneralSecurityException {
        KeyTypeManager keyTypeManager = this.f33842a;
        try {
            KeyTypeManager.KeyFactory keyFactoryD = keyTypeManager.d();
            MessageLite messageLiteC = keyFactoryD.c(byteString);
            keyFactoryD.d(messageLiteC);
            return keyFactoryD.a(messageLiteC);
        } catch (InvalidProtocolBufferException e2) {
            throw new GeneralSecurityException("Failures parsing proto of type ".concat(keyTypeManager.d().f33990a.getName()), e2);
        }
    }

    public final KeyData b(ByteString byteString) throws GeneralSecurityException {
        KeyTypeManager keyTypeManager = this.f33842a;
        try {
            KeyTypeManager.KeyFactory keyFactoryD = keyTypeManager.d();
            MessageLite messageLiteC = keyFactoryD.c(byteString);
            keyFactoryD.d(messageLiteC);
            MessageLite messageLiteA = keyFactoryD.a(messageLiteC);
            KeyData.Builder builderO = KeyData.O();
            String strB = keyTypeManager.b();
            builderO.u();
            KeyData.H((KeyData) builderO.f34188c, strB);
            ByteString byteStringE = ((AbstractMessageLite) messageLiteA).e();
            builderO.u();
            KeyData.I((KeyData) builderO.f34188c, byteStringE);
            KeyData.KeyMaterialType keyMaterialTypeE = keyTypeManager.e();
            builderO.u();
            KeyData.J((KeyData) builderO.f34188c, keyMaterialTypeE);
            return (KeyData) builderO.build();
        } catch (InvalidProtocolBufferException e2) {
            throw new GeneralSecurityException("Unexpected proto", e2);
        }
    }
}
