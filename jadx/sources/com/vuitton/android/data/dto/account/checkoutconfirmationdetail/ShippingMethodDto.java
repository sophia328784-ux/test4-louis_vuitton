package com.vuitton.android.data.dto.account.checkoutconfirmationdetail;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bBK\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\n\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;", "", "", "title", "description", "", "priceRaw", "disclaimer", "Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodAdditionalInformationDto;", "additionalInformation", "<init>", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodAdditionalInformationDto;)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodAdditionalInformationDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ShippingMethodDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44316a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44317b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f44318c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ShippingMethodAdditionalInformationDto f44319e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ShippingMethodDto> serializer() {
            return ShippingMethodDto$$serializer.f44320a;
        }
    }

    public /* synthetic */ ShippingMethodDto(int i2, String str, String str2, int i3, String str3, ShippingMethodAdditionalInformationDto shippingMethodAdditionalInformationDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, ShippingMethodDto$$serializer.f44320a.getF19838b());
            throw null;
        }
        this.f44316a = str;
        this.f44317b = str2;
        this.f44318c = i3;
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str3;
        }
        if ((i2 & 16) == 0) {
            this.f44319e = null;
        } else {
            this.f44319e = shippingMethodAdditionalInformationDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ShippingMethodDto)) {
            return false;
        }
        ShippingMethodDto shippingMethodDto = (ShippingMethodDto) obj;
        return Intrinsics.c(this.f44316a, shippingMethodDto.f44316a) && Intrinsics.c(this.f44317b, shippingMethodDto.f44317b) && this.f44318c == shippingMethodDto.f44318c && Intrinsics.c(this.d, shippingMethodDto.d) && Intrinsics.c(this.f44319e, shippingMethodDto.f44319e);
    }

    public final int hashCode() {
        int iB = tr.b(this.f44318c, fc.b(this.f44316a.hashCode() * 31, 31, this.f44317b), 31);
        String str = this.d;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        ShippingMethodAdditionalInformationDto shippingMethodAdditionalInformationDto = this.f44319e;
        return iHashCode + (shippingMethodAdditionalInformationDto != null ? shippingMethodAdditionalInformationDto.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ShippingMethodDto(title=", this.f44316a, ", description=", this.f44317b, ", priceRaw=");
        sbS.append(this.f44318c);
        sbS.append(", disclaimer=");
        sbS.append(this.d);
        sbS.append(", additionalInformation=");
        sbS.append(this.f44319e);
        sbS.append(")");
        return sbS.toString();
    }

    public ShippingMethodDto(String str, String str2, int i2, String str3, ShippingMethodAdditionalInformationDto shippingMethodAdditionalInformationDto) {
        str.getClass();
        str2.getClass();
        this.f44316a = str;
        this.f44317b = str2;
        this.f44318c = i2;
        this.d = str3;
        this.f44319e = shippingMethodAdditionalInformationDto;
    }

    public /* synthetic */ ShippingMethodDto(String str, String str2, int i2, String str3, ShippingMethodAdditionalInformationDto shippingMethodAdditionalInformationDto, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, i2, (i3 & 8) != 0 ? null : str3, (i3 & 16) != 0 ? null : shippingMethodAdditionalInformationDto);
    }
}
