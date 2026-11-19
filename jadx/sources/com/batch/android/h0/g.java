package com.batch.android.h0;

import android.text.TextUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class g extends e implements Serializable {
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f23464h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f23465i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f23466j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f23467k;
    public List<com.batch.android.f0.b> l;
    public String m;
    public String n;
    public String o;
    public Boolean p;
    public Boolean q;
    public Boolean r;
    public Boolean s;
    public Boolean t;
    public Boolean u;
    public Double v;
    public int w;

    public g(String str) {
        super(str);
        this.l = new ArrayList();
    }

    public String f() {
        if (!TextUtils.isEmpty(this.f23466j)) {
            return this.f23466j;
        }
        if (TextUtils.isEmpty(this.f23465i)) {
            return null;
        }
        return this.f23465i;
    }
}
