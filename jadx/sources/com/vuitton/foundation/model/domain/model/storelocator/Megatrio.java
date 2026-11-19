package com.vuitton.foundation.model.domain.model.storelocator;

import com.vuitton.foundation.model.domain.model.common.Cta;
import defpackage.a;
import defpackage.fc;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/storelocator/Megatrio;", "", "", "surtitle", "description", "", "Lcom/vuitton/foundation/model/domain/model/common/Cta;", "buttons", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Megatrio {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68239a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68240b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f68241c;

    public Megatrio(String str, String str2, List<Cta> list) {
        str.getClass();
        list.getClass();
        this.f68239a = str;
        this.f68240b = str2;
        this.f68241c = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Megatrio)) {
            return false;
        }
        Megatrio megatrio = (Megatrio) obj;
        return Intrinsics.c(this.f68239a, megatrio.f68239a) && Intrinsics.c(this.f68240b, megatrio.f68240b) && Intrinsics.c(this.f68241c, megatrio.f68241c);
    }

    public final int hashCode() {
        int iHashCode = this.f68239a.hashCode() * 31;
        String str = this.f68240b;
        return this.f68241c.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        return a.o(fc.s("Megatrio(surtitle=", this.f68239a, ", description=", this.f68240b, ", buttons="), this.f68241c, ")");
    }
}
