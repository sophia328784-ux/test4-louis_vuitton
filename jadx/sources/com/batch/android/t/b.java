package com.batch.android.t;

import com.batch.android.e.t;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    private static final String r = "LocalCampaign";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f24039a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Integer f24040b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Integer f24041c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public com.batch.android.i.a f24042e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public com.batch.android.i.a f24043f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Integer f24044h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public a f24045i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public JSONObject f24046j;
    public com.batch.android.t.c n;
    public JSONObject p;
    public boolean q;
    public int d = 0;
    public int g = 60;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public List<c> f24047k = new ArrayList();
    public boolean l = false;
    public String m = null;
    public int o = 0;

    public static abstract class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public JSONObject f24048a;

        public a(JSONObject jSONObject) {
            this.f24048a = jSONObject;
        }

        public abstract boolean a(b bVar);
    }

    public interface c {
        String k();
    }

    public void a() {
        this.f24045i.a(this);
    }

    public void b() {
        try {
            this.f24046j.put("i", Long.toString(System.currentTimeMillis()));
        } catch (JSONException e2) {
            t.c(r, "Could not generate occurrence id in event data", e2);
        }
    }

    public boolean c() {
        return this.o != 0;
    }

    /* JADX INFO: renamed from: com.batch.android.t.b$b, reason: collision with other inner class name */
    public static class C0074b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f24049a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f24050b;

        /* JADX INFO: renamed from: com.batch.android.t.b$b$a */
        public enum a {
            ELIGIBLE,
            NOT_ELIGIBLE,
            REQUIRES_SYNC
        }

        public C0074b(long j2, boolean z) {
            this.f24049a = j2;
            this.f24050b = z;
        }

        public C0074b(long j2) {
            this.f24049a = j2;
        }
    }
}
