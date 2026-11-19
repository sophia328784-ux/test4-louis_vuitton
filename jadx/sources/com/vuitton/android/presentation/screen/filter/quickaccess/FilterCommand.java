package com.vuitton.android.presentation.screen.filter.quickaccess;

import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.MapsKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Singleton
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;", "", "<init>", "()V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FilterCommand {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableStateFlow f57991a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StateFlow f57992b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SharedFlowImpl f57993c;
    public final SharedFlowImpl d;

    @Inject
    public FilterCommand() {
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(MapsKt.i(new Pair(QafSource.PLP, null), new Pair(QafSource.SEARCH, null)));
        this.f57991a = mutableStateFlowA;
        this.f57992b = mutableStateFlowA;
        this.f57993c = SharedFlowKt.b(0, 0, null, 7);
        this.d = SharedFlowKt.b(0, 0, null, 7);
    }
}
