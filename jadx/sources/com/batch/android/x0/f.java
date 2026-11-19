package com.batch.android.x0;

import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
public class f extends n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final BigInteger f24169c;

    public f(long j2) {
        this(BigInteger.valueOf(j2));
    }

    public BigInteger a() {
        return this.f24169c;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.f24169c.toString();
    }

    public f(BigInteger bigInteger) {
        this.f24169c = bigInteger;
    }

    public f(String str, BigInteger bigInteger) {
        super(str);
        this.f24169c = bigInteger;
    }
}
