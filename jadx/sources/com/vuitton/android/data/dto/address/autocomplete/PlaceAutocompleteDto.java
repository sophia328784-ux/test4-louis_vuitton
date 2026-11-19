package com.vuitton.android.data.dto.address.autocomplete;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.address.AddressDetailDto;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tBC\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/data/dto/address/autocomplete/PlaceAutocompleteDto;", "", "", b.a.f24015b, "title", "description", "Lcom/vuitton/android/data/dto/address/AddressDetailDto;", "address", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/address/AddressDetailDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/address/AddressDetailDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class PlaceAutocompleteDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44473a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44474b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44475c;
    public final AddressDetailDto d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/address/autocomplete/PlaceAutocompleteDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/address/autocomplete/PlaceAutocompleteDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<PlaceAutocompleteDto> serializer() {
            return PlaceAutocompleteDto$$serializer.f44476a;
        }
    }

    public /* synthetic */ PlaceAutocompleteDto(int i2, String str, String str2, String str3, AddressDetailDto addressDetailDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i2 & 1)) {
            PluginExceptionsKt.b(i2, 1, PlaceAutocompleteDto$$serializer.f44476a.a());
            throw null;
        }
        this.f44473a = str;
        if ((i2 & 2) == 0) {
            this.f44474b = null;
        } else {
            this.f44474b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f44475c = null;
        } else {
            this.f44475c = str3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = addressDetailDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlaceAutocompleteDto)) {
            return false;
        }
        PlaceAutocompleteDto placeAutocompleteDto = (PlaceAutocompleteDto) obj;
        return Intrinsics.c(this.f44473a, placeAutocompleteDto.f44473a) && Intrinsics.c(this.f44474b, placeAutocompleteDto.f44474b) && Intrinsics.c(this.f44475c, placeAutocompleteDto.f44475c) && Intrinsics.c(this.d, placeAutocompleteDto.d);
    }

    public final int hashCode() {
        int iHashCode = this.f44473a.hashCode() * 31;
        String str = this.f44474b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f44475c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        AddressDetailDto addressDetailDto = this.d;
        return iHashCode3 + (addressDetailDto != null ? addressDetailDto.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("PlaceAutocompleteDto(id=", this.f44473a, ", title=", this.f44474b, ", description=");
        sbS.append(this.f44475c);
        sbS.append(", address=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }

    public PlaceAutocompleteDto(String str, String str2, String str3, AddressDetailDto addressDetailDto) {
        str.getClass();
        this.f44473a = str;
        this.f44474b = str2;
        this.f44475c = str3;
        this.d = addressDetailDto;
    }

    public /* synthetic */ PlaceAutocompleteDto(String str, String str2, String str3, AddressDetailDto addressDetailDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : addressDetailDto);
    }
}
