package com.google.android.datatransport.runtime.firebase.transport;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class LogSourceMetrics {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f28029c = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f28030a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f28031b;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f28032a = "";

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public List f28033b = new ArrayList();
    }

    static {
        Collections.unmodifiableList(new Builder().f28033b);
    }

    public LogSourceMetrics(String str, List list) {
        this.f28030a = str;
        this.f28031b = list;
    }
}
