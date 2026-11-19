package com.vuitton.android.core.schedulers;

import kotlin.Metadata;
import kotlinx.coroutines.MainCoroutineDispatcher;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;", "", "core"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface CoroutineDispatchers {
    /* JADX INFO: renamed from: a */
    MainCoroutineDispatcher getF43529a();

    /* JADX INFO: renamed from: b */
    DefaultIoScheduler getF43530b();

    /* JADX INFO: renamed from: getDefault */
    DefaultScheduler getF43531c();
}
