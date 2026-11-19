package com.vuitton.foundation.model.domain.model.common.editorial;

import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.common.Asset;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlideSingle;", "", "", b.a.f24015b, "Lcom/vuitton/foundation/model/domain/model/common/Asset;", "asset", "Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;", "targeting", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class EditorialModuleSlideSingle {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67209a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Asset f67210b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Targeting f67211c;

    public EditorialModuleSlideSingle(String str, Asset asset, Targeting targeting) {
        str.getClass();
        asset.getClass();
        this.f67209a = str;
        this.f67210b = asset;
        this.f67211c = targeting;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EditorialModuleSlideSingle)) {
            return false;
        }
        EditorialModuleSlideSingle editorialModuleSlideSingle = (EditorialModuleSlideSingle) obj;
        return Intrinsics.c(this.f67209a, editorialModuleSlideSingle.f67209a) && Intrinsics.c(this.f67210b, editorialModuleSlideSingle.f67210b) && Intrinsics.c(this.f67211c, editorialModuleSlideSingle.f67211c);
    }

    public final int hashCode() {
        int iHashCode = (this.f67210b.hashCode() + (this.f67209a.hashCode() * 31)) * 31;
        Targeting targeting = this.f67211c;
        return iHashCode + (targeting == null ? 0 : targeting.f67220a.hashCode());
    }

    public final String toString() {
        return "EditorialModuleSlideSingle(id=" + this.f67209a + ", asset=" + this.f67210b + ", targeting=" + this.f67211c + ")";
    }

    public /* synthetic */ EditorialModuleSlideSingle(String str, Asset asset, Targeting targeting, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, asset, (i2 & 4) != 0 ? null : targeting);
    }
}
