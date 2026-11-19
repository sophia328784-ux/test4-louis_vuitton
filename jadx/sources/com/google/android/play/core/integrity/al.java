package com.google.android.play.core.integrity;

import android.content.Context;
import com.google.android.play.integrity.internal.an;

/* JADX INFO: loaded from: classes2.dex */
public final class al implements com.google.android.play.integrity.internal.ak {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final an f33293a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final an f33294b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final an f33295c;
    public final an d;

    public al(an anVar, an anVar2, an anVar3, an anVar4) {
        this.f33293a = anVar;
        this.f33294b = anVar2;
        this.f33295c = anVar3;
        this.d = anVar4;
    }

    @Override // com.google.android.play.integrity.internal.an
    public final Object a() {
        Object objA = this.f33293a.a();
        com.google.android.play.integrity.internal.s sVar = (com.google.android.play.integrity.internal.s) this.f33294b.a();
        an anVar = ((au) this.f33295c).f33303a;
        return new aj((Context) objA, sVar, new i());
    }
}
