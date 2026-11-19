package com.dynamicyield.sdk.wrapper.core.models.search.response;

import com.dynamicyield.sdk.wrapper.core.enums.FacetValuesType;
import defpackage.a;
import defpackage.fc;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/search/response/NumberFacet;", "Lcom/dynamicyield/sdk/wrapper/core/models/search/response/Facet;", "", "column", "displayName", "", "min", "max", "<init>", "(Ljava/lang/String;Ljava/lang/String;FF)V", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class NumberFacet extends Facet {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f26417a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f26418b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f26419c;
    public final float d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NumberFacet(String str, String str2, float f2, float f3) {
        super(str, str2, FacetValuesType.number, null);
        str.getClass();
        str2.getClass();
        this.f26417a = str;
        this.f26418b = str2;
        this.f26419c = f2;
        this.d = f3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NumberFacet)) {
            return false;
        }
        NumberFacet numberFacet = (NumberFacet) obj;
        return Intrinsics.c(this.f26417a, numberFacet.f26417a) && Intrinsics.c(this.f26418b, numberFacet.f26418b) && Float.compare(this.f26419c, numberFacet.f26419c) == 0 && Float.compare(this.d, numberFacet.d) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.d) + pq0.b(fc.b(this.f26417a.hashCode() * 31, 31, this.f26418b), 31, this.f26419c);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("NumberFacet(column=");
        sb.append(this.f26417a);
        sb.append(", displayName=");
        sb.append(this.f26418b);
        sb.append(", min=");
        sb.append(this.f26419c);
        sb.append(", max=");
        return a.m(sb, this.d, ')');
    }
}
