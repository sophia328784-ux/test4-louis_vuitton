package com.vuitton.foundation.model.domain.model.config;

import defpackage.a;
import defpackage.fc;
import defpackage.pq0;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/config/VirtualStudioConfig;", "", "", "assetUrl", "reasonId", "", "storeCodeList", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class VirtualStudioConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67284a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67285b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f67286c;

    public VirtualStudioConfig(String str, String str2, List<String> list) {
        pq0.B(str, str2, list);
        this.f67284a = str;
        this.f67285b = str2;
        this.f67286c = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VirtualStudioConfig)) {
            return false;
        }
        VirtualStudioConfig virtualStudioConfig = (VirtualStudioConfig) obj;
        return Intrinsics.c(this.f67284a, virtualStudioConfig.f67284a) && Intrinsics.c(this.f67285b, virtualStudioConfig.f67285b) && Intrinsics.c(this.f67286c, virtualStudioConfig.f67286c);
    }

    public final int hashCode() {
        return this.f67286c.hashCode() + fc.b(this.f67284a.hashCode() * 31, 31, this.f67285b);
    }

    public final String toString() {
        return a.o(fc.s("VirtualStudioConfig(assetUrl=", this.f67284a, ", reasonId=", this.f67285b, ", storeCodeList="), this.f67286c, ")");
    }
}
