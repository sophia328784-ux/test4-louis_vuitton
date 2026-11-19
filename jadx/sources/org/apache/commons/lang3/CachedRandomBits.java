package org.apache.commons.lang3;

import defpackage.md;
import java.util.Objects;
import java.util.Random;

/* JADX INFO: loaded from: classes3.dex */
final class CachedRandomBits {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Random f77534a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f77535b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f77536c;

    public CachedRandomBits(int i2, Random random) {
        if (i2 <= 0) {
            md.n("cacheSize must be positive");
            throw null;
        }
        byte[] bArr = i2 <= 268435455 ? new byte[i2] : new byte[268435455];
        this.f77535b = bArr;
        Objects.requireNonNull(random, "random");
        this.f77534a = random;
        random.nextBytes(bArr);
        this.f77536c = 0;
    }
}
