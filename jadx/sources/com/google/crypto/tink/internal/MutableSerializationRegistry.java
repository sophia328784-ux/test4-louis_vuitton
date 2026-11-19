package com.google.crypto.tink.internal;

import com.google.crypto.tink.Key;
import com.google.crypto.tink.SecretKeyAccess;
import com.google.crypto.tink.util.Bytes;
import defpackage.bm;
import defpackage.no0;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public final class MutableSerializationRegistry {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final MutableSerializationRegistry f34002b = new MutableSerializationRegistry();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReference f34003a = new AtomicReference(new SerializationRegistry(new SerializationRegistry.Builder()));

    public final Key a(ProtoKeySerialization protoKeySerialization) throws GeneralSecurityException {
        SecretKeyAccess secretKeyAccess = SecretKeyAccess.f33876a;
        AtomicReference atomicReference = this.f34003a;
        SerializationRegistry serializationRegistry = (SerializationRegistry) atomicReference.get();
        serializationRegistry.getClass();
        Bytes bytes = protoKeySerialization.f34018b;
        if (!serializationRegistry.f34023b.containsKey(new SerializationRegistry.ParserIndex(ProtoKeySerialization.class, bytes))) {
            try {
                return new LegacyProtoKey(protoKeySerialization, secretKeyAccess);
            } catch (GeneralSecurityException e2) {
                throw new TinkBugException("Creating a LegacyProtoKey failed", e2);
            }
        }
        SerializationRegistry serializationRegistry2 = (SerializationRegistry) atomicReference.get();
        serializationRegistry2.getClass();
        SerializationRegistry.ParserIndex parserIndex = new SerializationRegistry.ParserIndex(ProtoKeySerialization.class, bytes);
        HashMap map = serializationRegistry2.f34023b;
        if (map.containsKey(parserIndex)) {
            return ((KeyParser.AnonymousClass1) ((KeyParser) map.get(parserIndex))).f33984b.a(protoKeySerialization);
        }
        bm.f("No Key Parser for requested key type ", parserIndex, " available");
        return null;
    }

    public final synchronized void b(KeyParser keyParser) {
        SerializationRegistry.Builder builder = new SerializationRegistry.Builder((SerializationRegistry) this.f34003a.get());
        keyParser.getClass();
        SerializationRegistry.ParserIndex parserIndex = new SerializationRegistry.ParserIndex(ProtoKeySerialization.class, keyParser.f33983a);
        HashMap map = builder.f34026b;
        if (map.containsKey(parserIndex)) {
            KeyParser keyParser2 = (KeyParser) map.get(parserIndex);
            if (!keyParser2.equals(keyParser) || !keyParser.equals(keyParser2)) {
                no0.n(parserIndex, "Attempt to register non-equal parser for already existing object of type: ");
            }
        } else {
            map.put(parserIndex, keyParser);
        }
        this.f34003a.set(new SerializationRegistry(builder));
    }

    public final synchronized void c(KeySerializer keySerializer) {
        SerializationRegistry.Builder builder = new SerializationRegistry.Builder((SerializationRegistry) this.f34003a.get());
        SerializationRegistry.SerializerIndex serializerIndex = new SerializationRegistry.SerializerIndex(keySerializer.f33985a, ProtoKeySerialization.class);
        HashMap map = builder.f34025a;
        if (map.containsKey(serializerIndex)) {
            KeySerializer keySerializer2 = (KeySerializer) map.get(serializerIndex);
            if (!keySerializer2.equals(keySerializer) || !keySerializer.equals(keySerializer2)) {
                no0.n(serializerIndex, "Attempt to register non-equal serializer for already existing object of type: ");
            }
        } else {
            map.put(serializerIndex, keySerializer);
        }
        this.f34003a.set(new SerializationRegistry(builder));
    }

    public final synchronized void d(ParametersParser parametersParser) {
        SerializationRegistry.Builder builder = new SerializationRegistry.Builder((SerializationRegistry) this.f34003a.get());
        parametersParser.getClass();
        SerializationRegistry.ParserIndex parserIndex = new SerializationRegistry.ParserIndex(ProtoParametersSerialization.class, parametersParser.f34004a);
        HashMap map = builder.d;
        if (map.containsKey(parserIndex)) {
            ParametersParser parametersParser2 = (ParametersParser) map.get(parserIndex);
            if (!parametersParser2.equals(parametersParser) || !parametersParser.equals(parametersParser2)) {
                no0.n(parserIndex, "Attempt to register non-equal parser for already existing object of type: ");
            }
        } else {
            map.put(parserIndex, parametersParser);
        }
        this.f34003a.set(new SerializationRegistry(builder));
    }

    public final synchronized void e(ParametersSerializer parametersSerializer) {
        SerializationRegistry.Builder builder = new SerializationRegistry.Builder((SerializationRegistry) this.f34003a.get());
        SerializationRegistry.SerializerIndex serializerIndex = new SerializationRegistry.SerializerIndex(parametersSerializer.f34006a, ProtoParametersSerialization.class);
        HashMap map = builder.f34027c;
        if (map.containsKey(serializerIndex)) {
            ParametersSerializer parametersSerializer2 = (ParametersSerializer) map.get(serializerIndex);
            if (!parametersSerializer2.equals(parametersSerializer) || !parametersSerializer.equals(parametersSerializer2)) {
                no0.n(serializerIndex, "Attempt to register non-equal serializer for already existing object of type: ");
            }
        } else {
            map.put(serializerIndex, parametersSerializer);
        }
        this.f34003a.set(new SerializationRegistry(builder));
    }
}
