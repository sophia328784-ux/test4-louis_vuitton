package com.perfectcorp.common.concurrent;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
final class c extends NamedThreadFactory {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicInteger f39177b = new AtomicInteger();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f39178c;

    public c(String str) {
        this.f39178c = str;
    }

    @Override // com.perfectcorp.common.concurrent.NamedThreadFactory
    public final String a() {
        return this.f39178c + this.f39177b.getAndIncrement();
    }
}
