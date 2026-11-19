package com.sightcall.mediacapture.presenter;

import com.sightcall.mediacapture.domain.entities.Media;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/sightcall/mediacapture/presenter/GalleryState;", "", "<init>", "()V", "Pending", "Loaded", "Lcom/sightcall/mediacapture/presenter/GalleryState$Loaded;", "Lcom/sightcall/mediacapture/presenter/GalleryState$Pending;", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class GalleryState {

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/sightcall/mediacapture/presenter/GalleryState$Loaded;", "Lcom/sightcall/mediacapture/presenter/GalleryState;", "medias", "", "Lcom/sightcall/mediacapture/domain/entities/Media;", "<init>", "(Ljava/util/List;)V", "getMedias", "()Ljava/util/List;", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Loaded extends GalleryState {
        private final List<Media> medias;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Loaded(List<Media> list) {
            super(null);
            list.getClass();
            this.medias = list;
        }

        public final List<Media> getMedias() {
            return this.medias;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/mediacapture/presenter/GalleryState$Pending;", "Lcom/sightcall/mediacapture/presenter/GalleryState;", "<init>", "()V", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Pending extends GalleryState {
        public static final Pending INSTANCE = new Pending();

        private Pending() {
            super(null);
        }
    }

    public /* synthetic */ GalleryState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private GalleryState() {
    }
}
