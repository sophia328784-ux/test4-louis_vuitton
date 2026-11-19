package com.google.android.gms.fido.fido2.api.common;

import defpackage.fc;

/* JADX INFO: loaded from: classes2.dex */
public final class zzbc extends Exception {
    public zzbc(String str) {
        super(fc.h("User verification requirement ", str, " not supported"));
    }
}
