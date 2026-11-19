package com.google.android.gms.internal.gtm;

import defpackage.b21;

/* JADX INFO: loaded from: classes2.dex */
final class zzli extends zzlm {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f30196b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f30197c;

    public zzli(Object obj) {
        this.f30196b = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.f30197c;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f30197c) {
            b21.x();
            return null;
        }
        this.f30197c = true;
        return this.f30196b;
    }
}
