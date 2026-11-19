package com.vuitton.android.data.dto.audioguide;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.editorial.EditorialSectionDto;
import defpackage.a;
import defpackage.d21;
import defpackage.fc;
import defpackage.l31;
import defpackage.n00;
import defpackage.pq0;
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
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u0000 \u00122\u00020\u0001:\u0003\u0013\u0014\u0012B;\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u0006¢\u0006\u0004\b\u000b\u0010\fBY\b\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0006\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u000b\u0010\u0011¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto;", "", "", b.a.f24015b, "title", "label", "", "Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDto;", "sections", "Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto;", "transcript", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "CueDto", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class TrackDetailDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Lazy[] f44525f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44526a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44527b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44528c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f44529e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<TrackDetailDto> serializer() {
            return TrackDetailDto$$serializer.f44530a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        f44525f = new Lazy[]{null, null, null, LazyKt.a(lazyThreadSafetyMode, new l31(14)), LazyKt.a(lazyThreadSafetyMode, new l31(15))};
    }

    public /* synthetic */ TrackDetailDto(int i2, String str, String str2, String str3, List list, List list2, SerializationConstructorMarker serializationConstructorMarker) {
        if (31 != (i2 & 31)) {
            PluginExceptionsKt.b(i2, 31, TrackDetailDto$$serializer.f44530a.getF19850b());
            throw null;
        }
        this.f44526a = str;
        this.f44527b = str2;
        this.f44528c = str3;
        this.d = list;
        this.f44529e = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TrackDetailDto)) {
            return false;
        }
        TrackDetailDto trackDetailDto = (TrackDetailDto) obj;
        return Intrinsics.c(this.f44526a, trackDetailDto.f44526a) && Intrinsics.c(this.f44527b, trackDetailDto.f44527b) && Intrinsics.c(this.f44528c, trackDetailDto.f44528c) && Intrinsics.c(this.d, trackDetailDto.d) && Intrinsics.c(this.f44529e, trackDetailDto.f44529e);
    }

    public final int hashCode() {
        return this.f44529e.hashCode() + n00.a(fc.b(fc.b(this.f44526a.hashCode() * 31, 31, this.f44527b), 31, this.f44528c), 31, this.d);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("TrackDetailDto(id=", this.f44526a, ", title=", this.f44527b, ", label=");
        d21.z(this.f44528c, ", sections=", ", transcript=", sbS, this.d);
        return a.o(sbS, this.f44529e, ")");
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bB5\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto;", "", "", "startMs", "endMs", "", "text", "<init>", "(JJLjava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(IJJLjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class CueDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f44531a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f44532b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f44533c;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<CueDto> serializer() {
                return TrackDetailDto$CueDto$$serializer.f44534a;
            }
        }

        public /* synthetic */ CueDto(int i2, long j2, long j3, String str, SerializationConstructorMarker serializationConstructorMarker) {
            if (7 != (i2 & 7)) {
                PluginExceptionsKt.b(i2, 7, TrackDetailDto$CueDto$$serializer.f44534a.getF19850b());
                throw null;
            }
            this.f44531a = j2;
            this.f44532b = j3;
            this.f44533c = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CueDto)) {
                return false;
            }
            CueDto cueDto = (CueDto) obj;
            return this.f44531a == cueDto.f44531a && this.f44532b == cueDto.f44532b && Intrinsics.c(this.f44533c, cueDto.f44533c);
        }

        public final int hashCode() {
            return this.f44533c.hashCode() + fc.a(Long.hashCode(this.f44531a) * 31, 31, this.f44532b);
        }

        public final String toString() {
            StringBuilder sbQ = pq0.q(this.f44531a, "CueDto(startMs=", ", endMs=");
            sbQ.append(this.f44532b);
            sbQ.append(", text=");
            sbQ.append(this.f44533c);
            sbQ.append(")");
            return sbQ.toString();
        }

        public CueDto(long j2, long j3, String str) {
            str.getClass();
            this.f44531a = j2;
            this.f44532b = j3;
            this.f44533c = str;
        }
    }

    public TrackDetailDto(String str, String str2, String str3, List<EditorialSectionDto> list, List<CueDto> list2) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        list.getClass();
        list2.getClass();
        this.f44526a = str;
        this.f44527b = str2;
        this.f44528c = str3;
        this.d = list;
        this.f44529e = list2;
    }
}
