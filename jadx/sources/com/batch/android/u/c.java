package com.batch.android.u;

import android.os.Handler;
import android.os.Looper;
import com.batch.android.e.t;
import com.batch.android.json.JSONObject;
import com.batch.android.n.z;
import com.batch.android.v0.f;
import com.batch.android.v0.g;
import defpackage.w21;

/* JADX INFO: loaded from: classes2.dex */
public class c extends b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Handler f24070c;

    public c(g gVar, JSONObject jSONObject) {
        super(gVar, jSONObject);
        this.f24070c = new Handler(Looper.getMainLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(com.batch.android.t.b bVar) {
        if (z.a().h()) {
            super.a(bVar);
        } else {
            t.c(f.f24095i, "Application is in background, skipping message display");
        }
    }

    @Override // com.batch.android.u.b, com.batch.android.t.b.a
    public boolean a(com.batch.android.t.b bVar) {
        if (!bVar.c()) {
            return super.a(bVar);
        }
        t.c(f.f24095i, "Scheduling In-App message with delay: " + bVar.o + " seconds");
        return this.f24070c.postDelayed(new w21(this, bVar, 25), ((long) bVar.o) * 1000);
    }

    public static c b(JSONObject jSONObject) {
        return new c(com.batch.android.n.t.a(), jSONObject);
    }
}
