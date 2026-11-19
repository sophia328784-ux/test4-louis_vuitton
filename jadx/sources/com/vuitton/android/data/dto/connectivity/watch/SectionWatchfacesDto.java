package com.vuitton.android.data.dto.connectivity.watch;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.connectivity.watchface.ContentDto;
import defpackage.cj;
import defpackage.it0;
import java.util.ArrayList;
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
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012BO\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0016\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\t0\bj\b\u0012\u0004\u0012\u00020\t`\n¢\u0006\u0004\b\f\u0010\rBS\b\u0010\u0012\u0006\u0010\u000e\u001a\u00020\t\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\f\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchfacesDto;", "", "", "assetIcon", "Lcom/vuitton/android/data/dto/connectivity/watchface/ContentDto;", "content", "identifier", "title", "Ljava/util/ArrayList;", "", "Lkotlin/collections/ArrayList;", "versions", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/connectivity/watchface/ContentDto;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/android/data/dto/connectivity/watchface/ContentDto;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class SectionWatchfacesDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Lazy[] f45649f = {null, null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new it0(24))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45650a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ContentDto f45651b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45652c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f45653e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchfacesDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchfacesDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<SectionWatchfacesDto> serializer() {
            return SectionWatchfacesDto$$serializer.f45654a;
        }
    }

    public /* synthetic */ SectionWatchfacesDto(int i2, String str, ContentDto contentDto, String str2, String str3, ArrayList arrayList, SerializationConstructorMarker serializationConstructorMarker) {
        if (16 != (i2 & 16)) {
            PluginExceptionsKt.b(i2, 16, SectionWatchfacesDto$$serializer.f45654a.getF19838b());
            throw null;
        }
        if ((i2 & 1) == 0) {
            this.f45650a = null;
        } else {
            this.f45650a = str;
        }
        if ((i2 & 2) == 0) {
            this.f45651b = null;
        } else {
            this.f45651b = contentDto;
        }
        if ((i2 & 4) == 0) {
            this.f45652c = null;
        } else {
            this.f45652c = str2;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str3;
        }
        this.f45653e = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SectionWatchfacesDto)) {
            return false;
        }
        SectionWatchfacesDto sectionWatchfacesDto = (SectionWatchfacesDto) obj;
        return Intrinsics.c(this.f45650a, sectionWatchfacesDto.f45650a) && Intrinsics.c(this.f45651b, sectionWatchfacesDto.f45651b) && Intrinsics.c(this.f45652c, sectionWatchfacesDto.f45652c) && Intrinsics.c(this.d, sectionWatchfacesDto.d) && Intrinsics.c(this.f45653e, sectionWatchfacesDto.f45653e);
    }

    public final int hashCode() {
        String str = this.f45650a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        ContentDto contentDto = this.f45651b;
        int iHashCode2 = (iHashCode + (contentDto == null ? 0 : contentDto.hashCode())) * 31;
        String str2 = this.f45652c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.d;
        return this.f45653e.hashCode() + ((iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SectionWatchfacesDto(assetIcon=");
        sb.append(this.f45650a);
        sb.append(", content=");
        sb.append(this.f45651b);
        sb.append(", identifier=");
        cj.C(sb, this.f45652c, ", title=", this.d, ", versions=");
        sb.append(this.f45653e);
        sb.append(")");
        return sb.toString();
    }

    public SectionWatchfacesDto(String str, ContentDto contentDto, String str2, String str3, ArrayList<Integer> arrayList) {
        arrayList.getClass();
        this.f45650a = str;
        this.f45651b = contentDto;
        this.f45652c = str2;
        this.d = str3;
        this.f45653e = arrayList;
    }

    public /* synthetic */ SectionWatchfacesDto(String str, ContentDto contentDto, String str2, String str3, ArrayList arrayList, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : contentDto, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? null : str3, arrayList);
    }
}
