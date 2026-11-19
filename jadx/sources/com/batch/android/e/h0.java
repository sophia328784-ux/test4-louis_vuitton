package com.batch.android.e;

import android.os.Build;
import android.os.SystemClock;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class h0 implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f23099a = b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Date f23100b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f23101c;

    public void a(Date date) {
        if (this.f23099a) {
            this.f23101c = SystemClock.elapsedRealtime();
            this.f23100b = date;
        }
    }

    public boolean b() {
        return !"samsung".equalsIgnoreCase(Build.BRAND);
    }

    public Date c() {
        Date date = this.f23100b;
        if (!this.f23099a || date == null) {
            return new Date();
        }
        date.setTime((SystemClock.elapsedRealtime() - this.f23101c) + date.getTime());
        return date;
    }

    public boolean d() {
        return this.f23099a && this.f23100b != null;
    }

    @Override // com.batch.android.e.e
    public com.batch.android.i.a a() {
        return new com.batch.android.i.c(c().getTime());
    }
}
