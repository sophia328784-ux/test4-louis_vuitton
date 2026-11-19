package com.vuitton.android.data.exception;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0001\u0003\u0082\u0001\u0001\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/exception/FileException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "CSVFileReadingException", "Lcom/vuitton/android/data/exception/FileException$CSVFileReadingException;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class FileException extends Exception {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46964b;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/exception/FileException$CSVFileReadingException;", "Lcom/vuitton/android/data/exception/FileException;", "exceptionMsg", "", "<init>", "(Ljava/lang/String;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class CSVFileReadingException extends FileException {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CSVFileReadingException(String str) {
            super("Error in reading CSV file : " + str, null);
            str.getClass();
        }
    }

    public FileException(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this.f46964b = str;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f46964b;
    }
}
