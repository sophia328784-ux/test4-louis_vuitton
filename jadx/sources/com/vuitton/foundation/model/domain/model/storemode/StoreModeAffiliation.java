package com.vuitton.foundation.model.domain.model.storemode;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeAffiliation;", "", "", "rmsCode", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class StoreModeAffiliation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68257a;

    public StoreModeAffiliation(String str) {
        this.f68257a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof StoreModeAffiliation) && Intrinsics.c(this.f68257a, ((StoreModeAffiliation) obj).f68257a);
    }

    public final int hashCode() {
        String str = this.f68257a;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public final String toString() {
        return fc.h("StoreModeAffiliation(rmsCode=", this.f68257a, ")");
    }
}
