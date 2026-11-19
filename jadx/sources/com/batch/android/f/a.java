package com.batch.android.f;

import com.batch.android.e.t;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class a implements e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f23264b = 3;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f23265c = 5;
    private static final boolean d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f23266e = "DomainManager";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final List<String> f23267f = Arrays.asList(c.d, "batch.io");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f23268a;

    public a(f fVar) {
        this.f23268a = fVar;
    }

    @Override // com.batch.android.f.e
    public String a(b bVar, boolean z) {
        return bVar.a((z || !f()) ? c.d : this.f23268a.f());
    }

    @Override // com.batch.android.f.e
    public void b() {
        if (f()) {
            this.f23268a.b();
        }
    }

    @Override // com.batch.android.f.e
    public boolean c() {
        if (f()) {
            return this.f23268a.c();
        }
        return false;
    }

    @Override // com.batch.android.f.e
    public void d() {
        if (f()) {
            this.f23268a.d();
        }
    }

    @Override // com.batch.android.f.e
    public void e() {
        Long lValueOf = Long.valueOf(LiveTranslationEntity.DefaultSentenceTimeOut);
        if (f()) {
            Date dateE = this.f23268a.e();
            if (dateE == null) {
                this.f23268a.g();
                return;
            }
            long time = new Date().getTime() - dateE.getTime();
            if (time < LiveTranslationEntity.DefaultSentenceTimeOut) {
                t.c(f23266e, String.format("Skip incrementation due to delay case: '%d' ms, should be less than '%d' ms", Long.valueOf(time), lValueOf));
                return;
            }
            t.c(f23266e, String.format("Incrementation due to delay: '%d' ms,  is greater than '%d' ms", Long.valueOf(time), lValueOf));
            if (this.f23268a.g() < 3) {
                return;
            }
            String strG = g();
            if (strG.equals(this.f23268a.f())) {
                return;
            }
            this.f23268a.c(strG);
        }
    }

    @Override // com.batch.android.f.e
    public boolean f() {
        return false;
    }

    public String g() {
        List<String> list;
        int iIndexOf;
        if (!f() || (iIndexOf = (list = f23267f).indexOf(this.f23268a.f())) == -1) {
            return c.d;
        }
        int i2 = iIndexOf + 1;
        return i2 < list.size() ? list.get(i2) : this.f23268a.f();
    }

    @Override // com.batch.android.f.e
    public boolean b(String str) {
        return this.f23268a.b(str);
    }

    @Override // com.batch.android.f.e
    public void a() {
        if (f()) {
            this.f23268a.a();
        }
    }

    @Override // com.batch.android.f.e
    public boolean a(String str) {
        return this.f23268a.a(str);
    }
}
