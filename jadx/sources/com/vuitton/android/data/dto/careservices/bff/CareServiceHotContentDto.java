package com.vuitton.android.data.dto.careservices.bff;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB;\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\tBM\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/bff/CareServiceHotContentDto;", "", "", "title", "description", "stepTitle", "actionRequiredTitle", "action", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CareServiceHotContentDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44938a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44939b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44940c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f44941e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/bff/CareServiceHotContentDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceHotContentDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CareServiceHotContentDto> serializer() {
            return CareServiceHotContentDto$$serializer.f44942a;
        }
    }

    public /* synthetic */ CareServiceHotContentDto(int i2, String str, String str2, String str3, String str4, String str5, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, CareServiceHotContentDto$$serializer.f44942a.getF19838b());
            throw null;
        }
        this.f44938a = str;
        this.f44939b = str2;
        if ((i2 & 4) == 0) {
            this.f44940c = null;
        } else {
            this.f44940c = str3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str4;
        }
        if ((i2 & 16) == 0) {
            this.f44941e = null;
        } else {
            this.f44941e = str5;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CareServiceHotContentDto)) {
            return false;
        }
        CareServiceHotContentDto careServiceHotContentDto = (CareServiceHotContentDto) obj;
        return Intrinsics.c(this.f44938a, careServiceHotContentDto.f44938a) && Intrinsics.c(this.f44939b, careServiceHotContentDto.f44939b) && Intrinsics.c(this.f44940c, careServiceHotContentDto.f44940c) && Intrinsics.c(this.d, careServiceHotContentDto.d) && Intrinsics.c(this.f44941e, careServiceHotContentDto.f44941e);
    }

    public final int hashCode() {
        int iB = fc.b(this.f44938a.hashCode() * 31, 31, this.f44939b);
        String str = this.f44940c;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f44941e;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("CareServiceHotContentDto(title=", this.f44938a, ", description=", this.f44939b, ", stepTitle=");
        cj.C(sbS, this.f44940c, ", actionRequiredTitle=", this.d, ", action=");
        return n00.r(this.f44941e, ")", sbS);
    }

    public CareServiceHotContentDto(String str, String str2, String str3, String str4, String str5) {
        str.getClass();
        str2.getClass();
        this.f44938a = str;
        this.f44939b = str2;
        this.f44940c = str3;
        this.d = str4;
        this.f44941e = str5;
    }

    public /* synthetic */ CareServiceHotContentDto(String str, String str2, String str3, String str4, String str5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : str4, (i2 & 16) != 0 ? null : str5);
    }
}
