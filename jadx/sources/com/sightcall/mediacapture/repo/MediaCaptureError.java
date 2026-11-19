package com.sightcall.mediacapture.repo;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0003\u0005\u0006\u0007B\t\b\u0004¢\u0006\u0004\b\u0003\u0010\u0004\u0082\u0001\u0003\b\t\n¨\u0006\u000b"}, d2 = {"Lcom/sightcall/mediacapture/repo/MediaCaptureError;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "<init>", "()V", "MediaCaptureException", "ResizerLibError", "VideoCaptureError", "Lcom/sightcall/mediacapture/repo/MediaCaptureError$MediaCaptureException;", "Lcom/sightcall/mediacapture/repo/MediaCaptureError$ResizerLibError;", "Lcom/sightcall/mediacapture/repo/MediaCaptureError$VideoCaptureError;", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class MediaCaptureError extends Exception {

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/sightcall/mediacapture/repo/MediaCaptureError$MediaCaptureException;", "Lcom/sightcall/mediacapture/repo/MediaCaptureError;", MvelScriptManager.VAR_EXCEPTION, "Ljava/lang/Exception;", "Lkotlin/Exception;", "<init>", "(Ljava/lang/Exception;)V", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class MediaCaptureException extends MediaCaptureError {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MediaCaptureException(Exception exc) {
            super(null);
            exc.getClass();
        }
    }

    public /* synthetic */ MediaCaptureError(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private MediaCaptureError() {
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/sightcall/mediacapture/repo/MediaCaptureError$ResizerLibError;", "Lcom/sightcall/mediacapture/repo/MediaCaptureError;", "msg", "", "<init>", "(Ljava/lang/String;)V", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class ResizerLibError extends MediaCaptureError {
        public /* synthetic */ ResizerLibError(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : str);
        }

        public ResizerLibError(String str) {
            super(null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public ResizerLibError() {
            this(null, 1, 0 == true ? 1 : 0);
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/sightcall/mediacapture/repo/MediaCaptureError$VideoCaptureError;", "Lcom/sightcall/mediacapture/repo/MediaCaptureError;", "message", "", "<init>", "(Ljava/lang/String;)V", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class VideoCaptureError extends MediaCaptureError {
        public /* synthetic */ VideoCaptureError(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : str);
        }

        public VideoCaptureError(String str) {
            super(null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public VideoCaptureError() {
            this(null, 1, 0 == true ? 1 : 0);
        }
    }
}
