package com.vuitton.foundation.model.domain.model.sizeguide;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/sizeguide/HowToMeasureItem;", "", "", "image", "text", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class HowToMeasureItem {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68205a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68206b;

    public HowToMeasureItem(String str, String str2) {
        str2.getClass();
        this.f68205a = str;
        this.f68206b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HowToMeasureItem)) {
            return false;
        }
        HowToMeasureItem howToMeasureItem = (HowToMeasureItem) obj;
        return Intrinsics.c(this.f68205a, howToMeasureItem.f68205a) && Intrinsics.c(this.f68206b, howToMeasureItem.f68206b);
    }

    public final int hashCode() {
        String str = this.f68205a;
        return this.f68206b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
    }

    public final String toString() {
        return d21.l("HowToMeasureItem(image=", this.f68205a, ", text=", this.f68206b, ")");
    }
}
