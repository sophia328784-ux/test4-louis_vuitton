package com.vuitton.android.data.dto.model3dasset;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.dd0;
import defpackage.fa0;
import defpackage.fc;
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
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB9\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetDto;", "", "Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetTypeDto;", "type", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto;", "name", "<init>", "(Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetTypeDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/model3dasset/Model3dAssetTypeDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class Model3dAssetDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Model3dAssetTypeDto f46103a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46104b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Model3dAssetNameDto f46105c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<Model3dAssetDto> serializer() {
            return Model3dAssetDto$$serializer.f46106a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        d = new Lazy[]{LazyKt.a(lazyThreadSafetyMode, new fa0(29)), null, LazyKt.a(lazyThreadSafetyMode, new dd0(0))};
    }

    public /* synthetic */ Model3dAssetDto(int i2, Model3dAssetTypeDto model3dAssetTypeDto, String str, Model3dAssetNameDto model3dAssetNameDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, Model3dAssetDto$$serializer.f46106a.a());
            throw null;
        }
        this.f46103a = model3dAssetTypeDto;
        this.f46104b = str;
        this.f46105c = model3dAssetNameDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Model3dAssetDto)) {
            return false;
        }
        Model3dAssetDto model3dAssetDto = (Model3dAssetDto) obj;
        return this.f46103a == model3dAssetDto.f46103a && Intrinsics.c(this.f46104b, model3dAssetDto.f46104b) && this.f46105c == model3dAssetDto.f46105c;
    }

    public final int hashCode() {
        return this.f46105c.hashCode() + fc.b(this.f46103a.hashCode() * 31, 31, this.f46104b);
    }

    public final String toString() {
        return "Model3dAssetDto(type=" + this.f46103a + ", url=" + this.f46104b + ", name=" + this.f46105c + ")";
    }

    public Model3dAssetDto(Model3dAssetTypeDto model3dAssetTypeDto, String str, Model3dAssetNameDto model3dAssetNameDto) {
        model3dAssetTypeDto.getClass();
        str.getClass();
        model3dAssetNameDto.getClass();
        this.f46103a = model3dAssetTypeDto;
        this.f46104b = str;
        this.f46105c = model3dAssetNameDto;
    }
}
