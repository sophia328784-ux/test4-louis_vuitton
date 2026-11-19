package com.batch.android.f0;

import com.batch.android.json.JSONObject;
import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class a implements Serializable {
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f23284b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public JSONObject f23285c;

    public a(String str, JSONObject jSONObject) {
        this.f23284b = str;
        this.f23285c = jSONObject;
    }

    public boolean a() {
        String str = this.f23284b;
        return str == null || "batch.dismiss".equals(str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            a aVar = (a) obj;
            if (Objects.equals(this.f23284b, aVar.f23284b) && Objects.equals(this.f23285c, aVar.f23285c)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.f23284b, this.f23285c);
    }
}
