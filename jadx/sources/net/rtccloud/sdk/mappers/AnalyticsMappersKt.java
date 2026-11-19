package net.rtccloud.sdk.mappers;

import com.sightcall.analytics.AnalyticsChunk;
import defpackage.v40;
import java.nio.ByteBuffer;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.RtccAnalyticsChunk;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u001a\f\u0010\u0005\u001a\u00020\u0006*\u00020\u0007H\u0002\u001a\f\u0010\b\u001a\u00020\t*\u00020\nH\u0002¨\u0006\u000b"}, d2 = {"toAnalyticsChunk", "Lcom/sightcall/analytics/AnalyticsChunk;", "Lnet/rtccloud/sdk/RtccAnalyticsChunk;", "uuid", "Ljava/util/UUID;", "toByteArray", "", "Ljava/nio/ByteBuffer;", "toParam", "Lcom/sightcall/analytics/AnalyticsChunk$Param;", "Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;", "rtcc_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class AnalyticsMappersKt {
    public static final AnalyticsChunk toAnalyticsChunk(RtccAnalyticsChunk rtccAnalyticsChunk, UUID uuid) {
        rtccAnalyticsChunk.getClass();
        uuid.getClass();
        return new AnalyticsChunk(toByteArray(rtccAnalyticsChunk.getChunk()), uuid, toParam(rtccAnalyticsChunk.getParam()), rtccAnalyticsChunk.getEmissionDate());
    }

    private static final byte[] toByteArray(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[byteBuffer.remaining()];
        byteBuffer.get(bArr);
        return bArr;
    }

    private static final AnalyticsChunk.Param toParam(RtccAnalyticsChunk.Param param) {
        if (Intrinsics.c(param, RtccAnalyticsChunk.Param.Startup.INSTANCE)) {
            return AnalyticsChunk.Param.Startup.INSTANCE;
        }
        if (Intrinsics.c(param, RtccAnalyticsChunk.Param.Call.INSTANCE)) {
            return AnalyticsChunk.Param.Call.INSTANCE;
        }
        v40.g();
        return null;
    }
}
