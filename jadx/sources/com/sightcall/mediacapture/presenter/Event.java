package com.sightcall.mediacapture.presenter;

import com.sightcall.mediacapture.domain.entities.Media;
import com.sightcall.mediacapture.presenter.item.MediaCaptureError;
import com.sightcall.pratik.Result;
import com.sightcall.pratik.permission.Permission;
import com.sightcall.universal.permission.PermissionsActivity;
import defpackage.SCCollimator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u00002\u00020\u0001:\u0005\u0004\u0005\u0006\u0007\bB\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0005\t\n\u000b\f\r¨\u0006\u000e"}, d2 = {"Lcom/sightcall/mediacapture/presenter/Event;", "", "<init>", "()V", "OnRequestPermissions", "OnPreview", "OnCancel", "OnResult", "OnBackupFailed", "Lcom/sightcall/mediacapture/presenter/Event$OnBackupFailed;", "Lcom/sightcall/mediacapture/presenter/Event$OnCancel;", "Lcom/sightcall/mediacapture/presenter/Event$OnPreview;", "Lcom/sightcall/mediacapture/presenter/Event$OnRequestPermissions;", "Lcom/sightcall/mediacapture/presenter/Event$OnResult;", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class Event {

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B'\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012\n\u0010\u0006\u001a\u00060\u0007j\u0002`\b¢\u0006\u0004\b\t\u0010\nR\u001d\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0015\u0010\u0006\u001a\u00060\u0007j\u0002`\b¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/sightcall/mediacapture/presenter/Event$OnBackupFailed;", "Lcom/sightcall/mediacapture/presenter/Event;", "result", "Lcom/sightcall/pratik/Result;", "Lcom/sightcall/mediacapture/domain/entities/Media;", "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;", "error", "Ljava/lang/Exception;", "Lkotlin/Exception;", "<init>", "(Lcom/sightcall/pratik/Result;Ljava/lang/Exception;)V", "getResult", "()Lcom/sightcall/pratik/Result;", "getError", "()Ljava/lang/Exception;", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class OnBackupFailed extends Event {
        private final Exception error;
        private final Result<Media, MediaCaptureError> result;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OnBackupFailed(Result<Media, MediaCaptureError> result, Exception exc) {
            super(null);
            result.getClass();
            exc.getClass();
            this.result = result;
            this.error = exc;
        }

        public final Exception getError() {
            return this.error;
        }

        public final Result<Media, MediaCaptureError> getResult() {
            return this.result;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/mediacapture/presenter/Event$OnCancel;", "Lcom/sightcall/mediacapture/presenter/Event;", "<init>", "()V", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class OnCancel extends Event {
        public static final OnCancel INSTANCE = new OnCancel();

        private OnCancel() {
            super(null);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/sightcall/mediacapture/presenter/Event$OnRequestPermissions;", "Lcom/sightcall/mediacapture/presenter/Event;", PermissionsActivity.EXTRA_PERMISSIONS, "", "Lcom/sightcall/pratik/permission/Permission;", "<init>", "(Ljava/util/List;)V", "getPermissions", "()Ljava/util/List;", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class OnRequestPermissions extends Event {
        private final List<Permission> permissions;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public OnRequestPermissions(List<? extends Permission> list) {
            super(null);
            list.getClass();
            this.permissions = list;
        }

        public final List<Permission> getPermissions() {
            return this.permissions;
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u001b\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0004\b\u0006\u0010\u0007R\u001d\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/sightcall/mediacapture/presenter/Event$OnResult;", "Lcom/sightcall/mediacapture/presenter/Event;", "result", "Lcom/sightcall/pratik/Result;", "Lcom/sightcall/mediacapture/domain/entities/Media;", "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;", "<init>", "(Lcom/sightcall/pratik/Result;)V", "getResult", "()Lcom/sightcall/pratik/Result;", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class OnResult extends Event {
        private final Result<Media, MediaCaptureError> result;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OnResult(Result<Media, MediaCaptureError> result) {
            super(null);
            result.getClass();
            this.result = result;
        }

        public final Result<Media, MediaCaptureError> getResult() {
            return this.result;
        }
    }

    public /* synthetic */ Event(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private Event() {
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/sightcall/mediacapture/presenter/Event$OnPreview;", "Lcom/sightcall/mediacapture/presenter/Event;", "media", "Lcom/sightcall/mediacapture/domain/entities/Media;", "collimator", "LSCCollimator;", "<init>", "(Lcom/sightcall/mediacapture/domain/entities/Media;LSCCollimator;)V", "getMedia", "()Lcom/sightcall/mediacapture/domain/entities/Media;", "getCollimator", "()LSCCollimator;", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class OnPreview extends Event {
        private final SCCollimator collimator;
        private final Media media;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OnPreview(Media media, SCCollimator sCCollimator) {
            super(null);
            media.getClass();
            this.media = media;
            this.collimator = sCCollimator;
        }

        public final SCCollimator getCollimator() {
            return this.collimator;
        }

        public final Media getMedia() {
            return this.media;
        }

        public /* synthetic */ OnPreview(Media media, SCCollimator sCCollimator, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(media, (i2 & 2) != 0 ? null : sCCollimator);
        }
    }
}
