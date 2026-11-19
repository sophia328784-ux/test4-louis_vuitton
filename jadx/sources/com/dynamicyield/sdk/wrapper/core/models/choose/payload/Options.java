package com.dynamicyield.sdk.wrapper.core.models.choose.payload;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB7\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tBC\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Options;", "", "", "isImplicitPageview", "returnAnalyticsMetadata", "isImplicitImpressionMode", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/RecsProductDataOptions;", "recsProductData", "<init>", "(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/RecsProductDataOptions;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/RecsProductDataOptions;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final /* data */ class Options {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Boolean f26026a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Boolean f26027b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Boolean f26028c;
    public final RecsProductDataOptions d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Options$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Options;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<Options> serializer() {
            return Options$$serializer.f26029a;
        }
    }

    public /* synthetic */ Options(int i2, Boolean bool, Boolean bool2, Boolean bool3, RecsProductDataOptions recsProductDataOptions, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f26026a = null;
        } else {
            this.f26026a = bool;
        }
        if ((i2 & 2) == 0) {
            this.f26027b = null;
        } else {
            this.f26027b = bool2;
        }
        if ((i2 & 4) == 0) {
            this.f26028c = null;
        } else {
            this.f26028c = bool3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = recsProductDataOptions;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Options)) {
            return false;
        }
        Options options = (Options) obj;
        return Intrinsics.c(this.f26026a, options.f26026a) && Intrinsics.c(this.f26027b, options.f26027b) && Intrinsics.c(this.f26028c, options.f26028c) && Intrinsics.c(this.d, options.d);
    }

    public final int hashCode() {
        Boolean bool = this.f26026a;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        Boolean bool2 = this.f26027b;
        int iHashCode2 = (iHashCode + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.f26028c;
        int iHashCode3 = (iHashCode2 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        RecsProductDataOptions recsProductDataOptions = this.d;
        return iHashCode3 + (recsProductDataOptions != null ? recsProductDataOptions.hashCode() : 0);
    }

    public final String toString() {
        return "Options(isImplicitPageview=" + this.f26026a + ", returnAnalyticsMetadata=" + this.f26027b + ", isImplicitImpressionMode=" + this.f26028c + ", recsProductData=" + this.d + ')';
    }

    public Options() {
        this((Boolean) null, (Boolean) null, (Boolean) null, (RecsProductDataOptions) null, 15, (DefaultConstructorMarker) null);
    }

    public Options(Boolean bool, Boolean bool2, Boolean bool3, RecsProductDataOptions recsProductDataOptions) {
        this.f26026a = bool;
        this.f26027b = bool2;
        this.f26028c = bool3;
        this.d = recsProductDataOptions;
    }

    public /* synthetic */ Options(Boolean bool, Boolean bool2, Boolean bool3, RecsProductDataOptions recsProductDataOptions, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : bool, (i2 & 2) != 0 ? null : bool2, (i2 & 4) != 0 ? null : bool3, (i2 & 8) != 0 ? null : recsProductDataOptions);
    }
}
