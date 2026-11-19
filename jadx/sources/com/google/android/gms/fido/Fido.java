package com.google.android.gms.fido;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.fido.zzaa;
import com.google.android.gms.internal.fido.zzab;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Fido {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f29403a = 0;

    static {
        new Api("Fido.U2F_ZERO_PARTY_API", new zzab(), new Api.ClientKey());
        new zzaa();
    }
}
