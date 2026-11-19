package com.vuitton.android.data.dto.distantrepairs;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0002\u0003\u0004\u0082\u0001\u0002\u0005\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/data/dto/distantrepairs/DistantRepairsException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "GenericError", "AlreadyHaveAppointment", "Lcom/vuitton/android/data/dto/distantrepairs/DistantRepairsException$AlreadyHaveAppointment;", "Lcom/vuitton/android/data/dto/distantrepairs/DistantRepairsException$GenericError;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class DistantRepairsException extends Exception {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/distantrepairs/DistantRepairsException$AlreadyHaveAppointment;", "Lcom/vuitton/android/data/dto/distantrepairs/DistantRepairsException;", "", "message", "<init>", "(Ljava/lang/String;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class AlreadyHaveAppointment extends DistantRepairsException {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f45721b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AlreadyHaveAppointment(String str) {
            super(null);
            str.getClass();
            this.f45721b = str;
        }

        @Override // java.lang.Throwable
        public final String getMessage() {
            return this.f45721b;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/dto/distantrepairs/DistantRepairsException$GenericError;", "Lcom/vuitton/android/data/dto/distantrepairs/DistantRepairsException;", "<init>", "()V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class GenericError extends DistantRepairsException {
        public GenericError() {
            super(null);
        }
    }

    public DistantRepairsException(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
