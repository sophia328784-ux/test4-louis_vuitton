package com.vuitton.android.data.dto.personalselections;

import com.appsflyer.sdk_base.referrer.Payload;
import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sightcall.universal.agent.Product;
import com.vuitton.android.data.dto.common.editorial.EditorialSectionDto;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.ul0;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u001a2\u00020\u0001:\u0002\u001b\u001aBo\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\f\u0012\u000e\b\u0002\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\f¢\u0006\u0004\b\u0013\u0010\u0014B\u0091\u0001\b\u0010\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f\u0012\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\f\u0012\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\f\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\b\u0013\u0010\u0019¨\u0006\u001c"}, d2 = {"Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsDetailDto;", "", "", b.a.f24015b, "title", "Lcom/vuitton/android/data/dto/personalselections/SelectionTypeDto;", "selectionType", "creationDate", "clientAdvisorText", "shareURL", "Lcom/vuitton/android/data/dto/personalselections/SelectionStoreDto;", Payload.TYPE_STORE, "", "Lcom/vuitton/android/data/dto/personalselections/SelectionAssetDto;", "assets", "Lcom/vuitton/android/data/dto/personalselections/SelectionProductDto;", Product.TYPE, "Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDto;", "sections", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/personalselections/SelectionTypeDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/personalselections/SelectionStoreDto;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/personalselections/SelectionTypeDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/personalselections/SelectionStoreDto;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class PersonalSelectionsDetailDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Lazy[] f46310k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46311a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46312b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SelectionTypeDto f46313c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f46314e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f46315f;
    public final SelectionStoreDto g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List f46316h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f46317i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f46318j;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsDetailDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsDetailDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<PersonalSelectionsDetailDto> serializer() {
            return PersonalSelectionsDetailDto$$serializer.f46319a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        f46310k = new Lazy[]{null, null, LazyKt.a(lazyThreadSafetyMode, new ul0(11)), null, null, null, null, LazyKt.a(lazyThreadSafetyMode, new ul0(12)), LazyKt.a(lazyThreadSafetyMode, new ul0(13)), LazyKt.a(lazyThreadSafetyMode, new ul0(14))};
    }

    public PersonalSelectionsDetailDto(int i2, String str, String str2, SelectionTypeDto selectionTypeDto, String str3, String str4, String str5, SelectionStoreDto selectionStoreDto, List list, List list2, List list3, SerializationConstructorMarker serializationConstructorMarker) {
        if (509 != (i2 & 509)) {
            PluginExceptionsKt.b(i2, 509, PersonalSelectionsDetailDto$$serializer.f46319a.getF19838b());
            throw null;
        }
        this.f46311a = str;
        if ((i2 & 2) == 0) {
            this.f46312b = null;
        } else {
            this.f46312b = str2;
        }
        this.f46313c = selectionTypeDto;
        this.d = str3;
        this.f46314e = str4;
        this.f46315f = str5;
        this.g = selectionStoreDto;
        this.f46316h = list;
        this.f46317i = list2;
        if ((i2 & 512) == 0) {
            this.f46318j = EmptyList.f71768b;
        } else {
            this.f46318j = list3;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PersonalSelectionsDetailDto)) {
            return false;
        }
        PersonalSelectionsDetailDto personalSelectionsDetailDto = (PersonalSelectionsDetailDto) obj;
        return Intrinsics.c(this.f46311a, personalSelectionsDetailDto.f46311a) && Intrinsics.c(this.f46312b, personalSelectionsDetailDto.f46312b) && this.f46313c == personalSelectionsDetailDto.f46313c && Intrinsics.c(this.d, personalSelectionsDetailDto.d) && Intrinsics.c(this.f46314e, personalSelectionsDetailDto.f46314e) && Intrinsics.c(this.f46315f, personalSelectionsDetailDto.f46315f) && Intrinsics.c(this.g, personalSelectionsDetailDto.g) && Intrinsics.c(this.f46316h, personalSelectionsDetailDto.f46316h) && Intrinsics.c(this.f46317i, personalSelectionsDetailDto.f46317i) && Intrinsics.c(this.f46318j, personalSelectionsDetailDto.f46318j);
    }

    public final int hashCode() {
        int iHashCode = this.f46311a.hashCode() * 31;
        String str = this.f46312b;
        return this.f46318j.hashCode() + n00.a(n00.a((this.g.hashCode() + fc.b(fc.b(fc.b((this.f46313c.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31, 31, this.d), 31, this.f46314e), 31, this.f46315f)) * 31, 31, this.f46316h), 31, this.f46317i);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("PersonalSelectionsDetailDto(id=", this.f46311a, ", title=", this.f46312b, ", selectionType=");
        sbS.append(this.f46313c);
        sbS.append(", creationDate=");
        sbS.append(this.d);
        sbS.append(", clientAdvisorText=");
        cj.C(sbS, this.f46314e, ", shareURL=", this.f46315f, ", store=");
        sbS.append(this.g);
        sbS.append(", assets=");
        sbS.append(this.f46316h);
        sbS.append(", products=");
        sbS.append(this.f46317i);
        sbS.append(", sections=");
        sbS.append(this.f46318j);
        sbS.append(")");
        return sbS.toString();
    }

    public PersonalSelectionsDetailDto(String str, String str2, SelectionTypeDto selectionTypeDto, String str3, String str4, String str5, SelectionStoreDto selectionStoreDto, List<SelectionAssetDto> list, List<SelectionProductDto> list2, List<EditorialSectionDto> list3) {
        str.getClass();
        selectionTypeDto.getClass();
        str3.getClass();
        str4.getClass();
        str5.getClass();
        selectionStoreDto.getClass();
        list.getClass();
        list2.getClass();
        list3.getClass();
        this.f46311a = str;
        this.f46312b = str2;
        this.f46313c = selectionTypeDto;
        this.d = str3;
        this.f46314e = str4;
        this.f46315f = str5;
        this.g = selectionStoreDto;
        this.f46316h = list;
        this.f46317i = list2;
        this.f46318j = list3;
    }

    public PersonalSelectionsDetailDto(String str, String str2, SelectionTypeDto selectionTypeDto, String str3, String str4, String str5, SelectionStoreDto selectionStoreDto, List list, List list2, List list3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : str2, selectionTypeDto, str3, str4, str5, selectionStoreDto, list, list2, (i2 & 512) != 0 ? EmptyList.f71768b : list3);
    }
}
