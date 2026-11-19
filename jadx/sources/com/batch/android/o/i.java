package com.batch.android.o;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class i implements com.batch.android.j1.h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f23871b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ e.a f23872c;
    public final /* synthetic */ List d;

    public /* synthetic */ i(e.a aVar, List list, int i2) {
        this.f23871b = i2;
        this.f23872c = aVar;
        this.d = list;
    }

    @Override // com.batch.android.j1.h
    public final void a(com.batch.android.j1.g gVar) {
        int i2 = this.f23871b;
        List list = this.d;
        e.a aVar = this.f23872c;
        switch (i2) {
            case 0:
                aVar.a(list, gVar);
                break;
            default:
                aVar.b(list, gVar);
                break;
        }
    }
}
