package com.vuitton.android.data.datasource.dispatch;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;", "", "<init>", "()V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DispatchMemCacheDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f44097a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f44098b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public InAppDispatch f44099c;

    public final void a(List list) {
        synchronized (this.f44097a) {
            this.f44098b.clear();
        }
        synchronized (this.f44097a) {
            this.f44098b.addAll(list);
        }
    }
}
