package com.vuitton.android.presentation.extensions;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.gestures.ScrollExtensionsKt;
import androidx.compose.foundation.lazy.LazyListItemInfo;
import androidx.compose.foundation.lazy.LazyListLayoutInfo;
import androidx.compose.foundation.lazy.LazyListState;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LazyListStateExtKt {
    /* JADX WARN: Code duplicated, block: B:49:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:50:0x00de  */
    /* JADX WARN: Code duplicated, block: B:53:0x00eb A[Catch: all -> 0x010f, TryCatch #0 {all -> 0x010f, blocks: (B:14:0x002d, B:58:0x0107, B:19:0x0044, B:51:0x00e7, B:53:0x00eb, B:55:0x00ee, B:22:0x0055, B:47:0x00c4, B:43:0x00a9), top: B:71:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x00ee A[Catch: all -> 0x010f, TryCatch #0 {all -> 0x010f, blocks: (B:14:0x002d, B:58:0x0107, B:19:0x0044, B:51:0x00e7, B:53:0x00eb, B:55:0x00ee, B:22:0x0055, B:47:0x00c4, B:43:0x00a9), top: B:71:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00a2, code lost:
    
        if (b(r9, r13, r2, r0) == r1) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0104, code lost:
    
        if (b(r2, r6, r13, r0) == r1) goto L57;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(androidx.compose.foundation.lazy.LazyListState r9, int r10, long r11, kotlin.coroutines.jvm.internal.ContinuationImpl r13) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.extensions.LazyListStateExtKt.a(androidx.compose.foundation.lazy.LazyListState, int, long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static final Object b(LazyListState lazyListState, LazyListLayoutInfo lazyListLayoutInfo, LazyListItemInfo lazyListItemInfo, Continuation continuation) {
        Object objA;
        float q = ((lazyListItemInfo.getQ() / 2) + lazyListItemInfo.getP()) - ((lazyListLayoutInfo.getM() + lazyListLayoutInfo.getL()) / 2);
        return (q != Call.Parameters.DEFAULT_CAMERA_ZOOM && (objA = ScrollExtensionsKt.a(lazyListState, q, AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 7, null), (ContinuationImpl) continuation)) == CoroutineSingletons.COROUTINE_SUSPENDED) ? objA : Unit.f71739a;
    }
}
