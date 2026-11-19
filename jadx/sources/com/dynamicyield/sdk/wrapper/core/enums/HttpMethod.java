package com.dynamicyield.sdk.wrapper.core.enums;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/enums/HttpMethod;", "", "GET", "POST", "PUT", "DELETE", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class HttpMethod {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ HttpMethod[] $VALUES;
    public static final HttpMethod DELETE;
    public static final HttpMethod GET;
    public static final HttpMethod POST;
    public static final HttpMethod PUT;

    static {
        HttpMethod httpMethod = new HttpMethod("GET", 0);
        GET = httpMethod;
        HttpMethod httpMethod2 = new HttpMethod("POST", 1);
        POST = httpMethod2;
        HttpMethod httpMethod3 = new HttpMethod("PUT", 2);
        PUT = httpMethod3;
        HttpMethod httpMethod4 = new HttpMethod("DELETE", 3);
        DELETE = httpMethod4;
        HttpMethod[] httpMethodArr = {httpMethod, httpMethod2, httpMethod3, httpMethod4};
        $VALUES = httpMethodArr;
        $ENTRIES = EnumEntriesKt.a(httpMethodArr);
    }

    public static HttpMethod valueOf(String str) {
        return (HttpMethod) Enum.valueOf(HttpMethod.class, str);
    }

    public static HttpMethod[] values() {
        return (HttpMethod[]) $VALUES.clone();
    }
}
