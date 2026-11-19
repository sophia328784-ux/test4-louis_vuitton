package com.dynamicyield.sdk.wrapper.core.models.choose.payload;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/ChooseOptions;", "", "", "isImplicitPageview", "returnAnalyticsMetadata", "isImplicitImpressionMode", "<init>", "(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class ChooseOptions {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Boolean f26023a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Boolean f26024b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Boolean f26025c;

    public /* synthetic */ ChooseOptions(Boolean bool, Boolean bool2, Boolean bool3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : bool, (i2 & 2) != 0 ? null : bool2, (i2 & 4) != 0 ? null : bool3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ChooseOptions)) {
            return false;
        }
        ChooseOptions chooseOptions = (ChooseOptions) obj;
        return Intrinsics.c(this.f26023a, chooseOptions.f26023a) && Intrinsics.c(this.f26024b, chooseOptions.f26024b) && Intrinsics.c(this.f26025c, chooseOptions.f26025c);
    }

    public final int hashCode() {
        Boolean bool = this.f26023a;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        Boolean bool2 = this.f26024b;
        int iHashCode2 = (iHashCode + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.f26025c;
        return iHashCode2 + (bool3 != null ? bool3.hashCode() : 0);
    }

    public final String toString() {
        return "ChooseOptions(isImplicitPageview=" + this.f26023a + ", returnAnalyticsMetadata=" + this.f26024b + ", isImplicitImpressionMode=" + this.f26025c + ')';
    }

    public ChooseOptions(Boolean bool, Boolean bool2, Boolean bool3) {
        this.f26023a = bool;
        this.f26024b = bool2;
        this.f26025c = bool3;
    }

    public ChooseOptions() {
        this(null, null, null, 7, null);
    }
}
