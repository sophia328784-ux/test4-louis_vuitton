package com.vuitton.android.data.net.atg;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/data/net/atg/ATGSessionStatus;", "", "Authenticated", "Anonymous", "Empty", "Lcom/vuitton/android/data/net/atg/ATGSessionStatus$Anonymous;", "Lcom/vuitton/android/data/net/atg/ATGSessionStatus$Authenticated;", "Lcom/vuitton/android/data/net/atg/ATGSessionStatus$Empty;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class ATGSessionStatus {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/net/atg/ATGSessionStatus$Anonymous;", "Lcom/vuitton/android/data/net/atg/ATGSessionStatus;", "Lcom/vuitton/android/data/net/atg/ATGSessionIdentification;", "atgSessionIdentification", "<init>", "(Lcom/vuitton/android/data/net/atg/ATGSessionIdentification;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Anonymous extends ATGSessionStatus {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Anonymous(ATGSessionIdentification aTGSessionIdentification) {
            super(null);
            aTGSessionIdentification.getClass();
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/data/net/atg/ATGSessionStatus$Authenticated;", "Lcom/vuitton/android/data/net/atg/ATGSessionStatus;", "", "sfAccessToken", "Lcom/vuitton/android/data/net/atg/ATGSessionIdentification;", "atgSessionIdentification", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/data/net/atg/ATGSessionIdentification;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Authenticated extends ATGSessionStatus {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Authenticated(String str, ATGSessionIdentification aTGSessionIdentification) {
            super(null);
            str.getClass();
            aTGSessionIdentification.getClass();
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/data/net/atg/ATGSessionStatus$Empty;", "Lcom/vuitton/android/data/net/atg/ATGSessionStatus;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Empty extends ATGSessionStatus {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Empty f47015a = new Empty(null);
    }

    public ATGSessionStatus(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
