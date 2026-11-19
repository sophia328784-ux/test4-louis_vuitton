package com.vuitton.android.core.helper;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/core/helper/DebounceHandler;", "", "", "intervalMs", "<init>", "(J)V", "core"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DebounceHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f43513a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f43514b;

    public /* synthetic */ DebounceHandler(long j2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 500L : j2);
    }

    public DebounceHandler(long j2) {
        this.f43513a = j2;
    }

    public DebounceHandler() {
        this(0L, 1, null);
    }
}
