package com.vuitton.android.data.dto.config.cache;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.a;
import defpackage.d21;
import defpackage.n00;
import defpackage.v;
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
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB=\b\u0010\u0012\u0006\u0010\n\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\b\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/dto/config/cache/AbTestCache;", "", "", "campaignKey", "", "featureFlagList", "", "percentage", "<init>", "(Ljava/lang/String;Ljava/util/List;I)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/util/List;ILkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class AbTestCache {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] d = {null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new v(10)), null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45459a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f45460b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f45461c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/config/cache/AbTestCache$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/config/cache/AbTestCache;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<AbTestCache> serializer() {
            return AbTestCache$$serializer.f45462a;
        }
    }

    public /* synthetic */ AbTestCache(int i2, String str, List list, int i3, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, AbTestCache$$serializer.f45462a.getF19838b());
            throw null;
        }
        this.f45459a = str;
        this.f45460b = list;
        this.f45461c = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AbTestCache)) {
            return false;
        }
        AbTestCache abTestCache = (AbTestCache) obj;
        return Intrinsics.c(this.f45459a, abTestCache.f45459a) && Intrinsics.c(this.f45460b, abTestCache.f45460b) && this.f45461c == abTestCache.f45461c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f45461c) + n00.a(this.f45459a.hashCode() * 31, 31, this.f45460b);
    }

    public final String toString() {
        return a.i(this.f45461c, ")", d21.t("AbTestCache(campaignKey=", this.f45459a, ", featureFlagList=", this.f45460b, ", percentage="));
    }

    public AbTestCache(String str, List<String> list, int i2) {
        str.getClass();
        list.getClass();
        this.f45459a = str;
        this.f45460b = list;
        this.f45461c = i2;
    }
}
