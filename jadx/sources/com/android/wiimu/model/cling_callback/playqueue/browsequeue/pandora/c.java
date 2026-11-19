package com.android.wiimu.model.cling_callback.playqueue.browsequeue.pandora;

import com.android.wiimu.model.cling_callback.playqueue.browsequeue.f;
import com.linkplay.medialib.ContentTree;
import defpackage.n00;

/* JADX INFO: loaded from: classes.dex */
public class c extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f22387a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f22388b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f22389c = "";
    public String d = ContentTree.ROOT_ID;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f22390e = ContentTree.ROOT_ID;

    public boolean a() {
        String str = this.f22390e;
        return str != null && str.trim().equals("1");
    }

    @Override // com.android.wiimu.model.cling_callback.playqueue.browsequeue.f
    public String toString() {
        StringBuilder sb = new StringBuilder("SourceItemPandora [Name=");
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
        sb.append(", Http_proxy=");
        sb.append(this.f22387a);
        sb.append(", Login_username=");
        sb.append(this.f22388b);
        sb.append(", Login_password=");
        sb.append(this.f22389c);
        sb.append(", StationID=");
        sb.append(this.d);
        sb.append(", MarkSearch=");
        return n00.r(this.f22390e, "]", sb);
    }
}
