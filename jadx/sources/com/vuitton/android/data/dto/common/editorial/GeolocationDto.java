package com.vuitton.android.data.dto.common.editorial;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.a;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bB3\b\u0010\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0007\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto;", "", "", "latitude", "longitude", "", "radius", "<init>", "(FFI)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(IFFILkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class GeolocationDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f45349a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f45350b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f45351c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<GeolocationDto> serializer() {
            return GeolocationDto$$serializer.f45352a;
        }
    }

    public /* synthetic */ GeolocationDto(int i2, float f2, float f3, int i3, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, GeolocationDto$$serializer.f45352a.getF19850b());
            throw null;
        }
        this.f45349a = f2;
        this.f45350b = f3;
        this.f45351c = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GeolocationDto)) {
            return false;
        }
        GeolocationDto geolocationDto = (GeolocationDto) obj;
        return Float.compare(this.f45349a, geolocationDto.f45349a) == 0 && Float.compare(this.f45350b, geolocationDto.f45350b) == 0 && this.f45351c == geolocationDto.f45351c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f45351c) + pq0.b(Float.hashCode(this.f45349a) * 31, 31, this.f45350b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("GeolocationDto(latitude=");
        sb.append(this.f45349a);
        sb.append(", longitude=");
        sb.append(this.f45350b);
        sb.append(", radius=");
        return a.i(this.f45351c, ")", sb);
    }

    public GeolocationDto(float f2, float f3, int i2) {
        this.f45349a = f2;
        this.f45350b = f3;
        this.f45351c = i2;
    }
}
