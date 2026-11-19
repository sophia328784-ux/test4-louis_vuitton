package com.kakao.sdk.common.util;

import com.kakao.sdk.common.KakaoSdk;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/kakao/sdk/common/util/SdkLog;", "", "", "enabled", "<init>", "(Z)V", "Companion", "common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class SdkLog {
    public static final Companion d = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Lazy f35886e = LazyKt.b(SdkLog$Companion$instance$2.f35890c);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f35887a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinkedList f35888b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Lazy f35889c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/kakao/sdk/common/util/SdkLog$Companion;", "", "", "MAX_SIZE", "I", "common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static void a(Serializable serializable) {
            SdkLog.a((SdkLog) SdkLog.f35886e.getF71699b(), serializable, SdkLogLevel.E);
        }

        public static void b(Object obj) {
            SdkLog.a((SdkLog) SdkLog.f35886e.getF71699b(), obj, SdkLogLevel.I);
        }
    }

    public SdkLog(boolean z) {
        this.f35887a = z;
        this.f35888b = new LinkedList();
        this.f35889c = LazyKt.b(SdkLog$dateFormat$2.f35891c);
    }

    public static final void a(SdkLog sdkLog, Object obj, SdkLogLevel sdkLogLevel) {
        LinkedList linkedList = sdkLog.f35888b;
        String str = sdkLogLevel.getSymbol() + ' ' + obj;
        if (!sdkLog.f35887a || sdkLogLevel.compareTo(SdkLogLevel.I) < 0) {
            return;
        }
        linkedList.add(((SimpleDateFormat) sdkLog.f35889c.getF71699b()).format(new Date()) + ' ' + str);
        if (linkedList.size() > 100) {
            linkedList.poll();
        }
    }

    public SdkLog() {
        this(false, 1, null);
    }

    public SdkLog(boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? KakaoSdk.f35869c : z);
    }
}
