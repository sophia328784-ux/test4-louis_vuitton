package com.perfectcorp.thirdparty.io.reactivex.disposables;

import com.perfectcorp.thirdparty.io.reactivex.functions.Action;
import com.perfectcorp.thirdparty.io.reactivex.internal.util.e;

/* JADX INFO: loaded from: classes3.dex */
final class a extends c<Action> {
    @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.c
    public final void a(Object obj) {
        try {
            ((Action) obj).run();
        } catch (Throwable th) {
            Throwable th2 = e.f43154a;
            throw th;
        }
    }
}
