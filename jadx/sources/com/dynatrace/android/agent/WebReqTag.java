package com.dynatrace.android.agent;

import com.dynatrace.android.agent.data.Session;
import com.dynatrace.android.agent.util.Utility;

/* JADX INFO: loaded from: classes2.dex */
public class WebReqTag {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f27313a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Session f27314b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f27315c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f27316e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f27317f;

    public WebReqTag(long j2, int i2, Session session) {
        this(i2, session, AdkSettings.f27246h, j2, Utility.e(), Utility.f27585a.getAndIncrement());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MT_3_");
        sb.append(this.f27313a);
        sb.append("_");
        Session session = this.f27314b;
        sb.append(session.f27476b);
        sb.append("_");
        sb.append(session.f27477c);
        sb.append("-0_");
        session.getClass();
        sb.append(this.f27315c);
        sb.append("_");
        sb.append(this.d);
        sb.append("_");
        sb.append(this.f27316e);
        sb.append("_");
        sb.append(this.f27317f);
        return sb.toString();
    }

    public WebReqTag(int i2, Session session, String str, long j2, long j3, int i3) {
        this.f27313a = i2;
        this.f27314b = session;
        this.f27315c = str;
        this.d = j2;
        this.f27316e = j3;
        this.f27317f = i3;
    }
}
