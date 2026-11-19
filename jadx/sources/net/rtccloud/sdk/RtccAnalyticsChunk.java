package net.rtccloud.sdk;

import java.nio.ByteBuffer;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u001bB\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0007HÆ\u0003J'\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0014\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0017\u001a\u00020\u0018HÖ\u0081\u0004J\n\u0010\u0019\u001a\u00020\u001aHÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001c"}, d2 = {"Lnet/rtccloud/sdk/RtccAnalyticsChunk;", "", "chunk", "Ljava/nio/ByteBuffer;", "param", "Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;", "emissionDate", "Ljava/util/Date;", "<init>", "(Ljava/nio/ByteBuffer;Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;Ljava/util/Date;)V", "getChunk", "()Ljava/nio/ByteBuffer;", "getParam", "()Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;", "getEmissionDate", "()Ljava/util/Date;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Param", "rtcc_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class RtccAnalyticsChunk {
    private final ByteBuffer chunk;
    private final Date emissionDate;
    private final Param param;

    public RtccAnalyticsChunk(ByteBuffer byteBuffer, Param param, Date date) {
        byteBuffer.getClass();
        param.getClass();
        date.getClass();
        this.chunk = byteBuffer;
        this.param = param;
        this.emissionDate = date;
    }

    public static /* synthetic */ RtccAnalyticsChunk copy$default(RtccAnalyticsChunk rtccAnalyticsChunk, ByteBuffer byteBuffer, Param param, Date date, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            byteBuffer = rtccAnalyticsChunk.chunk;
        }
        if ((i2 & 2) != 0) {
            param = rtccAnalyticsChunk.param;
        }
        if ((i2 & 4) != 0) {
            date = rtccAnalyticsChunk.emissionDate;
        }
        return rtccAnalyticsChunk.copy(byteBuffer, param, date);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final ByteBuffer getChunk() {
        return this.chunk;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Param getParam() {
        return this.param;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Date getEmissionDate() {
        return this.emissionDate;
    }

    public final RtccAnalyticsChunk copy(ByteBuffer chunk, Param param, Date emissionDate) {
        chunk.getClass();
        param.getClass();
        emissionDate.getClass();
        return new RtccAnalyticsChunk(chunk, param, emissionDate);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RtccAnalyticsChunk)) {
            return false;
        }
        RtccAnalyticsChunk rtccAnalyticsChunk = (RtccAnalyticsChunk) other;
        return Intrinsics.c(this.chunk, rtccAnalyticsChunk.chunk) && Intrinsics.c(this.param, rtccAnalyticsChunk.param) && Intrinsics.c(this.emissionDate, rtccAnalyticsChunk.emissionDate);
    }

    public final ByteBuffer getChunk() {
        return this.chunk;
    }

    public final Date getEmissionDate() {
        return this.emissionDate;
    }

    public final Param getParam() {
        return this.param;
    }

    public int hashCode() {
        return this.emissionDate.hashCode() + ((this.param.hashCode() + (this.chunk.hashCode() * 31)) * 31);
    }

    public String toString() {
        return "RtccAnalyticsChunk(chunk=" + this.chunk + ", param=" + this.param + ", emissionDate=" + this.emissionDate + ")";
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, d2 = {"Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;", "", "<init>", "()V", "Startup", "Call", "Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param$Call;", "Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param$Startup;", "rtcc_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class Param {

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param$Call;", "Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;", "<init>", "()V", "rtcc_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Call extends Param {
            public static final Call INSTANCE = new Call();

            private Call() {
                super(null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param$Startup;", "Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;", "<init>", "()V", "rtcc_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Startup extends Param {
            public static final Startup INSTANCE = new Startup();

            private Startup() {
                super(null);
            }
        }

        public /* synthetic */ Param(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Param() {
        }
    }
}
