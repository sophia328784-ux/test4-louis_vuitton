package com.dynatrace.android.agent;

import com.dynatrace.android.agent.data.Session;
import com.dynatrace.android.agent.util.Utility;
import com.linkplay.medialib.ContentTree;
import defpackage.n00;

/* JADX INFO: loaded from: classes2.dex */
public class WebReqSegment extends CustomSegment {
    public final boolean A;
    public final String u;
    public final int v;
    public final long w;
    public final long x;
    public final long y;
    public final String z;

    public WebReqSegment(long j2, int i2, long j3, long j4, int i3, String str, String str2, long j5, long j6, Session session, int i4, String str3, boolean z) {
        super(str2, 6, EventType.WEB_REQUEST, j2, i2, j3, j4, session, i4, z);
        this.v = i3;
        this.u = str;
        this.w = Utility.f27585a.getAndIncrement();
        this.x = j5;
        this.y = j6;
        this.z = str3;
        this.A = z;
    }

    @Override // com.dynatrace.android.agent.CustomSegment
    public final StringBuilder h() {
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
        sbT.append("&s1=");
        sbT.append(this.w);
        sbT.append("&t1=");
        sbT.append(this.f27294c - this.f27293b);
        int i2 = this.v;
        if (i2 > 0) {
            sbT.append("&rc=");
            sbT.append(i2);
        } else {
            String str = this.u;
            if (str != null) {
                sbT.append("&rc=");
                sbT.append(Utility.m(str));
            }
        }
        long j2 = this.x;
        if (j2 >= 0) {
            long j3 = this.y;
            if (j3 >= 0) {
                sbT.append("&bs=");
                sbT.append(j2);
                sbT.append("&br=");
                sbT.append(j3);
            }
        }
        String str2 = this.z;
        if (str2 != null) {
            sbT.append("&si=");
            sbT.append(Utility.m(str2));
        }
        sbT.append("&fw=");
        sbT.append(this.A ? "1" : ContentTree.ROOT_ID);
        return sbT;
    }
}
