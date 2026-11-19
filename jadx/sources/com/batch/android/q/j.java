package com.batch.android.q;

import android.text.TextUtils;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f23950a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f23951b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f23952c;
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Map<String, Object> f23953e;

    public j(String str, String str2) {
        this.f23950a = str;
        this.f23951b = str2;
    }

    public boolean a() {
        return (TextUtils.isEmpty(this.f23950a) || TextUtils.isEmpty(this.f23951b)) ? false : true;
    }
}
