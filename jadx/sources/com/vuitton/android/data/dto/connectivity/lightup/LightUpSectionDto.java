package com.vuitton.android.data.dto.connectivity.lightup;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.connectivity.common.FaqCategoryDto;
import defpackage.c70;
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
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010BI\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\nBU\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/connectivity/lightup/LightUpSectionDto;", "", "", "Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto;", "faqKeepAll", "faqTrainer", "faqTrunk", "Lcom/vuitton/android/data/dto/connectivity/lightup/HomePageContentDto;", "homePageContent", "<init>", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/connectivity/lightup/HomePageContentDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/connectivity/lightup/HomePageContentDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class LightUpSectionDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Lazy[] f45590e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f45591a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f45592b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f45593c;
    public final HomePageContentDto d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/connectivity/lightup/LightUpSectionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/connectivity/lightup/LightUpSectionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<LightUpSectionDto> serializer() {
            return LightUpSectionDto$$serializer.f45594a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        f45590e = new Lazy[]{LazyKt.a(lazyThreadSafetyMode, new c70(18)), LazyKt.a(lazyThreadSafetyMode, new c70(19)), LazyKt.a(lazyThreadSafetyMode, new c70(20)), null};
    }

    public /* synthetic */ LightUpSectionDto(int i2, List list, List list2, List list3, HomePageContentDto homePageContentDto, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f45591a = null;
        } else {
            this.f45591a = list;
        }
        if ((i2 & 2) == 0) {
            this.f45592b = null;
        } else {
            this.f45592b = list2;
        }
        if ((i2 & 4) == 0) {
            this.f45593c = null;
        } else {
            this.f45593c = list3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = homePageContentDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LightUpSectionDto)) {
            return false;
        }
        LightUpSectionDto lightUpSectionDto = (LightUpSectionDto) obj;
        return Intrinsics.c(this.f45591a, lightUpSectionDto.f45591a) && Intrinsics.c(this.f45592b, lightUpSectionDto.f45592b) && Intrinsics.c(this.f45593c, lightUpSectionDto.f45593c) && Intrinsics.c(this.d, lightUpSectionDto.d);
    }

    public final int hashCode() {
        List list = this.f45591a;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        List list2 = this.f45592b;
        int iHashCode2 = (iHashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        List list3 = this.f45593c;
        int iHashCode3 = (iHashCode2 + (list3 == null ? 0 : list3.hashCode())) * 31;
        HomePageContentDto homePageContentDto = this.d;
        return iHashCode3 + (homePageContentDto != null ? homePageContentDto.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = o60.s("LightUpSectionDto(faqKeepAll=", ", faqTrainer=", ", faqTrunk=", this.f45591a, this.f45592b);
        sbS.append(this.f45593c);
        sbS.append(", homePageContent=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }

    public LightUpSectionDto() {
        this((List) null, (List) null, (List) null, (HomePageContentDto) null, 15, (DefaultConstructorMarker) null);
    }

    public LightUpSectionDto(List<FaqCategoryDto> list, List<FaqCategoryDto> list2, List<FaqCategoryDto> list3, HomePageContentDto homePageContentDto) {
        this.f45591a = list;
        this.f45592b = list2;
        this.f45593c = list3;
        this.d = homePageContentDto;
    }

    public /* synthetic */ LightUpSectionDto(List list, List list2, List list3, HomePageContentDto homePageContentDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : list, (i2 & 2) != 0 ? null : list2, (i2 & 4) != 0 ? null : list3, (i2 & 8) != 0 ? null : homePageContentDto);
    }
}
