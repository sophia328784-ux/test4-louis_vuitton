package com.vuitton.foundation.model.domain.model.repair;

import com.batch.android.s.b;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/repair/RepairStatusTranslation;", "", "Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;", b.a.f24015b, "", "status", "statusLong", "<init>", "(Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class RepairStatusTranslation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RepairStatus f68180a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68181b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f68182c;

    public RepairStatusTranslation(RepairStatus repairStatus, String str, String str2) {
        repairStatus.getClass();
        str.getClass();
        str2.getClass();
        this.f68180a = repairStatus;
        this.f68181b = str;
        this.f68182c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RepairStatusTranslation)) {
            return false;
        }
        RepairStatusTranslation repairStatusTranslation = (RepairStatusTranslation) obj;
        return this.f68180a == repairStatusTranslation.f68180a && Intrinsics.c(this.f68181b, repairStatusTranslation.f68181b) && Intrinsics.c(this.f68182c, repairStatusTranslation.f68182c);
    }

    public final int hashCode() {
        return this.f68182c.hashCode() + fc.b(this.f68180a.hashCode() * 31, 31, this.f68181b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RepairStatusTranslation(id=");
        sb.append(this.f68180a);
        sb.append(", status=");
        sb.append(this.f68181b);
        sb.append(", statusLong=");
        return n00.r(this.f68182c, ")", sb);
    }
}
