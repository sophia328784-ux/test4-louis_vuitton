package com.android.wiimu.model.cling_callback.playqueue.browsequeue.douban;

import com.android.wiimu.model.cling_callback.playqueue.browsequeue.f;
import com.linkplay.medialib.ContentTree;
import defpackage.n00;

/* JADX INFO: loaded from: classes.dex */
public class b extends f {
    private static String u = "true";
    private static String v = "false";
    private static String w = "disabled";
    private static String x = "collect";
    private static String y = "uncollect";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f22370a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f22371b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f22372c = ContentTree.ROOT_ID;
    public String d = ContentTree.ROOT_ID;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f22373e = ContentTree.ROOT_ID;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f22374f = ContentTree.ROOT_ID;
    public String g = "";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f22375h = "";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f22376i = "";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f22377j = "";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f22378k = ContentTree.ROOT_ID;
    public String l = ContentTree.ROOT_ID;
    public String m = ContentTree.ROOT_ID;
    public String n = "";
    public String o = ContentTree.ROOT_ID;
    public String p = ContentTree.ROOT_ID;
    public String q = ContentTree.ROOT_ID;
    public String r = ContentTree.ROOT_ID;
    public String s = "";
    public String t = "";

    public static String a() {
        return y;
    }

    public static String b() {
        return x;
    }

    public static String c() {
        return w;
    }

    public static String d() {
        return v;
    }

    public static String e() {
        return u;
    }

    public boolean f() {
        String str = this.f22373e;
        return str != null && str.trim().equals("1");
    }

    @Override // com.android.wiimu.model.cling_callback.playqueue.browsequeue.f
    public String toString() {
        StringBuilder sb = new StringBuilder("SourceItemDouban [Name=");
        sb.append(this.Name);
        sb.append(", Source=");
        sb.append(this.Source);
        sb.append(", SearchUrl=");
        sb.append(this.SearchUrl);
        sb.append(", Quality=");
        sb.append(this.Quality);
        sb.append(", UpdateTime=");
        sb.append(this.UpdateTime);
        sb.append(", LastPlayIndex=");
        sb.append(this.LastPlayIndex);
        sb.append(", TrackNumber=");
        sb.append(this.TrackNumber);
        sb.append(", Login_username=");
        sb.append(this.f22370a);
        sb.append(", Login_password=");
        sb.append(this.f22371b);
        sb.append(", StationID=");
        sb.append(this.f22374f);
        sb.append(", StationLimit=");
        sb.append(this.d);
        sb.append(", AutoGenerate=");
        sb.append(this.f22372c);
        sb.append(", MarkSearch=");
        sb.append(this.f22373e);
        sb.append(", icon=");
        sb.append(this.n);
        sb.append(", userID=");
        sb.append(this.o);
        sb.append(", likeNum=");
        sb.append(this.p);
        sb.append(", bannedNum=");
        sb.append(this.q);
        sb.append(", playedNum=");
        sb.append(this.r);
        sb.append(", proStatus=");
        sb.append(this.s);
        sb.append(", proExprieDate=");
        sb.append(this.t);
        sb.append(", tracks=");
        sb.append(this.m);
        sb.append(", Description=");
        sb.append(this.g);
        sb.append(", Group_name=");
        sb.append(this.f22375h);
        sb.append(", Collected=");
        sb.append(this.f22376i);
        sb.append(", TotalPages=");
        sb.append(this.l);
        sb.append(", CurrentPage=");
        sb.append(this.f22378k);
        sb.append(", MaxTrackNumber=");
        return n00.r(this.f22377j, "]", sb);
    }
}
