package org.teleal.cling.model.message;

import com.appsflyer.sdk_base.referrer.Payload;

/* JADX INFO: loaded from: classes5.dex */
public class UpnpResponse extends UpnpOperation {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f78417b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f78418c;

    public enum Status {
        OK(200, Payload.RESPONSE_OK),
        BAD_REQUEST(400, "Bad Request"),
        NOT_FOUND(404, "Not Found"),
        METHOD_NOT_SUPPORTED(405, "Method Not Supported"),
        PRECONDITION_FAILED(412, "Precondition Failed"),
        UNSUPPORTED_MEDIA_TYPE(415, "Unsupported Media Type"),
        INTERNAL_SERVER_ERROR(500, "Internal Server Error"),
        NOT_IMPLEMENTED(501, "Not Implemented");

        private int statusCode;
        private String statusMsg;

        Status(int i2, String str) {
            this.statusCode = i2;
            this.statusMsg = str;
        }

        public final int a() {
            return this.statusCode;
        }

        public final String b() {
            return this.statusMsg;
        }
    }

    public UpnpResponse(Status status) {
        this.f78417b = status.a();
        this.f78418c = status.b();
    }

    public final String a() {
        return this.f78417b + " " + this.f78418c;
    }

    public final boolean b() {
        return this.f78417b >= 300;
    }

    public final String toString() {
        return a();
    }

    public UpnpResponse(int i2, String str) {
        this.f78417b = i2;
        this.f78418c = str;
    }
}
