package com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization;

import com.batch.android.s.b;
import com.dynamicyield.sdk.wrapper.core.enums.ChoiceType;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.RecsSlot;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.SemanticSearchChoice;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.SemanticSearchVariation;
import defpackage.yt0;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.StringCompanionObject;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonPrimitive;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/SemanticSearchChoiceSerializer;", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchChoice;", "<init>", "()V", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SemanticSearchChoiceSerializer implements KSerializer<SemanticSearchChoice> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SerialDescriptorImpl f25984a = SerialDescriptorsKt.c("SemanticSearchChoice", new SerialDescriptor[0], new yt0(25));

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return this.f25984a;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        CompositeDecoder compositeDecoderB = decoder.b(ChoiceSerializer.f25945b);
        ChoiceType choiceTypeValueOf = ChoiceType.NO_DECISION;
        List<SemanticSearchVariation> list = EmptyList.f71768b;
        int iJ = -1;
        String strL = "";
        List list2 = null;
        String d = null;
        while (true) {
            SerialDescriptorImpl serialDescriptorImpl = ChoiceSerializer.f25945b;
            int iN = compositeDecoderB.n(serialDescriptorImpl);
            if (iN == -1) {
                compositeDecoderB.c(serialDescriptorImpl);
                for (SemanticSearchVariation semanticSearchVariation : list) {
                    semanticSearchVariation.f26157a = d;
                    List list3 = semanticSearchVariation.f26136e.f26131b.f26128f;
                    if (list3 != null) {
                        Iterator it = list3.iterator();
                        while (it.hasNext()) {
                            ((RecsSlot) it.next()).f26139a = Integer.valueOf(semanticSearchVariation.d);
                        }
                    }
                }
                return new SemanticSearchChoice(iJ, strL, choiceTypeValueOf, list, list2, d);
            }
            String str = serialDescriptorImpl.f75551f[iN];
            switch (str.hashCode()) {
                case -1804881385:
                    if (str.equals("decisionId")) {
                        JsonElement jsonElement = (JsonElement) compositeDecoderB.w(serialDescriptorImpl, iN, JsonElement.INSTANCE.serializer(), null);
                        if (jsonElement instanceof JsonNull) {
                            d = null;
                        } else {
                            JsonPrimitive jsonPrimitiveD = JsonElementKt.d(jsonElement);
                            d = jsonPrimitiveD instanceof JsonNull ? null : jsonPrimitiveD.getD();
                        }
                    }
                    break;
                case -1237460524:
                    if (str.equals("groups")) {
                        BuiltinSerializersKt.e(StringCompanionObject.f71926a);
                        list2 = (List) compositeDecoderB.w(serialDescriptorImpl, iN, new ArrayListSerializer(StringSerializer.f75684a), null);
                    }
                    break;
                case 3355:
                    if (str.equals(b.a.f24015b)) {
                        iJ = compositeDecoderB.j(serialDescriptorImpl, iN);
                    }
                    break;
                case 3373707:
                    if (str.equals("name")) {
                        strL = compositeDecoderB.l(serialDescriptorImpl, iN);
                    }
                    break;
                case 3575610:
                    if (str.equals("type")) {
                        choiceTypeValueOf = ChoiceType.valueOf(compositeDecoderB.l(serialDescriptorImpl, iN));
                    }
                    break;
                case 1754702016:
                    if (str.equals("variations")) {
                        list = (List) compositeDecoderB.w(serialDescriptorImpl, iN, BuiltinSerializersKt.b(SemanticSearchVariation.INSTANCE.serializer()), null);
                    }
                    break;
            }
        }
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ((SemanticSearchChoice) obj).getClass();
        throw new UnsupportedOperationException("SemanticSearchChoice does not support serialization");
    }
}
