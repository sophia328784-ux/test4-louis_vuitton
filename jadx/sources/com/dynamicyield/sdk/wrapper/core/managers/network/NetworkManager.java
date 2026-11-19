package com.dynamicyield.sdk.wrapper.core.managers.network;

import com.dynamicyield.sdk.wrapper.core.managers.logging.loggingManager.DYLogger;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/network/NetworkManager;", "", "", "apiKey", "dyVersion", "Lkotlin/UInt;", "timeoutInterval", "<init>", "(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class NetworkManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f25929a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f25930b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f25931c;
    public final DYLogger d;

    public NetworkManager(String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        this.f25929a = str;
        this.f25930b = str2;
        this.f25931c = i2;
        this.d = new DYLogger("NetworkManager", null, 2, null);
    }

    public /* synthetic */ NetworkManager(String str, String str2, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i3 & 4) != 0 ? 30 : i2, null);
    }
}
