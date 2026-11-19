package com.dynamicyield.sdk.wrapper.core.models.search.response;

import com.dynamicyield.sdk.wrapper.core.enums.FacetValuesType;
import defpackage.fc;
import defpackage.pq0;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/search/response/StringFacet;", "Lcom/dynamicyield/sdk/wrapper/core/models/search/response/Facet;", "", "column", "displayName", "", "Lcom/dynamicyield/sdk/wrapper/core/models/search/response/StringFacetValue;", "values", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class StringFacet extends Facet {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f26420a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f26421b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f26422c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StringFacet(String str, String str2, List<StringFacetValue> list) {
        super(str, str2, FacetValuesType.string, null);
        pq0.B(str, str2, list);
        this.f26420a = str;
        this.f26421b = str2;
        this.f26422c = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StringFacet)) {
            return false;
        }
        StringFacet stringFacet = (StringFacet) obj;
        return Intrinsics.c(this.f26420a, stringFacet.f26420a) && Intrinsics.c(this.f26421b, stringFacet.f26421b) && Intrinsics.c(this.f26422c, stringFacet.f26422c);
    }

    public final int hashCode() {
        return this.f26422c.hashCode() + fc.b(this.f26420a.hashCode() * 31, 31, this.f26421b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("StringFacet(column=");
        sb.append(this.f26420a);
        sb.append(", displayName=");
        sb.append(this.f26421b);
        sb.append(", values=");
        return tr.m(sb, this.f26422c, ')');
    }
}
