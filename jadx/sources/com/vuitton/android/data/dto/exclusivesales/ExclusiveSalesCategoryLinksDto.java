package com.vuitton.android.data.dto.exclusivesales;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010BO\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\t\u0010\nBW\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/exclusivesales/ExclusiveSalesCategoryLinksDto;", "", "", "imageUrl", "offerDisplayName", ConfigurationName.DOWNLOAD_PLUGIN_URL, "offerDescription", "largeImageUrl", "offerId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ExclusiveSalesCategoryLinksDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45753a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45754b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45755c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f45756e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f45757f;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/exclusivesales/ExclusiveSalesCategoryLinksDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/exclusivesales/ExclusiveSalesCategoryLinksDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ExclusiveSalesCategoryLinksDto> serializer() {
            return ExclusiveSalesCategoryLinksDto$$serializer.f45758a;
        }
    }

    public /* synthetic */ ExclusiveSalesCategoryLinksDto(int i2, String str, String str2, String str3, String str4, String str5, String str6, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f45753a = null;
        } else {
            this.f45753a = str;
        }
        if ((i2 & 2) == 0) {
            this.f45754b = null;
        } else {
            this.f45754b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f45755c = null;
        } else {
            this.f45755c = str3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str4;
        }
        if ((i2 & 16) == 0) {
            this.f45756e = null;
        } else {
            this.f45756e = str5;
        }
        if ((i2 & 32) == 0) {
            this.f45757f = null;
        } else {
            this.f45757f = str6;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ExclusiveSalesCategoryLinksDto)) {
            return false;
        }
        ExclusiveSalesCategoryLinksDto exclusiveSalesCategoryLinksDto = (ExclusiveSalesCategoryLinksDto) obj;
        return Intrinsics.c(this.f45753a, exclusiveSalesCategoryLinksDto.f45753a) && Intrinsics.c(this.f45754b, exclusiveSalesCategoryLinksDto.f45754b) && Intrinsics.c(this.f45755c, exclusiveSalesCategoryLinksDto.f45755c) && Intrinsics.c(this.d, exclusiveSalesCategoryLinksDto.d) && Intrinsics.c(this.f45756e, exclusiveSalesCategoryLinksDto.f45756e) && Intrinsics.c(this.f45757f, exclusiveSalesCategoryLinksDto.f45757f);
    }

    public final int hashCode() {
        String str = this.f45753a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f45754b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f45755c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f45756e;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f45757f;
        return iHashCode5 + (str6 != null ? str6.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ExclusiveSalesCategoryLinksDto(imageUrl=", this.f45753a, ", offerDisplayName=", this.f45754b, ", url=");
        cj.C(sbS, this.f45755c, ", offerDescription=", this.d, ", largeImageUrl=");
        return tr.l(sbS, this.f45756e, ", offerId=", this.f45757f, ")");
    }

    public ExclusiveSalesCategoryLinksDto() {
        this((String) null, (String) null, (String) null, (String) null, (String) null, (String) null, 63, (DefaultConstructorMarker) null);
    }

    public ExclusiveSalesCategoryLinksDto(String str, String str2, String str3, String str4, String str5, String str6) {
        this.f45753a = str;
        this.f45754b = str2;
        this.f45755c = str3;
        this.d = str4;
        this.f45756e = str5;
        this.f45757f = str6;
    }

    public /* synthetic */ ExclusiveSalesCategoryLinksDto(String str, String str2, String str3, String str4, String str5, String str6, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : str4, (i2 & 16) != 0 ? null : str5, (i2 & 32) != 0 ? null : str6);
    }
}
