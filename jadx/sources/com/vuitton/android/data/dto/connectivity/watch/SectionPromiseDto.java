package com.vuitton.android.data.dto.connectivity.watch;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.connectivity.sync.SectionFaqDto;
import com.vuitton.android.data.dto.connectivity.sync.SectionTutorialsDto;
import defpackage.a;
import defpackage.cj;
import defpackage.d21;
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
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00182\u00020\u0001:\u0002\u0019\u0018B\u0085\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\b\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\b¢\u0006\u0004\b\u0011\u0010\u0012B\u0087\u0001\b\u0010\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\b\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015¢\u0006\u0004\b\u0011\u0010\u0017¨\u0006\u001a"}, d2 = {"Lcom/vuitton/android/data/dto/connectivity/watch/SectionPromiseDto;", "", "", "assetMyWatch", "assetProductList", "assetTutorial", "assetWatchVideo", "assetWatchface", "", "Lcom/vuitton/android/data/dto/connectivity/sync/SectionFaqDto;", "sectionFaq", "Lcom/vuitton/android/data/dto/connectivity/sync/SectionTutorialsDto;", "sectionTutorials", "Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchVideoDto;", "sectionWatchVideo", "Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchfacesDto;", "sectionWatchfaces", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchVideoDto;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchVideoDto;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class SectionPromiseDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Lazy[] f45637j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45638a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45639b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45640c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f45641e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f45642f;
    public final List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final SectionWatchVideoDto f45643h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f45644i;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/connectivity/watch/SectionPromiseDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/connectivity/watch/SectionPromiseDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<SectionPromiseDto> serializer() {
            return SectionPromiseDto$$serializer.f45645a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        f45637j = new Lazy[]{null, null, null, null, null, LazyKt.a(lazyThreadSafetyMode, new it0(17)), LazyKt.a(lazyThreadSafetyMode, new it0(18)), null, LazyKt.a(lazyThreadSafetyMode, new it0(19))};
    }

    public /* synthetic */ SectionPromiseDto(int i2, String str, String str2, String str3, String str4, String str5, List list, List list2, SectionWatchVideoDto sectionWatchVideoDto, List list3, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f45638a = null;
        } else {
            this.f45638a = str;
        }
        if ((i2 & 2) == 0) {
            this.f45639b = null;
        } else {
            this.f45639b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f45640c = null;
        } else {
            this.f45640c = str3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str4;
        }
        if ((i2 & 16) == 0) {
            this.f45641e = null;
        } else {
            this.f45641e = str5;
        }
        if ((i2 & 32) == 0) {
            this.f45642f = null;
        } else {
            this.f45642f = list;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = list2;
        }
        if ((i2 & 128) == 0) {
            this.f45643h = null;
        } else {
            this.f45643h = sectionWatchVideoDto;
        }
        if ((i2 & 256) == 0) {
            this.f45644i = null;
        } else {
            this.f45644i = list3;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SectionPromiseDto)) {
            return false;
        }
        SectionPromiseDto sectionPromiseDto = (SectionPromiseDto) obj;
        return Intrinsics.c(this.f45638a, sectionPromiseDto.f45638a) && Intrinsics.c(this.f45639b, sectionPromiseDto.f45639b) && Intrinsics.c(this.f45640c, sectionPromiseDto.f45640c) && Intrinsics.c(this.d, sectionPromiseDto.d) && Intrinsics.c(this.f45641e, sectionPromiseDto.f45641e) && Intrinsics.c(this.f45642f, sectionPromiseDto.f45642f) && Intrinsics.c(this.g, sectionPromiseDto.g) && Intrinsics.c(this.f45643h, sectionPromiseDto.f45643h) && Intrinsics.c(this.f45644i, sectionPromiseDto.f45644i);
    }

    public final int hashCode() {
        String str = this.f45638a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f45639b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f45640c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f45641e;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        List list = this.f45642f;
        int iHashCode6 = (iHashCode5 + (list == null ? 0 : list.hashCode())) * 31;
        List list2 = this.g;
        int iHashCode7 = (iHashCode6 + (list2 == null ? 0 : list2.hashCode())) * 31;
        SectionWatchVideoDto sectionWatchVideoDto = this.f45643h;
        int iHashCode8 = (iHashCode7 + (sectionWatchVideoDto == null ? 0 : sectionWatchVideoDto.hashCode())) * 31;
        List list3 = this.f45644i;
        return iHashCode8 + (list3 != null ? list3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("SectionPromiseDto(assetMyWatch=", this.f45638a, ", assetProductList=", this.f45639b, ", assetTutorial=");
        cj.C(sbS, this.f45640c, ", assetWatchVideo=", this.d, ", assetWatchface=");
        d21.z(this.f45641e, ", sectionFaq=", ", sectionTutorials=", sbS, this.f45642f);
        sbS.append(this.g);
        sbS.append(", sectionWatchVideo=");
        sbS.append(this.f45643h);
        sbS.append(", sectionWatchfaces=");
        return a.o(sbS, this.f45644i, ")");
    }

    public SectionPromiseDto() {
        this((String) null, (String) null, (String) null, (String) null, (String) null, (List) null, (List) null, (SectionWatchVideoDto) null, (List) null, 511, (DefaultConstructorMarker) null);
    }

    public SectionPromiseDto(String str, String str2, String str3, String str4, String str5, List<SectionFaqDto> list, List<SectionTutorialsDto> list2, SectionWatchVideoDto sectionWatchVideoDto, List<SectionWatchfacesDto> list3) {
        this.f45638a = str;
        this.f45639b = str2;
        this.f45640c = str3;
        this.d = str4;
        this.f45641e = str5;
        this.f45642f = list;
        this.g = list2;
        this.f45643h = sectionWatchVideoDto;
        this.f45644i = list3;
    }

    public /* synthetic */ SectionPromiseDto(String str, String str2, String str3, String str4, String str5, List list, List list2, SectionWatchVideoDto sectionWatchVideoDto, List list3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : str4, (i2 & 16) != 0 ? null : str5, (i2 & 32) != 0 ? null : list, (i2 & 64) != 0 ? null : list2, (i2 & 128) != 0 ? null : sectionWatchVideoDto, (i2 & 256) != 0 ? null : list3);
    }
}
