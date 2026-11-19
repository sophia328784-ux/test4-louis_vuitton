package com.vuitton.android.data.dto.catalog;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import defpackage.cj;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tBC\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/data/dto/catalog/PLPEntryDto;", "", "", b.a.f24015b, "plpId", "title", "Lcom/vuitton/android/data/dto/common/AssetImageDto;", "image", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class PLPEntryDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45104a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45105b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45106c;
    public final AssetImageDto d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/catalog/PLPEntryDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/catalog/PLPEntryDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<PLPEntryDto> serializer() {
            return PLPEntryDto$$serializer.f45107a;
        }
    }

    public /* synthetic */ PLPEntryDto(int i2, String str, String str2, String str3, AssetImageDto assetImageDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, PLPEntryDto$$serializer.f45107a.getF19850b());
            throw null;
        }
        this.f45104a = str;
        this.f45105b = str2;
        this.f45106c = str3;
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = assetImageDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PLPEntryDto)) {
            return false;
        }
        PLPEntryDto pLPEntryDto = (PLPEntryDto) obj;
        return Intrinsics.c(this.f45104a, pLPEntryDto.f45104a) && Intrinsics.c(this.f45105b, pLPEntryDto.f45105b) && Intrinsics.c(this.f45106c, pLPEntryDto.f45106c) && Intrinsics.c(this.d, pLPEntryDto.d);
    }

    public final int hashCode() {
        int iB = fc.b(fc.b(this.f45104a.hashCode() * 31, 31, this.f45105b), 31, this.f45106c);
        AssetImageDto assetImageDto = this.d;
        return iB + (assetImageDto == null ? 0 : assetImageDto.hashCode());
    }

    public final String toString() {
        StringBuilder sbS = fc.s("PLPEntryDto(id=", this.f45104a, ", plpId=", this.f45105b, ", title=");
        sbS.append(this.f45106c);
        sbS.append(", image=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }

    public PLPEntryDto(String str, String str2, String str3, AssetImageDto assetImageDto) {
        cj.z(str, str2, str3);
        this.f45104a = str;
        this.f45105b = str2;
        this.f45106c = str3;
        this.d = assetImageDto;
    }

    public /* synthetic */ PLPEntryDto(String str, String str2, String str3, AssetImageDto assetImageDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, (i2 & 8) != 0 ? null : assetImageDto);
    }
}
