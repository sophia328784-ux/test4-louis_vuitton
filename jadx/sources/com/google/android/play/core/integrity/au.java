package com.google.android.play.core.integrity;

import com.google.android.play.integrity.internal.an;

/* JADX INFO: loaded from: classes2.dex */
public final class au implements com.google.android.play.integrity.internal.ak {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final an f33303a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final an f33304b;

    public au(an anVar, an anVar2) {
        this.f33303a = anVar;
        this.f33304b = anVar2;
    }

    @Override // com.google.android.play.integrity.internal.an
    public final Object a() {
        return new at(this.f33303a, this.f33304b);
    }
}
