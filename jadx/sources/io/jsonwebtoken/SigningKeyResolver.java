package io.jsonwebtoken;

import java.security.Key;

/* JADX INFO: loaded from: classes4.dex */
public interface SigningKeyResolver {
    Key resolveSigningKey(JwsHeader jwsHeader, Claims claims);

    Key resolveSigningKey(JwsHeader jwsHeader, String str);
}
