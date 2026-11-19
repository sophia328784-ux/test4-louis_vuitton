package com.batch.android.h;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected d f23435a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected InterfaceC0055a f23436b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected boolean f23437c;

    /* JADX INFO: renamed from: com.batch.android.h.a$a, reason: collision with other inner class name */
    public interface InterfaceC0055a {
        String get();
    }

    public a(d dVar, InterfaceC0055a interfaceC0055a) {
        this.f23437c = true;
        this.f23435a = dVar;
        this.f23436b = interfaceC0055a;
    }

    public d a() {
        return this.f23435a;
    }

    public String b() {
        return this.f23436b.get();
    }

    public boolean c() {
        return this.f23437c;
    }

    public void a(boolean z) {
        this.f23437c = z;
    }

    public a(d dVar, InterfaceC0055a interfaceC0055a, boolean z) {
        this.f23435a = dVar;
        this.f23436b = interfaceC0055a;
        this.f23437c = z;
    }
}
