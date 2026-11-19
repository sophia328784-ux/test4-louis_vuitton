package com.batch.android.e;

import android.content.Context;
import android.content.SharedPreferences;
import defpackage.o7;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes2.dex */
public class s {
    private static final String d = "KVUserPreferencesStorage";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f23179e = "bastion_kv";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f23180f = "batch";
    private static final int g = 2;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected SharedPreferences f23181a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f23182b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    ExecutorService f23183c = Executors.newSingleThreadExecutor(new v());

    public s(Context context) {
        this.f23181a = a(context, "batch");
        b(context);
    }

    private boolean d(String str, String str2) {
        try {
            this.f23181a.edit().putString(str, d.a(d.b.EAS_BASE64).a(str2)).apply();
            return true;
        } catch (Exception e2) {
            t.c(d, "Error while persisting value for key " + str, e2);
            return false;
        }
    }

    public boolean a(Context context) {
        try {
            c cVarA = d.a(d.b.EAS_BASE64);
            SharedPreferences sharedPreferencesA = a(context, f23179e);
            HashMap map = new HashMap();
            for (Map.Entry<String, ?> entry : sharedPreferencesA.getAll().entrySet()) {
                map.put(entry.getKey(), cVarA.c(entry.getValue().toString()));
            }
            SharedPreferences.Editor editorEdit = this.f23181a.edit();
            for (Map.Entry entry2 : map.entrySet()) {
                editorEdit.putString((String) entry2.getKey(), (String) entry2.getValue());
            }
            editorEdit.apply();
            return true;
        } catch (Exception e2) {
            t.c(d, "Data encryption migration has failed, fallback on legacy shared prefs.", e2);
            return false;
        }
    }

    public void b(Context context) {
        if (b("batch_parameter_app.shared_prefs.version") == null) {
            t.c(d, "Data storage use deprecated cryptor, starting migration.");
            if (a(context)) {
                c("batch_parameter_app.shared_prefs.version", String.valueOf(2));
                t.c(d, "Data encryption has been successfully migrated");
            } else {
                this.f23181a = a(context, f23179e);
                this.f23182b = true;
            }
        }
    }

    public boolean c(String str, String str2) {
        if (this.f23182b) {
            return d(str, str2);
        }
        try {
            this.f23181a.edit().putString(str, str2).apply();
            return true;
        } catch (Exception e2) {
            t.c(d, "Error while persisting value for key " + str, e2);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean c(String str) throws Exception {
        return Boolean.valueOf(this.f23181a.contains(str));
    }

    private String b(String str, String str2) {
        c cVarA = d.a(d.b.EAS_BASE64);
        String string = this.f23181a.getString(str, null);
        return string == null ? str2 : cVarA.c(string);
    }

    public void d(String str) {
        this.f23181a.edit().remove(str).apply();
    }

    public String b(String str) {
        return a(str, (String) null);
    }

    public String a(String str, String str2) {
        if (this.f23182b) {
            return b(str, str2);
        }
        String string = this.f23181a.getString(str, null);
        return string == null ? str2 : string;
    }

    public boolean a(String str) throws Exception {
        return ((Boolean) this.f23183c.submit(new o7(this, str, 11)).get()).booleanValue();
    }

    public void a() {
        this.f23181a.edit().clear().apply();
    }

    private SharedPreferences a(Context context, String str) {
        return context.getApplicationContext().getSharedPreferences(str, 0);
    }
}
