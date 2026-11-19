package com.google.crypto.tink;

import com.google.crypto.tink.proto.KeyData;
import com.google.crypto.tink.proto.KeyStatusType;
import com.google.crypto.tink.proto.Keyset;
import com.google.crypto.tink.proto.OutputPrefixType;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class KeysetManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Keyset.Builder f33858a;

    public KeysetManager(Keyset.Builder builder) {
        this.f33858a = builder;
    }

    public final synchronized void a(com.google.crypto.tink.proto.KeyTemplate keyTemplate) {
        Keyset.Key keyB;
        synchronized (this) {
            keyB = b(Registry.e(keyTemplate), keyTemplate.L());
        }
        Keyset.Builder builder = this.f33858a;
        builder.u();
        Keyset.I((Keyset) builder.f34188c, keyB);
    }

    public final synchronized Keyset.Key b(KeyData keyData, OutputPrefixType outputPrefixType) {
        int iA;
        synchronized (this) {
            iA = com.google.crypto.tink.internal.Util.a();
            while (d(iA)) {
                iA = com.google.crypto.tink.internal.Util.a();
            }
        }
        return (Keyset.Key) builderQ.build();
        if (outputPrefixType == OutputPrefixType.UNKNOWN_PREFIX) {
            throw new GeneralSecurityException("unknown output prefix type");
        }
        Keyset.Key.Builder builderQ = Keyset.Key.Q();
        builderQ.u();
        Keyset.Key.H((Keyset.Key) builderQ.f34188c, keyData);
        builderQ.u();
        Keyset.Key.K((Keyset.Key) builderQ.f34188c, iA);
        KeyStatusType keyStatusType = KeyStatusType.ENABLED;
        builderQ.u();
        Keyset.Key.J((Keyset.Key) builderQ.f34188c, keyStatusType);
        builderQ.u();
        Keyset.Key.I((Keyset.Key) builderQ.f34188c, outputPrefixType);
        return (Keyset.Key) builderQ.build();
    }

    public final synchronized KeysetHandle c() {
        return KeysetHandle.a((Keyset) this.f33858a.build());
    }

    public final synchronized boolean d(int i2) {
        Iterator it = Collections.unmodifiableList(((Keyset) this.f33858a.f34188c).L()).iterator();
        while (it.hasNext()) {
            if (((Keyset.Key) it.next()).M() == i2) {
                return true;
            }
        }
        return false;
    }
}
