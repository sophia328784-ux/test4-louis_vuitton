package com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization;

import com.dynamicyield.sdk.wrapper.core.enums.DecisionType;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.CustomJsonPayload;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.bp;
import defpackage.cj;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.json.JsonElement;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/CustomJsonPayloadSerializer;", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomJsonPayload;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CustomJsonPayloadSerializer implements KSerializer<CustomJsonPayload> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CustomJsonPayloadSerializer f25947a = new CustomJsonPayloadSerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SerialDescriptorImpl f25948b = SerialDescriptorsKt.c("Payload", new SerialDescriptor[0], new bp(5));

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f25949a;

        static {
            int[] iArr = new int[DecisionType.values().length];
            try {
                iArr[DecisionType.CUSTOM_JSON.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f25949a = iArr;
        }
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor a() {
        return f25948b;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0072  */
    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        String string;
        decoder.getClass();
        SerialDescriptorImpl serialDescriptorImpl = f25948b;
        CompositeDecoder compositeDecoderB = decoder.b(serialDescriptorImpl);
        Object objW = null;
        Object objW2 = null;
        while (true) {
            int iN = compositeDecoderB.n(serialDescriptorImpl);
            if (iN == -1) {
                compositeDecoderB.c(serialDescriptorImpl);
                JsonElement jsonElement = (JsonElement) objW;
                if (jsonElement == null) {
                    string = "";
                } else {
                    DecisionType decisionType = (DecisionType) objW2;
                    if ((decisionType != null ? WhenMappings.f25949a[decisionType.ordinal()] : -1) != 1) {
                        throw new SerializationException(cj.i(objW2, "Unknown type: "));
                    }
                    string = jsonElement.toString();
                    if (string == null) {
                        string = "";
                    }
                }
                return new CustomJsonPayload((DecisionType) objW2, string);
            }
            String str = serialDescriptorImpl.f75551f[iN];
            if (Intrinsics.c(str, "type")) {
                objW2 = compositeDecoderB.w(serialDescriptorImpl, iN, DecisionTypeSerializer.f25957a, null);
            } else {
                if (!Intrinsics.c(str, DbParams.KEY_DATA)) {
                    throw new SerializationException(pq0.k(iN, "Unknown index: "));
                }
                objW = compositeDecoderB.w(serialDescriptorImpl, iN, JsonElement.INSTANCE.serializer(), null);
            }
        }
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ((CustomJsonPayload) obj).getClass();
        throw new SerializationException("");
    }
}
