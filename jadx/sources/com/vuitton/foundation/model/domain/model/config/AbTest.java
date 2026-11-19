package com.vuitton.foundation.model.domain.model.config;

import defpackage.a;
import defpackage.d21;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/config/AbTest;", "", "", "campaignKey", "", "featureFlagList", "", "percentage", "<init>", "(Ljava/lang/String;Ljava/util/List;I)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AbTest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67226a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f67227b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f67228c;

    public AbTest(String str, List<String> list, int i2) {
        str.getClass();
        list.getClass();
        this.f67226a = str;
        this.f67227b = list;
        this.f67228c = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AbTest)) {
            return false;
        }
        AbTest abTest = (AbTest) obj;
        return Intrinsics.c(this.f67226a, abTest.f67226a) && Intrinsics.c(this.f67227b, abTest.f67227b) && this.f67228c == abTest.f67228c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f67228c) + n00.a(this.f67226a.hashCode() * 31, 31, this.f67227b);
    }

    public final String toString() {
        return a.i(this.f67228c, ")", d21.t("AbTest(campaignKey=", this.f67226a, ", featureFlagList=", this.f67227b, ", percentage="));
    }
}
