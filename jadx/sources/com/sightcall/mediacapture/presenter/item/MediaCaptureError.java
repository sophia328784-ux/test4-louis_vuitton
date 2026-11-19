package com.sightcall.mediacapture.presenter.item;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0007\u0004\u0005\u0006\u0007\b\t\nB\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0007\u000b\f\r\u000e\u000f\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;", "", "<init>", "()V", "PermissionDenied", "BackPressed", "Camera", "MediaCaptureException", "ResizerLibError", "VideoCaptureError", "Unknown", "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError$BackPressed;", "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError$Camera;", "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError$MediaCaptureException;", "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError$PermissionDenied;", "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError$ResizerLibError;", "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError$Unknown;", "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError$VideoCaptureError;", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class MediaCaptureError {

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError$BackPressed;", "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;", "<init>", "()V", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class BackPressed extends MediaCaptureError {
        public static final BackPressed INSTANCE = new BackPressed();

        private BackPressed() {
            super(null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError$Camera;", "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;", "<init>", "()V", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Camera extends MediaCaptureError {
        public static final Camera INSTANCE = new Camera();

        private Camera() {
            super(null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError$MediaCaptureException;", "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;", "<init>", "()V", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class MediaCaptureException extends MediaCaptureError {
        public static final MediaCaptureException INSTANCE = new MediaCaptureException();

        private MediaCaptureException() {
            super(null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError$PermissionDenied;", "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;", "<init>", "()V", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class PermissionDenied extends MediaCaptureError {
        public static final PermissionDenied INSTANCE = new PermissionDenied();

        private PermissionDenied() {
            super(null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError$ResizerLibError;", "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;", "<init>", "()V", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class ResizerLibError extends MediaCaptureError {
        public static final ResizerLibError INSTANCE = new ResizerLibError();

        private ResizerLibError() {
            super(null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError$Unknown;", "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;", "<init>", "()V", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Unknown extends MediaCaptureError {
        public static final Unknown INSTANCE = new Unknown();

        private Unknown() {
            super(null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError$VideoCaptureError;", "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;", "<init>", "()V", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class VideoCaptureError extends MediaCaptureError {
        public static final VideoCaptureError INSTANCE = new VideoCaptureError();

        private VideoCaptureError() {
            super(null);
        }
    }

    public /* synthetic */ MediaCaptureError(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private MediaCaptureError() {
    }
}
