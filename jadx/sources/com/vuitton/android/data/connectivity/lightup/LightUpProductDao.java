package com.vuitton.android.data.connectivity.lightup;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpDeviceType;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bg\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao;", "", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface LightUpProductDao {
    Object a(LVLightUpDeviceType lVLightUpDeviceType, Continuation continuation);

    Object b(LightUpProductEntity lightUpProductEntity, Continuation continuation);

    Object c(LightUpProductEntity lightUpProductEntity, Continuation continuation);

    Object d(String str, SuspendLambda suspendLambda);

    Object e(Continuation continuation);
}
