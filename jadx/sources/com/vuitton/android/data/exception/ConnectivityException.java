package com.vuitton.android.data.exception;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00060\u0001j\u0002`\u0002:\t\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\u0082\u0001\t\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/data/exception/ConnectivityException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "WatchV2PairedException", "WatchV2UnpairedException", "WatchFaqException", "WatchTutorialException", "NoWatchfaceException", "NoWatchVideoException", "NoEarphoneTutorialException", "NoSpeakerTutorialException", "FaqMappingException", "Lcom/vuitton/android/data/exception/ConnectivityException$FaqMappingException;", "Lcom/vuitton/android/data/exception/ConnectivityException$NoEarphoneTutorialException;", "Lcom/vuitton/android/data/exception/ConnectivityException$NoSpeakerTutorialException;", "Lcom/vuitton/android/data/exception/ConnectivityException$NoWatchVideoException;", "Lcom/vuitton/android/data/exception/ConnectivityException$NoWatchfaceException;", "Lcom/vuitton/android/data/exception/ConnectivityException$WatchFaqException;", "Lcom/vuitton/android/data/exception/ConnectivityException$WatchTutorialException;", "Lcom/vuitton/android/data/exception/ConnectivityException$WatchV2PairedException;", "Lcom/vuitton/android/data/exception/ConnectivityException$WatchV2UnpairedException;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class ConnectivityException extends Exception {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46963b;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/exception/ConnectivityException$FaqMappingException;", "Lcom/vuitton/android/data/exception/ConnectivityException;", "<init>", "()V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class FaqMappingException extends ConnectivityException {
        public FaqMappingException() {
            super("Can't map FAQ", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/exception/ConnectivityException$NoEarphoneTutorialException;", "Lcom/vuitton/android/data/exception/ConnectivityException;", "<init>", "()V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class NoEarphoneTutorialException extends ConnectivityException {
        public NoEarphoneTutorialException() {
            super("Tutorials missing for earphones section", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/exception/ConnectivityException$NoSpeakerTutorialException;", "Lcom/vuitton/android/data/exception/ConnectivityException;", "<init>", "()V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class NoSpeakerTutorialException extends ConnectivityException {
        public NoSpeakerTutorialException() {
            super("Tutorials missing for speaker section", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/exception/ConnectivityException$NoWatchVideoException;", "Lcom/vuitton/android/data/exception/ConnectivityException;", "<init>", "()V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class NoWatchVideoException extends ConnectivityException {
        public NoWatchVideoException() {
            super("Video is null for watch", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/exception/ConnectivityException$NoWatchfaceException;", "Lcom/vuitton/android/data/exception/ConnectivityException;", "<init>", "()V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class NoWatchfaceException extends ConnectivityException {
        public NoWatchfaceException() {
            super("The list of watch faces is null or empty", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/exception/ConnectivityException$WatchFaqException;", "Lcom/vuitton/android/data/exception/ConnectivityException;", "<init>", "()V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class WatchFaqException extends ConnectivityException {
        public WatchFaqException() {
            super("Faq content missing from watch section", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/exception/ConnectivityException$WatchTutorialException;", "Lcom/vuitton/android/data/exception/ConnectivityException;", "<init>", "()V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class WatchTutorialException extends ConnectivityException {
        public WatchTutorialException() {
            super("Tutorials missing for watch section", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/exception/ConnectivityException$WatchV2PairedException;", "Lcom/vuitton/android/data/exception/ConnectivityException;", "<init>", "()V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class WatchV2PairedException extends ConnectivityException {
        public WatchV2PairedException() {
            super("Pair api success param is false", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/exception/ConnectivityException$WatchV2UnpairedException;", "Lcom/vuitton/android/data/exception/ConnectivityException;", "<init>", "()V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class WatchV2UnpairedException extends ConnectivityException {
        public WatchV2UnpairedException() {
            super("Unpair api success param is false", null);
        }
    }

    public ConnectivityException(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this.f46963b = str;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f46963b;
    }
}
