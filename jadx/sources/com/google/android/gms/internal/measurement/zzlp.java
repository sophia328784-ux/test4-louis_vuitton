package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.util.concurrent.MoreExecutors;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class zzlp implements Supplier {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ zzlp f30730b = new zzlp();

    @Override // com.google.common.base.Supplier
    public final /* synthetic */ Object get() {
        Object obj = zzlk.f30717j;
        return MoreExecutors.d(Executors.newSingleThreadScheduledExecutor(zzlo.f30729b));
    }
}
