package com.vuitton.foundation.model.domain.model.personalselections;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelections;", "", "", "Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSharing;", "inStore", "advisor", "<init>", "(Ljava/util/List;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PersonalSelections {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f67789a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f67790b;

    public PersonalSelections(List<PersonalSharing> list, List<PersonalSharing> list2) {
        list.getClass();
        list2.getClass();
        this.f67789a = list;
        this.f67790b = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PersonalSelections)) {
            return false;
        }
        PersonalSelections personalSelections = (PersonalSelections) obj;
        return Intrinsics.c(this.f67789a, personalSelections.f67789a) && Intrinsics.c(this.f67790b, personalSelections.f67790b);
    }

    public final int hashCode() {
        return this.f67790b.hashCode() + (this.f67789a.hashCode() * 31);
    }

    public final String toString() {
        return "PersonalSelections(inStore=" + this.f67789a + ", advisor=" + this.f67790b + ")";
    }
}
