package com.google.android.gms.auth;

import android.content.Intent;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public class UserRecoverableAuthException extends GoogleAuthException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UserRecoverableAuthException(String str, Intent intent) {
        super(str);
        zzn zznVar = zzn.zza;
        Preconditions.h(zznVar);
    }
}
