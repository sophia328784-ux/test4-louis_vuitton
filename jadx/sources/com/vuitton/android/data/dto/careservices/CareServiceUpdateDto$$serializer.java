package com.vuitton.android.data.dto.careservices;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.b21;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/careservices/CareServiceUpdateDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class CareServiceUpdateDto$$serializer implements GeneratedSerializer<CareServiceUpdateDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CareServiceUpdateDto$$serializer f44838a;
    private static final SerialDescriptor descriptor;

    static {
        CareServiceUpdateDto$$serializer careServiceUpdateDto$$serializer = new CareServiceUpdateDto$$serializer();
        f44838a = careServiceUpdateDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.careservices.CareServiceUpdateDto", careServiceUpdateDto$$serializer, 23);
        pluginGeneratedSerialDescriptor.k("assessmentStatus", false);
        pluginGeneratedSerialDescriptor.k("addressId", true);
        pluginGeneratedSerialDescriptor.k("address1", true);
        pluginGeneratedSerialDescriptor.k("address2", true);
        pluginGeneratedSerialDescriptor.k("address3", true);
        pluginGeneratedSerialDescriptor.k("city", true);
        pluginGeneratedSerialDescriptor.k("zipPostalCode", true);
        pluginGeneratedSerialDescriptor.k("stateProvince", true);
        pluginGeneratedSerialDescriptor.k("country", true);
        pluginGeneratedSerialDescriptor.k("billingAddressId", true);
        pluginGeneratedSerialDescriptor.k("billingAddress1", true);
        pluginGeneratedSerialDescriptor.k("billingAddress2", true);
        pluginGeneratedSerialDescriptor.k("billingAddress3", true);
        pluginGeneratedSerialDescriptor.k("billingCity", true);
        pluginGeneratedSerialDescriptor.k("billingPostcode", true);
        pluginGeneratedSerialDescriptor.k("billingStateProvince", true);
        pluginGeneratedSerialDescriptor.k("billingCountry", true);
        pluginGeneratedSerialDescriptor.k("appointementDateTime", true);
        pluginGeneratedSerialDescriptor.k("addressTitle", true);
        pluginGeneratedSerialDescriptor.k("addressFirstName", true);
        pluginGeneratedSerialDescriptor.k("addressLastName", true);
        pluginGeneratedSerialDescriptor.k("requestSubmittedCancellationReason", true);
        pluginGeneratedSerialDescriptor.k("preliminaryAssessmentCancellationReason", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        int i2;
        decoder.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderB = decoder.b(serialDescriptor);
        Object obj = null;
        boolean z = true;
        String str = null;
        String strL = null;
        String strL2 = null;
        String strL3 = null;
        String strL4 = null;
        String strL5 = null;
        String strL6 = null;
        String strL7 = null;
        String strL8 = null;
        String strL9 = null;
        String strL10 = null;
        String strL11 = null;
        String strL12 = null;
        String strL13 = null;
        String strL14 = null;
        String strL15 = null;
        String strL16 = null;
        String strL17 = null;
        String strL18 = null;
        String strL19 = null;
        String strL20 = null;
        String strL21 = null;
        String strL22 = null;
        int i3 = 0;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    break;
                case 0:
                    strL = compositeDecoderB.l(serialDescriptor, 0);
                    i3 |= 1;
                    obj = null;
                    break;
                case 1:
                    strL2 = compositeDecoderB.l(serialDescriptor, 1);
                    i3 |= 2;
                    obj = null;
                    break;
                case 2:
                    strL3 = compositeDecoderB.l(serialDescriptor, 2);
                    i3 |= 4;
                    obj = null;
                    break;
                case 3:
                    strL4 = compositeDecoderB.l(serialDescriptor, 3);
                    i3 |= 8;
                    obj = null;
                    break;
                case 4:
                    strL5 = compositeDecoderB.l(serialDescriptor, 4);
                    i3 |= 16;
                    obj = null;
                    break;
                case 5:
                    strL6 = compositeDecoderB.l(serialDescriptor, 5);
                    i3 |= 32;
                    obj = null;
                    break;
                case 6:
                    strL7 = compositeDecoderB.l(serialDescriptor, 6);
                    i3 |= 64;
                    obj = null;
                    break;
                case 7:
                    strL8 = compositeDecoderB.l(serialDescriptor, 7);
                    i3 |= 128;
                    obj = null;
                    break;
                case 8:
                    strL9 = compositeDecoderB.l(serialDescriptor, 8);
                    i3 |= 256;
                    obj = null;
                    break;
                case 9:
                    str = (String) compositeDecoderB.m(serialDescriptor, 9, StringSerializer.f75684a, str);
                    i3 |= 512;
                    obj = null;
                    break;
                case 10:
                    strL10 = compositeDecoderB.l(serialDescriptor, 10);
                    i3 |= 1024;
                    obj = null;
                    break;
                case 11:
                    strL11 = compositeDecoderB.l(serialDescriptor, 11);
                    i3 |= 2048;
                    obj = null;
                    break;
                case 12:
                    strL12 = compositeDecoderB.l(serialDescriptor, 12);
                    i3 |= 4096;
                    obj = null;
                    break;
                case 13:
                    strL13 = compositeDecoderB.l(serialDescriptor, 13);
                    i3 |= 8192;
                    obj = null;
                    break;
                case 14:
                    strL14 = compositeDecoderB.l(serialDescriptor, 14);
                    i3 |= 16384;
                    obj = null;
                    break;
                case 15:
                    strL15 = compositeDecoderB.l(serialDescriptor, 15);
                    i2 = 32768;
                    i3 |= i2;
                    obj = null;
                    break;
                case 16:
                    strL16 = compositeDecoderB.l(serialDescriptor, 16);
                    i2 = 65536;
                    i3 |= i2;
                    obj = null;
                    break;
                case 17:
                    strL17 = compositeDecoderB.l(serialDescriptor, 17);
                    i2 = 131072;
                    i3 |= i2;
                    obj = null;
                    break;
                case 18:
                    strL18 = compositeDecoderB.l(serialDescriptor, 18);
                    i2 = 262144;
                    i3 |= i2;
                    obj = null;
                    break;
                case 19:
                    strL19 = compositeDecoderB.l(serialDescriptor, 19);
                    i2 = 524288;
                    i3 |= i2;
                    obj = null;
                    break;
                case 20:
                    strL20 = compositeDecoderB.l(serialDescriptor, 20);
                    i2 = 1048576;
                    i3 |= i2;
                    obj = null;
                    break;
                case 21:
                    strL21 = compositeDecoderB.l(serialDescriptor, 21);
                    i2 = PKIFailureInfo.badSenderNonce;
                    i3 |= i2;
                    obj = null;
                    break;
                case 22:
                    strL22 = compositeDecoderB.l(serialDescriptor, 22);
                    i2 = 4194304;
                    i3 |= i2;
                    obj = null;
                    break;
                default:
                    b21.l(iN);
                    return obj;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new CareServiceUpdateDto(i3, strL, strL2, strL3, strL4, strL5, strL6, strL7, strL8, strL9, str, strL10, strL11, strL12, strL13, strL14, strL15, strL16, strL17, strL18, strL19, strL20, strL21, strL22, (SerializationConstructorMarker) null);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0187  */
    /* JADX WARN: Code duplicated, block: B:105:0x019a  */
    /* JADX WARN: Code duplicated, block: B:106:0x019d  */
    /* JADX WARN: Code duplicated, block: B:111:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:112:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:117:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:118:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:123:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:124:0x01df  */
    /* JADX WARN: Code duplicated, block: B:129:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:130:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:81:0x0142  */
    /* JADX WARN: Code duplicated, block: B:82:0x0145  */
    /* JADX WARN: Code duplicated, block: B:87:0x0158  */
    /* JADX WARN: Code duplicated, block: B:88:0x015b  */
    /* JADX WARN: Code duplicated, block: B:93:0x016e  */
    /* JADX WARN: Code duplicated, block: B:94:0x0171  */
    /* JADX WARN: Code duplicated, block: B:99:0x0184  */
    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Iterative traversal limit reached: limit: 615, visitor: jadx.core.dex.visitors.regions.IfRegionVisitor$RemoveRedundantElseVisitor, blocks count: 123
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterative(DepthRegionTraversal.java:51)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:46)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
        */
    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(kotlinx.serialization.encoding.Encoder r24, java.lang.Object r25) {
        /*
            Method dump skipped, instruction units count: 518
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.dto.careservices.CareServiceUpdateDto$$serializer.c(kotlinx.serialization.encoding.Encoder, java.lang.Object):void");
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{stringSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer, BuiltinSerializersKt.d(stringSerializer), stringSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer};
    }
}
