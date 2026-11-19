package com.vuitton.android.data.applink;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.dispatch.SwapDispatchDto;
import com.vuitton.android.data.dto.dispatch.SwapDispatchDto$$serializer;
import com.vuitton.android.data.dto.linktype.ContributionLinkDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkDtoSerializer;
import defpackage.b21;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/applink/ContributionLinkFromAppLinkDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/applink/ContributionLinkFromAppLinkDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ContributionLinkFromAppLinkDto$$serializer implements GeneratedSerializer<ContributionLinkFromAppLinkDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ContributionLinkFromAppLinkDto$$serializer f43554a;
    private static final SerialDescriptor descriptor;

    static {
        ContributionLinkFromAppLinkDto$$serializer contributionLinkFromAppLinkDto$$serializer = new ContributionLinkFromAppLinkDto$$serializer();
        f43554a = contributionLinkFromAppLinkDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.applink.ContributionLinkFromAppLinkDto", contributionLinkFromAppLinkDto$$serializer, 2);
        pluginGeneratedSerialDescriptor.k("link", false);
        pluginGeneratedSerialDescriptor.k("swapDispatch", true);
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
        boolean z = true;
        int i2 = 0;
        ContributionLinkDto contributionLinkDto = null;
        SwapDispatchDto swapDispatchDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                contributionLinkDto = (ContributionLinkDto) compositeDecoderB.w(serialDescriptor, 0, ContributionLinkDtoSerializer.f46019c, contributionLinkDto);
                i2 |= 1;
            } else {
                if (iN != 1) {
                    b21.l(iN);
                    return null;
                }
                swapDispatchDto = (SwapDispatchDto) compositeDecoderB.m(serialDescriptor, 1, SwapDispatchDto$$serializer.f45706a, swapDispatchDto);
                i2 |= 2;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new ContributionLinkFromAppLinkDto(i2, contributionLinkDto, swapDispatchDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ContributionLinkFromAppLinkDto contributionLinkFromAppLinkDto = (ContributionLinkFromAppLinkDto) obj;
        contributionLinkFromAppLinkDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        ContributionLinkDtoSerializer contributionLinkDtoSerializer = ContributionLinkDtoSerializer.f46019c;
        ContributionLinkDto contributionLinkDto = contributionLinkFromAppLinkDto.f43552a;
        SwapDispatchDto swapDispatchDto = contributionLinkFromAppLinkDto.f43553b;
        compositeEncoderB.A(serialDescriptor, 0, contributionLinkDtoSerializer, contributionLinkDto);
        if (compositeEncoderB.o(serialDescriptor) || swapDispatchDto != null) {
            compositeEncoderB.h(serialDescriptor, 1, SwapDispatchDto$$serializer.f45706a, swapDispatchDto);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{ContributionLinkDtoSerializer.f46019c, BuiltinSerializersKt.d(SwapDispatchDto$$serializer.f45706a)};
    }
}
