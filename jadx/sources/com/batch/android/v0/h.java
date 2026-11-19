package com.batch.android.v0;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Handler;
import com.batch.android.BatchOptOutResultListener;
import com.batch.android.e.c0;
import com.batch.android.e.t;
import com.batch.android.json.JSONException;
import com.batch.android.n.e0;
import com.batch.android.n.o;
import com.batch.android.n.p;
import com.batch.android.n.w;
import defpackage.a91;

/* JADX INFO: loaded from: classes2.dex */
public class h extends b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f24113c = "OptOut";
    public static final String d = "com.batch.android.optout.enabled";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f24114e = "com.batch.android.optout.disabled";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f24115f = "wipe_data";
    private static final String g = "com.batch.optout";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f24116h = "app.batch.opted_out";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f24117i = "app.batch.send_optin_event";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Boolean f24118a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SharedPreferences f24119b;

    private synchronized SharedPreferences b(Context context) {
        try {
            if (this.f24119b == null) {
                this.f24119b = context.getApplicationContext().getSharedPreferences(g, 0);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f24119b;
    }

    public c0<Void> a(final Context context, final boolean z, final BatchOptOutResultListener batchOptOutResultListener) {
        final c0<Void> c0Var = new c0<>();
        t.c(f24113c, "Opt Out, wipe data: " + z);
        if (c(context)) {
            c0Var.a((Exception) null);
            return c0Var;
        }
        c0<Void> c0VarA = z ? e0.a().a(context, com.batch.android.o.g.q) : e0.a().a(context, com.batch.android.o.g.p);
        if (batchOptOutResultListener == null) {
            c0VarA = c0.b((Object) null);
        }
        c0<Void> c0Var2 = c0VarA;
        c0Var2.a(new c0.f() { // from class: b91
            @Override // com.batch.android.e.c0.f
            public final void a(Object obj) {
                this.f20801a.a(context, batchOptOutResultListener, z, c0Var, (Void) obj);
            }
        });
        c0Var2.a(new c0.b() { // from class: c91
            @Override // com.batch.android.e.c0.b
            public final void a(Exception exc) {
                this.f21100a.a(context, batchOptOutResultListener, c0Var, z, exc);
            }
        });
        return c0Var;
    }

    public boolean c(Context context) {
        if (this.f24118a == null) {
            SharedPreferences sharedPreferencesB = b(context);
            if (sharedPreferencesB.contains(f24116h)) {
                this.f24118a = Boolean.valueOf(sharedPreferencesB.getBoolean(f24116h, false));
            } else {
                this.f24118a = Boolean.valueOf(com.batch.android.m1.b.a(context, com.batch.android.m1.b.f23705a));
                sharedPreferencesB.edit().putBoolean(f24116h, this.f24118a.booleanValue()).apply();
                if (this.f24118a.booleanValue()) {
                    t.b(f24113c, "Batch has been set to be Opted Out from by default in your app's manifest. You will need to call Batch.optIn() before performing anything else.");
                }
            }
        }
        return this.f24118a.booleanValue();
    }

    public void d(Context context) {
        t.c(f24113c, "Opt In");
        if (c(context)) {
            this.f24118a = Boolean.FALSE;
            b(context).edit().putBoolean(f24116h, false).putBoolean(f24117i, true).apply();
            o.a(context).a(new Intent(f24114e));
        }
    }

    public void e(Context context) {
        SharedPreferences sharedPreferencesB = b(context);
        if (sharedPreferencesB.getBoolean(f24117i, false)) {
            try {
                e0.a().d(context);
                sharedPreferencesB.edit().remove(f24117i).apply();
            } catch (JSONException e2) {
                t.c(f24113c, "Could not track optin", e2);
            }
        }
    }

    public void f(Context context) {
        t.c(f24113c, "Wiping data");
        l.h(context);
        e0.a().e(context);
        p.a().e(context);
        com.batch.android.n.j.a(context).e();
        w.a(context).a();
    }

    @Override // com.batch.android.v0.b
    public String g() {
        return "optout";
    }

    @Override // com.batch.android.v0.b
    public int h() {
        return 1;
    }

    public Boolean i() {
        return this.f24118a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Context context, BatchOptOutResultListener batchOptOutResultListener, boolean z, c0 c0Var, Void r12) {
        new Handler(context.getMainLooper()).post(new a91(this, batchOptOutResultListener, context, z, c0Var));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(BatchOptOutResultListener batchOptOutResultListener, Context context, boolean z, c0 c0Var) {
        if (batchOptOutResultListener != null) {
            batchOptOutResultListener.onSuccess();
        }
        a(context, z);
        c0Var.a((Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Context context, BatchOptOutResultListener batchOptOutResultListener, c0 c0Var, boolean z, Exception exc) {
        new Handler(context.getMainLooper()).post(new a91(this, batchOptOutResultListener, c0Var, context, z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(BatchOptOutResultListener batchOptOutResultListener, c0 c0Var, Context context, boolean z) {
        if (batchOptOutResultListener != null && batchOptOutResultListener.onError() == BatchOptOutResultListener.ErrorPolicy.CANCEL) {
            c0Var.a((Exception) null);
        } else {
            a(context, z);
            c0Var.a((Object) null);
        }
    }

    private void a(Context context, boolean z) {
        if (z) {
            f(context);
        }
        this.f24118a = Boolean.TRUE;
        b(context).edit().putBoolean(f24116h, true).apply();
        Intent intent = new Intent(d);
        intent.putExtra(f24115f, z);
        o.a(context).a(intent);
    }
}
