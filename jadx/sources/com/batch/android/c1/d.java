package com.batch.android.c1;

import defpackage.tr;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<String> f23017a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<String> f23018b;

    public d(List<String> list, List<String> list2) {
        this.f23017a = list;
        this.f23018b = list2;
    }

    public void a(List<String> list) {
        if (this.f23017a == null) {
            this.f23017a = new ArrayList();
        }
        this.f23017a.addAll(list);
    }

    public void b(List<String> list) {
        if (this.f23018b == null) {
            this.f23018b = new ArrayList();
        }
        this.f23018b.addAll(list);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ProfilePartialUpdateAttribute{added=");
        sb.append(this.f23017a);
        sb.append(", removed=");
        return tr.m(sb, this.f23018b, '}');
    }

    public d(List<String> list) {
        this.f23017a = list;
    }

    public List<String> a() {
        return this.f23017a;
    }

    public List<String> b() {
        return this.f23018b;
    }
}
