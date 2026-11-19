package com.google.crypto.tink;

import com.google.crypto.tink.internal.KeyTypeManager;
import com.google.crypto.tink.internal.MutablePrimitiveRegistry;
import com.google.crypto.tink.internal.PrimitiveRegistry;
import com.google.crypto.tink.proto.KeyData;
import com.google.crypto.tink.proto.OutputPrefixType;
import com.google.crypto.tink.shaded.protobuf.ByteString;
import com.google.crypto.tink.shaded.protobuf.InvalidProtocolBufferException;
import com.google.crypto.tink.shaded.protobuf.MessageLite;
import defpackage.md;
import defpackage.o60;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Registry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AtomicReference f33873a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ConcurrentHashMap f33874b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ConcurrentHashMap f33875c;
    public static final ConcurrentHashMap d;

    /* JADX INFO: renamed from: com.google.crypto.tink.Registry$1, reason: invalid class name */
    class AnonymousClass1 implements KeyDeriverContainer {
    }

    public interface KeyDeriverContainer {
    }

    static {
        Logger.getLogger(Registry.class.getName());
        f33873a = new AtomicReference(new KeyManagerRegistry());
        f33874b = new ConcurrentHashMap();
        f33875c = new ConcurrentHashMap();
        new ConcurrentHashMap();
        d = new ConcurrentHashMap();
    }

    public static synchronized void a(String str, Map map, boolean z) {
        if (z) {
            try {
                ConcurrentHashMap concurrentHashMap = f33875c;
                if (concurrentHashMap.containsKey(str) && !((Boolean) concurrentHashMap.get(str)).booleanValue()) {
                    throw new GeneralSecurityException("New keys are already disallowed for key type " + str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            if (((KeyManagerRegistry) f33873a.get()).f33845a.containsKey(str)) {
                for (Map.Entry entry : map.entrySet()) {
                    if (!d.containsKey(entry.getKey())) {
                        throw new GeneralSecurityException("Attempted to register a new key template " + ((String) entry.getKey()) + " from an existing key manager of type " + str);
                    }
                }
            } else {
                for (Map.Entry entry2 : map.entrySet()) {
                    if (d.containsKey(entry2.getKey())) {
                        throw new GeneralSecurityException("Attempted overwrite of a registered key template " + ((String) entry2.getKey()));
                    }
                }
            }
        }
    }

    public static Object b(String str, ByteString byteString, Class cls) throws GeneralSecurityException {
        KeyManagerRegistry keyManagerRegistry = (KeyManagerRegistry) f33873a.get();
        keyManagerRegistry.getClass();
        KeyManagerRegistry.KeyManagerContainer keyManagerContainerA = keyManagerRegistry.a(str);
        if (keyManagerContainerA.b().contains(cls)) {
            KeyManagerImpl keyManagerImpl = (KeyManagerImpl) keyManagerContainerA.c(cls);
            KeyTypeManager keyTypeManager = keyManagerImpl.f33842a;
            try {
                MessageLite messageLiteF = keyTypeManager.f(byteString);
                Class cls2 = keyManagerImpl.f33843b;
                if (Void.class.equals(cls2)) {
                    throw new GeneralSecurityException("Cannot create a primitive for Void");
                }
                keyTypeManager.g(messageLiteF);
                return keyTypeManager.c(messageLiteF, cls2);
            } catch (InvalidProtocolBufferException e2) {
                throw new GeneralSecurityException("Failures parsing proto of type ".concat(keyTypeManager.f33987a.getName()), e2);
            }
        }
        StringBuilder sb = new StringBuilder("Primitive type ");
        o60.z(cls, sb, " not supported by key manager of type ");
        sb.append(keyManagerContainerA.a());
        sb.append(", supported primitives: ");
        Set<Class> setB = keyManagerContainerA.b();
        StringBuilder sb2 = new StringBuilder();
        boolean z = true;
        for (Class cls3 : setB) {
            if (!z) {
                sb2.append(", ");
            }
            sb2.append(cls3.getCanonicalName());
            z = false;
        }
        sb.append(sb2.toString());
        throw new GeneralSecurityException(sb.toString());
    }

    public static Object c(String str, byte[] bArr) {
        ByteString byteString = ByteString.f34141c;
        return b(str, ByteString.h(0, bArr.length, bArr), Aead.class);
    }

    public static KeyManager d(String str) {
        return ((KeyManagerRegistry) f33873a.get()).a(str).d();
    }

    public static synchronized KeyData e(com.google.crypto.tink.proto.KeyTemplate keyTemplate) {
        KeyManager keyManagerD;
        keyManagerD = d(keyTemplate.M());
        if (!((Boolean) f33875c.get(keyTemplate.M())).booleanValue()) {
            throw new GeneralSecurityException("newKey-operation not permitted for key type " + keyTemplate.M());
        }
        return ((KeyManagerImpl) keyManagerD).b(keyTemplate.N());
    }

    public static synchronized void f(KeyTypeManager keyTypeManager, boolean z) {
        try {
            AtomicReference atomicReference = f33873a;
            KeyManagerRegistry keyManagerRegistry = new KeyManagerRegistry((KeyManagerRegistry) atomicReference.get());
            keyManagerRegistry.b(keyTypeManager);
            String strB = keyTypeManager.b();
            a(strB, z ? keyTypeManager.d().b() : Collections.EMPTY_MAP, z);
            if (!((KeyManagerRegistry) atomicReference.get()).f33845a.containsKey(strB)) {
                f33874b.put(strB, new AnonymousClass1());
                if (z) {
                    g(strB, keyTypeManager.d().b());
                }
            }
            f33875c.put(strB, Boolean.valueOf(z));
            atomicReference.set(keyManagerRegistry);
        } catch (Throwable th) {
            throw th;
        }
    }

    public static void g(String str, Map map) {
        OutputPrefixType outputPrefixType;
        for (Map.Entry entry : map.entrySet()) {
            String str2 = (String) entry.getKey();
            byte[] byteArray = ((MessageLite) ((KeyTypeManager.KeyFactory.KeyFormat) entry.getValue()).f33991a).toByteArray();
            KeyTemplate.OutputPrefixType outputPrefixType2 = ((KeyTypeManager.KeyFactory.KeyFormat) entry.getValue()).f33992b;
            com.google.crypto.tink.proto.KeyTemplate.Builder builderO = com.google.crypto.tink.proto.KeyTemplate.O();
            builderO.u();
            com.google.crypto.tink.proto.KeyTemplate.H((com.google.crypto.tink.proto.KeyTemplate) builderO.f34188c, str);
            ByteString byteStringH = ByteString.h(0, byteArray.length, byteArray);
            builderO.u();
            com.google.crypto.tink.proto.KeyTemplate.I((com.google.crypto.tink.proto.KeyTemplate) builderO.f34188c, byteStringH);
            int i2 = KeyTemplate.AnonymousClass1.f33852b[outputPrefixType2.ordinal()];
            if (i2 == 1) {
                outputPrefixType = OutputPrefixType.TINK;
            } else if (i2 == 2) {
                outputPrefixType = OutputPrefixType.LEGACY;
            } else if (i2 == 3) {
                outputPrefixType = OutputPrefixType.RAW;
            } else {
                if (i2 != 4) {
                    md.n("Unknown output prefix type");
                    return;
                }
                outputPrefixType = OutputPrefixType.CRUNCHY;
            }
            builderO.u();
            com.google.crypto.tink.proto.KeyTemplate.J((com.google.crypto.tink.proto.KeyTemplate) builderO.f34188c, outputPrefixType);
            d.put(str2, new KeyTemplate((com.google.crypto.tink.proto.KeyTemplate) builderO.build()));
        }
    }

    public static synchronized void h(PrimitiveWrapper primitiveWrapper) {
        MutablePrimitiveRegistry mutablePrimitiveRegistry = MutablePrimitiveRegistry.f34000b;
        synchronized (mutablePrimitiveRegistry) {
            PrimitiveRegistry.Builder builder = new PrimitiveRegistry.Builder((PrimitiveRegistry) mutablePrimitiveRegistry.f34001a.get());
            builder.b(primitiveWrapper);
            mutablePrimitiveRegistry.f34001a.set(new PrimitiveRegistry(builder));
        }
    }
}
