package com.vuitton.android.data.dto.careservices;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import defpackage.lg;
import defpackage.o60;
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
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B9\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\nBI\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/CareServiceListDto;", "", "", "status", "responseId", "transactionDate", "", "Lcom/vuitton/android/data/dto/careservices/CareServicesDto;", "careServices", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CareServiceListDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Lazy[] f44824e = {null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new lg(28))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44825a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44826b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44827c;
    public final List d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/CareServiceListDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/careservices/CareServiceListDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CareServiceListDto> serializer() {
            return CareServiceListDto$$serializer.f44828a;
        }
    }

    public /* synthetic */ CareServiceListDto(int i2, String str, String str2, String str3, List list, SerializationConstructorMarker serializationConstructorMarker) {
        if (8 != (i2 & 8)) {
            PluginExceptionsKt.b(i2, 8, CareServiceListDto$$serializer.f44828a.getF19838b());
            throw null;
        }
        if ((i2 & 1) == 0) {
            this.f44825a = null;
        } else {
            this.f44825a = str;
        }
        if ((i2 & 2) == 0) {
            this.f44826b = null;
        } else {
            this.f44826b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f44827c = null;
        } else {
            this.f44827c = str3;
        }
        this.d = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CareServiceListDto)) {
            return false;
        }
        CareServiceListDto careServiceListDto = (CareServiceListDto) obj;
        return Intrinsics.c(this.f44825a, careServiceListDto.f44825a) && Intrinsics.c(this.f44826b, careServiceListDto.f44826b) && Intrinsics.c(this.f44827c, careServiceListDto.f44827c) && Intrinsics.c(this.d, careServiceListDto.d);
    }

    public final int hashCode() {
        String str = this.f44825a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f44826b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f44827c;
        return this.d.hashCode() + ((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return o60.o(this.f44827c, ", careServices=", ")", fc.s("CareServiceListDto(status=", this.f44825a, ", responseId=", this.f44826b, ", transactionDate="), this.d);
    }

    public CareServiceListDto(String str, String str2, String str3, List<CareServicesDto> list) {
        list.getClass();
        this.f44825a = str;
        this.f44826b = str2;
        this.f44827c = str3;
        this.d = list;
    }

    public /* synthetic */ CareServiceListDto(String str, String str2, String str3, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, list);
    }
}
