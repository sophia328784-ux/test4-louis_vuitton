package com.vuitton.android.data.datasource.pdp;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/datasource/pdp/CustomizationLocalDataSource;", "", "<init>", "()V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CustomizationLocalDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableStateFlow f44222a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StateFlow f44223b;

    @Inject
    public CustomizationLocalDataSource() {
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(EmptyList.f71768b);
        this.f44222a = mutableStateFlowA;
        this.f44223b = mutableStateFlowA;
    }
}
