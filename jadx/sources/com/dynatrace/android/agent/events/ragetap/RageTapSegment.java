package com.dynatrace.android.agent.events.ragetap;

import com.dynatrace.android.agent.CustomSegment;
import com.dynatrace.android.agent.EventType;
import com.dynatrace.android.agent.data.Session;
import com.dynatrace.android.agent.util.Utility;
import com.linkplay.medialib.ContentTree;

/* JADX INFO: loaded from: classes2.dex */
public class RageTapSegment extends CustomSegment {
    public final String u;
    public final long v;
    public final long w;
    public final int x;
    public final boolean y;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f27542a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f27543b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f27544c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f27545e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f27546f;
        public Session g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f27547h;
    }

    public RageTapSegment(Builder builder) {
        super(builder.f27542a, 16, builder.g, builder.f27545e, builder.f27547h);
        this.f27293b = builder.f27543b;
        this.f27299j = EventType.RAGE_TAP;
        this.g = builder.f27546f;
        this.u = Utility.k(250, builder.f27542a);
        this.v = builder.f27543b;
        this.w = builder.f27544c;
        this.x = builder.d;
        this.f27295e = true;
        this.y = builder.f27547h;
    }

    @Override // com.dynatrace.android.agent.CustomSegment
    public final StringBuilder h() {
        new RageTapEventWriter();
        StringBuilder sb = new StringBuilder();
        sb.append("et=");
        sb.append(this.f27299j.b());
        if (this.u != null) {
            sb.append("&na=");
            sb.append(Utility.m(this.o));
        }
        sb.append("&s0=");
        sb.append(this.g);
        sb.append("&t0=");
        sb.append(this.v);
        sb.append("&t1=");
        sb.append(this.w);
        sb.append("&nt=");
        sb.append(this.x);
        sb.append("&fw=");
        sb.append(this.y ? "1" : ContentTree.ROOT_ID);
        return sb;
    }
}
