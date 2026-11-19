package com.vuitton.foundation.model.domain.model.catalog.thematicplp;

import com.batch.android.s.b;
import defpackage.a;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/CurrentTheme;", "", "", b.a.f24015b, "", "nextPage", "", "Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThemeItem;", "items", "<init>", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CurrentTheme {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67031a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Integer f67032b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f67033c;

    public CurrentTheme(String str, Integer num, List<ThemeItem> list) {
        str.getClass();
        list.getClass();
        this.f67031a = str;
        this.f67032b = num;
        this.f67033c = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CurrentTheme)) {
            return false;
        }
        CurrentTheme currentTheme = (CurrentTheme) obj;
        return Intrinsics.c(this.f67031a, currentTheme.f67031a) && Intrinsics.c(this.f67032b, currentTheme.f67032b) && Intrinsics.c(this.f67033c, currentTheme.f67033c);
    }

    public final int hashCode() {
        int iHashCode = this.f67031a.hashCode() * 31;
        Integer num = this.f67032b;
        return this.f67033c.hashCode() + ((iHashCode + (num == null ? 0 : num.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CurrentTheme(id=");
        sb.append(this.f67031a);
        sb.append(", nextPage=");
        sb.append(this.f67032b);
        sb.append(", items=");
        return a.o(sb, this.f67033c, ")");
    }
}
