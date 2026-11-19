package com.google.crypto.tink;

import com.google.crypto.tink.internal.KeyTypeManager;
import java.security.GeneralSecurityException;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
final class KeyManagerRegistry {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Logger f33844b = Logger.getLogger(KeyManagerRegistry.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f33845a;

    /* JADX INFO: renamed from: com.google.crypto.tink.KeyManagerRegistry$2, reason: invalid class name */
    class AnonymousClass2 implements KeyManagerContainer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ KeyTypeManager f33846a;

        public AnonymousClass2(KeyTypeManager keyTypeManager) {
            this.f33846a = keyTypeManager;
        }

        @Override // com.google.crypto.tink.KeyManagerRegistry.KeyManagerContainer
        public final Class a() {
            return this.f33846a.getClass();
        }

        @Override // com.google.crypto.tink.KeyManagerRegistry.KeyManagerContainer
        public final Set b() {
            return this.f33846a.f33988b.keySet();
        }

        @Override // com.google.crypto.tink.KeyManagerRegistry.KeyManagerContainer
        public final KeyManager c(Class cls) throws GeneralSecurityException {
            try {
                return new KeyManagerImpl(this.f33846a, cls);
            } catch (IllegalArgumentException e2) {
                throw new GeneralSecurityException("Primitive type not supported", e2);
            }
        }

        @Override // com.google.crypto.tink.KeyManagerRegistry.KeyManagerContainer
        public final KeyManager d() {
            KeyTypeManager keyTypeManager = this.f33846a;
            return new KeyManagerImpl(keyTypeManager, keyTypeManager.f33989c);
        }
    }

    public interface KeyManagerContainer {
        Class a();

        Set b();

        KeyManager c(Class cls);

        KeyManager d();
    }

    public KeyManagerRegistry(KeyManagerRegistry keyManagerRegistry) {
        this.f33845a = new ConcurrentHashMap(keyManagerRegistry.f33845a);
    }

    public final synchronized KeyManagerContainer a(String str) {
        if (!this.f33845a.containsKey(str)) {
            throw new GeneralSecurityException("No key manager found for key type " + str);
        }
        return (KeyManagerContainer) this.f33845a.get(str);
    }

    public final synchronized void b(KeyTypeManager keyTypeManager) {
        if (!keyTypeManager.a().a()) {
            throw new GeneralSecurityException("failed to register key manager " + keyTypeManager.getClass() + " as it is not FIPS compatible.");
        }
        c(new AnonymousClass2(keyTypeManager));
    }

    public final synchronized void c(AnonymousClass2 anonymousClass2) {
        String strB = ((KeyManagerImpl) anonymousClass2.d()).f33842a.b();
        KeyManagerContainer keyManagerContainer = (KeyManagerContainer) this.f33845a.get(strB);
        if (keyManagerContainer != null && !keyManagerContainer.a().equals(anonymousClass2.f33846a.getClass())) {
            f33844b.warning("Attempted overwrite of a registered key manager for key type ".concat(strB));
            throw new GeneralSecurityException("typeUrl (" + strB + ") is already registered with " + keyManagerContainer.a().getName() + ", cannot be re-registered with " + anonymousClass2.f33846a.getClass().getName());
        }
        this.f33845a.putIfAbsent(strB, anonymousClass2);
    }

    public KeyManagerRegistry() {
        this.f33845a = new ConcurrentHashMap();
    }
}
