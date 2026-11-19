package com.vuitton.android.data.dto.product.sizeguide;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.a;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.nw0;
import defpackage.zu0;
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
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00182\u00020\u0001:\u0002\u0019\u0018B\u009b\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\u0006\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\r0\u0006\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0011\u0010\u0012B¡\u0001\b\u0010\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0006\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0006\u0012\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0006\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015¢\u0006\u0004\b\u0011\u0010\u0017¨\u0006\u001a"}, d2 = {"Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideTableDto;", "", "", "countrySpinnerTitle", "howToMeasureTitle", "sizeGuideTitle", "", "countryList", "reinsuranceText", "Lcom/vuitton/android/data/dto/product/sizeguide/MediaCategoryDto;", "mediaCategories", "inchesLabel", "cmLabel", "Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideDropDownDto;", "sizeGuideDropDownCms", "sizeGuideDropDownInches", "topDescription", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class SizeGuideTableDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46472a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46473b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f46474c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f46475e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f46476f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f46477h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f46478i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f46479j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f46480k;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideTableDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideTableDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<SizeGuideTableDto> serializer() {
            return SizeGuideTableDto$$serializer.f46481a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        l = new Lazy[]{null, null, null, LazyKt.a(lazyThreadSafetyMode, new zu0(27)), null, LazyKt.a(lazyThreadSafetyMode, new zu0(28)), null, null, LazyKt.a(lazyThreadSafetyMode, new zu0(29)), LazyKt.a(lazyThreadSafetyMode, new nw0(0)), null};
    }

    public /* synthetic */ SizeGuideTableDto(int i2, String str, String str2, String str3, List list, String str4, List list2, String str5, String str6, List list3, List list4, String str7, SerializationConstructorMarker serializationConstructorMarker) {
        if (768 != (i2 & 768)) {
            PluginExceptionsKt.b(i2, 768, SizeGuideTableDto$$serializer.f46481a.getF19850b());
            throw null;
        }
        if ((i2 & 1) == 0) {
            this.f46472a = null;
        } else {
            this.f46472a = str;
        }
        if ((i2 & 2) == 0) {
            this.f46473b = null;
        } else {
            this.f46473b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f46474c = null;
        } else {
            this.f46474c = str3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = list;
        }
        if ((i2 & 16) == 0) {
            this.f46475e = null;
        } else {
            this.f46475e = str4;
        }
        if ((i2 & 32) == 0) {
            this.f46476f = null;
        } else {
            this.f46476f = list2;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = str5;
        }
        if ((i2 & 128) == 0) {
            this.f46477h = null;
        } else {
            this.f46477h = str6;
        }
        this.f46478i = list3;
        this.f46479j = list4;
        if ((i2 & 1024) == 0) {
            this.f46480k = null;
        } else {
            this.f46480k = str7;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SizeGuideTableDto)) {
            return false;
        }
        SizeGuideTableDto sizeGuideTableDto = (SizeGuideTableDto) obj;
        return Intrinsics.c(this.f46472a, sizeGuideTableDto.f46472a) && Intrinsics.c(this.f46473b, sizeGuideTableDto.f46473b) && Intrinsics.c(this.f46474c, sizeGuideTableDto.f46474c) && Intrinsics.c(this.d, sizeGuideTableDto.d) && Intrinsics.c(this.f46475e, sizeGuideTableDto.f46475e) && Intrinsics.c(this.f46476f, sizeGuideTableDto.f46476f) && Intrinsics.c(this.g, sizeGuideTableDto.g) && Intrinsics.c(this.f46477h, sizeGuideTableDto.f46477h) && Intrinsics.c(this.f46478i, sizeGuideTableDto.f46478i) && Intrinsics.c(this.f46479j, sizeGuideTableDto.f46479j) && Intrinsics.c(this.f46480k, sizeGuideTableDto.f46480k);
    }

    public final int hashCode() {
        String str = this.f46472a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f46473b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f46474c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        List list = this.d;
        int iHashCode4 = (iHashCode3 + (list == null ? 0 : list.hashCode())) * 31;
        String str4 = this.f46475e;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        List list2 = this.f46476f;
        int iHashCode6 = (iHashCode5 + (list2 == null ? 0 : list2.hashCode())) * 31;
        String str5 = this.g;
        int iHashCode7 = (iHashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f46477h;
        int iA = n00.a(n00.a((iHashCode7 + (str6 == null ? 0 : str6.hashCode())) * 31, 31, this.f46478i), 31, this.f46479j);
        String str7 = this.f46480k;
        return iA + (str7 != null ? str7.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("SizeGuideTableDto(countrySpinnerTitle=", this.f46472a, ", howToMeasureTitle=", this.f46473b, ", sizeGuideTitle=");
        d21.z(this.f46474c, ", countryList=", ", reinsuranceText=", sbS, this.d);
        d21.z(this.f46475e, ", mediaCategories=", ", inchesLabel=", sbS, this.f46476f);
        cj.C(sbS, this.g, ", cmLabel=", this.f46477h, ", sizeGuideDropDownCms=");
        a.C(sbS, this.f46478i, ", sizeGuideDropDownInches=", this.f46479j, ", topDescription=");
        return n00.r(this.f46480k, ")", sbS);
    }

    public SizeGuideTableDto(String str, String str2, String str3, List<String> list, String str4, List<MediaCategoryDto> list2, String str5, String str6, List<SizeGuideDropDownDto> list3, List<SizeGuideDropDownDto> list4, String str7) {
        list3.getClass();
        list4.getClass();
        this.f46472a = str;
        this.f46473b = str2;
        this.f46474c = str3;
        this.d = list;
        this.f46475e = str4;
        this.f46476f = list2;
        this.g = str5;
        this.f46477h = str6;
        this.f46478i = list3;
        this.f46479j = list4;
        this.f46480k = str7;
    }

    public /* synthetic */ SizeGuideTableDto(String str, String str2, String str3, List list, String str4, List list2, String str5, String str6, List list3, List list4, String str7, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : list, (i2 & 16) != 0 ? null : str4, (i2 & 32) != 0 ? null : list2, (i2 & 64) != 0 ? null : str5, (i2 & 128) != 0 ? null : str6, list3, list4, (i2 & 1024) != 0 ? null : str7);
    }
}
