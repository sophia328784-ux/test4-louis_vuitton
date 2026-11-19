package org.teleal.cling.support.model;

import defpackage.md;

/* JADX INFO: loaded from: classes5.dex */
public class SortCriterion {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f78599a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f78600b;

    public SortCriterion(String str) {
        this(str.startsWith("+"), str.substring(1));
        if (str.startsWith("-") || str.startsWith("+")) {
            return;
        }
        md.n("Missing sort prefix +/- on criterion: ".concat(str));
        throw null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f78599a ? "+" : "-");
        sb.append(this.f78600b);
        return sb.toString();
    }

    public SortCriterion(boolean z, String str) {
        this.f78599a = z;
        this.f78600b = str;
    }
}
