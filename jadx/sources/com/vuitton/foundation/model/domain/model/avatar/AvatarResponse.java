package com.vuitton.foundation.model.domain.model.avatar;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/avatar/AvatarResponse;", "", "", "Lcom/vuitton/foundation/model/domain/model/avatar/AvatarSection;", "sections", "Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;", "default", "<init>", "(Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AvatarResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f66667a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AvatarItem f66668b;

    public AvatarResponse(List<AvatarSection> list, AvatarItem avatarItem) {
        list.getClass();
        avatarItem.getClass();
        this.f66667a = list;
        this.f66668b = avatarItem;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AvatarResponse)) {
            return false;
        }
        AvatarResponse avatarResponse = (AvatarResponse) obj;
        return Intrinsics.c(this.f66667a, avatarResponse.f66667a) && Intrinsics.c(this.f66668b, avatarResponse.f66668b);
    }

    public final int hashCode() {
        return this.f66668b.hashCode() + (this.f66667a.hashCode() * 31);
    }

    public final String toString() {
        return "AvatarResponse(sections=" + this.f66667a + ", default=" + this.f66668b + ")";
    }
}
