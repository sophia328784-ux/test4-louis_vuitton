package com.sightcall.httpclient;

import defpackage.tr;
import kotlin.Metadata;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0004B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/sightcall/httpclient/SightCallHeaders;", "", "<init>", "()V", "Authorization", "httpclient_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SightCallHeaders {
    public static final SightCallHeaders INSTANCE = new SightCallHeaders();

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0003\u0006\u0007\bB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/sightcall/httpclient/SightCallHeaders$Authorization;", "", "<init>", "()V", "Key", "", "External", "Token", "Bearer", "httpclient_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Authorization {
        public static final Authorization INSTANCE = new Authorization();
        public static final String Key = "Authorization";

        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\n\u0010\u0006\u001a\u00020\u0003H\u0096\u0080\u0004R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/sightcall/httpclient/SightCallHeaders$Authorization$Bearer;", "", "token", "", "<init>", "(Ljava/lang/String;)V", "toString", "httpclient_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Bearer {
            private final String token;

            public Bearer(String str) {
                str.getClass();
                this.token = str;
            }

            public String toString() {
                return tr.g("Bearer ", this.token);
            }
        }

        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\n\u0010\u0006\u001a\u00020\u0007H\u0096\u0080\u0004R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/sightcall/httpclient/SightCallHeaders$Authorization$External;", "", "token", "Lcom/sightcall/httpclient/AuthorizationToken;", "<init>", "(Lcom/sightcall/httpclient/AuthorizationToken;)V", "toString", "", "httpclient_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class External {
            private final AuthorizationToken token;

            public External(AuthorizationToken authorizationToken) throws SightCallHeadersException {
                authorizationToken.getClass();
                this.token = authorizationToken;
                if (StringsKt.w(authorizationToken.getValue())) {
                    throw new SightCallHeadersException("AuthorizationToken is blank or empty");
                }
            }

            public String toString() {
                return tr.g("External ", this.token.getValue());
            }
        }

        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\n\u0010\u0006\u001a\u00020\u0003H\u0096\u0080\u0004R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/sightcall/httpclient/SightCallHeaders$Authorization$Token;", "", "token", "", "<init>", "(Ljava/lang/String;)V", "toString", "httpclient_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Token {
            private final String token;

            public Token(String str) {
                str.getClass();
                this.token = str;
            }

            public String toString() {
                return tr.g("Token ", this.token);
            }
        }

        private Authorization() {
        }
    }

    private SightCallHeaders() {
    }
}
