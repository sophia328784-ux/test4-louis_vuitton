package com.dynamicyield.sdk.wrapper.core.models.choose.response;

import com.dynamicyield.sdk.wrapper.core.enums.DecisionType;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsPayload;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Payload;", "Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;", "type", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsData;", DbParams.KEY_DATA, "<init>", "(Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsData;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsData;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final class QsrProductRecsPayload extends Payload {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DecisionType f26091a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QsrProductRecsData f26092b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsPayload$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsPayload;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<QsrProductRecsPayload> serializer() {
            return QsrProductRecsPayload$$serializer.f26093a;
        }
    }

    public /* synthetic */ QsrProductRecsPayload(int i2, DecisionType decisionType, QsrProductRecsData qsrProductRecsData, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, QsrProductRecsPayload$$serializer.f26093a.a());
            throw null;
        }
        this.f26091a = decisionType;
        this.f26092b = qsrProductRecsData;
    }

    public QsrProductRecsPayload(DecisionType decisionType, QsrProductRecsData qsrProductRecsData) {
        qsrProductRecsData.getClass();
        this.f26091a = decisionType;
        this.f26092b = qsrProductRecsData;
    }
}
