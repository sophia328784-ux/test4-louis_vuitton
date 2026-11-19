package com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization;

import com.dynamicyield.sdk.wrapper.core.enums.DecisionType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001¨\u0006\u0003"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/DecisionTypeSerializer;", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DecisionTypeSerializer implements KSerializer<DecisionType> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DecisionTypeSerializer f25957a = new DecisionTypeSerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final PrimitiveSerialDescriptor f25958b = SerialDescriptorsKt.a("DecisionType", PrimitiveKind.STRING.f75546a);

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor a() {
        return f25958b;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        DecisionType.Companion companion = DecisionType.INSTANCE;
        String strX = decoder.x();
        companion.getClass();
        DecisionType decisionType = DecisionType.CUSTOM_JSON;
        if (Intrinsics.c(strX, decisionType.getValueStr())) {
            return decisionType;
        }
        DecisionType decisionType2 = DecisionType.RECS_DECISION;
        if (Intrinsics.c(strX, decisionType2.getValueStr()) || Intrinsics.c(strX, "RECS_DECISION")) {
            return decisionType2;
        }
        DecisionType decisionType3 = DecisionType.QSR_PRODUCT_RECS;
        if (Intrinsics.c(strX, decisionType3.getValueStr()) || Intrinsics.c(strX, "QSR_PRODUCT_RECS")) {
            return decisionType3;
        }
        DecisionType decisionType4 = DecisionType.SORTING_DECISION;
        if (Intrinsics.c(strX, decisionType4.getValueStr())) {
            return decisionType4;
        }
        DecisionType decisionType5 = DecisionType.SEARCH;
        if (Intrinsics.c(strX, decisionType5.getValueStr())) {
            return decisionType5;
        }
        DecisionType decisionType6 = DecisionType.ASSISTANT;
        if (Intrinsics.c(strX, decisionType6.getValueStr())) {
            return decisionType6;
        }
        return null;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        String valueStr;
        DecisionType decisionType = (DecisionType) obj;
        if (decisionType == null || (valueStr = decisionType.getValueStr()) == null) {
            return;
        }
        encoder.E(valueStr);
    }
}
