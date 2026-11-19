package io.reactivex.rxjava3.observers;

import io.reactivex.rxjava3.internal.util.VolatileSizeArrayList;
import io.reactivex.rxjava3.observers.BaseTestConsumer;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BaseTestConsumer<T, U extends BaseTestConsumer<T, U>> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f71132e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final VolatileSizeArrayList f71131c = new VolatileSizeArrayList();
    public final VolatileSizeArrayList d = new VolatileSizeArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CountDownLatch f71130b = new CountDownLatch(1);
}
