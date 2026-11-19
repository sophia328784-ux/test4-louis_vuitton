package com.batch.android.b1;

import com.batch.android.e.o0;
import defpackage.r81;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class f implements g<Map<String, String>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<String, String> f22987a;

    public f(Map<String, String> map) {
        HashMap map2 = new HashMap();
        this.f22987a = map2;
        if (map != null) {
            map2.putAll(map);
        } else {
            r81.d("Null params");
            throw null;
        }
    }

    @Override // com.batch.android.b1.g
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Map<String, String> h() {
        return this.f22987a;
    }

    @Override // com.batch.android.b1.g
    public byte[] g() {
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (String str : this.f22987a.keySet()) {
            if (z) {
                z = false;
            } else {
                sb.append("&");
            }
            sb.append(o0.a(str));
            sb.append("=");
            sb.append(o0.a(this.f22987a.get(str)));
        }
        return com.batch.android.e.b.a(sb.toString());
    }

    @Override // com.batch.android.b1.g
    public String i() {
        return "application/x-www-form-urlencoded";
    }

    @Override // com.batch.android.b1.g
    public boolean isEmpty() {
        return this.f22987a.isEmpty();
    }

    public f() {
        this(new HashMap(0));
    }
}
