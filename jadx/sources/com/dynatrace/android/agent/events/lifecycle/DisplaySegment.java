package com.dynatrace.android.agent.events.lifecycle;

import com.dynatrace.android.agent.CustomSegment;
import com.dynatrace.android.agent.EventType;
import com.dynatrace.android.agent.data.Session;
import com.dynatrace.android.agent.measurement.MeasurementPoint;
import com.dynatrace.android.agent.util.Utility;
import com.linkplay.medialib.ContentTree;
import defpackage.n00;

/* JADX INFO: loaded from: classes2.dex */
public class DisplaySegment extends CustomSegment {
    public final MeasurementPoint u;
    public final MeasurementPoint v;
    public final MeasurementPoint w;
    public final MeasurementPoint x;
    public final boolean y;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f27530a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Session f27531b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f27532c;
        public long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public EventType f27533e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public MeasurementPoint f27534f;
        public MeasurementPoint g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public MeasurementPoint f27535h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public MeasurementPoint f27536i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public MeasurementPoint f27537j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f27538k;
    }

    public DisplaySegment(Builder builder) {
        super(builder.f27530a, 15, builder.f27531b, builder.f27532c, builder.f27538k);
        this.f27299j = builder.f27533e;
        MeasurementPoint measurementPoint = builder.f27534f;
        this.g = measurementPoint.f27549b;
        this.f27293b = measurementPoint.f27548a;
        this.d = builder.d;
        this.u = builder.g;
        this.v = builder.f27535h;
        this.w = builder.f27536i;
        this.x = builder.f27537j;
        this.f27295e = true;
        this.y = builder.f27538k;
    }

    @Override // com.dynatrace.android.agent.CustomSegment
    public final StringBuilder h() {
        new DisplayEventWriter();
        MeasurementPoint measurementPoint = new MeasurementPoint(this.f27293b, this.g);
        StringBuilder sbT = n00.t("et=");
        sbT.append(this.f27299j.b());
        sbT.append("&na=");
        sbT.append(Utility.m(this.o));
        sbT.append("&it=");
        sbT.append(Utility.e());
        sbT.append("&ca=");
        sbT.append(this.q);
        sbT.append("&pa=");
        sbT.append(this.d);
        sbT.append("&s0=");
        sbT.append(measurementPoint.f27549b);
        sbT.append("&t0=");
        sbT.append(measurementPoint.f27548a);
        MeasurementPoint measurementPoint2 = this.u;
        if (measurementPoint2 != null) {
            sbT.append("&s1=");
            sbT.append(measurementPoint2.f27549b);
            sbT.append("&t1=");
            sbT.append(measurementPoint2.f27548a);
        }
        MeasurementPoint measurementPoint3 = this.v;
        if (measurementPoint3 != null) {
            sbT.append("&s2=");
            sbT.append(measurementPoint3.f27549b);
            sbT.append("&t2=");
            sbT.append(measurementPoint3.f27548a);
        }
        MeasurementPoint measurementPoint4 = this.w;
        if (measurementPoint4 != null) {
            sbT.append("&s3=");
            sbT.append(measurementPoint4.f27549b);
            sbT.append("&t3=");
            sbT.append(measurementPoint4.f27548a);
        }
        MeasurementPoint measurementPoint5 = this.x;
        if (measurementPoint5 != null) {
            sbT.append("&s4=");
            sbT.append(measurementPoint5.f27549b);
            sbT.append("&t4=");
            sbT.append(measurementPoint5.f27548a);
        }
        sbT.append("&fw=");
        sbT.append(this.y ? "1" : ContentTree.ROOT_ID);
        return sbT;
    }

    @Override // com.dynatrace.android.agent.CustomSegment
    public final int k() {
        return this.p;
    }
}
