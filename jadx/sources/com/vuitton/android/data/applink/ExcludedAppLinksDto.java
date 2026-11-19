package com.vuitton.android.data.applink;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.ew;
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
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u001f\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0006\u0010\u0007B5\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/applink/ExcludedAppLinksDto;", "", "", "", "excludedLinks", "lastUpload", "<init>", "(Ljava/util/List;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ExcludedAppLinksDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Lazy[] f43555c = {LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new ew(17)), null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f43556a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f43557b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/applink/ExcludedAppLinksDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/applink/ExcludedAppLinksDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ExcludedAppLinksDto> serializer() {
            return ExcludedAppLinksDto$$serializer.f43558a;
        }
    }

    public /* synthetic */ ExcludedAppLinksDto(int i2, List list, String str, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, ExcludedAppLinksDto$$serializer.f43558a.a());
            throw null;
        }
        this.f43556a = list;
        this.f43557b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ExcludedAppLinksDto)) {
            return false;
        }
        ExcludedAppLinksDto excludedAppLinksDto = (ExcludedAppLinksDto) obj;
        return Intrinsics.c(this.f43556a, excludedAppLinksDto.f43556a) && Intrinsics.c(this.f43557b, excludedAppLinksDto.f43557b);
    }

    public final int hashCode() {
        int iHashCode = this.f43556a.hashCode() * 31;
        String str = this.f43557b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "ExcludedAppLinksDto(excludedLinks=" + this.f43556a + ", lastUpload=" + this.f43557b + ")";
    }

    public ExcludedAppLinksDto(List<String> list, String str) {
        list.getClass();
        this.f43556a = list;
        this.f43557b = str;
    }
}
