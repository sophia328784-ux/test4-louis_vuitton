package com.android.wiimu.model.cling_callback.playqueue.keymappingqueue;

import com.android.wiimu.model.cling_callback.playqueue.xml.c;
import defpackage.n00;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f22392a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f22393b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f22394c = "";
    public String d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f22395e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f22396f = false;

    public String a() {
        String str = this.f22392a;
        if (str == null || str.trim().length() == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder("<Name>");
        String str2 = this.f22392a;
        if (str2 == null) {
            str2 = "";
        }
        sb.append(c.b(c.a(str2)));
        sb.append("</Name>");
        StringBuilder sbU = n00.u(sb.toString(), "<PicUrl>");
        String str3 = this.f22394c;
        if (str3 == null) {
            str3 = "";
        }
        sbU.append(c.b(c.a(str3)));
        sbU.append("</PicUrl>");
        StringBuilder sbU2 = n00.u(sbU.toString(), "<Source>");
        String str4 = this.f22395e;
        if (str4 == null) {
            str4 = "";
        }
        sbU2.append(c.b(c.a(str4)));
        sbU2.append("</Source>");
        String string = sbU2.toString();
        if (!this.f22396f) {
            return string;
        }
        StringBuilder sbU3 = n00.u(string, "<Url>");
        String str5 = this.f22393b;
        if (str5 == null) {
            str5 = "";
        }
        sbU3.append(c.b(c.a(str5)));
        sbU3.append("</Url>");
        StringBuilder sbU4 = n00.u(sbU3.toString(), "<Metadata>");
        String str6 = this.d;
        sbU4.append(c.b(c.a(str6 != null ? str6 : "")));
        sbU4.append("</Metadata>");
        return sbU4.toString();
    }

    public boolean b() {
        String str = this.f22392a;
        return (str == null || str.trim().length() == 0) ? false : true;
    }
}
