package com.perfectcorp.common.rx;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import java.io.IOException;
import java.net.SocketException;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes3.dex */
public final class c implements Consumer<Throwable> {

    public static class a extends RuntimeException {
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        Throwable cause = (Throwable) obj;
        if ((cause instanceof com.perfectcorp.thirdparty.io.reactivex.exceptions.c) || (cause instanceof ExecutionException)) {
            cause = cause.getCause();
        }
        if ((cause instanceof SocketException) || (cause instanceof IOException) || (cause instanceof InterruptedException)) {
            return;
        }
        Log.e("ErrorHandler", "Unhandled exception. Log for debugging.", new a(cause));
    }
}
