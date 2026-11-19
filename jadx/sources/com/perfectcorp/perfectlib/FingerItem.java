package com.perfectcorp.perfectlib;

/* JADX INFO: loaded from: classes3.dex */
public class FingerItem {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f39615a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RingPosition f39616b;

    public FingerItem(String str, RingPosition ringPosition) {
        this.f39615a = str;
        this.f39616b = ringPosition;
    }

    public String getName() {
        return this.f39615a;
    }

    public RingPosition getRingPosition() {
        return this.f39616b;
    }
}
