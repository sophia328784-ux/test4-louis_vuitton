package com.bumptech.glide.manager;

import com.bumptech.glide.request.Request;
import defpackage.a;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class RequestTracker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Set f24897a = Collections.newSetFromMap(new WeakHashMap());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashSet f24898b = new HashSet();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f24899c;

    public final boolean a(Request request) {
        boolean z = true;
        if (request == null) {
            return true;
        }
        boolean zRemove = this.f24897a.remove(request);
        if (!this.f24898b.remove(request) && !zRemove) {
            z = false;
        }
        if (z) {
            request.clear();
        }
        return z;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("{numRequests=");
        sb.append(this.f24897a.size());
        sb.append(", isPaused=");
        return a.p(sb, this.f24899c, "}");
    }
}
