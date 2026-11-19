package org.bouncycastle.pqc.crypto.crystals.dilithium;

import java.security.SecureRandom;

/* JADX INFO: loaded from: classes5.dex */
public class DilithiumParameters {
    public static final DilithiumParameters dilithium2 = new DilithiumParameters("dilithium2", 2, false);
    public static final DilithiumParameters dilithium3 = new DilithiumParameters("dilithium3", 3, false);
    public static final DilithiumParameters dilithium5 = new DilithiumParameters("dilithium5", 5, false);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f77659k;
    private final String name;
    private final boolean usingAES;

    private DilithiumParameters(String str, int i2, boolean z) {
        this.name = str;
        this.f77659k = i2;
        this.usingAES = z;
    }

    public DilithiumEngine getEngine(SecureRandom secureRandom) {
        return new DilithiumEngine(this.f77659k, secureRandom, this.usingAES);
    }

    public String getName() {
        return this.name;
    }
}
