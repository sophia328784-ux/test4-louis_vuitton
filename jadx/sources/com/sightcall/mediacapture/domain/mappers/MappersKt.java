package com.sightcall.mediacapture.domain.mappers;

import android.net.Uri;
import android.util.Size;
import com.appsflyer.sdk_base.referrer.Payload;
import com.sightcall.mediacapture.domain.entities.Media;
import com.sightcall.mediacapture.domain.entities.MediaSource;
import com.sightcall.mediacapture.domain.entities.MediaType;
import com.sightcall.mediacapture.repo.MediaCaptureError;
import com.sightcall.mediacapture.repo.entities.MediaRepo;
import com.sightcall.mediacapture.repo.mappers.MediaCaptureMappersKt;
import com.sightcall.pratik.Result;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a4\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00030\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0000\u001a \u0010\u0000\u001a\u00020\u0002*\u00020\u00042\u0006\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0000\u001a\f\u0010\t\u001a\u00020\u0004*\u00020\u0002H\u0000¨\u0006\n"}, d2 = {"toMedia", "Lcom/sightcall/pratik/Result;", "Lcom/sightcall/mediacapture/domain/entities/Media;", "Lcom/sightcall/mediacapture/repo/MediaCaptureError;", "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;", "type", "Lcom/sightcall/mediacapture/domain/entities/MediaType;", Payload.SOURCE, "Lcom/sightcall/mediacapture/domain/entities/MediaSource;", "toMediaRepo", "lib_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class MappersKt {
    public static final Media toMedia(MediaRepo mediaRepo, MediaSource mediaSource, MediaType mediaType) {
        mediaRepo.getClass();
        mediaSource.getClass();
        Uri uri = mediaRepo.getUri();
        String mimeType = mediaRepo.getMimeType();
        String extension = MediaCaptureMappersKt.toExtension(mediaRepo.getMimeType());
        Size size = mediaRepo.getSize();
        if (mediaType == null) {
            mediaType = StringsKt.P(mediaRepo.getMimeType(), "video", false) ? MediaType.Video : MediaType.Photo;
        }
        return new Media(uri, mimeType, extension, size, mediaType, mediaSource);
    }

    public static /* synthetic */ Media toMedia$default(MediaRepo mediaRepo, MediaSource mediaSource, MediaType mediaType, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            mediaType = null;
        }
        return toMedia(mediaRepo, mediaSource, mediaType);
    }

    public static final MediaRepo toMediaRepo(Media media) {
        media.getClass();
        return new MediaRepo(media.getUri(), media.getMimeType(), media.getSize());
    }

    public static final Result<Media, MediaCaptureError> toMedia(Result<MediaRepo, MediaCaptureError> result, MediaType mediaType, MediaSource mediaSource) {
        result.getClass();
        mediaType.getClass();
        mediaSource.getClass();
        if (result instanceof Result.Error) {
            return new Result.Error(((Result.Error) result).getError());
        }
        if (result instanceof Result.Success) {
            return new Result.Success(toMedia((MediaRepo) ((Result.Success) result).getSuccess(), mediaSource, mediaType));
        }
        v40.g();
        return null;
    }
}
