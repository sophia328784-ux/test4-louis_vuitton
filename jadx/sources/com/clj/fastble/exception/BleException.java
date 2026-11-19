package com.clj.fastble.exception;

import defpackage.n00;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BleException implements Serializable {
    private static final long serialVersionUID = 8004414918500865564L;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f25295b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f25296c;

    public BleException(int i2, String str) {
        this.f25295b = i2;
        this.f25296c = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("BleException { code=");
        sb.append(this.f25295b);
        sb.append(", description='");
        return n00.r(this.f25296c, "'}", sb);
    }
}
