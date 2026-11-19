package com.linecorp.linesdk;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class LineApiError implements Parcelable {
    public static final Parcelable.Creator<LineApiError> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final LineApiError f36059e = new LineApiError(-1, "", ErrorCode.NOT_DEFINED);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f36060b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f36061c;
    public final ErrorCode d;

    /* JADX INFO: renamed from: com.linecorp.linesdk.LineApiError$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<LineApiError> {
        @Override // android.os.Parcelable.Creator
        public final LineApiError createFromParcel(Parcel parcel) {
            return new LineApiError(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final LineApiError[] newArray(int i2) {
            return new LineApiError[i2];
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class ErrorCode {
        private static final /* synthetic */ ErrorCode[] $VALUES;
        public static final ErrorCode HTTP_RESPONSE_PARSE_ERROR;
        public static final ErrorCode LOGIN_ACTIVITY_NOT_FOUND;
        public static final ErrorCode NOT_DEFINED;

        static {
            ErrorCode errorCode = new ErrorCode("LOGIN_ACTIVITY_NOT_FOUND", 0);
            LOGIN_ACTIVITY_NOT_FOUND = errorCode;
            ErrorCode errorCode2 = new ErrorCode("HTTP_RESPONSE_PARSE_ERROR", 1);
            HTTP_RESPONSE_PARSE_ERROR = errorCode2;
            ErrorCode errorCode3 = new ErrorCode("NOT_DEFINED", 2);
            NOT_DEFINED = errorCode3;
            $VALUES = new ErrorCode[]{errorCode, errorCode2, errorCode3};
        }

        public static ErrorCode valueOf(String str) {
            return (ErrorCode) Enum.valueOf(ErrorCode.class, str);
        }

        public static ErrorCode[] values() {
            return (ErrorCode[]) $VALUES.clone();
        }
    }

    public LineApiError(Parcel parcel) {
        this.f36060b = parcel.readInt();
        this.f36061c = parcel.readString();
        int i2 = parcel.readInt();
        this.d = i2 == -1 ? null : ErrorCode.values()[i2];
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LineApiError)) {
            return false;
        }
        LineApiError lineApiError = (LineApiError) obj;
        return this.f36060b == lineApiError.f36060b && Objects.equals(this.f36061c, lineApiError.f36061c) && this.d == lineApiError.d;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f36060b), this.f36061c, this.d);
    }

    public final String toString() {
        return "LineApiError{httpResponseCode=" + this.f36060b + ", message='" + this.f36061c + "', errorCode='" + this.d + "'}";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f36060b);
        parcel.writeString(this.f36061c);
        ErrorCode errorCode = this.d;
        parcel.writeInt(errorCode == null ? -1 : errorCode.ordinal());
    }

    public LineApiError(int i2, String str, ErrorCode errorCode) {
        this.f36060b = i2;
        this.f36061c = str;
        this.d = errorCode;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public LineApiError(Exception exc) {
        String string;
        if (exc == null) {
            string = null;
        } else {
            StringWriter stringWriter = new StringWriter();
            exc.printStackTrace(new PrintWriter(stringWriter));
            string = stringWriter.toString();
        }
        this(-1, string, ErrorCode.NOT_DEFINED);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public LineApiError(Exception exc, ErrorCode errorCode) {
        String string;
        if (exc == null) {
            string = null;
        } else {
            StringWriter stringWriter = new StringWriter();
            exc.printStackTrace(new PrintWriter(stringWriter));
            string = stringWriter.toString();
        }
        this(-1, string, errorCode);
    }

    public LineApiError(String str) {
        this(-1, str, ErrorCode.NOT_DEFINED);
    }
}
