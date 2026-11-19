package com.vuitton.foundation.model.domain.model.avatar;

import defpackage.cj;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/avatar/AvatarSection;", "", "", "title", "", "Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;", "avatars", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AvatarSection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66669a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f66670b;

    public AvatarSection(String str, List<AvatarItem> list) {
        str.getClass();
        list.getClass();
        this.f66669a = str;
        this.f66670b = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AvatarSection)) {
            return false;
        }
        AvatarSection avatarSection = (AvatarSection) obj;
        return Intrinsics.c(this.f66669a, avatarSection.f66669a) && Intrinsics.c(this.f66670b, avatarSection.f66670b);
    }

    public final int hashCode() {
        return this.f66670b.hashCode() + (this.f66669a.hashCode() * 31);
    }

    public final String toString() {
        return cj.k("AvatarSection(title=", this.f66669a, ", avatars=", this.f66670b, ")");
    }
}
