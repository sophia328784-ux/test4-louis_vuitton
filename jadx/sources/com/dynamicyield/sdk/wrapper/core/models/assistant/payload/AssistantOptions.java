package com.dynamicyield.sdk.wrapper.core.models.assistant.payload;

import com.dynamicyield.sdk.wrapper.core.models.choose.payload.RecsProductDataOptions;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u001f\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/assistant/payload/AssistantOptions;", "", "", "returnAnalyticsMetadata", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/RecsProductDataOptions;", "productData", "<init>", "(Ljava/lang/Boolean;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/RecsProductDataOptions;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/Boolean;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/RecsProductDataOptions;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final /* data */ class AssistantOptions {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Boolean f26004a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RecsProductDataOptions f26005b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/assistant/payload/AssistantOptions$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/assistant/payload/AssistantOptions;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<AssistantOptions> serializer() {
            return AssistantOptions$$serializer.f26006a;
        }
    }

    public /* synthetic */ AssistantOptions(int i2, Boolean bool, RecsProductDataOptions recsProductDataOptions, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f26004a = null;
        } else {
            this.f26004a = bool;
        }
        if ((i2 & 2) == 0) {
            this.f26005b = null;
        } else {
            this.f26005b = recsProductDataOptions;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AssistantOptions)) {
            return false;
        }
        AssistantOptions assistantOptions = (AssistantOptions) obj;
        return Intrinsics.c(this.f26004a, assistantOptions.f26004a) && Intrinsics.c(this.f26005b, assistantOptions.f26005b);
    }

    public final int hashCode() {
        Boolean bool = this.f26004a;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        RecsProductDataOptions recsProductDataOptions = this.f26005b;
        return iHashCode + (recsProductDataOptions != null ? recsProductDataOptions.hashCode() : 0);
    }

    public final String toString() {
        return "AssistantOptions(returnAnalyticsMetadata=" + this.f26004a + ", productData=" + this.f26005b + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AssistantOptions() {
        this((Boolean) null, (RecsProductDataOptions) (0 == true ? 1 : 0), 3, (DefaultConstructorMarker) (0 == true ? 1 : 0));
    }

    public AssistantOptions(Boolean bool, RecsProductDataOptions recsProductDataOptions) {
        this.f26004a = bool;
        this.f26005b = recsProductDataOptions;
    }

    public /* synthetic */ AssistantOptions(Boolean bool, RecsProductDataOptions recsProductDataOptions, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : bool, (i2 & 2) != 0 ? null : recsProductDataOptions);
    }
}
