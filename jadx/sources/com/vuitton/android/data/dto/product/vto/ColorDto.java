package com.vuitton.android.data.dto.product.vto;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/dto/product/vto/ColorDto;", "", "", "name", "Lcom/vuitton/android/data/dto/common/AssetImageDto;", "image", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ColorDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46503a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AssetImageDto f46504b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/product/vto/ColorDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/product/vto/ColorDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ColorDto> serializer() {
            return ColorDto$$serializer.f46505a;
        }
    }

    public /* synthetic */ ColorDto(int i2, String str, AssetImageDto assetImageDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, ColorDto$$serializer.f46505a.a());
            throw null;
        }
        this.f46503a = str;
        this.f46504b = assetImageDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ColorDto)) {
            return false;
        }
        ColorDto colorDto = (ColorDto) obj;
        return Intrinsics.c(this.f46503a, colorDto.f46503a) && Intrinsics.c(this.f46504b, colorDto.f46504b);
    }

    public final int hashCode() {
        return this.f46504b.hashCode() + (this.f46503a.hashCode() * 31);
    }

    public final String toString() {
        return "ColorDto(name=" + this.f46503a + ", image=" + this.f46504b + ")";
    }

    public ColorDto(String str, AssetImageDto assetImageDto) {
        str.getClass();
        assetImageDto.getClass();
        this.f46503a = str;
        this.f46504b = assetImageDto;
    }
}
