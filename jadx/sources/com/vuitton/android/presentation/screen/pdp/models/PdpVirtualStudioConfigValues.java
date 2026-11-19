package com.vuitton.android.presentation.screen.pdp.models;

import defpackage.a;
import defpackage.fc;
import defpackage.pq0;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/PdpVirtualStudioConfigValues;", "", "", "assetUrl", "reasonId", "", "storeCodeList", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PdpVirtualStudioConfigValues {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f61574a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f61575b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f61576c;

    public PdpVirtualStudioConfigValues(String str, String str2, List<String> list) {
        pq0.B(str, str2, list);
        this.f61574a = str;
        this.f61575b = str2;
        this.f61576c = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PdpVirtualStudioConfigValues)) {
            return false;
        }
        PdpVirtualStudioConfigValues pdpVirtualStudioConfigValues = (PdpVirtualStudioConfigValues) obj;
        return Intrinsics.c(this.f61574a, pdpVirtualStudioConfigValues.f61574a) && Intrinsics.c(this.f61575b, pdpVirtualStudioConfigValues.f61575b) && Intrinsics.c(this.f61576c, pdpVirtualStudioConfigValues.f61576c);
    }

    public final int hashCode() {
        return this.f61576c.hashCode() + fc.b(this.f61574a.hashCode() * 31, 31, this.f61575b);
    }

    public final String toString() {
        return a.o(fc.s("PdpVirtualStudioConfigValues(assetUrl=", this.f61574a, ", reasonId=", this.f61575b, ", storeCodeList="), this.f61576c, ")");
    }
}
