package com.vuitton.android.data.dto.config;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.d21;
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
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\tBM\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/data/dto/config/PowerFrontConfigDto;", "", "", "domainUrl", "accountKey", "mobileSiteUrl", "subSiteId", "appNameAndroid", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class PowerFrontConfigDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45432a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45433b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45434c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f45435e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/config/PowerFrontConfigDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/config/PowerFrontConfigDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<PowerFrontConfigDto> serializer() {
            return PowerFrontConfigDto$$serializer.f45436a;
        }
    }

    public /* synthetic */ PowerFrontConfigDto(int i2, String str, String str2, String str3, String str4, String str5, SerializationConstructorMarker serializationConstructorMarker) {
        if (15 != (i2 & 15)) {
            PluginExceptionsKt.b(i2, 15, PowerFrontConfigDto$$serializer.f45436a.getF19838b());
            throw null;
        }
        this.f45432a = str;
        this.f45433b = str2;
        this.f45434c = str3;
        this.d = str4;
        if ((i2 & 16) == 0) {
            this.f45435e = null;
        } else {
            this.f45435e = str5;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PowerFrontConfigDto)) {
            return false;
        }
        PowerFrontConfigDto powerFrontConfigDto = (PowerFrontConfigDto) obj;
        return Intrinsics.c(this.f45432a, powerFrontConfigDto.f45432a) && Intrinsics.c(this.f45433b, powerFrontConfigDto.f45433b) && Intrinsics.c(this.f45434c, powerFrontConfigDto.f45434c) && Intrinsics.c(this.d, powerFrontConfigDto.d) && Intrinsics.c(this.f45435e, powerFrontConfigDto.f45435e);
    }

    public final int hashCode() {
        int iB = fc.b(fc.b(fc.b(this.f45432a.hashCode() * 31, 31, this.f45433b), 31, this.f45434c), 31, this.d);
        String str = this.f45435e;
        return iB + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sbS = fc.s("PowerFrontConfigDto(domainUrl=", this.f45432a, ", accountKey=", this.f45433b, ", mobileSiteUrl=");
        cj.C(sbS, this.f45434c, ", subSiteId=", this.d, ", appNameAndroid=");
        return n00.r(this.f45435e, ")", sbS);
    }

    public PowerFrontConfigDto(String str, String str2, String str3, String str4, String str5) {
        d21.y(str, str2, str3, str4);
        this.f45432a = str;
        this.f45433b = str2;
        this.f45434c = str3;
        this.d = str4;
        this.f45435e = str5;
    }

    public /* synthetic */ PowerFrontConfigDto(String str, String str2, String str3, String str4, String str5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, (i2 & 16) != 0 ? null : str5);
    }
}
