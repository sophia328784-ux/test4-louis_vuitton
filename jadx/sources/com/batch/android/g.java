package com.batch.android;

import android.content.Context;
import com.batch.android.e.z;
import com.batch.android.n.w;
import defpackage.r81;
import java.util.Date;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f23311a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Date f23312b;

    public g(Context context) {
        if (context == null) {
            r81.d("Null context");
            throw null;
        }
        this.f23311a = c(context.getApplicationContext());
        this.f23312b = b(context.getApplicationContext());
    }

    private String a(Context context) {
        return UUID.randomUUID().toString();
    }

    private Date b(Context context) {
        String strA = w.a(context).a(z.Q0);
        if (strA != null) {
            return new Date(Long.valueOf(strA).longValue());
        }
        Date date = new Date();
        w.a(context).a(z.Q0, String.valueOf(date.getTime()), true);
        return date;
    }

    private String c(Context context) {
        String strA = w.a(context).a(z.P0);
        if (strA != null) {
            return strA;
        }
        String strA2 = a(context);
        w.a(context).a(z.P0, strA2, true);
        return strA2;
    }

    public Date a() {
        return this.f23312b;
    }

    public String b() {
        return this.f23311a;
    }
}
