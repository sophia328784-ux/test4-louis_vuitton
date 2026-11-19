package com.vuitton.android.data.account.address.model.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.core.extensions.JsonObjectExtKt;
import com.vuitton.foundation.exception.NetworkException;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import defpackage.fc;
import defpackage.n00;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/account/address/model/mapper/AddressHttpErrorMapper;", "", "<init>", "()V", "ApiAddressError", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AddressHttpErrorMapper {

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/account/address/model/mapper/AddressHttpErrorMapper$ApiAddressError;", "", "ErrorMessage", "NoErrorMessage", "Lcom/vuitton/android/data/account/address/model/mapper/AddressHttpErrorMapper$ApiAddressError$ErrorMessage;", "Lcom/vuitton/android/data/account/address/model/mapper/AddressHttpErrorMapper$ApiAddressError$NoErrorMessage;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface ApiAddressError {

        /* JADX INFO: loaded from: classes4.dex */
        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/data/account/address/model/mapper/AddressHttpErrorMapper$ApiAddressError$ErrorMessage;", "Lcom/vuitton/android/data/account/address/model/mapper/AddressHttpErrorMapper$ApiAddressError;", "", "errorCode", "localizedMessage", "message", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class ErrorMessage implements ApiAddressError {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f43537a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f43538b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final String f43539c;

            public ErrorMessage(String str, String str2, String str3) {
                str.getClass();
                this.f43537a = str;
                this.f43538b = str2;
                this.f43539c = str3;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof ErrorMessage)) {
                    return false;
                }
                ErrorMessage errorMessage = (ErrorMessage) obj;
                return Intrinsics.c(this.f43537a, errorMessage.f43537a) && Intrinsics.c(this.f43538b, errorMessage.f43538b) && Intrinsics.c(this.f43539c, errorMessage.f43539c);
            }

            public final int hashCode() {
                int iHashCode = this.f43537a.hashCode() * 31;
                String str = this.f43538b;
                int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
                String str2 = this.f43539c;
                return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
            }

            public final String toString() {
                return n00.r(this.f43539c, ")", fc.s("ErrorMessage(errorCode=", this.f43537a, ", localizedMessage=", this.f43538b, ", message="));
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/data/account/address/model/mapper/AddressHttpErrorMapper$ApiAddressError$NoErrorMessage;", "Lcom/vuitton/android/data/account/address/model/mapper/AddressHttpErrorMapper$ApiAddressError;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class NoErrorMessage implements ApiAddressError {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final NoErrorMessage f43540a = new NoErrorMessage();

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof NoErrorMessage);
            }

            public final int hashCode() {
                return -1254773081;
            }

            public final String toString() {
                return "NoErrorMessage";
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0004¨\u0006\t"}, d2 = {"Lcom/vuitton/android/data/account/address/model/mapper/AddressHttpErrorMapper$Companion;", "", "", "JSON_ERROR_LIST", "Ljava/lang/String;", "JSON_ERROR_LIST_ALT", "JSON_MESSAGE", "JSON_LOCALIZED_MESSAGE", "JSON_ERROR_KEY", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public AddressHttpErrorMapper() {
    }

    public static NetworkException.CustomException a(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("errorList");
        if (jSONArrayOptJSONArray == null && (jSONArrayOptJSONArray = jSONObject.optJSONArray("errors")) == null) {
            jSONArrayOptJSONArray = new JSONArray();
        }
        int length = jSONArrayOptJSONArray.length();
        Object errorMessage = ApiAddressError.NoErrorMessage.f43540a;
        if (length <= 0) {
            return new NetworkException.CustomException(errorMessage);
        }
        JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(0);
        jSONObject2.getClass();
        String strA = JsonObjectExtKt.a("message", jSONObject2);
        String strA2 = JsonObjectExtKt.a("localizedMessage", jSONObject2);
        String strA3 = JsonObjectExtKt.a("errorCode", jSONObject2);
        if (strA3 != null) {
            errorMessage = new ApiAddressError.ErrorMessage(strA3, StringKtExtKt.h(strA2), StringKtExtKt.h(strA));
        }
        return new NetworkException.CustomException(errorMessage);
    }
}
