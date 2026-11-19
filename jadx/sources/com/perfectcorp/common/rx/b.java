package com.perfectcorp.common.rx;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;

/* JADX INFO: loaded from: classes3.dex */
final class b implements Consumer<Throwable> {
    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final /* synthetic */ void accept(Object obj) {
        Log.e("ErrorConsumers", "onError", (Throwable) obj);
    }
}
