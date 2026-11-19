package com.vuitton.foundation.model.domain.model.account;

import com.batch.android.s.b;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087@\u0018\u00002\u00020\u0001\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/WorldwideId;", "", b.a.f24015b, "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
@JvmInline
public final class WorldwideId {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66244a;

    public final boolean equals(Object obj) {
        if (obj instanceof WorldwideId) {
            return this.f66244a.equals(((WorldwideId) obj).f66244a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f66244a.hashCode();
    }

    public final String toString() {
        return fc.h("WorldwideId(id=", this.f66244a, ")");
    }
}
