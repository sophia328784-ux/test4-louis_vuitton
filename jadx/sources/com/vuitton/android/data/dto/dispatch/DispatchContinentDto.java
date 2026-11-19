package com.vuitton.android.data.dto.dispatch;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import defpackage.iq;
import defpackage.o60;
import defpackage.tr;
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
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B5\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007¢\u0006\u0004\b\n\u0010\u000bBE\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\n\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/dispatch/DispatchContinentDto;", "", "", b.a.f24015b, "order", "", "name", "", "Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;", "locationList", "<init>", "(IILjava/lang/String;Ljava/util/List;)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(IIILjava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class DispatchContinentDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Lazy[] f45683e = {null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new iq(29))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f45684a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f45685b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45686c;
    public final List d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/dispatch/DispatchContinentDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/dispatch/DispatchContinentDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<DispatchContinentDto> serializer() {
            return DispatchContinentDto$$serializer.f45687a;
        }
    }

    public /* synthetic */ DispatchContinentDto(int i2, int i3, int i4, String str, List list, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, DispatchContinentDto$$serializer.f45687a.a());
            throw null;
        }
        this.f45684a = i3;
        this.f45685b = i4;
        if ((i2 & 4) == 0) {
            this.f45686c = null;
        } else {
            this.f45686c = str;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = list;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DispatchContinentDto)) {
            return false;
        }
        DispatchContinentDto dispatchContinentDto = (DispatchContinentDto) obj;
        return this.f45684a == dispatchContinentDto.f45684a && this.f45685b == dispatchContinentDto.f45685b && Intrinsics.c(this.f45686c, dispatchContinentDto.f45686c) && Intrinsics.c(this.d, dispatchContinentDto.d);
    }

    public final int hashCode() {
        int iB = tr.b(this.f45685b, Integer.hashCode(this.f45684a) * 31, 31);
        String str = this.f45686c;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        List list = this.d;
        return iHashCode + (list != null ? list.hashCode() : 0);
    }

    public final String toString() {
        return o60.o(this.f45686c, ", locationList=", ")", fc.p(this.f45684a, this.f45685b, "DispatchContinentDto(id=", ", order=", ", name="), this.d);
    }

    public DispatchContinentDto(int i2, int i3, String str, List<InAppDispatchDto> list) {
        this.f45684a = i2;
        this.f45685b = i3;
        this.f45686c = str;
        this.d = list;
    }

    public /* synthetic */ DispatchContinentDto(int i2, int i3, String str, List list, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, i3, (i4 & 4) != 0 ? null : str, (i4 & 8) != 0 ? null : list);
    }
}
