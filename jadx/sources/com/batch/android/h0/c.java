package com.batch.android.h0;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class c extends e implements Serializable {
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f23453h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f23454i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public com.batch.android.f0.a f23455j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f23456k;
    public boolean l;
    public String m;
    public String n;
    public List<com.batch.android.f0.b> o;
    public boolean p;
    public int q;
    public a r;

    public enum a {
        HORIZONTAL,
        VERTICAL
    }

    public c(String str) {
        super(str);
        this.o = new ArrayList();
        this.r = a.HORIZONTAL;
    }
}
