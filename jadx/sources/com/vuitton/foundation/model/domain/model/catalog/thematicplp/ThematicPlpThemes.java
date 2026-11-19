package com.vuitton.foundation.model.domain.model.catalog.thematicplp;

import com.batch.android.s.b;
import defpackage.d21;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThematicPlpThemes;", "", "", b.a.f24015b, "", "Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/Theme;", "themes", "Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/CurrentTheme;", "currentTheme", "<init>", "(Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/CurrentTheme;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ThematicPlpThemes {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67034a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f67035b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CurrentTheme f67036c;

    public ThematicPlpThemes(String str, List<Theme> list, CurrentTheme currentTheme) {
        str.getClass();
        list.getClass();
        currentTheme.getClass();
        this.f67034a = str;
        this.f67035b = list;
        this.f67036c = currentTheme;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ThematicPlpThemes)) {
            return false;
        }
        ThematicPlpThemes thematicPlpThemes = (ThematicPlpThemes) obj;
        return Intrinsics.c(this.f67034a, thematicPlpThemes.f67034a) && Intrinsics.c(this.f67035b, thematicPlpThemes.f67035b) && Intrinsics.c(this.f67036c, thematicPlpThemes.f67036c);
    }

    public final int hashCode() {
        return this.f67036c.hashCode() + n00.a(this.f67034a.hashCode() * 31, 31, this.f67035b);
    }

    public final String toString() {
        StringBuilder sbT = d21.t("ThematicPlpThemes(id=", this.f67034a, ", themes=", this.f67035b, ", currentTheme=");
        sbT.append(this.f67036c);
        sbT.append(")");
        return sbT.toString();
    }
}
