package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager;

import android.text.TextUtils;
import com.perfectcorp.thirdparty.com.google.common.base.Predicate;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class a0 implements Predicate {
    @Override // com.perfectcorp.thirdparty.com.google.common.base.Predicate
    public final boolean apply(Object obj) {
        ExecutorService executorService = c.b.z;
        return !TextUtils.isEmpty((String) obj);
    }
}
