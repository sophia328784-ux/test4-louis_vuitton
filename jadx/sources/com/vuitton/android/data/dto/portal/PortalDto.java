package com.vuitton.android.data.dto.portal;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import com.vuitton.android.data.dto.common.SoundDto;
import defpackage.fc;
import defpackage.n00;
import defpackage.ul0;
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
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00142\u00020\u0001:\u0002\u0015\u0014BI\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\r\u0010\u000eB]\b\u0010\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\r\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/vuitton/android/data/dto/portal/PortalDto;", "", "", ConfigurationName.KEY, "surtitle", "title", "Lcom/vuitton/android/data/dto/common/AssetDto;", "asset", "", "Lcom/vuitton/android/data/dto/portal/SlideDto;", "slides", "Lcom/vuitton/android/data/dto/common/SoundDto;", "sound", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/util/List;Lcom/vuitton/android/data/dto/common/SoundDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/util/List;Lcom/vuitton/android/data/dto/common/SoundDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class PortalDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] g = {null, null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new ul0(23)), null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46403a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46404b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f46405c;
    public final AssetDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f46406e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SoundDto f46407f;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/portal/PortalDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/portal/PortalDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<PortalDto> serializer() {
            return PortalDto$$serializer.f46408a;
        }
    }

    public /* synthetic */ PortalDto(int i2, String str, String str2, String str3, AssetDto assetDto, List list, SoundDto soundDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (25 != (i2 & 25)) {
            PluginExceptionsKt.b(i2, 25, PortalDto$$serializer.f46408a.a());
            throw null;
        }
        this.f46403a = str;
        if ((i2 & 2) == 0) {
            this.f46404b = null;
        } else {
            this.f46404b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f46405c = null;
        } else {
            this.f46405c = str3;
        }
        this.d = assetDto;
        this.f46406e = list;
        if ((i2 & 32) == 0) {
            this.f46407f = null;
        } else {
            this.f46407f = soundDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PortalDto)) {
            return false;
        }
        PortalDto portalDto = (PortalDto) obj;
        return Intrinsics.c(this.f46403a, portalDto.f46403a) && Intrinsics.c(this.f46404b, portalDto.f46404b) && Intrinsics.c(this.f46405c, portalDto.f46405c) && Intrinsics.c(this.d, portalDto.d) && Intrinsics.c(this.f46406e, portalDto.f46406e) && Intrinsics.c(this.f46407f, portalDto.f46407f);
    }

    public final int hashCode() {
        int iHashCode = this.f46403a.hashCode() * 31;
        String str = this.f46404b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f46405c;
        int iA = n00.a((this.d.hashCode() + ((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31)) * 31, 31, this.f46406e);
        SoundDto soundDto = this.f46407f;
        return iA + (soundDto != null ? soundDto.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("PortalDto(key=", this.f46403a, ", surtitle=", this.f46404b, ", title=");
        sbS.append(this.f46405c);
        sbS.append(", asset=");
        sbS.append(this.d);
        sbS.append(", slides=");
        sbS.append(this.f46406e);
        sbS.append(", sound=");
        sbS.append(this.f46407f);
        sbS.append(")");
        return sbS.toString();
    }

    public PortalDto(String str, String str2, String str3, AssetDto assetDto, List<? extends SlideDto> list, SoundDto soundDto) {
        str.getClass();
        assetDto.getClass();
        list.getClass();
        this.f46403a = str;
        this.f46404b = str2;
        this.f46405c = str3;
        this.d = assetDto;
        this.f46406e = list;
        this.f46407f = soundDto;
    }

    public /* synthetic */ PortalDto(String str, String str2, String str3, AssetDto assetDto, List list, SoundDto soundDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, assetDto, list, (i2 & 32) != 0 ? null : soundDto);
    }
}
