package com.google.android.gms.common.api;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public abstract class PendingResults {
    public static PendingResult a(Status status) {
        Preconditions.b(!status.W1(), "Status code must not be SUCCESS");
        zad zadVar = new zad(null, status);
        zadVar.f(status);
        return zadVar;
    }
}
