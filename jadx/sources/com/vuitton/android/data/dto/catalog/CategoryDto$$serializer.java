package com.vuitton.android.data.dto.catalog;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import com.vuitton.android.data.dto.common.AssetDto$$serializer;
import com.vuitton.android.data.dto.common.editorial.EditorialModuleDto;
import com.vuitton.android.data.dto.common.editorial.EditorialModuleDto$CarouselMediumSectionDto$$serializer;
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
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/catalog/CategoryDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/catalog/CategoryDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class CategoryDto$$serializer implements GeneratedSerializer<CategoryDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CategoryDto$$serializer f45096a;
    private static final SerialDescriptor descriptor;

    static {
        CategoryDto$$serializer categoryDto$$serializer = new CategoryDto$$serializer();
        f45096a = categoryDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.catalog.CategoryDto", categoryDto$$serializer, 6);
        pluginGeneratedSerialDescriptor.k(b.a.f24015b, false);
        pluginGeneratedSerialDescriptor.k("title", false);
        pluginGeneratedSerialDescriptor.k("asset", false);
        pluginGeneratedSerialDescriptor.k("tag", true);
        pluginGeneratedSerialDescriptor.k("carousel", true);
        pluginGeneratedSerialDescriptor.k("redirection", false);
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
        String strL = null;
        String strL2 = null;
        AssetDto assetDto = null;
        CategoryTagDto categoryTagDto = null;
        EditorialModuleDto.CarouselMediumSectionDto carouselMediumSectionDto = null;
        CategoryRedirectionDto categoryRedirectionDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    break;
                case 0:
                    strL = compositeDecoderB.l(serialDescriptor, 0);
                    i2 |= 1;
                    break;
                case 1:
                    strL2 = compositeDecoderB.l(serialDescriptor, 1);
                    i2 |= 2;
                    break;
                case 2:
                    assetDto = (AssetDto) compositeDecoderB.w(serialDescriptor, 2, AssetDto$$serializer.f45238a, assetDto);
                    i2 |= 4;
                    break;
                case 3:
                    categoryTagDto = (CategoryTagDto) compositeDecoderB.m(serialDescriptor, 3, CategoryTagDto$$serializer.f45103a, categoryTagDto);
                    i2 |= 8;
                    break;
                case 4:
                    carouselMediumSectionDto = (EditorialModuleDto.CarouselMediumSectionDto) compositeDecoderB.m(serialDescriptor, 4, EditorialModuleDto$CarouselMediumSectionDto$$serializer.f45290a, carouselMediumSectionDto);
                    i2 |= 16;
                    break;
                case 5:
                    categoryRedirectionDto = (CategoryRedirectionDto) compositeDecoderB.w(serialDescriptor, 5, CategoryRedirectionDto$$serializer.f45101a, categoryRedirectionDto);
                    i2 |= 32;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new CategoryDto(i2, strL, strL2, assetDto, categoryTagDto, carouselMediumSectionDto, categoryRedirectionDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        CategoryDto categoryDto = (CategoryDto) obj;
        categoryDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        String str = categoryDto.f45091a;
        EditorialModuleDto.CarouselMediumSectionDto carouselMediumSectionDto = categoryDto.f45094e;
        CategoryTagDto categoryTagDto = categoryDto.d;
        compositeEncoderB.y(serialDescriptor, 0, str);
        compositeEncoderB.y(serialDescriptor, 1, categoryDto.f45092b);
        compositeEncoderB.A(serialDescriptor, 2, AssetDto$$serializer.f45238a, categoryDto.f45093c);
        if (compositeEncoderB.o(serialDescriptor) || categoryTagDto != null) {
            compositeEncoderB.h(serialDescriptor, 3, CategoryTagDto$$serializer.f45103a, categoryTagDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || carouselMediumSectionDto != null) {
            compositeEncoderB.h(serialDescriptor, 4, EditorialModuleDto$CarouselMediumSectionDto$$serializer.f45290a, carouselMediumSectionDto);
        }
        compositeEncoderB.A(serialDescriptor, 5, CategoryRedirectionDto$$serializer.f45101a, categoryDto.f45095f);
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        KSerializer kSerializerD = BuiltinSerializersKt.d(CategoryTagDto$$serializer.f45103a);
        KSerializer kSerializerD2 = BuiltinSerializersKt.d(EditorialModuleDto$CarouselMediumSectionDto$$serializer.f45290a);
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{stringSerializer, stringSerializer, AssetDto$$serializer.f45238a, kSerializerD, kSerializerD2, CategoryRedirectionDto$$serializer.f45101a};
    }
}
