package com.google.common.util.concurrent;

import java.security.PrivilegedExceptionAction;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a implements PrivilegedExceptionAction {
    @Override // java.security.PrivilegedExceptionAction
    public final Object run() {
        return AbstractFutureState.UnsafeAtomicHelper.i();
    }
}
