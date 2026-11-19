package com.vuitton.android.data.dto.connectivity.sync;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.oo;
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
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00112\u00020\u0001:\u0002\u0012\u0011B=\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bBI\b\u0010\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\n\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/data/dto/connectivity/sync/ConnectedObjectsConfigDto;", "", "", "", "assets", "Lcom/vuitton/android/data/dto/connectivity/sync/SectionHomeDto;", "sectionHome", "version", "", "configRevision", "<init>", "(Ljava/util/List;Lcom/vuitton/android/data/dto/connectivity/sync/SectionHomeDto;Ljava/lang/String;Ljava/lang/Long;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Lcom/vuitton/android/data/dto/connectivity/sync/SectionHomeDto;Ljava/lang/String;Ljava/lang/Long;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ConnectedObjectsConfigDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Lazy[] f45595e = {LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new oo(29)), null, null, null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f45596a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SectionHomeDto f45597b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45598c;
    public final Long d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/connectivity/sync/ConnectedObjectsConfigDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/connectivity/sync/ConnectedObjectsConfigDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ConnectedObjectsConfigDto> serializer() {
            return ConnectedObjectsConfigDto$$serializer.f45599a;
        }
    }

    public /* synthetic */ ConnectedObjectsConfigDto(int i2, List list, SectionHomeDto sectionHomeDto, String str, Long l, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f45596a = null;
        } else {
            this.f45596a = list;
        }
        if ((i2 & 2) == 0) {
            this.f45597b = null;
        } else {
            this.f45597b = sectionHomeDto;
        }
        if ((i2 & 4) == 0) {
            this.f45598c = null;
        } else {
            this.f45598c = str;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = l;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConnectedObjectsConfigDto)) {
            return false;
        }
        ConnectedObjectsConfigDto connectedObjectsConfigDto = (ConnectedObjectsConfigDto) obj;
        return Intrinsics.c(this.f45596a, connectedObjectsConfigDto.f45596a) && Intrinsics.c(this.f45597b, connectedObjectsConfigDto.f45597b) && Intrinsics.c(this.f45598c, connectedObjectsConfigDto.f45598c) && Intrinsics.c(this.d, connectedObjectsConfigDto.d);
    }

    public final int hashCode() {
        List list = this.f45596a;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        SectionHomeDto sectionHomeDto = this.f45597b;
        int iHashCode2 = (iHashCode + (sectionHomeDto == null ? 0 : sectionHomeDto.hashCode())) * 31;
        String str = this.f45598c;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        Long l = this.d;
        return iHashCode3 + (l != null ? l.hashCode() : 0);
    }

    public final String toString() {
        return "ConnectedObjectsConfigDto(assets=" + this.f45596a + ", sectionHome=" + this.f45597b + ", version=" + this.f45598c + ", configRevision=" + this.d + ")";
    }

    public ConnectedObjectsConfigDto() {
        this((List) null, (SectionHomeDto) null, (String) null, (Long) null, 15, (DefaultConstructorMarker) null);
    }

    public ConnectedObjectsConfigDto(List<String> list, SectionHomeDto sectionHomeDto, String str, Long l) {
        this.f45596a = list;
        this.f45597b = sectionHomeDto;
        this.f45598c = str;
        this.d = l;
    }

    public /* synthetic */ ConnectedObjectsConfigDto(List list, SectionHomeDto sectionHomeDto, String str, Long l, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : list, (i2 & 2) != 0 ? null : sectionHomeDto, (i2 & 4) != 0 ? null : str, (i2 & 8) != 0 ? null : l);
    }
}
