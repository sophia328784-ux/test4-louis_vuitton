package com.vuitton.android.data.dto.careservices.bff;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.b21;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto.ShippingInformation.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class CareServiceDetailDto$ShippingInformation$$serializer implements GeneratedSerializer<CareServiceDetailDto.ShippingInformation> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CareServiceDetailDto$ShippingInformation$$serializer f44930a;
    private static final SerialDescriptor descriptor;

    static {
        CareServiceDetailDto$ShippingInformation$$serializer careServiceDetailDto$ShippingInformation$$serializer = new CareServiceDetailDto$ShippingInformation$$serializer();
        f44930a = careServiceDetailDto$ShippingInformation$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.careservices.bff.CareServiceDetailDto.ShippingInformation", careServiceDetailDto$ShippingInformation$$serializer, 4);
        pluginGeneratedSerialDescriptor.k("address", true);
        pluginGeneratedSerialDescriptor.k("disclaimer", true);
        pluginGeneratedSerialDescriptor.k("isEditable", false);
        pluginGeneratedSerialDescriptor.k("title", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderB = decoder.b(serialDescriptor);
        Lazy[] lazyArr = CareServiceDetailDto.ShippingInformation.f44926e;
        boolean z = true;
        int i2 = 0;
        boolean zY = false;
        List list = null;
        String str = null;
        String strL = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                list = (List) compositeDecoderB.w(serialDescriptor, 0, (DeserializationStrategy) lazyArr[0].getF71699b(), list);
                i2 |= 1;
            } else if (iN == 1) {
                str = (String) compositeDecoderB.m(serialDescriptor, 1, StringSerializer.f75684a, str);
                i2 |= 2;
            } else if (iN == 2) {
                zY = compositeDecoderB.y(serialDescriptor, 2);
                i2 |= 4;
            } else {
                if (iN != 3) {
                    b21.l(iN);
                    return null;
                }
                strL = compositeDecoderB.l(serialDescriptor, 3);
                i2 |= 8;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new CareServiceDetailDto.ShippingInformation(i2, list, str, zY, strL, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        CareServiceDetailDto.ShippingInformation shippingInformation = (CareServiceDetailDto.ShippingInformation) obj;
        shippingInformation.getClass();
        String str = shippingInformation.f44928b;
        List list = shippingInformation.f44927a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = CareServiceDetailDto.ShippingInformation.f44926e;
        if (compositeEncoderB.o(serialDescriptor) || !Intrinsics.c(list, EmptyList.f71768b)) {
            compositeEncoderB.A(serialDescriptor, 0, (SerializationStrategy) lazyArr[0].getF71699b(), list);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 1, StringSerializer.f75684a, str);
        }
        compositeEncoderB.x(serialDescriptor, 2, shippingInformation.f44929c);
        compositeEncoderB.y(serialDescriptor, 3, shippingInformation.d);
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{CareServiceDetailDto.ShippingInformation.f44926e[0].getF71699b(), BuiltinSerializersKt.d(stringSerializer), BooleanSerializer.f75574a, stringSerializer};
    }
}
