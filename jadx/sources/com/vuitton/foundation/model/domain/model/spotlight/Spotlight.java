package com.vuitton.foundation.model.domain.model.spotlight;

import com.batch.android.s.b;
import defpackage.cj;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/spotlight/Spotlight;", "", "", b.a.f24015b, "", "Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;", "slides", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Spotlight {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68221a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f68222b;

    public Spotlight(String str, List<SpotlightSlide> list) {
        str.getClass();
        list.getClass();
        this.f68221a = str;
        this.f68222b = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Spotlight)) {
            return false;
        }
        Spotlight spotlight = (Spotlight) obj;
        return Intrinsics.c(this.f68221a, spotlight.f68221a) && Intrinsics.c(this.f68222b, spotlight.f68222b);
    }

    public final int hashCode() {
        return this.f68222b.hashCode() + (this.f68221a.hashCode() * 31);
    }

    public final String toString() {
        return cj.k("Spotlight(id=", this.f68221a, ", slides=", this.f68222b, ")");
    }
}
