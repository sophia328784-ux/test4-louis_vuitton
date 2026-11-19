package com.dynamicyield.sdk.wrapper.core.models.choose.response;

import com.batch.android.s.b;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tBK\b\u0010\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\b\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomVariation;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation;", "", b.a.f24015b, "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomJsonPayload;", ConfigurationName.PING_PAYLOAD, "", "rolloutFlag", "<init>", "(ILcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomJsonPayload;Ljava/lang/Boolean;)V", "seen0", "", "decisionId", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AnalyticsMetadata;", "analyticsMetadata", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AnalyticsMetadata;ILcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomJsonPayload;Ljava/lang/Boolean;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final class CustomVariation extends Variation {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CustomJsonPayload f26079e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Boolean f26080f;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomVariation$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomVariation;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CustomVariation> serializer() {
            return CustomVariation$$serializer.f26081a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ CustomVariation(int i2, String str, AnalyticsMetadata analyticsMetadata, int i3, CustomJsonPayload customJsonPayload, Boolean bool, SerializationConstructorMarker serializationConstructorMarker) {
        super(i2, str, analyticsMetadata, serializationConstructorMarker);
        if (12 != (i2 & 12)) {
            PluginExceptionsKt.b(i2, 12, CustomVariation$$serializer.f26081a.getF19850b());
            throw null;
        }
        this.d = i3;
        this.f26079e = customJsonPayload;
        if ((i2 & 16) == 0) {
            this.f26080f = null;
        } else {
            this.f26080f = bool;
        }
    }

    @Override // com.dynamicyield.sdk.wrapper.core.models.choose.response.Variation
    public final Payload a() {
        return this.f26079e;
    }

    public /* synthetic */ CustomVariation(int i2, CustomJsonPayload customJsonPayload, Boolean bool, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, customJsonPayload, (i3 & 4) != 0 ? null : bool);
    }

    public CustomVariation(int i2, CustomJsonPayload customJsonPayload, Boolean bool) {
        customJsonPayload.getClass();
        this.d = i2;
        this.f26079e = customJsonPayload;
        this.f26080f = bool;
    }
}
