package org.teleal.cling.model;

import java.util.Date;

/* JADX INFO: loaded from: classes5.dex */
public class ExpirationDetails {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f78374a;

    public ExpirationDetails(int i2) {
        this.f78374a = 0;
        a();
        this.f78374a = i2;
    }

    public static long a() {
        return new Date().getTime() / 1000;
    }

    public final String toString() {
        return "(ExpirationDetails) MAX AGE: " + this.f78374a;
    }

    public ExpirationDetails() {
        this.f78374a = 0;
        a();
    }
}
