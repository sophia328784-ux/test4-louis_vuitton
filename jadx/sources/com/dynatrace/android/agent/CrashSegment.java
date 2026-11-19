package com.dynatrace.android.agent;

import com.dynatrace.android.agent.data.Session;
import com.dynatrace.android.agent.util.Utility;
import com.linkplay.medialib.ContentTree;
import defpackage.n00;

/* JADX INFO: loaded from: classes2.dex */
public class CrashSegment extends ErrorSegment {
    public boolean z;

    public CrashSegment(String str, String str2, String str3, Session session, int i2, String str4, boolean z) {
        super(str, 11, EventType.CRASH, str, str2, str3, 0L, session, i2, str4, z);
        this.y = z;
        this.z = true;
    }

    @Override // com.dynatrace.android.agent.ErrorSegment, com.dynatrace.android.agent.CustomSegment
    public final StringBuilder h() {
        StringBuilder sbT = n00.t("et=");
        sbT.append(this.f27299j.b());
        sbT.append("&na=");
        sbT.append(Utility.m(this.o));
        sbT.append("&it=");
        sbT.append(Utility.e());
        sbT.append("&pa=0&s0=");
        sbT.append(this.g);
        sbT.append("&t0=");
        sbT.append(this.f27293b);
        CustomSegment.g("&rs=", Utility.m(this.v), sbT);
        CustomSegment.g("&st=", Utility.m(this.w), sbT);
        sbT.append("&tt=");
        sbT.append(this.x);
        sbT.append("&im=");
        boolean z = this.z;
        String str = ContentTree.ROOT_ID;
        sbT.append(z ? "1" : ContentTree.ROOT_ID);
        sbT.append("&fw=");
        if (this.y) {
            str = "1";
        }
        sbT.append(str);
        return sbT;
    }
}
