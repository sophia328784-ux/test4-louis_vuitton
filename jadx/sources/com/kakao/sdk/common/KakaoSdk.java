package com.kakao.sdk.common;

import com.kakao.sdk.common.model.ApplicationContextInfo;
import com.kakao.sdk.common.model.ApprovalType;
import com.kakao.sdk.common.model.ServerHosts;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lcom/kakao/sdk/common/KakaoSdk;", "", "Type", "common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class KakaoSdk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static ApplicationContextInfo f35867a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static ServerHosts f35868b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f35869c;
    public static ApprovalType d;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/kakao/sdk/common/KakaoSdk$Type;", "", "KOTLIN", "RX_KOTLIN", "common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Type {
        private static final /* synthetic */ Type[] $VALUES;
        public static final Type KOTLIN;
        public static final Type RX_KOTLIN;

        static {
            Type type = new Type("KOTLIN", 0);
            KOTLIN = type;
            Type type2 = new Type("RX_KOTLIN", 1);
            RX_KOTLIN = type2;
            $VALUES = new Type[]{type, type2};
        }

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) $VALUES.clone();
        }
    }

    public static ApplicationContextInfo a() {
        ApplicationContextInfo applicationContextInfo = f35867a;
        if (applicationContextInfo != null) {
            return applicationContextInfo;
        }
        Intrinsics.h("applicationContextInfo");
        throw null;
    }

    public static ServerHosts b() {
        ServerHosts serverHosts = f35868b;
        if (serverHosts != null) {
            return serverHosts;
        }
        Intrinsics.h("hosts");
        throw null;
    }
}
