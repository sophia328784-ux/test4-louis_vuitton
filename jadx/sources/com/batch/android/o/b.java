package com.batch.android.o;

import android.content.Context;
import com.batch.android.Batch;
import com.batch.android.e.z;
import com.batch.android.json.JSONObject;
import com.batch.android.n.b0;
import com.batch.android.n.w;
import defpackage.md;
import java.util.Date;
import java.util.TimeZone;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f23824a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f23825b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Date f23826c;
    private final TimeZone d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f23827e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Date f23828f;
    private final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final a f23829h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f23830i;

    public enum a {
        NEW(0),
        SENDING(1),
        OLD(3);


        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f23834b;

        a(int i2) {
            this.f23834b = i2;
        }

        public static a a(int i2) {
            for (a aVar : values()) {
                if (i2 == aVar.b()) {
                    return aVar;
                }
            }
            return null;
        }

        public int b() {
            return this.f23834b;
        }
    }

    public b(Context context, long j2, String str, JSONObject jSONObject) {
        String strA;
        if (str == null || str.trim().isEmpty()) {
            md.n("The event name cannot be empty or null");
            throw null;
        }
        this.f23825b = str;
        this.f23824a = UUID.randomUUID().toString();
        this.f23826c = new Date(j2);
        this.f23828f = b0.a().d() ? b0.a().c() : null;
        this.d = TimeZone.getDefault();
        if (context == null || (strA = w.a(context).a(z.Y0)) == null) {
            this.f23827e = 0L;
        } else {
            this.f23827e = Long.parseLong(strA);
        }
        this.f23829h = a.NEW;
        if (jSONObject == null || jSONObject.length() == 0) {
            this.g = null;
        } else {
            this.g = jSONObject.toString();
        }
        this.f23830i = Batch.getSessionID();
    }

    public Date a() {
        return this.f23826c;
    }

    public String b() {
        return this.f23824a;
    }

    public String c() {
        return this.f23825b;
    }

    public String d() {
        return this.g;
    }

    public Date e() {
        return this.f23828f;
    }

    public long f() {
        return this.f23827e;
    }

    public String g() {
        return this.f23830i;
    }

    public a h() {
        return this.f23829h;
    }

    public TimeZone i() {
        return this.d;
    }

    public boolean j() {
        return this.f23829h == a.OLD;
    }

    public b(String str, String str2, Date date, TimeZone timeZone, String str3, a aVar, Long l, Date date2, String str4) {
        this.f23824a = str;
        this.f23825b = str2;
        this.f23826c = date;
        this.d = timeZone;
        this.g = str3;
        this.f23829h = aVar;
        this.f23827e = l.longValue();
        this.f23828f = date2;
        this.f23830i = str4;
    }
}
