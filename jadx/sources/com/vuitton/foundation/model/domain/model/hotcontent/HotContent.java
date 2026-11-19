package com.vuitton.foundation.model.domain.model.hotcontent;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContent;", "", "", "Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem;", "items", "", "fromCache", "<init>", "(Ljava/util/List;Z)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class HotContent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f67605a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f67606b;

    public HotContent(List<? extends HotContentItem> list, boolean z) {
        list.getClass();
        this.f67605a = list;
        this.f67606b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HotContent)) {
            return false;
        }
        HotContent hotContent = (HotContent) obj;
        return Intrinsics.c(this.f67605a, hotContent.f67605a) && this.f67606b == hotContent.f67606b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f67606b) + (this.f67605a.hashCode() * 31);
    }

    public final String toString() {
        return "HotContent(items=" + this.f67605a + ", fromCache=" + this.f67606b + ")";
    }
}
