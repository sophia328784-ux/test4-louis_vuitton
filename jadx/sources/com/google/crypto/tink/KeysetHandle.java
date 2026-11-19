package com.google.crypto.tink;

import com.google.crypto.tink.integration.android.AndroidKeystoreAesGcm;
import com.google.crypto.tink.integration.android.SharedPrefKeysetWriter;
import com.google.crypto.tink.internal.MutablePrimitiveRegistry;
import com.google.crypto.tink.internal.MutableSerializationRegistry;
import com.google.crypto.tink.internal.PrimitiveRegistry;
import com.google.crypto.tink.internal.ProtoKeySerialization;
import com.google.crypto.tink.internal.TinkBugException;
import com.google.crypto.tink.monitoring.MonitoringAnnotations;
import com.google.crypto.tink.proto.EncryptedKeyset;
import com.google.crypto.tink.proto.KeyData;
import com.google.crypto.tink.proto.KeyStatusType;
import com.google.crypto.tink.proto.Keyset;
import com.google.crypto.tink.proto.KeysetInfo;
import com.google.crypto.tink.proto.OutputPrefixType;
import com.google.crypto.tink.shaded.protobuf.ByteString;
import com.google.crypto.tink.shaded.protobuf.ExtensionRegistryLite;
import com.google.crypto.tink.shaded.protobuf.InvalidProtocolBufferException;
import com.google.crypto.tink.subtle.Hex;
import com.google.errorprone.annotations.Immutable;
import defpackage.az;
import defpackage.md;
import defpackage.pq0;
import defpackage.v40;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public final class KeysetHandle {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Keyset f33853a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f33854b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MonitoringAnnotations f33855c = MonitoringAnnotations.f34088b;

    /* JADX INFO: renamed from: com.google.crypto.tink.KeysetHandle$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f33856a;

        static {
            int[] iArr = new int[KeyStatusType.values().length];
            f33856a = iArr;
            try {
                iArr[KeyStatusType.ENABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33856a[KeyStatusType.DISABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f33856a[KeyStatusType.DESTROYED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @Immutable
    public static final class Entry {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Key f33857a;

        public Entry(Key key) {
            this.f33857a = key;
        }
    }

    public KeysetHandle(Keyset keyset, List list) {
        this.f33853a = keyset;
        this.f33854b = list;
    }

    public static final KeysetHandle a(Keyset keyset) throws GeneralSecurityException {
        if (keyset == null || keyset.K() <= 0) {
            v40.j("empty keyset");
            return null;
        }
        ArrayList arrayList = new ArrayList(keyset.K());
        for (Keyset.Key key : keyset.L()) {
            key.getClass();
            try {
                try {
                    Key keyA = MutableSerializationRegistry.f34002b.a(ProtoKeySerialization.a(key.L().M(), key.L().N(), key.L().L(), key.N(), key.N() == OutputPrefixType.RAW ? null : Integer.valueOf(key.M())));
                    int i2 = AnonymousClass1.f33856a[key.O().ordinal()];
                    if (i2 != 1 && i2 != 2 && i2 != 3) {
                        throw new GeneralSecurityException("Unknown key status");
                    }
                    arrayList.add(new Entry(keyA));
                } catch (GeneralSecurityException unused) {
                    arrayList.add(null);
                }
            } catch (GeneralSecurityException e2) {
                throw new TinkBugException("Creating a protokey serialization failed", e2);
            }
        }
        return new KeysetHandle(keyset, Collections.unmodifiableList(arrayList));
    }

    public static final KeysetHandle d(BinaryKeysetReader binaryKeysetReader, AndroidKeystoreAesGcm androidKeystoreAesGcm) throws GeneralSecurityException, IOException {
        byte[] bArr = new byte[0];
        ByteArrayInputStream byteArrayInputStream = binaryKeysetReader.f33839a;
        try {
            EncryptedKeyset encryptedKeysetL = EncryptedKeyset.L(byteArrayInputStream, ExtensionRegistryLite.b());
            byteArrayInputStream.close();
            if (encryptedKeysetL.J().size() == 0) {
                v40.j("empty keyset");
                return null;
            }
            try {
                Keyset keysetP = Keyset.P(androidKeystoreAesGcm.decrypt(encryptedKeysetL.J().m(), bArr), ExtensionRegistryLite.b());
                if (keysetP.K() > 0) {
                    return a(keysetP);
                }
                throw new GeneralSecurityException("empty keyset");
            } catch (InvalidProtocolBufferException unused) {
                v40.j("invalid keyset, corrupted key material");
                return null;
            }
        } catch (Throwable th) {
            byteArrayInputStream.close();
            throw th;
        }
    }

    public final KeysetInfo b() {
        return Util.a(this.f33853a);
    }

    public final Object c(Class cls) throws GeneralSecurityException {
        Class clsB;
        Object objB;
        Object objA;
        AtomicReference atomicReference = Registry.f33873a;
        try {
            HashMap map = ((PrimitiveRegistry) MutablePrimitiveRegistry.f34000b.f34001a.get()).f34012b;
            if (!map.containsKey(cls)) {
                throw new GeneralSecurityException(pq0.n(cls, "No input primitive class for ", " available"));
            }
            clsB = ((PrimitiveWrapper) map.get(cls)).b();
            if (clsB == null) {
                throw new GeneralSecurityException("No wrapper found for ".concat(cls.getName()));
            }
            int i2 = Util.f33877a;
            Keyset keyset = this.f33853a;
            int iM = keyset.M();
            int i3 = 0;
            boolean z = false;
            boolean z2 = true;
            for (Keyset.Key key : keyset.L()) {
                if (key.O() == KeyStatusType.ENABLED) {
                    if (!key.P()) {
                        throw new GeneralSecurityException(String.format("key %d has no key data", Integer.valueOf(key.M())));
                    }
                    if (key.N() == OutputPrefixType.UNKNOWN_PREFIX) {
                        throw new GeneralSecurityException(String.format("key %d has unknown prefix", Integer.valueOf(key.M())));
                    }
                    if (key.O() == KeyStatusType.UNKNOWN_STATUS) {
                        throw new GeneralSecurityException(String.format("key %d has unknown status", Integer.valueOf(key.M())));
                    }
                    if (key.M() == iM) {
                        if (z) {
                            v40.j("keyset contains multiple primary keys");
                            return null;
                        }
                        z = true;
                    }
                    if (key.L().L() != KeyData.KeyMaterialType.ASYMMETRIC_PUBLIC) {
                        z2 = false;
                    }
                    i3++;
                }
            }
            if (i3 == 0) {
                v40.j("keyset must contain at least one ENABLED key");
                return null;
            }
            if (!z && !z2) {
                v40.j("keyset doesn't contain a valid primary key");
                return null;
            }
            PrimitiveSet.Builder builder = new PrimitiveSet.Builder(clsB);
            if (builder.f33864b == null) {
                md.k("setAnnotations cannot be called after build");
                return null;
            }
            builder.d = this.f33855c;
            for (int i4 = 0; i4 < keyset.K(); i4++) {
                Keyset.Key keyJ = keyset.J(i4);
                if (keyJ.O().equals(KeyStatusType.ENABLED)) {
                    try {
                        KeyData keyDataL = keyJ.L();
                        AtomicReference atomicReference2 = Registry.f33873a;
                        objB = Registry.b(keyDataL.M(), keyDataL.N(), clsB);
                    } catch (GeneralSecurityException e2) {
                        if (!e2.getMessage().contains("No key manager found for key type ") && !e2.getMessage().contains(" not supported by key manager of type ")) {
                            throw e2;
                        }
                        objB = null;
                    }
                    List list = this.f33854b;
                    if (list.get(i4) != null) {
                        Key key2 = ((Entry) list.get(i4)).f33857a;
                        try {
                            AtomicReference atomicReference3 = Registry.f33873a;
                            objA = MutablePrimitiveRegistry.f34000b.a(key2, clsB);
                        } catch (GeneralSecurityException unused) {
                            objA = null;
                        }
                    } else {
                        objA = null;
                    }
                    if (keyJ.M() == keyset.M()) {
                        builder.a(objA, objB, keyJ, true);
                    } else {
                        builder.a(objA, objB, keyJ, false);
                    }
                }
            }
            ConcurrentHashMap concurrentHashMap = builder.f33864b;
            if (concurrentHashMap == null) {
                md.k("build cannot be called twice");
                return null;
            }
            PrimitiveSet.Entry entry = builder.f33865c;
            MonitoringAnnotations monitoringAnnotations = builder.d;
            Class cls2 = builder.f33863a;
            PrimitiveSet primitiveSet = new PrimitiveSet(concurrentHashMap, entry, monitoringAnnotations, cls2);
            builder.f33864b = null;
            AtomicReference atomicReference4 = Registry.f33873a;
            HashMap map2 = ((PrimitiveRegistry) MutablePrimitiveRegistry.f34000b.f34001a.get()).f34012b;
            if (!map2.containsKey(cls)) {
                throw new GeneralSecurityException(pq0.m(cls, "No wrapper found for "));
            }
            PrimitiveWrapper primitiveWrapper = (PrimitiveWrapper) map2.get(cls);
            if (cls2.equals(primitiveWrapper.b()) && primitiveWrapper.b().equals(cls2)) {
                return primitiveWrapper.a(primitiveSet);
            }
            v40.j("Input primitive type of the wrapper doesn't match the type of primitives in the provided PrimitiveSet");
            return null;
        } catch (GeneralSecurityException unused2) {
            clsB = null;
        }
    }

    public final void e(SharedPrefKeysetWriter sharedPrefKeysetWriter, AndroidKeystoreAesGcm androidKeystoreAesGcm) throws GeneralSecurityException, IOException {
        byte[] bArr = new byte[0];
        Keyset keyset = this.f33853a;
        byte[] bArrA = androidKeystoreAesGcm.a(keyset.toByteArray(), bArr);
        try {
            if (!Keyset.P(androidKeystoreAesGcm.decrypt(bArrA, bArr), ExtensionRegistryLite.b()).equals(keyset)) {
                throw new GeneralSecurityException("cannot encrypt keyset");
            }
            EncryptedKeyset.Builder builderK = EncryptedKeyset.K();
            ByteString byteStringH = ByteString.h(0, bArrA.length, bArrA);
            builderK.u();
            EncryptedKeyset.H((EncryptedKeyset) builderK.f34188c, byteStringH);
            KeysetInfo keysetInfoA = Util.a(keyset);
            builderK.u();
            EncryptedKeyset.I((EncryptedKeyset) builderK.f34188c, keysetInfoA);
            if (sharedPrefKeysetWriter.f33981a.putString(sharedPrefKeysetWriter.f33982b, Hex.b(((EncryptedKeyset) builderK.build()).toByteArray())).commit()) {
                return;
            }
            az.o("Failed to write to SharedPreferences");
        } catch (InvalidProtocolBufferException unused) {
            v40.j("invalid keyset, corrupted key material");
        }
    }

    public final String toString() {
        return Util.a(this.f33853a).toString();
    }
}
