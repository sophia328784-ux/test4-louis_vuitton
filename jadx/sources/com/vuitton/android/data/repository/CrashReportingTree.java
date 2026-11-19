package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.analytics.HitType;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import timber.log.Timber;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/data/repository/CrashReportingTree;", "Ltimber/log/Timber$Tree;", "Lkotlin/Function1;", "Lcom/vuitton/foundation/model/domain/model/analytics/Hit;", "", "sendHit", "<init>", "(Lkotlin/jvm/functions/Function1;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
final class CrashReportingTree extends Timber.Tree {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function1 f47635b;

    public CrashReportingTree(Function1<? super Hit, Unit> function1) {
        function1.getClass();
        this.f47635b = function1;
    }

    @Override // timber.log.Timber.Tree
    public final void d(int i2, String str, String str2, Throwable th) {
        str2.getClass();
        if (i2 == 6) {
            if (str == null) {
                str = "";
            }
            this.f47635b.invoke(new Hit.AnomalyHit.DefaultAnomalyHit(tr.h(str2, " ", th != null ? th.getMessage() : null), null, new HitType.Anomaly(str), 2, null));
        }
    }
}
