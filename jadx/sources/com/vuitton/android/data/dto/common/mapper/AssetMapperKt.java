package com.vuitton.android.data.dto.common.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.common.AssetVideoDto;
import com.vuitton.android.data.dto.common.ScaleDto;
import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.common.AssetVideo;
import com.vuitton.foundation.model.domain.model.common.LiveVideoStatus;
import com.vuitton.foundation.model.domain.model.common.Scale;
import com.vuitton.foundation.model.domain.model.video.VideoId;
import defpackage.v40;
import java.time.Instant;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AssetMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f45363a;

        static {
            int[] iArr = new int[ScaleDto.values().length];
            try {
                iArr[ScaleDto.FIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ScaleDto.FILL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f45363a = iArr;
        }
    }

    public static final Asset a(AssetDto assetDto) throws Throwable {
        assetDto.getClass();
        AssetImageDto assetImageDto = assetDto.f45236a;
        AssetVideo assetVideo = null;
        AssetImage assetImageB = assetImageDto != null ? b(assetImageDto) : null;
        AssetVideoDto assetVideoDto = assetDto.f45237b;
        if (assetVideoDto != null) {
            Object objC = c(assetVideoDto);
            ResultKt.b(objC);
            assetVideo = (AssetVideo) objC;
        }
        return new Asset(assetImageB, assetVideo);
    }

    public static final AssetImage b(AssetImageDto assetImageDto) {
        Scale scale;
        assetImageDto.getClass();
        String str = assetImageDto.f45240a;
        String str2 = assetImageDto.f45241b;
        if (str2 == null) {
            str2 = "";
        }
        String str3 = assetImageDto.f45242c;
        ScaleDto scaleDto = assetImageDto.d;
        Scale scale2 = null;
        if (scaleDto != null) {
            int i2 = WhenMappings.f45363a[scaleDto.ordinal()];
            if (i2 == 1) {
                scale = Scale.FIT;
            } else {
                if (i2 != 2) {
                    v40.g();
                    return null;
                }
                scale = Scale.FILL;
            }
            scale2 = scale;
        }
        return new AssetImage(str2, str, scale2, str3);
    }

    public static final Object c(AssetVideoDto assetVideoDto) throws Throwable {
        Object failure;
        LiveVideoStatus liveVideoStatus;
        assetVideoDto.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            Long l = assetVideoDto.f45248f;
            Instant instantOfEpochSecond = l != null ? Instant.ofEpochSecond(l.longValue()) : null;
            String str = assetVideoDto.f45244a;
            if (str == null) {
                throw new IllegalArgumentException("Required value was null.");
            }
            VideoId.Companion companion2 = VideoId.f68280a;
            Boolean bool = assetVideoDto.f45247e;
            Boolean bool2 = assetVideoDto.g;
            if (instantOfEpochSecond == null || Instant.now().compareTo(instantOfEpochSecond) >= 0) {
                Boolean bool3 = Boolean.TRUE;
                if (Intrinsics.c(bool, bool3)) {
                    liveVideoStatus = Intrinsics.c(bool2, bool3) ? LiveVideoStatus.LIVE_DONE : LiveVideoStatus.LIVE;
                } else {
                    liveVideoStatus = LiveVideoStatus.LIVE_REPLAY;
                }
            } else {
                liveVideoStatus = LiveVideoStatus.LIVE_UPCOMING;
            }
            LiveVideoStatus liveVideoStatus2 = liveVideoStatus;
            String str2 = assetVideoDto.f45246c;
            String str3 = str2 == null ? "" : str2;
            String str4 = assetVideoDto.d;
            String str5 = str4 == null ? "" : str4;
            String str6 = assetVideoDto.f45245b;
            String str7 = str6 == null ? "" : str6;
            String str8 = assetVideoDto.f45249h;
            failure = new Result(new AssetVideo(str, str7, str3, str5, instantOfEpochSecond, liveVideoStatus2, str8 == null ? "" : str8, null));
            Throwable thA = Result.a(failure);
            if (thA != null) {
                if (thA instanceof CancellationException) {
                    throw thA;
                }
                failure = new Result(new Result.Failure(thA));
            }
            return ((Result) failure).f71708b;
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
    }
}
