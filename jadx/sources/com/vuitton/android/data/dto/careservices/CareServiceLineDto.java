package com.vuitton.android.data.dto.careservices;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00152\u00020\u0001:\u0002\u0016\u0015Bk\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u000fBq\b\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u000b\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u000e\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;", "", "", b.a.f24015b, "instructionName", "instructionCode", "instructionNameICONiCS", "", "initialPrice", "updatedPrice", "quantity", "", "approved", "addedByRepairCenter", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;ZZ)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;ZZLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CareServiceLineDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44816a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44817b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44818c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Double f44819e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Double f44820f;
    public final Double g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f44821h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f44822i;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CareServiceLineDto> serializer() {
            return CareServiceLineDto$$serializer.f44823a;
        }
    }

    public /* synthetic */ CareServiceLineDto(int i2, String str, String str2, String str3, String str4, Double d, Double d2, Double d3, boolean z, boolean z2, SerializationConstructorMarker serializationConstructorMarker) {
        if (384 != (i2 & KyberEngine.KyberPolyBytes)) {
            PluginExceptionsKt.b(i2, KyberEngine.KyberPolyBytes, CareServiceLineDto$$serializer.f44823a.getF19838b());
            throw null;
        }
        if ((i2 & 1) == 0) {
            this.f44816a = null;
        } else {
            this.f44816a = str;
        }
        if ((i2 & 2) == 0) {
            this.f44817b = null;
        } else {
            this.f44817b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f44818c = null;
        } else {
            this.f44818c = str3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str4;
        }
        if ((i2 & 16) == 0) {
            this.f44819e = null;
        } else {
            this.f44819e = d;
        }
        if ((i2 & 32) == 0) {
            this.f44820f = null;
        } else {
            this.f44820f = d2;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = d3;
        }
        this.f44821h = z;
        this.f44822i = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CareServiceLineDto)) {
            return false;
        }
        CareServiceLineDto careServiceLineDto = (CareServiceLineDto) obj;
        return Intrinsics.c(this.f44816a, careServiceLineDto.f44816a) && Intrinsics.c(this.f44817b, careServiceLineDto.f44817b) && Intrinsics.c(this.f44818c, careServiceLineDto.f44818c) && Intrinsics.c(this.d, careServiceLineDto.d) && Intrinsics.c(this.f44819e, careServiceLineDto.f44819e) && Intrinsics.c(this.f44820f, careServiceLineDto.f44820f) && Intrinsics.c(this.g, careServiceLineDto.g) && this.f44821h == careServiceLineDto.f44821h && this.f44822i == careServiceLineDto.f44822i;
    }

    public final int hashCode() {
        String str = this.f44816a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f44817b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f44818c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Double d = this.f44819e;
        int iHashCode5 = (iHashCode4 + (d == null ? 0 : d.hashCode())) * 31;
        Double d2 = this.f44820f;
        int iHashCode6 = (iHashCode5 + (d2 == null ? 0 : d2.hashCode())) * 31;
        Double d3 = this.g;
        return Boolean.hashCode(this.f44822i) + o60.b((iHashCode6 + (d3 != null ? d3.hashCode() : 0)) * 31, 31, this.f44821h);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("CareServiceLineDto(id=", this.f44816a, ", instructionName=", this.f44817b, ", instructionCode=");
        cj.C(sbS, this.f44818c, ", instructionNameICONiCS=", this.d, ", initialPrice=");
        sbS.append(this.f44819e);
        sbS.append(", updatedPrice=");
        sbS.append(this.f44820f);
        sbS.append(", quantity=");
        sbS.append(this.g);
        sbS.append(", approved=");
        sbS.append(this.f44821h);
        sbS.append(", addedByRepairCenter=");
        return a.p(sbS, this.f44822i, ")");
    }

    public CareServiceLineDto(String str, String str2, String str3, String str4, Double d, Double d2, Double d3, boolean z, boolean z2) {
        this.f44816a = str;
        this.f44817b = str2;
        this.f44818c = str3;
        this.d = str4;
        this.f44819e = d;
        this.f44820f = d2;
        this.g = d3;
        this.f44821h = z;
        this.f44822i = z2;
    }

    public /* synthetic */ CareServiceLineDto(String str, String str2, String str3, String str4, Double d, Double d2, Double d3, boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : str4, (i2 & 16) != 0 ? null : d, (i2 & 32) != 0 ? null : d2, (i2 & 64) != 0 ? null : d3, z, z2);
    }
}
