package com.vuitton.android.data.dto.product.reinsurance;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
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
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00132\u00020\u0001:\u0002\u0014\u0013BO\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0007¢\u0006\u0004\b\f\u0010\rBc\b\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0007\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\f\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceDto;", "", "", "identifier", "title", "subtitle", "text", "", "Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceVariationDto;", "variations", "Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceImageDto;", "images", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ReinsuranceDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46431a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46432b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f46433c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f46434e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f46435f;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ReinsuranceDto> serializer() {
            return ReinsuranceDto$$serializer.f46436a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        g = new Lazy[]{null, null, null, null, LazyKt.a(lazyThreadSafetyMode, new wq0(12)), LazyKt.a(lazyThreadSafetyMode, new wq0(13))};
    }

    public /* synthetic */ ReinsuranceDto(int i2, String str, String str2, String str3, String str4, List list, List list2, SerializationConstructorMarker serializationConstructorMarker) {
        if (11 != (i2 & 11)) {
            PluginExceptionsKt.b(i2, 11, ReinsuranceDto$$serializer.f46436a.getF19838b());
            throw null;
        }
        this.f46431a = str;
        this.f46432b = str2;
        if ((i2 & 4) == 0) {
            this.f46433c = null;
        } else {
            this.f46433c = str3;
        }
        this.d = str4;
        if ((i2 & 16) == 0) {
            this.f46434e = null;
        } else {
            this.f46434e = list;
        }
        if ((i2 & 32) == 0) {
            this.f46435f = null;
        } else {
            this.f46435f = list2;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReinsuranceDto)) {
            return false;
        }
        ReinsuranceDto reinsuranceDto = (ReinsuranceDto) obj;
        return Intrinsics.c(this.f46431a, reinsuranceDto.f46431a) && Intrinsics.c(this.f46432b, reinsuranceDto.f46432b) && Intrinsics.c(this.f46433c, reinsuranceDto.f46433c) && Intrinsics.c(this.d, reinsuranceDto.d) && Intrinsics.c(this.f46434e, reinsuranceDto.f46434e) && Intrinsics.c(this.f46435f, reinsuranceDto.f46435f);
    }

    public final int hashCode() {
        int iB = fc.b(this.f46431a.hashCode() * 31, 31, this.f46432b);
        String str = this.f46433c;
        int iB2 = fc.b((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.d);
        List list = this.f46434e;
        int iHashCode = (iB2 + (list == null ? 0 : list.hashCode())) * 31;
        List list2 = this.f46435f;
        return iHashCode + (list2 != null ? list2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ReinsuranceDto(identifier=", this.f46431a, ", title=", this.f46432b, ", subtitle=");
        cj.C(sbS, this.f46433c, ", text=", this.d, ", variations=");
        sbS.append(this.f46434e);
        sbS.append(", images=");
        sbS.append(this.f46435f);
        sbS.append(")");
        return sbS.toString();
    }

    public ReinsuranceDto(String str, String str2, String str3, String str4, List<ReinsuranceVariationDto> list, List<ReinsuranceImageDto> list2) {
        cj.z(str, str2, str4);
        this.f46431a = str;
        this.f46432b = str2;
        this.f46433c = str3;
        this.d = str4;
        this.f46434e = list;
        this.f46435f = list2;
    }

    public /* synthetic */ ReinsuranceDto(String str, String str2, String str3, String str4, List list, List list2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? null : str3, str4, (i2 & 16) != 0 ? null : list, (i2 & 32) != 0 ? null : list2);
    }
}
