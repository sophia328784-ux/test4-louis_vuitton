package com.vuitton.foundation.model.domain.model.catalog.thematicplp;

import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/Theme;", "", "", b.a.f24015b, "title", "description", "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "image", "backgroundColor", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Theme {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67037a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67038b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67039c;
    public final AssetImage d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f67040e;

    public Theme(String str, String str2, String str3, AssetImage assetImage, String str4) {
        str.getClass();
        assetImage.getClass();
        str4.getClass();
        this.f67037a = str;
        this.f67038b = str2;
        this.f67039c = str3;
        this.d = assetImage;
        this.f67040e = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Theme)) {
            return false;
        }
        Theme theme = (Theme) obj;
        return Intrinsics.c(this.f67037a, theme.f67037a) && Intrinsics.c(this.f67038b, theme.f67038b) && Intrinsics.c(this.f67039c, theme.f67039c) && Intrinsics.c(this.d, theme.d) && Intrinsics.c(this.f67040e, theme.f67040e);
    }

    public final int hashCode() {
        int iHashCode = this.f67037a.hashCode() * 31;
        String str = this.f67038b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f67039c;
        return this.f67040e.hashCode() + ((this.d.hashCode() + ((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("Theme(id=", this.f67037a, ", title=", this.f67038b, ", description=");
        sbS.append(this.f67039c);
        sbS.append(", image=");
        sbS.append(this.d);
        sbS.append(", backgroundColor=");
        return n00.r(this.f67040e, ")", sbS);
    }
}
