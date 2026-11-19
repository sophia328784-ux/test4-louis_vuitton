package com.sightcall.mediacapture.repo.converter;

import android.content.Context;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.util.Size;
import com.appsflyer.sdk_base.referrer.Payload;
import com.iceteck.silicompressorr.SiliCompressor;
import com.sightcall.mediacapture.repo.MediaCaptureError;
import com.sightcall.mediacapture.repo.entities.MediaRepo;
import com.sightcall.pratik.Result;
import com.sightcall.pratik.logs.Logger;
import com.sightcall.uvc.Camera;
import java.io.File;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Sink;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0018B\u0011\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J2\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0096@¢\u0006\u0002\u0010\u0015J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0012\u001a\u00020\u0007H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\u00020\u0007*\u00020\b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0018\u0010\u000b\u001a\u00020\u0007*\u00020\b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\n¨\u0006\u0019"}, d2 = {"Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl;", "Lcom/sightcall/mediacapture/repo/converter/VideoConverter;", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "width", "", "Landroid/media/MediaMetadataRetriever;", "getWidth", "(Landroid/media/MediaMetadataRetriever;)I", "height", "getHeight", "process", "Lcom/sightcall/pratik/Result;", "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;", "Lcom/sightcall/mediacapture/repo/MediaCaptureError;", Payload.SOURCE, "maxSize", "targetString", "", "(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "findBestVideoFormat", "Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat;", "VideoFormat", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class VideoConverterImpl implements VideoConverter {
    private final Context context;

    @Inject
    public VideoConverterImpl(Context context) {
        context.getClass();
        this.context = context;
    }

    private final VideoFormat findBestVideoFormat(int maxSize) {
        if (maxSize >= 0 && maxSize < 481) {
            return VideoFormat.Ld360p.INSTANCE;
        }
        if (480 <= maxSize && maxSize < 721) {
            return VideoFormat.Sd480p.INSTANCE;
        }
        if (720 <= maxSize && maxSize < 1281) {
            return VideoFormat.Hd720p.INSTANCE;
        }
        if (1280 <= maxSize && maxSize < 1921) {
            return VideoFormat.Fhd1080p.INSTANCE;
        }
        if (1920 > maxSize || maxSize >= 3841) {
            return null;
        }
        return VideoFormat.Uhd4k.INSTANCE;
    }

    private final int getHeight(MediaMetadataRetriever mediaMetadataRetriever) throws Exception {
        String strExtractMetadata = mediaMetadataRetriever.extractMetadata(19);
        if (strExtractMetadata != null) {
            return Integer.parseInt(strExtractMetadata);
        }
        throw new Exception("can't extract target height");
    }

    private final int getWidth(MediaMetadataRetriever mediaMetadataRetriever) throws Exception {
        String strExtractMetadata = mediaMetadataRetriever.extractMetadata(18);
        if (strExtractMetadata != null) {
            return Integer.parseInt(strExtractMetadata);
        }
        throw new Exception("can't extract target width");
    }

    @Override // com.sightcall.mediacapture.repo.converter.VideoConverter
    public Object process(MediaRepo mediaRepo, int i2, String str, Continuation<? super Result<MediaRepo, MediaCaptureError>> continuation) throws Throwable {
        VideoFormat videoFormatFindBestVideoFormat = findBestVideoFormat(i2);
        if (videoFormatFindBestVideoFormat == null) {
            return new Result.Error(new MediaCaptureError.ResizerLibError("Incorrect size for video"));
        }
        try {
            Context context = this.context;
            if (SiliCompressor.f35746a == null) {
                synchronized (SiliCompressor.class) {
                    try {
                        if (SiliCompressor.f35746a == null) {
                            SiliCompressor.f35746a = new SiliCompressor(new SiliCompressor.Builder(context).f35748a);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            SiliCompressor siliCompressor = SiliCompressor.f35746a;
            Uri uri = mediaRepo.getUri();
            int width = videoFormatFindBestVideoFormat.getSize().getWidth();
            int height = videoFormatFindBestVideoFormat.getSize().getHeight();
            int bitRate = videoFormatFindBestVideoFormat.getBitRate();
            siliCompressor.getClass();
            String strA = SiliCompressor.a(uri, str, width, height, bitRate);
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            mediaMetadataRetriever.setDataSource(this.context, Uri.parse(strA));
            return new Result.Success(new MediaRepo(Uri.fromFile(new File(strA)), mediaRepo.getMimeType(), new Size(getWidth(mediaMetadataRetriever), getHeight(mediaMetadataRetriever))));
        } catch (Exception unused) {
            Logger.INSTANCE.getTag();
            return new Result.Error(new MediaCaptureError.ResizerLibError("Something went wrong when resizing video"));
        }
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b2\u0018\u00002\u00020\u0001:\u0005\f\r\u000e\u000f\u0010B\u0019\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b\u0082\u0001\u0005\u0011\u0012\u0013\u0014\u0015¨\u0006\u0016"}, d2 = {"Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat;", "", "size", "Landroid/util/Size;", "bitRate", "", "<init>", "(Landroid/util/Size;I)V", "getSize", "()Landroid/util/Size;", "getBitRate", "()I", "Ld360p", "Sd480p", "Hd720p", "Fhd1080p", "Uhd4k", "Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat$Fhd1080p;", "Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat$Hd720p;", "Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat$Ld360p;", "Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat$Sd480p;", "Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat$Uhd4k;", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class VideoFormat {
        private final int bitRate;
        private final Size size;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat$Fhd1080p;", "Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat;", "<init>", "()V", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Fhd1080p extends VideoFormat {
            public static final Fhd1080p INSTANCE = new Fhd1080p();

            private Fhd1080p() {
                super(new Size(Sink.Screenshare.MAX_DIMENSION_HIGH, Sink.Screenshare.MAX_DIMENSION_LOW), 9863168, null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat$Hd720p;", "Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat;", "<init>", "()V", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Hd720p extends VideoFormat {
            public static final Hd720p INSTANCE = new Hd720p();

            private Hd720p() {
                super(new Size(Sink.Video.MAX_DIMENSION_HIGH, Sink.Video.MAX_DIMENSION_LOW), 6164480, null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat$Ld360p;", "Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat;", "<init>", "()V", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Ld360p extends VideoFormat {
            public static final Ld360p INSTANCE = new Ld360p();

            private Ld360p() {
                super(new Size(Camera.DEFAULT_PREVIEW_HEIGHT, 360), 1849344, null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat$Sd480p;", "Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat;", "<init>", "()V", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Sd480p extends VideoFormat {
            public static final Sd480p INSTANCE = new Sd480p();

            private Sd480p() {
                super(new Size(Sink.Video.MAX_DIMENSION_LOW, Camera.DEFAULT_PREVIEW_HEIGHT), 3082240, null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat$Uhd4k;", "Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat;", "<init>", "()V", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Uhd4k extends VideoFormat {
            public static final Uhd4k INSTANCE = new Uhd4k();

            private Uhd4k() {
                super(new Size(3840, 2160), 29589504, null);
            }
        }

        private VideoFormat(Size size, int i2) {
            this.size = size;
            this.bitRate = i2;
        }

        public int getBitRate() {
            return this.bitRate;
        }

        public Size getSize() {
            return this.size;
        }

        public /* synthetic */ VideoFormat(Size size, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(size, i2);
        }
    }
}
