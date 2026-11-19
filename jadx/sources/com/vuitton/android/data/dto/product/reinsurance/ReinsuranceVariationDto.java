package com.vuitton.android.data.dto.product.reinsurance;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.wq0;
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
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00112\u00020\u0001:\u0002\u0012\u0011BE\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007¢\u0006\u0004\b\n\u0010\u000bBS\b\u0010\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\n\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceVariationDto;", "", "", "variationId", "title", "subtitle", "text", "", "Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceImageDto;", "images", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ReinsuranceVariationDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Lazy[] f46443f = {null, null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new wq0(17))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46444a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46445b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f46446c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f46447e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceVariationDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceVariationDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ReinsuranceVariationDto> serializer() {
            return ReinsuranceVariationDto$$serializer.f46448a;
        }
    }

    public /* synthetic */ ReinsuranceVariationDto(int i2, String str, String str2, String str3, String str4, List list, SerializationConstructorMarker serializationConstructorMarker) {
        if (8 != (i2 & 8)) {
            PluginExceptionsKt.b(i2, 8, ReinsuranceVariationDto$$serializer.f46448a.getF19838b());
            throw null;
        }
        if ((i2 & 1) == 0) {
            this.f46444a = null;
        } else {
            this.f46444a = str;
        }
        if ((i2 & 2) == 0) {
            this.f46445b = null;
        } else {
            this.f46445b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f46446c = null;
        } else {
            this.f46446c = str3;
        }
        this.d = str4;
        if ((i2 & 16) == 0) {
            this.f46447e = null;
        } else {
            this.f46447e = list;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReinsuranceVariationDto)) {
            return false;
        }
        ReinsuranceVariationDto reinsuranceVariationDto = (ReinsuranceVariationDto) obj;
        return Intrinsics.c(this.f46444a, reinsuranceVariationDto.f46444a) && Intrinsics.c(this.f46445b, reinsuranceVariationDto.f46445b) && Intrinsics.c(this.f46446c, reinsuranceVariationDto.f46446c) && Intrinsics.c(this.d, reinsuranceVariationDto.d) && Intrinsics.c(this.f46447e, reinsuranceVariationDto.f46447e);
    }

    public final int hashCode() {
        String str = this.f46444a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f46445b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f46446c;
        int iB = fc.b((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31, 31, this.d);
        List list = this.f46447e;
        return iB + (list != null ? list.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ReinsuranceVariationDto(variationId=", this.f46444a, ", title=", this.f46445b, ", subtitle=");
        cj.C(sbS, this.f46446c, ", text=", this.d, ", images=");
        return a.o(sbS, this.f46447e, ")");
    }

    public ReinsuranceVariationDto(String str, String str2, String str3, String str4, List<ReinsuranceImageDto> list) {
        str4.getClass();
        this.f46444a = str;
        this.f46445b = str2;
        this.f46446c = str3;
        this.d = str4;
        this.f46447e = list;
    }

    public /* synthetic */ ReinsuranceVariationDto(String str, String str2, String str3, String str4, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, str4, (i2 & 16) != 0 ? null : list);
    }
}
