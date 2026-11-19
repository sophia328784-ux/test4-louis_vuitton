package androidx.media3.exoplayer.drm;

import androidx.media3.exoplayer.source.LoadEventInfo;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public interface MediaDrmCallback {
    Response a(UUID uuid, ExoMediaDrm.KeyRequest keyRequest);

    Response b(ExoMediaDrm.ProvisionRequest provisionRequest);

    public static final class Response {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final byte[] f15100a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LoadEventInfo f15101b;

        public static final class Builder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final byte[] f15102a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public LoadEventInfo f15103b;

            public Builder(byte[] bArr) {
                this.f15102a = bArr;
            }
        }

        public Response(Builder builder) {
            this.f15100a = builder.f15102a;
            this.f15101b = builder.f15103b;
        }

        public Response(byte[] bArr) {
            this.f15100a = bArr;
            this.f15101b = null;
        }
    }
}
