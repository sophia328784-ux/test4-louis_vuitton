package com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization;

import com.dynamicyield.sdk.wrapper.core.enums.ProductType;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.DefaultRecsProductData;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.bp;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonDecoder;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;
import kotlinx.serialization.json.internal.StringOpsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/DefaultRecsProductDataSerializer;", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/DefaultRecsProductData;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DefaultRecsProductDataSerializer implements KSerializer<DefaultRecsProductData> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DefaultRecsProductDataSerializer f25959a = new DefaultRecsProductDataSerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SerialDescriptorImpl f25960b = SerialDescriptorsKt.c("DefaultRecsProductData", new SerialDescriptor[0], new bp(18));

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor a() {
        return f25960b;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01c8  */
    /* JADX WARN: Code duplicated, block: B:102:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:133:0x01b1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:89:0x018a  */
    /* JADX WARN: Code duplicated, block: B:90:0x018c  */
    /* JADX WARN: Code duplicated, block: B:92:0x0196  */
    /* JADX WARN: Code duplicated, block: B:93:0x019b  */
    /* JADX WARN: Code duplicated, block: B:95:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:97:0x01af  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        JsonPrimitive jsonPrimitiveD;
        Object objValueOf;
        Object objB;
        decoder.getClass();
        JsonDecoder jsonDecoder = decoder instanceof JsonDecoder ? (JsonDecoder) decoder : null;
        if (jsonDecoder == null) {
            throw new SerializationException("Expected JsonDecoder");
        }
        JsonObject jsonObjectC = JsonElementKt.c(jsonDecoder.h());
        DefaultRecsProductData defaultRecsProductData = new DefaultRecsProductData();
        for (Map.Entry entry : jsonObjectC.f75756b.entrySet()) {
            String str = (String) entry.getKey();
            JsonElement jsonElement = (JsonElement) entry.getValue();
            switch (str.hashCode()) {
                case -877823861:
                    if (str.equals("image_url")) {
                        JsonElementKt.d(jsonElement);
                    } else {
                        if (jsonElement instanceof JsonPrimitive) {
                            jsonPrimitiveD = JsonElementKt.d(jsonElement);
                            if (jsonPrimitiveD.h()) {
                                objValueOf = jsonPrimitiveD.f();
                            } else if (StringOpsKt.b(jsonPrimitiveD.f()) != null) {
                                objB = StringOpsKt.b(jsonPrimitiveD.f());
                                if (objB != null) {
                                    throw new IllegalStateException(jsonPrimitiveD + " does not represent a Boolean");
                                }
                                objValueOf = objB;
                            } else if (StringsKt.Y(jsonPrimitiveD.f()) != null) {
                                objValueOf = Float.valueOf(Float.parseFloat(jsonPrimitiveD.f()));
                            } else {
                                objValueOf = null;
                            }
                        } else {
                            objValueOf = null;
                        }
                        defaultRecsProductData.f26082b.put(str, objValueOf);
                    }
                    break;
                case -709642823:
                    if (!str.equals("searchpass")) {
                        if (jsonElement instanceof JsonPrimitive) {
                            objValueOf = null;
                        } else {
                            jsonPrimitiveD = JsonElementKt.d(jsonElement);
                            if (jsonPrimitiveD.h()) {
                                objValueOf = jsonPrimitiveD.f();
                            } else if (StringOpsKt.b(jsonPrimitiveD.f()) != null) {
                                objB = StringOpsKt.b(jsonPrimitiveD.f());
                                if (objB != null) {
                                    throw new IllegalStateException(jsonPrimitiveD + " does not represent a Boolean");
                                }
                                objValueOf = objB;
                            } else if (StringsKt.Y(jsonPrimitiveD.f()) != null) {
                                objValueOf = Float.valueOf(Float.parseFloat(jsonPrimitiveD.f()));
                            } else {
                                objValueOf = null;
                            }
                        }
                        defaultRecsProductData.f26082b.put(str, objValueOf);
                    } else if (jsonElement instanceof JsonArray) {
                        Iterable iterable = (Iterable) jsonElement;
                        ArrayList arrayList = new ArrayList(CollectionsKt.t(iterable, 10));
                        Iterator it = iterable.iterator();
                        while (it.hasNext()) {
                            JsonPrimitive jsonPrimitiveD2 = JsonElementKt.d((JsonElement) it.next());
                            arrayList.add(jsonPrimitiveD2 instanceof JsonNull ? null : jsonPrimitiveD2.f());
                        }
                    }
                    break;
                case -17811588:
                    if (str.equals("in_stock")) {
                        StringOpsKt.b(JsonElementKt.d(jsonElement).f());
                    } else {
                        if (jsonElement instanceof JsonPrimitive) {
                            objValueOf = null;
                        } else {
                            jsonPrimitiveD = JsonElementKt.d(jsonElement);
                            if (jsonPrimitiveD.h()) {
                                objValueOf = jsonPrimitiveD.f();
                            } else if (StringOpsKt.b(jsonPrimitiveD.f()) != null) {
                                objB = StringOpsKt.b(jsonPrimitiveD.f());
                                if (objB != null) {
                                    throw new IllegalStateException(jsonPrimitiveD + " does not represent a Boolean");
                                }
                                objValueOf = objB;
                            } else if (StringsKt.Y(jsonPrimitiveD.f()) != null) {
                                objValueOf = Float.valueOf(Float.parseFloat(jsonPrimitiveD.f()));
                            } else {
                                objValueOf = null;
                            }
                        }
                        defaultRecsProductData.f26082b.put(str, objValueOf);
                    }
                    break;
                case 116079:
                    if (str.equals(ConfigurationName.DOWNLOAD_PLUGIN_URL)) {
                        JsonElementKt.d(jsonElement);
                    } else {
                        if (jsonElement instanceof JsonPrimitive) {
                            objValueOf = null;
                        } else {
                            jsonPrimitiveD = JsonElementKt.d(jsonElement);
                            if (jsonPrimitiveD.h()) {
                                objValueOf = jsonPrimitiveD.f();
                            } else if (StringOpsKt.b(jsonPrimitiveD.f()) != null) {
                                objB = StringOpsKt.b(jsonPrimitiveD.f());
                                if (objB != null) {
                                    throw new IllegalStateException(jsonPrimitiveD + " does not represent a Boolean");
                                }
                                objValueOf = objB;
                            } else if (StringsKt.Y(jsonPrimitiveD.f()) != null) {
                                objValueOf = Float.valueOf(Float.parseFloat(jsonPrimitiveD.f()));
                            } else {
                                objValueOf = null;
                            }
                        }
                        defaultRecsProductData.f26082b.put(str, objValueOf);
                    }
                    break;
                case 3373707:
                    if (str.equals("name")) {
                        JsonElementKt.d(jsonElement);
                    } else {
                        if (jsonElement instanceof JsonPrimitive) {
                            objValueOf = null;
                        } else {
                            jsonPrimitiveD = JsonElementKt.d(jsonElement);
                            if (jsonPrimitiveD.h()) {
                                objValueOf = jsonPrimitiveD.f();
                            } else if (StringOpsKt.b(jsonPrimitiveD.f()) != null) {
                                objB = StringOpsKt.b(jsonPrimitiveD.f());
                                if (objB != null) {
                                    throw new IllegalStateException(jsonPrimitiveD + " does not represent a Boolean");
                                }
                                objValueOf = objB;
                            } else if (StringsKt.Y(jsonPrimitiveD.f()) != null) {
                                objValueOf = Float.valueOf(Float.parseFloat(jsonPrimitiveD.f()));
                            } else {
                                objValueOf = null;
                            }
                        }
                        defaultRecsProductData.f26082b.put(str, objValueOf);
                    }
                    break;
                case 93997959:
                    if (str.equals("brand")) {
                        JsonElementKt.d(jsonElement);
                    } else {
                        if (jsonElement instanceof JsonPrimitive) {
                            objValueOf = null;
                        } else {
                            jsonPrimitiveD = JsonElementKt.d(jsonElement);
                            if (jsonPrimitiveD.h()) {
                                objValueOf = jsonPrimitiveD.f();
                            } else if (StringOpsKt.b(jsonPrimitiveD.f()) != null) {
                                objB = StringOpsKt.b(jsonPrimitiveD.f());
                                if (objB != null) {
                                    throw new IllegalStateException(jsonPrimitiveD + " does not represent a Boolean");
                                }
                                objValueOf = objB;
                            } else if (StringsKt.Y(jsonPrimitiveD.f()) != null) {
                                objValueOf = Float.valueOf(Float.parseFloat(jsonPrimitiveD.f()));
                            } else {
                                objValueOf = null;
                            }
                        }
                        defaultRecsProductData.f26082b.put(str, objValueOf);
                    }
                    break;
                case 106934601:
                    if (str.equals("price")) {
                        StringsKt.Y(JsonElementKt.d(jsonElement).f());
                    } else {
                        if (jsonElement instanceof JsonPrimitive) {
                            objValueOf = null;
                        } else {
                            jsonPrimitiveD = JsonElementKt.d(jsonElement);
                            if (jsonPrimitiveD.h()) {
                                objValueOf = jsonPrimitiveD.f();
                            } else if (StringOpsKt.b(jsonPrimitiveD.f()) != null) {
                                objB = StringOpsKt.b(jsonPrimitiveD.f());
                                if (objB != null) {
                                    throw new IllegalStateException(jsonPrimitiveD + " does not represent a Boolean");
                                }
                                objValueOf = objB;
                            } else if (StringsKt.Y(jsonPrimitiveD.f()) != null) {
                                objValueOf = Float.valueOf(Float.parseFloat(jsonPrimitiveD.f()));
                            } else {
                                objValueOf = null;
                            }
                        }
                        defaultRecsProductData.f26082b.put(str, objValueOf);
                    }
                    break;
                case 506361563:
                    if (str.equals("group_id")) {
                        JsonElementKt.d(jsonElement);
                    } else {
                        if (jsonElement instanceof JsonPrimitive) {
                            objValueOf = null;
                        } else {
                            jsonPrimitiveD = JsonElementKt.d(jsonElement);
                            if (jsonPrimitiveD.h()) {
                                objValueOf = jsonPrimitiveD.f();
                            } else if (StringOpsKt.b(jsonPrimitiveD.f()) != null) {
                                objB = StringOpsKt.b(jsonPrimitiveD.f());
                                if (objB != null) {
                                    throw new IllegalStateException(jsonPrimitiveD + " does not represent a Boolean");
                                }
                                objValueOf = objB;
                            } else if (StringsKt.Y(jsonPrimitiveD.f()) != null) {
                                objValueOf = Float.valueOf(Float.parseFloat(jsonPrimitiveD.f()));
                            } else {
                                objValueOf = null;
                            }
                        }
                        defaultRecsProductData.f26082b.put(str, objValueOf);
                    }
                    break;
                case 523149226:
                    if (!str.equals("keywords")) {
                        if (jsonElement instanceof JsonPrimitive) {
                            objValueOf = null;
                        } else {
                            jsonPrimitiveD = JsonElementKt.d(jsonElement);
                            if (jsonPrimitiveD.h()) {
                                objValueOf = jsonPrimitiveD.f();
                            } else if (StringOpsKt.b(jsonPrimitiveD.f()) != null) {
                                objB = StringOpsKt.b(jsonPrimitiveD.f());
                                if (objB != null) {
                                    throw new IllegalStateException(jsonPrimitiveD + " does not represent a Boolean");
                                }
                                objValueOf = objB;
                            } else if (StringsKt.Y(jsonPrimitiveD.f()) != null) {
                                objValueOf = Float.valueOf(Float.parseFloat(jsonPrimitiveD.f()));
                            } else {
                                objValueOf = null;
                            }
                        }
                        defaultRecsProductData.f26082b.put(str, objValueOf);
                    } else if (jsonElement instanceof JsonArray) {
                        Iterable iterable2 = (Iterable) jsonElement;
                        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(iterable2, 10));
                        Iterator it2 = iterable2.iterator();
                        while (it2.hasNext()) {
                            JsonPrimitive jsonPrimitiveD3 = JsonElementKt.d((JsonElement) it2.next());
                            arrayList2.add(jsonPrimitiveD3 instanceof JsonNull ? null : jsonPrimitiveD3.f());
                        }
                    }
                    break;
                case 1014577290:
                    if (str.equals("product_type")) {
                        JsonPrimitive jsonPrimitiveD4 = JsonElementKt.d(jsonElement);
                        String strF = jsonPrimitiveD4 instanceof JsonNull ? null : jsonPrimitiveD4.f();
                        if (strF != null) {
                            ProductType.valueOf(strF);
                        }
                    } else {
                        if (jsonElement instanceof JsonPrimitive) {
                            objValueOf = null;
                        } else {
                            jsonPrimitiveD = JsonElementKt.d(jsonElement);
                            if (jsonPrimitiveD.h()) {
                                objValueOf = jsonPrimitiveD.f();
                            } else if (StringOpsKt.b(jsonPrimitiveD.f()) != null) {
                                objB = StringOpsKt.b(jsonPrimitiveD.f());
                                if (objB != null) {
                                    throw new IllegalStateException(jsonPrimitiveD + " does not represent a Boolean");
                                }
                                objValueOf = objB;
                            } else if (StringsKt.Y(jsonPrimitiveD.f()) != null) {
                                objValueOf = Float.valueOf(Float.parseFloat(jsonPrimitiveD.f()));
                            } else {
                                objValueOf = null;
                            }
                        }
                        defaultRecsProductData.f26082b.put(str, objValueOf);
                    }
                    break;
                case 1296516636:
                    if (!str.equals("categories")) {
                        if (jsonElement instanceof JsonPrimitive) {
                            objValueOf = null;
                        } else {
                            jsonPrimitiveD = JsonElementKt.d(jsonElement);
                            if (jsonPrimitiveD.h()) {
                                objValueOf = jsonPrimitiveD.f();
                            } else if (StringOpsKt.b(jsonPrimitiveD.f()) != null) {
                                objB = StringOpsKt.b(jsonPrimitiveD.f());
                                if (objB != null) {
                                    throw new IllegalStateException(jsonPrimitiveD + " does not represent a Boolean");
                                }
                                objValueOf = objB;
                            } else if (StringsKt.Y(jsonPrimitiveD.f()) != null) {
                                objValueOf = Float.valueOf(Float.parseFloat(jsonPrimitiveD.f()));
                            } else {
                                objValueOf = null;
                            }
                        }
                        defaultRecsProductData.f26082b.put(str, objValueOf);
                    } else if (jsonElement instanceof JsonArray) {
                        Iterable iterable3 = (Iterable) jsonElement;
                        ArrayList arrayList3 = new ArrayList(CollectionsKt.t(iterable3, 10));
                        Iterator it3 = iterable3.iterator();
                        while (it3.hasNext()) {
                            JsonPrimitive jsonPrimitiveD5 = JsonElementKt.d((JsonElement) it3.next());
                            arrayList3.add(jsonPrimitiveD5 instanceof JsonNull ? null : jsonPrimitiveD5.f());
                        }
                    }
                    break;
                default:
                    if (jsonElement instanceof JsonPrimitive) {
                        objValueOf = null;
                    } else {
                        jsonPrimitiveD = JsonElementKt.d(jsonElement);
                        if (jsonPrimitiveD.h()) {
                            objValueOf = jsonPrimitiveD.f();
                        } else if (StringOpsKt.b(jsonPrimitiveD.f()) != null) {
                            objB = StringOpsKt.b(jsonPrimitiveD.f());
                            if (objB != null) {
                                throw new IllegalStateException(jsonPrimitiveD + " does not represent a Boolean");
                            }
                            objValueOf = objB;
                        } else if (StringsKt.Y(jsonPrimitiveD.f()) != null) {
                            objValueOf = Float.valueOf(Float.parseFloat(jsonPrimitiveD.f()));
                        } else {
                            objValueOf = null;
                        }
                    }
                    defaultRecsProductData.f26082b.put(str, objValueOf);
                    break;
            }
        }
        return defaultRecsProductData;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ((DefaultRecsProductData) obj).getClass();
        throw new SerializationException("This class can't be deserialize");
    }
}
