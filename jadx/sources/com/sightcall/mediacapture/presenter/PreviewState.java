package com.sightcall.mediacapture.presenter;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0003\u0007\b\t¨\u0006\n"}, d2 = {"Lcom/sightcall/mediacapture/presenter/PreviewState;", "", "<init>", "()V", "Loading", "Idle", "Finished", "Lcom/sightcall/mediacapture/presenter/PreviewState$Finished;", "Lcom/sightcall/mediacapture/presenter/PreviewState$Idle;", "Lcom/sightcall/mediacapture/presenter/PreviewState$Loading;", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class PreviewState {

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/mediacapture/presenter/PreviewState$Finished;", "Lcom/sightcall/mediacapture/presenter/PreviewState;", "<init>", "()V", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Finished extends PreviewState {
        public static final Finished INSTANCE = new Finished();

        private Finished() {
            super(null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/mediacapture/presenter/PreviewState$Idle;", "Lcom/sightcall/mediacapture/presenter/PreviewState;", "<init>", "()V", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Idle extends PreviewState {
        public static final Idle INSTANCE = new Idle();

        private Idle() {
            super(null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/mediacapture/presenter/PreviewState$Loading;", "Lcom/sightcall/mediacapture/presenter/PreviewState;", "<init>", "()V", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Loading extends PreviewState {
        public static final Loading INSTANCE = new Loading();

        private Loading() {
            super(null);
        }
    }

    public /* synthetic */ PreviewState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private PreviewState() {
    }
}
