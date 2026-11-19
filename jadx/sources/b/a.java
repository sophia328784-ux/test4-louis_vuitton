package b;

import defpackage.n00;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class a implements Serializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f20668b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f20669c = "";
    public String d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f20670e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f20671f = "";
    public String g = "";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f20672h = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f20673i = "";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f20674j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f20675k = "";

    public final void a(a aVar) {
        this.f20668b = aVar.f20668b;
        this.f20669c = aVar.f20669c;
        this.d = aVar.d;
        this.f20670e = aVar.f20670e;
        this.f20671f = aVar.f20671f;
        this.g = aVar.g;
        this.f20672h = aVar.f20672h;
        this.f20673i = aVar.f20673i;
        this.f20674j = aVar.f20674j;
        this.f20675k = aVar.f20675k;
    }

    public final boolean equals(Object obj) {
        return this == obj;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AlbumInfo [title=");
        sb.append(this.f20668b);
        sb.append(", album=");
        sb.append(this.f20669c);
        sb.append(", creator=");
        sb.append(this.d);
        sb.append(", artist=");
        sb.append(this.f20670e);
        sb.append(", albumArtURI=");
        sb.append(this.f20671f);
        sb.append(", playUri=");
        sb.append(this.g);
        sb.append(", duration=");
        sb.append(this.f20672h);
        sb.append(", sourceType=");
        sb.append(this.f20673i);
        sb.append(", song_id=");
        sb.append(this.f20674j);
        sb.append(", Singer_ID=0, Format=, Size=, publish_time=, Type_Description=");
        return n00.r(this.f20675k, ", type=0, album_id=0]", sb);
    }
}
