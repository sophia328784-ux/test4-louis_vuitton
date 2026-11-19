package com.vuitton.android.data.dto.connectivity.earphone;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.connectivity.common.FaqCategoryDto;
import com.vuitton.android.data.dto.connectivity.common.FaqVideoDto;
import com.vuitton.android.data.dto.connectivity.common.TutorialDto;
import defpackage.o60;
import defpackage.rt;
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
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012BI\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0002¢\u0006\u0004\b\u000b\u0010\fBU\b\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0002\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u000b\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/data/dto/connectivity/earphone/EarphoneSectionDto;", "", "", "Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto;", "faq", "", "skuList", "Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;", "video", "Lcom/vuitton/android/data/dto/connectivity/common/TutorialDto;", "tutorial", "<init>", "(Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class EarphoneSectionDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Lazy[] f45575e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f45576a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f45577b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FaqVideoDto f45578c;
    public final List d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/connectivity/earphone/EarphoneSectionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/connectivity/earphone/EarphoneSectionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<EarphoneSectionDto> serializer() {
            return EarphoneSectionDto$$serializer.f45579a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        f45575e = new Lazy[]{LazyKt.a(lazyThreadSafetyMode, new rt(12)), LazyKt.a(lazyThreadSafetyMode, new rt(13)), null, LazyKt.a(lazyThreadSafetyMode, new rt(14))};
    }

    public /* synthetic */ EarphoneSectionDto(int i2, List list, List list2, FaqVideoDto faqVideoDto, List list3, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f45576a = null;
        } else {
            this.f45576a = list;
        }
        if ((i2 & 2) == 0) {
            this.f45577b = null;
        } else {
            this.f45577b = list2;
        }
        if ((i2 & 4) == 0) {
            this.f45578c = null;
        } else {
            this.f45578c = faqVideoDto;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = list3;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EarphoneSectionDto)) {
            return false;
        }
        EarphoneSectionDto earphoneSectionDto = (EarphoneSectionDto) obj;
        return Intrinsics.c(this.f45576a, earphoneSectionDto.f45576a) && Intrinsics.c(this.f45577b, earphoneSectionDto.f45577b) && Intrinsics.c(this.f45578c, earphoneSectionDto.f45578c) && Intrinsics.c(this.d, earphoneSectionDto.d);
    }

    public final int hashCode() {
        List list = this.f45576a;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        List list2 = this.f45577b;
        int iHashCode2 = (iHashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        FaqVideoDto faqVideoDto = this.f45578c;
        int iHashCode3 = (iHashCode2 + (faqVideoDto == null ? 0 : faqVideoDto.hashCode())) * 31;
        List list3 = this.d;
        return iHashCode3 + (list3 != null ? list3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = o60.s("EarphoneSectionDto(faq=", ", skuList=", ", video=", this.f45576a, this.f45577b);
        sbS.append(this.f45578c);
        sbS.append(", tutorial=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }

    public EarphoneSectionDto() {
        this((List) null, (List) null, (FaqVideoDto) null, (List) null, 15, (DefaultConstructorMarker) null);
    }

    public EarphoneSectionDto(List<FaqCategoryDto> list, List<String> list2, FaqVideoDto faqVideoDto, List<TutorialDto> list3) {
        this.f45576a = list;
        this.f45577b = list2;
        this.f45578c = faqVideoDto;
        this.d = list3;
    }

    public /* synthetic */ EarphoneSectionDto(List list, List list2, FaqVideoDto faqVideoDto, List list3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : list, (i2 & 2) != 0 ? null : list2, (i2 & 4) != 0 ? null : faqVideoDto, (i2 & 8) != 0 ? null : list3);
    }
}
