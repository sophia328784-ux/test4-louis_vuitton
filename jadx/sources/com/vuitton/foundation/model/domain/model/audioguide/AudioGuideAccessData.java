package com.vuitton.foundation.model.domain.model.audioguide;

import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.common.FeatureTheme;
import defpackage.cj;
import defpackage.fc;
import defpackage.w9;
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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012B9\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\fBU\b\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u000b\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;", "", "", b.a.f24015b, "", "endAccessTimeStamp", "backgroundColor", "Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;", "theme", "title", "imageUrl", "<init>", "(Ljava/lang/String;JLjava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;JLjava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class AudioGuideAccessData {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] g = {null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new w9(3)), null, null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66571a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f66572b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66573c;
    public final FeatureTheme d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f66574e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f66575f;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<AudioGuideAccessData> serializer() {
            return AudioGuideAccessData$$serializer.f66576a;
        }
    }

    public /* synthetic */ AudioGuideAccessData(int i2, String str, long j2, String str2, FeatureTheme featureTheme, String str3, String str4, SerializationConstructorMarker serializationConstructorMarker) {
        if (61 != (i2 & 61)) {
            PluginExceptionsKt.b(i2, 61, AudioGuideAccessData$$serializer.f66576a.getF19850b());
            throw null;
        }
        this.f66571a = str;
        if ((i2 & 2) == 0) {
            this.f66572b = 0L;
        } else {
            this.f66572b = j2;
        }
        this.f66573c = str2;
        this.d = featureTheme;
        this.f66574e = str3;
        this.f66575f = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AudioGuideAccessData)) {
            return false;
        }
        AudioGuideAccessData audioGuideAccessData = (AudioGuideAccessData) obj;
        return Intrinsics.c(this.f66571a, audioGuideAccessData.f66571a) && this.f66572b == audioGuideAccessData.f66572b && Intrinsics.c(this.f66573c, audioGuideAccessData.f66573c) && this.d == audioGuideAccessData.d && Intrinsics.c(this.f66574e, audioGuideAccessData.f66574e) && Intrinsics.c(this.f66575f, audioGuideAccessData.f66575f);
    }

    public final int hashCode() {
        return this.f66575f.hashCode() + fc.b((this.d.hashCode() + fc.b(fc.a(this.f66571a.hashCode() * 31, 31, this.f66572b), 31, this.f66573c)) * 31, 31, this.f66574e);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AudioGuideAccessData(id=");
        sb.append(this.f66571a);
        sb.append(", endAccessTimeStamp=");
        sb.append(this.f66572b);
        sb.append(", backgroundColor=");
        sb.append(this.f66573c);
        sb.append(", theme=");
        sb.append(this.d);
        cj.C(sb, ", title=", this.f66574e, ", imageUrl=", this.f66575f);
        sb.append(")");
        return sb.toString();
    }

    public AudioGuideAccessData(String str, long j2, String str2, FeatureTheme featureTheme, String str3, String str4) {
        str.getClass();
        str2.getClass();
        featureTheme.getClass();
        str3.getClass();
        str4.getClass();
        this.f66571a = str;
        this.f66572b = j2;
        this.f66573c = str2;
        this.d = featureTheme;
        this.f66574e = str3;
        this.f66575f = str4;
    }

    public /* synthetic */ AudioGuideAccessData(String str, long j2, String str2, FeatureTheme featureTheme, String str3, String str4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? 0L : j2, str2, featureTheme, str3, str4);
    }
}
