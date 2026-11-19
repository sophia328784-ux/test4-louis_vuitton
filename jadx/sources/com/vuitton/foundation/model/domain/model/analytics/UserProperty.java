package com.vuitton.foundation.model.domain.model.analytics;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/UserProperty;", "", "WebViewUserProperty", "Lcom/vuitton/foundation/model/domain/model/analytics/UserProperty$WebViewUserProperty;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface UserProperty {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/UserProperty$WebViewUserProperty;", "Lcom/vuitton/foundation/model/domain/model/analytics/UserProperty;", "", "name", "value", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class WebViewUserProperty implements UserProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66532a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f66533b;

        public WebViewUserProperty(String str, String str2) {
            str.getClass();
            this.f66532a = str;
            this.f66533b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof WebViewUserProperty)) {
                return false;
            }
            WebViewUserProperty webViewUserProperty = (WebViewUserProperty) obj;
            return Intrinsics.c(this.f66532a, webViewUserProperty.f66532a) && Intrinsics.c(this.f66533b, webViewUserProperty.f66533b);
        }

        public final int hashCode() {
            int iHashCode = this.f66532a.hashCode() * 31;
            String str = this.f66533b;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            return d21.l("WebViewUserProperty(name=", this.f66532a, ", value=", this.f66533b, ")");
        }
    }
}
