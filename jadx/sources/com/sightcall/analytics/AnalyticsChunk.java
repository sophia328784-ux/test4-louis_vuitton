package com.sightcall.analytics;

import java.util.Date;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\u00020\u0001:\u0001\u0014B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcom/sightcall/analytics/AnalyticsChunk;", "", "chunk", "", "uuid", "Ljava/util/UUID;", "param", "Lcom/sightcall/analytics/AnalyticsChunk$Param;", "emissionDate", "Ljava/util/Date;", "<init>", "([BLjava/util/UUID;Lcom/sightcall/analytics/AnalyticsChunk$Param;Ljava/util/Date;)V", "getChunk", "()[B", "getUuid", "()Ljava/util/UUID;", "getParam", "()Lcom/sightcall/analytics/AnalyticsChunk$Param;", "getEmissionDate", "()Ljava/util/Date;", "Param", "analytics_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AnalyticsChunk {
    private final byte[] chunk;
    private final Date emissionDate;
    private final Param param;
    private final UUID uuid;

    public AnalyticsChunk(byte[] bArr, UUID uuid, Param param, Date date) {
        bArr.getClass();
        uuid.getClass();
        param.getClass();
        date.getClass();
        this.chunk = bArr;
        this.uuid = uuid;
        this.param = param;
        this.emissionDate = date;
    }

    public final byte[] getChunk() {
        return this.chunk;
    }

    public final Date getEmissionDate() {
        return this.emissionDate;
    }

    public final Param getParam() {
        return this.param;
    }

    public final UUID getUuid() {
        return this.uuid;
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/sightcall/analytics/AnalyticsChunk$Param;", "", "<init>", "()V", "Startup", "Call", "Lcom/sightcall/analytics/AnalyticsChunk$Param$Call;", "Lcom/sightcall/analytics/AnalyticsChunk$Param$Startup;", "analytics_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class Param {

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/analytics/AnalyticsChunk$Param$Call;", "Lcom/sightcall/analytics/AnalyticsChunk$Param;", "<init>", "()V", "analytics_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Call extends Param {
            public static final Call INSTANCE = new Call();

            private Call() {
                super(null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/analytics/AnalyticsChunk$Param$Startup;", "Lcom/sightcall/analytics/AnalyticsChunk$Param;", "<init>", "()V", "analytics_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
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
