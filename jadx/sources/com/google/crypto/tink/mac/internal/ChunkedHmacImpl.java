package com.google.crypto.tink.mac.internal;

import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.mac.ChunkedMac;
import com.google.crypto.tink.mac.HmacKey;
import com.google.errorprone.annotations.Immutable;
import defpackage.v40;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes2.dex */
@Immutable
public final class ChunkedHmacImpl implements ChunkedMac {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TinkFipsUtil.AlgorithmFipsCompatibility f34087a = TinkFipsUtil.AlgorithmFipsCompatibility.ALGORITHM_REQUIRES_BORINGCRYPTO;

    public ChunkedHmacImpl(HmacKey hmacKey) throws GeneralSecurityException {
        if (f34087a.a()) {
            return;
        }
        v40.j("Can not use HMAC in FIPS-mode, as BoringCrypto module is not available.");
        throw null;
    }
}
