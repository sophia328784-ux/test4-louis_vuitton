package com.vuitton.foundation.model.domain.model.avatar;

import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import defpackage.a;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;", "", "", b.a.f24015b, "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "image", "", "hasInitials", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Z)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AvatarItem {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66664a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AssetImage f66665b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f66666c;

    public AvatarItem(String str, AssetImage assetImage, boolean z) {
        str.getClass();
        assetImage.getClass();
        this.f66664a = str;
        this.f66665b = assetImage;
        this.f66666c = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AvatarItem)) {
            return false;
        }
        AvatarItem avatarItem = (AvatarItem) obj;
        return Intrinsics.c(this.f66664a, avatarItem.f66664a) && Intrinsics.c(this.f66665b, avatarItem.f66665b) && this.f66666c == avatarItem.f66666c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f66666c) + ((this.f66665b.hashCode() + (this.f66664a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AvatarItem(id=");
        sb.append(this.f66664a);
        sb.append(", image=");
        sb.append(this.f66665b);
        sb.append(", hasInitials=");
        return a.p(sb, this.f66666c, ")");
    }
}
