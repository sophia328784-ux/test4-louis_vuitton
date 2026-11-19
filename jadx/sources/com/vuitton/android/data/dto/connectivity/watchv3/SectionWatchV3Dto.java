package com.vuitton.android.data.dto.connectivity.watchv3;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.connectivity.common.FaqCategoryDto;
import com.vuitton.android.data.dto.connectivity.common.TutorialDto;
import com.vuitton.android.data.dto.connectivity.watch.SectionWatchVideoDto;
import defpackage.a;
import defpackage.fc;
import defpackage.it0;
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
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00142\u00020\u0001:\u0002\u0015\u0014Ba\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0005¢\u0006\u0004\b\r\u0010\u000eBi\b\u0010\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0005\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\r\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;", "", "", "assetTutorial", "assetWatchVideo", "", "Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto;", "sectionFaq", "Lcom/vuitton/android/data/dto/connectivity/common/TutorialDto;", "sectionTutorials", "Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchVideoDto;", "sectionWatchVideo", "skuList", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchVideoDto;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchVideoDto;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class SectionWatchV3Dto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45677a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45678b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f45679c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SectionWatchVideoDto f45680e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f45681f;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<SectionWatchV3Dto> serializer() {
            return SectionWatchV3Dto$$serializer.f45682a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        g = new Lazy[]{null, null, LazyKt.a(lazyThreadSafetyMode, new it0(21)), LazyKt.a(lazyThreadSafetyMode, new it0(22)), null, LazyKt.a(lazyThreadSafetyMode, new it0(23))};
    }

    public /* synthetic */ SectionWatchV3Dto(int i2, String str, String str2, List list, List list2, SectionWatchVideoDto sectionWatchVideoDto, List list3, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f45677a = null;
        } else {
            this.f45677a = str;
        }
        if ((i2 & 2) == 0) {
            this.f45678b = null;
        } else {
            this.f45678b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f45679c = null;
        } else {
            this.f45679c = list;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = list2;
        }
        if ((i2 & 16) == 0) {
            this.f45680e = null;
        } else {
            this.f45680e = sectionWatchVideoDto;
        }
        if ((i2 & 32) == 0) {
            this.f45681f = null;
        } else {
            this.f45681f = list3;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SectionWatchV3Dto)) {
            return false;
        }
        SectionWatchV3Dto sectionWatchV3Dto = (SectionWatchV3Dto) obj;
        return Intrinsics.c(this.f45677a, sectionWatchV3Dto.f45677a) && Intrinsics.c(this.f45678b, sectionWatchV3Dto.f45678b) && Intrinsics.c(this.f45679c, sectionWatchV3Dto.f45679c) && Intrinsics.c(this.d, sectionWatchV3Dto.d) && Intrinsics.c(this.f45680e, sectionWatchV3Dto.f45680e) && Intrinsics.c(this.f45681f, sectionWatchV3Dto.f45681f);
    }

    public final int hashCode() {
        String str = this.f45677a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f45678b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        List list = this.f45679c;
        int iHashCode3 = (iHashCode2 + (list == null ? 0 : list.hashCode())) * 31;
        List list2 = this.d;
        int iHashCode4 = (iHashCode3 + (list2 == null ? 0 : list2.hashCode())) * 31;
        SectionWatchVideoDto sectionWatchVideoDto = this.f45680e;
        int iHashCode5 = (iHashCode4 + (sectionWatchVideoDto == null ? 0 : sectionWatchVideoDto.hashCode())) * 31;
        List list3 = this.f45681f;
        return iHashCode5 + (list3 != null ? list3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("SectionWatchV3Dto(assetTutorial=", this.f45677a, ", assetWatchVideo=", this.f45678b, ", sectionFaq=");
        a.C(sbS, this.f45679c, ", sectionTutorials=", this.d, ", sectionWatchVideo=");
        sbS.append(this.f45680e);
        sbS.append(", skuList=");
        sbS.append(this.f45681f);
        sbS.append(")");
        return sbS.toString();
    }

    public SectionWatchV3Dto() {
        this((String) null, (String) null, (List) null, (List) null, (SectionWatchVideoDto) null, (List) null, 63, (DefaultConstructorMarker) null);
    }

    public SectionWatchV3Dto(String str, String str2, List<FaqCategoryDto> list, List<TutorialDto> list2, SectionWatchVideoDto sectionWatchVideoDto, List<String> list3) {
        this.f45677a = str;
        this.f45678b = str2;
        this.f45679c = list;
        this.d = list2;
        this.f45680e = sectionWatchVideoDto;
        this.f45681f = list3;
    }

    public /* synthetic */ SectionWatchV3Dto(String str, String str2, List list, List list2, SectionWatchVideoDto sectionWatchVideoDto, List list3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : list, (i2 & 8) != 0 ? null : list2, (i2 & 16) != 0 ? null : sectionWatchVideoDto, (i2 & 32) != 0 ? null : list3);
    }
}
