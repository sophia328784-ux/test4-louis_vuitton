package com.vuitton.android.data.dto.config.cache;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.a;
import defpackage.b51;
import defpackage.fc;
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
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bB?\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/dto/config/cache/VirtualStudioConfigCache;", "", "", "assetUrl", "reasonId", "", "storeCodeList", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class VirtualStudioConfigCache {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] d = {null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new b51(15))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45542a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45543b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f45544c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/config/cache/VirtualStudioConfigCache$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/config/cache/VirtualStudioConfigCache;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<VirtualStudioConfigCache> serializer() {
            return VirtualStudioConfigCache$$serializer.f45545a;
        }
    }

    public /* synthetic */ VirtualStudioConfigCache(int i2, String str, String str2, List list, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, VirtualStudioConfigCache$$serializer.f45545a.getF19838b());
            throw null;
        }
        this.f45542a = str;
        this.f45543b = str2;
        this.f45544c = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VirtualStudioConfigCache)) {
            return false;
        }
        VirtualStudioConfigCache virtualStudioConfigCache = (VirtualStudioConfigCache) obj;
        return Intrinsics.c(this.f45542a, virtualStudioConfigCache.f45542a) && Intrinsics.c(this.f45543b, virtualStudioConfigCache.f45543b) && Intrinsics.c(this.f45544c, virtualStudioConfigCache.f45544c);
    }

    public final int hashCode() {
        return this.f45544c.hashCode() + fc.b(this.f45542a.hashCode() * 31, 31, this.f45543b);
    }

    public final String toString() {
        return a.o(fc.s("VirtualStudioConfigCache(assetUrl=", this.f45542a, ", reasonId=", this.f45543b, ", storeCodeList="), this.f45544c, ")");
    }

    public VirtualStudioConfigCache(String str, String str2, List<String> list) {
        pq0.B(str, str2, list);
        this.f45542a = str;
        this.f45543b = str2;
        this.f45544c = list;
    }
}
