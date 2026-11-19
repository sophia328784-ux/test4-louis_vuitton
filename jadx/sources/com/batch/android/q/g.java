package com.batch.android.q;

import android.os.Bundle;
import com.batch.android.BatchNotificationSource;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f23940a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f23941b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public BatchNotificationSource f23942c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f23943e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Date f23944f;
    public Map<String, String> g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public j f23945h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public List<j> f23946i;

    public g(BatchNotificationSource batchNotificationSource, Date date, Map<String, String> map, j jVar) {
        this.f23942c = batchNotificationSource;
        this.f23944f = date;
        this.g = map;
        this.f23945h = jVar;
    }

    public Bundle a() {
        Bundle bundle = new Bundle();
        for (Map.Entry<String, String> entry : this.g.entrySet()) {
            bundle.putString(entry.getKey(), entry.getValue());
        }
        return bundle;
    }

    public boolean b() {
        Map<String, String> map;
        j jVar;
        return (this.f23942c == null || this.f23944f == null || (map = this.g) == null || map.size() <= 0 || (jVar = this.f23945h) == null || !jVar.a()) ? false : true;
    }

    public void a(j jVar) {
        if (this.f23946i == null) {
            this.f23946i = new ArrayList();
        }
        this.f23946i.add(jVar);
    }
}
