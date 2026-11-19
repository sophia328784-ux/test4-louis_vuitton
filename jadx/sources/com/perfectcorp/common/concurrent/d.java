package com.perfectcorp.common.concurrent;

/* JADX INFO: loaded from: classes3.dex */
final class d extends NamedThreadFactory {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f39179b;

    public d(String str) {
        this.f39179b = str;
    }

    @Override // com.perfectcorp.common.concurrent.NamedThreadFactory
    public final String a() {
        return this.f39179b;
    }
}
