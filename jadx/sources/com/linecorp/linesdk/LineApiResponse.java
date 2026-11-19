package com.linecorp.linesdk;

import defpackage.o60;
import defpackage.zy0;

/* JADX INFO: loaded from: classes2.dex */
public class LineApiResponse<R> {
    public static final LineApiResponse d = new LineApiResponse(LineApiResponseCode.SUCCESS, null, LineApiError.f36059e);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LineApiResponseCode f36062a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f36063b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LineApiError f36064c;

    public LineApiResponse(LineApiResponseCode lineApiResponseCode, Object obj, LineApiError lineApiError) {
        this.f36062a = lineApiResponseCode;
        this.f36063b = obj;
        this.f36064c = lineApiError;
    }

    public static LineApiResponse a(LineApiResponseCode lineApiResponseCode, LineApiError lineApiError) {
        return new LineApiResponse(lineApiResponseCode, null, lineApiError);
    }

    public static LineApiResponse b(Object obj) {
        return obj == null ? d : new LineApiResponse(LineApiResponseCode.SUCCESS, obj, LineApiError.f36059e);
    }

    public final Object c() {
        Object obj = this.f36063b;
        if (obj != null) {
            return obj;
        }
        zy0.c("response data is null. Please check result by isSuccess before.");
        return null;
    }

    public final boolean d() {
        return this.f36062a == LineApiResponseCode.SUCCESS;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        LineApiResponse lineApiResponse = (LineApiResponse) obj;
        if (this.f36062a != lineApiResponse.f36062a) {
            return false;
        }
        Object obj2 = lineApiResponse.f36063b;
        Object obj3 = this.f36063b;
        if (obj3 == null ? obj2 == null : obj3.equals(obj2)) {
            return this.f36064c.equals(lineApiResponse.f36064c);
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.f36062a.hashCode() * 31;
        Object obj = this.f36063b;
        return this.f36064c.hashCode() + ((iHashCode + (obj != null ? obj.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LineApiResponse{errorData=");
        sb.append(this.f36064c);
        sb.append(", responseCode=");
        sb.append(this.f36062a);
        sb.append(", responseData=");
        return o60.r(sb, this.f36063b, '}');
    }
}
