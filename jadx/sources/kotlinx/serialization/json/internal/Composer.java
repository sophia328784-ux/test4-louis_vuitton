package kotlinx.serialization.json.internal;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0010\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/serialization/json/internal/Composer;", "", "Lkotlinx/serialization/json/internal/InternalJsonWriter;", "writer", "<init>", "(Lkotlinx/serialization/json/internal/InternalJsonWriter;)V", "kotlinx-serialization-json"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class Composer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InternalJsonWriter f75777a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f75778b;

    public Composer(InternalJsonWriter internalJsonWriter) {
        internalJsonWriter.getClass();
        this.f75777a = internalJsonWriter;
        this.f75778b = true;
    }

    public void a() {
        this.f75778b = true;
    }

    public void b() {
        this.f75778b = false;
    }

    public void c() {
        this.f75778b = false;
    }

    public void d(byte b2) {
        this.f75777a.writeLong(b2);
    }

    public final void e(char c2) {
        this.f75777a.a(c2);
    }

    public void f(int i2) {
        this.f75777a.writeLong(i2);
    }

    public void g(long j2) {
        this.f75777a.writeLong(j2);
    }

    public final void h(String str) {
        str.getClass();
        this.f75777a.c(str);
    }

    public void i(short s) {
        this.f75777a.writeLong(s);
    }

    public void j(String str) {
        str.getClass();
        this.f75777a.b(str);
    }

    public void k() {
    }

    public void l() {
    }
}
