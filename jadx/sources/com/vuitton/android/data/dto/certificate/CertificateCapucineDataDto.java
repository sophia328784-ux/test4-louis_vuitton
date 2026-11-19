package com.vuitton.android.data.dto.certificate;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import defpackage.a;
import defpackage.d21;
import defpackage.fc;
import defpackage.fj;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00112\u00020\u0001:\u0002\u0012\u0011BO\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006¢\u0006\u0004\b\n\u0010\u000bBY\b\u0010\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\n\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/data/dto/certificate/CertificateCapucineDataDto;", "", "", "material", "description", "artist", "", "Lcom/vuitton/android/data/dto/common/AssetDto;", "coreAssets", "additionalAssets", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CertificateCapucineDataDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Lazy[] f45152f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45153a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45154b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45155c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f45156e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/certificate/CertificateCapucineDataDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/certificate/CertificateCapucineDataDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CertificateCapucineDataDto> serializer() {
            return CertificateCapucineDataDto$$serializer.f45157a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        f45152f = new Lazy[]{null, null, null, LazyKt.a(lazyThreadSafetyMode, new fj(25)), LazyKt.a(lazyThreadSafetyMode, new fj(26))};
    }

    public /* synthetic */ CertificateCapucineDataDto(int i2, String str, String str2, String str3, List list, List list2, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f45153a = null;
        } else {
            this.f45153a = str;
        }
        if ((i2 & 2) == 0) {
            this.f45154b = null;
        } else {
            this.f45154b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f45155c = null;
        } else {
            this.f45155c = str3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = list;
        }
        if ((i2 & 16) == 0) {
            this.f45156e = null;
        } else {
            this.f45156e = list2;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CertificateCapucineDataDto)) {
            return false;
        }
        CertificateCapucineDataDto certificateCapucineDataDto = (CertificateCapucineDataDto) obj;
        return Intrinsics.c(this.f45153a, certificateCapucineDataDto.f45153a) && Intrinsics.c(this.f45154b, certificateCapucineDataDto.f45154b) && Intrinsics.c(this.f45155c, certificateCapucineDataDto.f45155c) && Intrinsics.c(this.d, certificateCapucineDataDto.d) && Intrinsics.c(this.f45156e, certificateCapucineDataDto.f45156e);
    }

    public final int hashCode() {
        String str = this.f45153a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f45154b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f45155c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        List list = this.d;
        int iHashCode4 = (iHashCode3 + (list == null ? 0 : list.hashCode())) * 31;
        List list2 = this.f45156e;
        return iHashCode4 + (list2 != null ? list2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("CertificateCapucineDataDto(material=", this.f45153a, ", description=", this.f45154b, ", artist=");
        d21.z(this.f45155c, ", coreAssets=", ", additionalAssets=", sbS, this.d);
        return a.o(sbS, this.f45156e, ")");
    }

    public CertificateCapucineDataDto() {
        this((String) null, (String) null, (String) null, (List) null, (List) null, 31, (DefaultConstructorMarker) null);
    }

    public CertificateCapucineDataDto(String str, String str2, String str3, List<AssetDto> list, List<AssetDto> list2) {
        this.f45153a = str;
        this.f45154b = str2;
        this.f45155c = str3;
        this.d = list;
        this.f45156e = list2;
    }

    public /* synthetic */ CertificateCapucineDataDto(String str, String str2, String str3, List list, List list2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : list, (i2 & 16) != 0 ? null : list2);
    }
}
