package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zay implements PendingResult.StatusListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BasePendingResult f29127a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zaaa f29128b;

    public zay(zaaa zaaaVar, BasePendingResult basePendingResult) {
        this.f29127a = basePendingResult;
        Objects.requireNonNull(zaaaVar);
        this.f29128b = zaaaVar;
    }

    @Override // com.google.android.gms.common.api.PendingResult.StatusListener
    public final void a(Status status) {
        this.f29128b.f29067a.remove(this.f29127a);
    }
}
