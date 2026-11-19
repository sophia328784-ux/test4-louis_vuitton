package com.batch.android.v0;

import android.content.Context;
import android.text.TextUtils;
import com.batch.android.BatchDeeplinkInterceptor;
import com.batch.android.UserAction;
import com.batch.android.UserActionSource;
import com.batch.android.e.t;
import com.batch.android.json.JSONObject;
import defpackage.fc;
import defpackage.md;
import java.util.HashMap;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class a extends b {
    public static final String d = "Action";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f24082e = "batch.";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private BatchDeeplinkInterceptor f24085c = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashMap<String, UserAction> f24083a = new HashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private HashMap<String, Integer> f24084b = new HashMap<>();

    public a() {
        j();
    }

    private void j() {
        this.f24083a.put(com.batch.android.b.c.f22947b, new UserAction(com.batch.android.b.c.f22947b, new com.batch.android.b.c(this)));
        this.f24083a.put(com.batch.android.b.b.f22944c, new UserAction(com.batch.android.b.b.f22944c, new com.batch.android.b.b(this)));
        HashMap<String, UserAction> map = this.f24083a;
        String str = com.batch.android.b.d.f22950b;
        map.put(str, new UserAction(str, new com.batch.android.b.d()));
        HashMap<String, UserAction> map2 = this.f24083a;
        String str2 = com.batch.android.b.i.f22963b;
        map2.put(str2, new UserAction(str2, new com.batch.android.b.i()));
        HashMap<String, UserAction> map3 = this.f24083a;
        String str3 = com.batch.android.b.j.f22965b;
        map3.put(str3, new UserAction(str3, new com.batch.android.b.j()));
        this.f24083a.put(com.batch.android.b.a.f22942c, new UserAction(com.batch.android.b.a.f22942c, new com.batch.android.b.a()));
        this.f24083a.put(com.batch.android.b.f.f22955b, new UserAction(com.batch.android.b.f.f22955b, new com.batch.android.b.f()));
        this.f24083a.put(com.batch.android.b.e.f22952b, new UserAction(com.batch.android.b.e.f22952b, new com.batch.android.b.e()));
        this.f24083a.put(com.batch.android.b.e.f22953c, new UserAction(com.batch.android.b.e.f22953c, new com.batch.android.b.e()));
        this.f24083a.put(com.batch.android.b.h.f22960b, new UserAction(com.batch.android.b.h.f22960b, new com.batch.android.b.h()));
        this.f24083a.put(com.batch.android.b.h.f22961c, new UserAction(com.batch.android.b.h.f22961c, new com.batch.android.b.h()));
        this.f24083a.put(com.batch.android.b.g.f22957b, new UserAction(com.batch.android.b.g.f22957b, new com.batch.android.b.g()));
        this.f24083a.put(com.batch.android.b.g.f22958c, new UserAction(com.batch.android.b.g.f22958c, new com.batch.android.b.g()));
    }

    public void a(UserAction userAction) {
        if (userAction == null) {
            md.n("action cannot be null");
            return;
        }
        String identifier = userAction.getIdentifier();
        if (identifier.startsWith(f24082e)) {
            md.n(fc.h("The action identifier ('", identifier, "') is using a reserved prefix (batch.)"));
        } else if (this.f24083a.put(identifier.toLowerCase(Locale.US), userAction) != null) {
            t.e(d, "Action '" + identifier + "' was already registered, and will be replaced.");
        }
    }

    public void b(String str) {
        if (str == null) {
            md.n("identifier cannot be null");
            return;
        }
        if ("".equals(str.trim())) {
            md.n("identifier cannot be empty");
        } else if (str.startsWith(f24082e)) {
            md.n(fc.h("The action identifier ('", str, "') is using a reserved prefix (batch.)"));
        } else {
            this.f24083a.remove(str.toLowerCase(Locale.US));
        }
    }

    @Override // com.batch.android.v0.b
    public String g() {
        return "action";
    }

    @Override // com.batch.android.v0.b
    public int h() {
        return 1;
    }

    public BatchDeeplinkInterceptor i() {
        return this.f24085c;
    }

    public void a(String str, int i2) {
        if (str != null) {
            if ("".equals(str.trim())) {
                md.n("identifier cannot be empty");
                return;
            } else if (i2 != 0) {
                this.f24084b.put(str.toLowerCase(Locale.US), Integer.valueOf(i2));
                return;
            } else {
                md.n("drawable ressource ID must be different than 0");
                return;
            }
        }
        md.n("identifier cannot be null");
    }

    public int a(String str) {
        Integer num;
        if (str == null || "".equals(str.trim()) || (num = this.f24084b.get(str.toLowerCase(Locale.US))) == null) {
            return 0;
        }
        return num.intValue();
    }

    public boolean a(Context context, String str, JSONObject jSONObject) {
        if (!TextUtils.isEmpty(str) && !str.toLowerCase(Locale.US).startsWith(f24082e)) {
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            return a(context, str, jSONObject, null);
        }
        t.c(d, "Identifier is null, empty, or starts with batch. . Aborting.");
        return false;
    }

    public boolean a(Context context, String str, JSONObject jSONObject, UserActionSource userActionSource) {
        UserAction userAction = this.f24083a.get(str.toLowerCase(Locale.US));
        if (userAction != null) {
            userAction.getRunnable().performAction(context, userAction.getIdentifier(), jSONObject, userActionSource);
            return true;
        }
        t.a(d, "Batch attempted to perform the action named '" + str + "' but couldn't find any action registered to handle this.");
        return false;
    }

    public void a(BatchDeeplinkInterceptor batchDeeplinkInterceptor) {
        this.f24085c = batchDeeplinkInterceptor;
    }

    public int a(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        int iA = a(str);
        return iA == 0 ? context.getResources().getIdentifier(str, "drawable", context.getPackageName()) : iA;
    }
}
