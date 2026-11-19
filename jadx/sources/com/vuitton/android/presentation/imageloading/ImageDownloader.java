package com.vuitton.android.presentation.imageloading;

import android.content.Context;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/imageloading/ImageDownloader;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class ImageDownloader {
    public static Object a(Context context, String str, SuspendLambda suspendLambda) {
        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
        return BuildersKt.f(DefaultIoScheduler.f75161b, new ImageDownloader$getBitmap$2(context, str, null), suspendLambda);
    }

    public static Object b(Context context, String str, Continuation continuation) {
        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
        return BuildersKt.f(DefaultIoScheduler.f75161b, new ImageDownloader$getBitmapFor3d$2(context, str, null), continuation);
    }
}
