package com.dynatrace.android.agent;

import com.dynatrace.android.agent.data.Session;
import com.dynatrace.android.agent.util.Utility;
import com.linkplay.medialib.ContentTree;
import defpackage.n00;

/* JADX INFO: loaded from: classes2.dex */
public class ErrorSegment extends CustomSegment {
    public final String u;
    public final String v;
    public final String w;
    public final String x;
    public boolean y;

    public ErrorSegment(String str, int i2, EventType eventType, String str2, String str3, String str4, long j2, Session session, int i3, String str5, boolean z) {
        super(str, i2, eventType, j2, session, i3, z);
        this.u = str2;
        this.v = str3;
        this.w = str4;
        this.x = str5;
        this.y = z;
    }

    @Override // com.dynatrace.android.agent.CustomSegment
    public StringBuilder h() {
        StringBuilder sbT = n00.t("et=");
        sbT.append(this.f27299j.b());
        sbT.append("&na=");
        sbT.append(Utility.m(this.o));
        sbT.append("&it=");
        sbT.append(Utility.e());
        sbT.append("&pa=");
        sbT.append(this.d);
        sbT.append("&s0=");
        sbT.append(this.g);
        sbT.append("&t0=");
        sbT.append(this.f27293b);
        CustomSegment.g("&rs=", Utility.m(this.v), sbT);
        CustomSegment.g("&ev=", Utility.m(this.u), sbT);
        CustomSegment.g("&st=", Utility.m(this.w), sbT);
        sbT.append("&tt=");
        sbT.append(this.x);
        sbT.append("&fw=");
        sbT.append(this.y ? "1" : ContentTree.ROOT_ID);
        return sbT;
    }

    public ErrorSegment(String str, String str2, String str3, String str4, long j2, Session session, int i2, String str5, boolean z) {
        this(str, 6, EventType.ERROR_EXCEPTION, str2, str3, str4, j2, session, i2, str5, z);
    }
}
