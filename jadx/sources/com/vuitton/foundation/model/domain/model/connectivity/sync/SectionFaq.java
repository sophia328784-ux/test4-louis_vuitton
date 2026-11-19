package com.vuitton.foundation.model.domain.model.connectivity.sync;

import defpackage.d21;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionFaq;", "", "", "Lcom/vuitton/foundation/model/domain/model/connectivity/sync/Faq;", "items", "<init>", "(Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SectionFaq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f67341a;

    public /* synthetic */ SectionFaq(List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : list);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof SectionFaq) && Intrinsics.c(this.f67341a, ((SectionFaq) obj).f67341a);
    }

    public final int hashCode() {
        List list = this.f67341a;
        if (list == null) {
            return 0;
        }
        return list.hashCode();
    }

    public final String toString() {
        return d21.o("SectionFaq(items=", ")", this.f67341a);
    }

    public SectionFaq(List<Faq> list) {
        this.f67341a = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SectionFaq() {
        this(null, 1, 0 == true ? 1 : 0);
    }
}
