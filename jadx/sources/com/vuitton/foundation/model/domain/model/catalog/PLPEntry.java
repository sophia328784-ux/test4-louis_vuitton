package com.vuitton.foundation.model.domain.model.catalog;

import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import defpackage.cj;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/catalog/PLPEntry;", "", "", b.a.f24015b, "plpId", "title", "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "image", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PLPEntry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67018a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67019b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67020c;
    public final AssetImage d;

    public PLPEntry(String str, String str2, String str3, AssetImage assetImage) {
        cj.z(str, str2, str3);
        this.f67018a = str;
        this.f67019b = str2;
        this.f67020c = str3;
        this.d = assetImage;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PLPEntry)) {
            return false;
        }
        PLPEntry pLPEntry = (PLPEntry) obj;
        return Intrinsics.c(this.f67018a, pLPEntry.f67018a) && Intrinsics.c(this.f67019b, pLPEntry.f67019b) && Intrinsics.c(this.f67020c, pLPEntry.f67020c) && Intrinsics.c(this.d, pLPEntry.d);
    }

    public final int hashCode() {
        int iB = fc.b(fc.b(this.f67018a.hashCode() * 31, 31, this.f67019b), 31, this.f67020c);
        AssetImage assetImage = this.d;
        return iB + (assetImage == null ? 0 : assetImage.hashCode());
    }

    public final String toString() {
        StringBuilder sbS = fc.s("PLPEntry(id=", this.f67018a, ", plpId=", this.f67019b, ", title=");
        sbS.append(this.f67020c);
        sbS.append(", image=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }

    public /* synthetic */ PLPEntry(String str, String str2, String str3, AssetImage assetImage, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, (i2 & 8) != 0 ? null : assetImage);
    }
}
