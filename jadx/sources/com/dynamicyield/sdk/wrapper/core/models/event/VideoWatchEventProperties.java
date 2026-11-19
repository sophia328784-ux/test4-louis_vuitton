package com.dynamicyield.sdk.wrapper.core.models.event;

import com.dynamicyield.sdk.wrapper.core.enums.VideoProgressType;
import defpackage.b51;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.UInt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 \u00142\u00020\u0001:\u0002\u0015\u0014B9\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rB[\b\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\f\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;", "", "itemId", "", "categories", "", "autoplay", "Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;", "progress", "Lkotlin/UInt;", "progressPercent", "<init>", "(Ljava/lang/String;Ljava/util/List;ZLcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "seen0", "dyType", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;Lkotlin/UInt;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final class VideoWatchEventProperties extends PredefinedProperties {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f26380b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f26381c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final VideoProgressType f26382e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f26383f;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<VideoWatchEventProperties> serializer() {
            return VideoWatchEventProperties$$serializer.f26384a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        g = new Lazy[]{null, null, LazyKt.a(lazyThreadSafetyMode, new b51(12)), null, LazyKt.a(lazyThreadSafetyMode, new b51(13)), null};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ VideoWatchEventProperties(int i2, String str, String str2, List list, boolean z, VideoProgressType videoProgressType, UInt uInt, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        super(i2, str, serializationConstructorMarker);
        if (59 != (i2 & 59)) {
            PluginExceptionsKt.b(i2, 59, VideoWatchEventProperties$$serializer.f26384a.getF19838b());
            throw null;
        }
        this.f26380b = str2;
        if ((i2 & 4) == 0) {
            this.f26381c = null;
        } else {
            this.f26381c = list;
        }
        this.d = z;
        this.f26382e = videoProgressType;
        this.f26383f = uInt.f71724b;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoWatchEventProperties(String str, List list, boolean z, VideoProgressType videoProgressType, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        super("video-watch-v1");
        str.getClass();
        videoProgressType.getClass();
        this.f26380b = str;
        this.f26381c = list;
        this.d = z;
        this.f26382e = videoProgressType;
        this.f26383f = i2;
    }

    public /* synthetic */ VideoWatchEventProperties(String str, List list, boolean z, VideoProgressType videoProgressType, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i3 & 2) != 0 ? null : list, z, videoProgressType, i2, null);
    }
}
