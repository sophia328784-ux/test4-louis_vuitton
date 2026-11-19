package com.dynatrace.android.agent.events.lifecycle;

import com.dynatrace.android.agent.CustomSegment;
import com.dynatrace.android.agent.EventType;
import com.dynatrace.android.agent.data.Session;
import com.dynatrace.android.agent.measurement.MeasurementPoint;
import com.dynatrace.android.agent.util.Utility;
import com.linkplay.medialib.ContentTree;
import defpackage.n00;

/* JADX INFO: loaded from: classes2.dex */
public class AppStartSegment extends CustomSegment {
    public final MeasurementPoint u;
    public final MeasurementPoint v;
    public final String w;
    public final boolean x;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f27523a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Session f27524b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f27525c;
        public long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public EventType f27526e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public MeasurementPoint f27527f;
        public MeasurementPoint g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f27528h;
    }

    public AppStartSegment(Builder builder) {
        super(builder.f27523a, 15, builder.f27524b, builder.f27525c, builder.f27528h);
        this.w = Utility.k(250, builder.f27523a);
        this.f27299j = builder.f27526e;
        MeasurementPoint measurementPoint = builder.f27527f;
        this.g = measurementPoint.f27549b;
        this.f27293b = measurementPoint.f27548a;
        this.d = builder.d;
        this.u = measurementPoint;
        this.v = builder.g;
        this.f27295e = true;
        this.x = builder.f27528h;
    }

    @Override // com.dynatrace.android.agent.CustomSegment
    public final StringBuilder h() {
        new AppStartEventWriter();
        StringBuilder sbT = n00.t("et=");
        sbT.append(this.f27299j.b());
        if (this.w != null) {
            sbT.append("&na=");
            sbT.append(Utility.m(this.o));
        }
        sbT.append("&it=");
        sbT.append(Utility.e());
        sbT.append("&ca=");
        sbT.append(this.q);
        sbT.append("&pa=");
        sbT.append(this.d);
        sbT.append("&s0=");
        MeasurementPoint measurementPoint = this.u;
        sbT.append(measurementPoint.f27549b);
        sbT.append("&t0=");
        sbT.append(measurementPoint.f27548a);
        sbT.append("&s1=");
        MeasurementPoint measurementPoint2 = this.v;
        sbT.append(measurementPoint2.f27549b);
        sbT.append("&t1=");
        sbT.append(measurementPoint2.f27548a);
        sbT.append("&fw=");
        sbT.append(this.x ? "1" : ContentTree.ROOT_ID);
        return sbT;
    }
}
