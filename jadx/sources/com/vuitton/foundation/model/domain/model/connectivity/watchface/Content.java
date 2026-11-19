package com.vuitton.foundation.model.domain.model.connectivity.watchface;

import defpackage.cj;
import defpackage.tr;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0086\b\u0018\u00002\u00020\u0001B\u008b\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u001c\b\u0002\u0010\u0006\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004j\n\u0012\u0004\u0012\u00020\u0002\u0018\u0001`\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\u001c\b\u0002\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004j\n\u0012\u0004\u0012\u00020\u0002\u0018\u0001`\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/Content;", "", "", "assetVideoplaceholder", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "assetBottom", "assetHowToGet", "assetHowToGetSubtitles", "assetText", "assetTop", "assetVideo", "assetVideoSubtitles", "<init>", "(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Content {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67405a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f67406b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67407c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f67408e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f67409f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f67410h;

    public /* synthetic */ Content(String str, ArrayList arrayList, String str2, String str3, String str4, ArrayList arrayList2, String str5, String str6, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : arrayList, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? null : str3, (i2 & 16) != 0 ? null : str4, (i2 & 32) != 0 ? null : arrayList2, (i2 & 64) != 0 ? null : str5, (i2 & 128) != 0 ? null : str6);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Content)) {
            return false;
        }
        Content content = (Content) obj;
        return Intrinsics.c(this.f67405a, content.f67405a) && Intrinsics.c(this.f67406b, content.f67406b) && Intrinsics.c(this.f67407c, content.f67407c) && Intrinsics.c(this.d, content.d) && Intrinsics.c(this.f67408e, content.f67408e) && Intrinsics.c(this.f67409f, content.f67409f) && Intrinsics.c(this.g, content.g) && Intrinsics.c(this.f67410h, content.f67410h);
    }

    public final int hashCode() {
        String str = this.f67405a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        ArrayList arrayList = this.f67406b;
        int iHashCode2 = (iHashCode + (arrayList == null ? 0 : arrayList.hashCode())) * 31;
        String str2 = this.f67407c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.d;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f67408e;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        ArrayList arrayList2 = this.f67409f;
        int iHashCode6 = (iHashCode5 + (arrayList2 == null ? 0 : arrayList2.hashCode())) * 31;
        String str5 = this.g;
        int iHashCode7 = (iHashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f67410h;
        return iHashCode7 + (str6 != null ? str6.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Content(assetVideoplaceholder=");
        sb.append(this.f67405a);
        sb.append(", assetBottom=");
        sb.append(this.f67406b);
        sb.append(", assetHowToGet=");
        cj.C(sb, this.f67407c, ", assetHowToGetSubtitles=", this.d, ", assetText=");
        sb.append(this.f67408e);
        sb.append(", assetTop=");
        sb.append(this.f67409f);
        sb.append(", assetVideo=");
        return tr.l(sb, this.g, ", assetVideoSubtitles=", this.f67410h, ")");
    }

    public Content(String str, ArrayList<String> arrayList, String str2, String str3, String str4, ArrayList<String> arrayList2, String str5, String str6) {
        this.f67405a = str;
        this.f67406b = arrayList;
        this.f67407c = str2;
        this.d = str3;
        this.f67408e = str4;
        this.f67409f = arrayList2;
        this.g = str5;
        this.f67410h = str6;
    }

    public Content() {
        this(null, null, null, null, null, null, null, null, 255, null);
    }
}
