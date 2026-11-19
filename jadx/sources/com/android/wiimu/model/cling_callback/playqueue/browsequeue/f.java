package com.android.wiimu.model.cling_callback.playqueue.browsequeue;

import com.linkplay.medialib.ContentTree;
import defpackage.n00;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class f implements Serializable {
    public String Name = "";
    public String Source = "";
    public String SearchUrl = "";
    public String PicUrl = "";
    public String Quality = "";
    public String UpdateTime = "";
    public String LastPlayIndex = "";
    public String TrackNumber = "";
    public boolean isRadio = false;
    public boolean hasMedia = true;
    public String SrcParent = "";
    public int CurrentPage = 1;
    public int TotalPages = 1;
    public int toneid = 1;
    public String PresetName = "";
    public String PresetKey = ContentTree.ROOT_ID;
    public String PressType = ContentTree.ROOT_ID;

    public void clear(f fVar) {
        fVar.Name = "";
        fVar.Source = "";
        fVar.SearchUrl = "";
        fVar.PicUrl = "";
        fVar.Quality = "";
        fVar.UpdateTime = "";
        fVar.LastPlayIndex = "";
        fVar.TrackNumber = "";
        fVar.isRadio = false;
        fVar.hasMedia = true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SourceItemBase [Name=");
        sb.append(this.Name);
        sb.append(", Source=");
        sb.append(this.Source);
        sb.append(", SearchUrl=");
        sb.append(this.SearchUrl);
        sb.append(", PicUrl=");
        sb.append(this.PicUrl);
        sb.append(", Quality=");
        sb.append(this.Quality);
        sb.append(", UpdateTime=");
        sb.append(this.UpdateTime);
        sb.append(", LastPlayIndex=");
        sb.append(this.LastPlayIndex);
        sb.append(", TrackNumber=");
        return n00.r(this.TrackNumber, "]", sb);
    }
}
