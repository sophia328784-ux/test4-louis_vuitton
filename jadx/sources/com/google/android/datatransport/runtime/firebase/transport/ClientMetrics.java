package com.google.android.datatransport.runtime.firebase.transport;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class ClientMetrics {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f28016e = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TimeWindow f28017a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f28018b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GlobalMetrics f28019c;
    public final String d;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public TimeWindow f28020a = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ArrayList f28021b = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public GlobalMetrics f28022c = null;
        public String d = "";
    }

    static {
        Collections.unmodifiableList(new Builder().f28021b);
    }

    public ClientMetrics(TimeWindow timeWindow, List list, GlobalMetrics globalMetrics, String str) {
        this.f28017a = timeWindow;
        this.f28018b = list;
        this.f28019c = globalMetrics;
        this.d = str;
    }
}
