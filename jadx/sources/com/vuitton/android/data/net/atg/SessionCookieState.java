package com.vuitton.android.data.net.atg;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/data/net/atg/SessionCookieState;", "", "Authenticated", "Anonymous", "Invalid", "Empty", "Lcom/vuitton/android/data/net/atg/SessionCookieState$Anonymous;", "Lcom/vuitton/android/data/net/atg/SessionCookieState$Authenticated;", "Lcom/vuitton/android/data/net/atg/SessionCookieState$Empty;", "Lcom/vuitton/android/data/net/atg/SessionCookieState$Invalid;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class SessionCookieState {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/net/atg/SessionCookieState$Anonymous;", "Lcom/vuitton/android/data/net/atg/SessionCookieState;", "Lcom/vuitton/android/data/net/atg/ATGSessionIdentification;", "atgSessionIdentification", "<init>", "(Lcom/vuitton/android/data/net/atg/ATGSessionIdentification;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Anonymous extends SessionCookieState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ATGSessionIdentification f47016a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Anonymous(ATGSessionIdentification aTGSessionIdentification) {
            super(null);
            aTGSessionIdentification.getClass();
            this.f47016a = aTGSessionIdentification;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/net/atg/SessionCookieState$Authenticated;", "Lcom/vuitton/android/data/net/atg/SessionCookieState;", "Lcom/vuitton/android/data/net/atg/ATGSessionIdentification;", "atgSessionIdentification", "<init>", "(Lcom/vuitton/android/data/net/atg/ATGSessionIdentification;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Authenticated extends SessionCookieState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ATGSessionIdentification f47017a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Authenticated(ATGSessionIdentification aTGSessionIdentification) {
            super(null);
            aTGSessionIdentification.getClass();
            this.f47017a = aTGSessionIdentification;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/data/net/atg/SessionCookieState$Empty;", "Lcom/vuitton/android/data/net/atg/SessionCookieState;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Empty extends SessionCookieState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Empty f47018a = new Empty(null);
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/data/net/atg/SessionCookieState$Invalid;", "Lcom/vuitton/android/data/net/atg/SessionCookieState;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Invalid extends SessionCookieState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Invalid f47019a = new Invalid(null);
    }

    public SessionCookieState(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
