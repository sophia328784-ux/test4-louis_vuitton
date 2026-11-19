package com.vuitton.android.data.dto.config;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import defpackage.a;
import defpackage.b51;
import defpackage.fc;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006¢\u0006\u0004\b\b\u0010\tB?\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0006\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/data/dto/config/VirtualStudioConfigDto;", "", "Lcom/vuitton/android/data/dto/common/AssetImageDto;", "asset", "", "reasonId", "", "storeCodeList", "<init>", "(Lcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/lang/String;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class VirtualStudioConfigDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] d = {null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new b51(16))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AssetImageDto f45447a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45448b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f45449c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/config/VirtualStudioConfigDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/config/VirtualStudioConfigDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<VirtualStudioConfigDto> serializer() {
            return VirtualStudioConfigDto$$serializer.f45450a;
        }
    }

    public /* synthetic */ VirtualStudioConfigDto(int i2, AssetImageDto assetImageDto, String str, List list, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, VirtualStudioConfigDto$$serializer.f45450a.getF19838b());
            throw null;
        }
        this.f45447a = assetImageDto;
        this.f45448b = str;
        this.f45449c = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VirtualStudioConfigDto)) {
            return false;
        }
        VirtualStudioConfigDto virtualStudioConfigDto = (VirtualStudioConfigDto) obj;
        return Intrinsics.c(this.f45447a, virtualStudioConfigDto.f45447a) && Intrinsics.c(this.f45448b, virtualStudioConfigDto.f45448b) && Intrinsics.c(this.f45449c, virtualStudioConfigDto.f45449c);
    }

    public final int hashCode() {
        return this.f45449c.hashCode() + fc.b(this.f45447a.hashCode() * 31, 31, this.f45448b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("VirtualStudioConfigDto(asset=");
        sb.append(this.f45447a);
        sb.append(", reasonId=");
        sb.append(this.f45448b);
        sb.append(", storeCodeList=");
        return a.o(sb, this.f45449c, ")");
    }

    public VirtualStudioConfigDto(AssetImageDto assetImageDto, String str, List<String> list) {
        assetImageDto.getClass();
        str.getClass();
        list.getClass();
        this.f45447a = assetImageDto;
        this.f45448b = str;
        this.f45449c = list;
    }
}
