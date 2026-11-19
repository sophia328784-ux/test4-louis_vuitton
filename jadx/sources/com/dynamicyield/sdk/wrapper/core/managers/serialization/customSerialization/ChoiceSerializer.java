package com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization;

import com.batch.android.s.b;
import com.dynamicyield.sdk.wrapper.core.enums.ChoiceType;
import com.dynamicyield.sdk.wrapper.core.models.assistant.response.Widget;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.AssistantChoice;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.AssistantVariation;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.Choice;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.CustomChoice;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.CustomVariation;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.QsrProductRecsChoice;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.QsrProductRecsSlot;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.QsrProductRecsVariation;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.RecsChoice;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.RecsSlot;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.RecsVariation;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.SemanticSearchChoice;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.SemanticSearchVariation;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.SortingChoice;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.SortingRecsSlot;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.SortingVariation;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.Variation;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.VisualSearchChoice;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.VisualSearchVariation;
import defpackage.km;
import defpackage.v40;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.StringCompanionObject;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
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
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/ChoiceSerializer;", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Choice;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ChoiceSerializer implements KSerializer<Choice> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ChoiceSerializer f25944a = new ChoiceSerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SerialDescriptorImpl f25945b = SerialDescriptorsKt.c("Choice", new SerialDescriptor[0], new km(0));

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f25946a;

        static {
            int[] iArr = new int[ChoiceType.values().length];
            try {
                iArr[ChoiceType.SEMANTIC_SEARCH_DECISION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ChoiceType.VISUAL_SEARCH_DECISION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ChoiceType.RECS_DECISION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ChoiceType.DECISION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ChoiceType.NO_DECISION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ChoiceType.QSR_PRODUCT_RECS_DECISION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ChoiceType.SORTING_DECISION.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[ChoiceType.SHOPPING_MUSE_DECISION.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            f25946a = iArr;
        }
    }

    public static void f(String str, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Variation variation = (Variation) it.next();
            variation.f26157a = str;
            if (variation instanceof RecsVariation) {
                RecsVariation recsVariation = (RecsVariation) variation;
                Iterator it2 = recsVariation.f26115e.f26110b.f26108a.iterator();
                while (it2.hasNext()) {
                    ((RecsSlot) it2.next()).f26139a = Integer.valueOf(recsVariation.d);
                }
            } else if (variation instanceof QsrProductRecsVariation) {
                QsrProductRecsVariation qsrProductRecsVariation = (QsrProductRecsVariation) variation;
                Iterator it3 = qsrProductRecsVariation.f26100f.f26092b.f26090a.iterator();
                while (it3.hasNext()) {
                    ((QsrProductRecsSlot) it3.next()).f26139a = Integer.valueOf(qsrProductRecsVariation.d);
                }
            } else if (variation instanceof SortingVariation) {
                SortingVariation sortingVariation = (SortingVariation) variation;
                Iterator it4 = sortingVariation.f26154e.f26148b.f26146a.iterator();
                while (it4.hasNext()) {
                    ((SortingRecsSlot) it4.next()).f26139a = Integer.valueOf(sortingVariation.d);
                }
            } else if (variation instanceof VisualSearchVariation) {
                VisualSearchVariation visualSearchVariation = (VisualSearchVariation) variation;
                List list2 = visualSearchVariation.f26175e.f26170b.f26167c;
                if (list2 != null) {
                    Iterator it5 = list2.iterator();
                    while (it5.hasNext()) {
                        ((RecsSlot) it5.next()).f26139a = Integer.valueOf(visualSearchVariation.d);
                    }
                }
            } else if (variation instanceof SemanticSearchVariation) {
                SemanticSearchVariation semanticSearchVariation = (SemanticSearchVariation) variation;
                List list3 = semanticSearchVariation.f26136e.f26131b.f26128f;
                if (list3 != null) {
                    Iterator it6 = list3.iterator();
                    while (it6.hasNext()) {
                        ((RecsSlot) it6.next()).f26139a = Integer.valueOf(semanticSearchVariation.d);
                    }
                }
            } else if (variation instanceof AssistantVariation) {
                AssistantVariation assistantVariation = (AssistantVariation) variation;
                List list4 = assistantVariation.f26063e.f26058b.f26054b;
                if (list4 != null) {
                    Iterator it7 = list4.iterator();
                    while (it7.hasNext()) {
                        Iterator it8 = ((Widget) it7.next()).f26012b.iterator();
                        while (it8.hasNext()) {
                            ((RecsSlot) it8.next()).f26139a = Integer.valueOf(assistantVariation.d);
                        }
                    }
                }
            }
        }
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return f25945b;
    }

    /* JADX WARN: Code duplicated, block: B:47:0x0155  */
    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        ChoiceType choiceType;
        String strF;
        decoder.getClass();
        SerialDescriptorImpl serialDescriptorImpl = f25945b;
        CompositeDecoder compositeDecoderB = decoder.b(serialDescriptorImpl);
        ChoiceType choiceType2 = ChoiceType.NO_DECISION;
        List list = EmptyList.f71768b;
        int i2 = -1;
        ChoiceType choiceTypeValueOf = choiceType2;
        List list2 = list;
        List list3 = list2;
        List list4 = list3;
        List list5 = list4;
        List list6 = list5;
        int iJ = -1;
        String strL = "";
        Object obj = null;
        String str = null;
        List list7 = null;
        List list8 = list6;
        while (true) {
            int iN = compositeDecoderB.n(serialDescriptorImpl);
            if (iN == i2) {
                ChoiceType choiceType3 = choiceTypeValueOf;
                compositeDecoderB.c(serialDescriptorImpl);
                switch (WhenMappings.f25946a[choiceType3.ordinal()]) {
                    case 1:
                        int i3 = iJ;
                        f(str, list6);
                        return new SemanticSearchChoice(i3, strL, choiceType3, list6, list7, str);
                    case 2:
                        int i4 = iJ;
                        f(str, list);
                        return new VisualSearchChoice(i4, strL, choiceType3, list, list7, str);
                    case 3:
                        int i5 = iJ;
                        f(str, list2);
                        return new RecsChoice(i5, strL, choiceType3, list2, list7, str);
                    case 4:
                        int i6 = iJ;
                        f(str, list8);
                        return new CustomChoice(i6, strL, choiceType3, list8, list7, str);
                    case 5:
                        return new CustomChoice(iJ, strL, choiceType3, EmptyList.f71768b, list7, str);
                    case 6:
                        int i7 = iJ;
                        f(str, list3);
                        return new QsrProductRecsChoice(i7, strL, choiceType3, list3, list7, str);
                    case 7:
                        f(str, list4);
                        return new SortingChoice(iJ, strL, choiceType3, list4, list7, str);
                    case 8:
                        f(str, list5);
                        return new AssistantChoice(iJ, strL, choiceType3, list5, list7, str);
                    default:
                        v40.g();
                        return null;
                }
            }
            String str2 = serialDescriptorImpl.f75551f[iN];
            switch (str2.hashCode()) {
                case -1804881385:
                    choiceType = choiceTypeValueOf;
                    if (str2.equals("decisionId")) {
                        JsonElement jsonElement = (JsonElement) compositeDecoderB.w(serialDescriptorImpl, iN, JsonElement.INSTANCE.serializer(), null);
                        if (jsonElement instanceof JsonNull) {
                            strF = null;
                        } else {
                            JsonPrimitive jsonPrimitiveD = JsonElementKt.d(jsonElement);
                            if (jsonPrimitiveD instanceof JsonNull) {
                                strF = null;
                            } else {
                                strF = jsonPrimitiveD.getD();
                            }
                        }
                        str = strF;
                    }
                    obj = null;
                    i2 = -1;
                    break;
                case -1237460524:
                    choiceType = choiceTypeValueOf;
                    if (str2.equals("groups")) {
                        BuiltinSerializersKt.e(StringCompanionObject.f71926a);
                        list7 = (List) compositeDecoderB.w(serialDescriptorImpl, iN, new ArrayListSerializer(StringSerializer.f75684a), null);
                        obj = null;
                        choiceTypeValueOf = choiceType;
                        i2 = -1;
                    }
                    obj = null;
                    i2 = -1;
                    break;
                case 3355:
                    choiceType = choiceTypeValueOf;
                    if (str2.equals(b.a.f24015b)) {
                        iJ = compositeDecoderB.j(serialDescriptorImpl, iN);
                    }
                    obj = null;
                    i2 = -1;
                    break;
                case 3373707:
                    choiceType = choiceTypeValueOf;
                    if (str2.equals("name")) {
                        strL = compositeDecoderB.l(serialDescriptorImpl, iN);
                    }
                    obj = null;
                    i2 = -1;
                    break;
                case 3575610:
                    choiceType = choiceTypeValueOf;
                    choiceTypeValueOf = !str2.equals("type") ? choiceType : ChoiceType.valueOf(compositeDecoderB.l(serialDescriptorImpl, iN));
                    obj = null;
                    i2 = -1;
                    break;
                case 1754702016:
                    choiceType = choiceTypeValueOf;
                    if (str2.equals("variations")) {
                        switch (WhenMappings.f25946a[choiceType.ordinal()]) {
                            case 1:
                                list6 = (List) compositeDecoderB.w(serialDescriptorImpl, iN, BuiltinSerializersKt.b(SemanticSearchVariation.INSTANCE.serializer()), obj);
                                break;
                            case 2:
                                list = (List) compositeDecoderB.w(serialDescriptorImpl, iN, BuiltinSerializersKt.b(VisualSearchVariation.INSTANCE.serializer()), obj);
                                choiceTypeValueOf = choiceType;
                                i2 = -1;
                                break;
                            case 3:
                                list2 = (List) compositeDecoderB.w(serialDescriptorImpl, iN, BuiltinSerializersKt.b(RecsVariation.INSTANCE.serializer()), obj);
                                choiceTypeValueOf = choiceType;
                                i2 = -1;
                                break;
                            case 4:
                            case 5:
                                list8 = (List) compositeDecoderB.w(serialDescriptorImpl, iN, BuiltinSerializersKt.b(CustomVariation.INSTANCE.serializer()), obj);
                                choiceTypeValueOf = choiceType;
                                i2 = -1;
                                break;
                            case 6:
                                list3 = (List) compositeDecoderB.w(serialDescriptorImpl, iN, BuiltinSerializersKt.b(QsrProductRecsVariation.INSTANCE.serializer()), obj);
                                choiceTypeValueOf = choiceType;
                                i2 = -1;
                                break;
                            case 7:
                                list4 = (List) compositeDecoderB.w(serialDescriptorImpl, iN, BuiltinSerializersKt.b(SortingVariation.INSTANCE.serializer()), obj);
                                choiceTypeValueOf = choiceType;
                                i2 = -1;
                                break;
                            case 8:
                                list5 = (List) compositeDecoderB.w(serialDescriptorImpl, iN, BuiltinSerializersKt.b(AssistantVariation.INSTANCE.serializer()), obj);
                                choiceTypeValueOf = choiceType;
                                i2 = -1;
                                break;
                            default:
                                v40.g();
                                return obj;
                        }
                    }
                    obj = null;
                    i2 = -1;
                    break;
                default:
                    choiceType = choiceTypeValueOf;
                    obj = null;
                    i2 = -1;
                    break;
            }
        }
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ((Choice) obj).getClass();
        throw new SerializationException("This class ChoiceSerializer can't be deserialize");
    }
}
