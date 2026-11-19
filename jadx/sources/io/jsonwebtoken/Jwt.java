package io.jsonwebtoken;

import io.jsonwebtoken.Header;

/* JADX INFO: loaded from: classes4.dex */
public interface Jwt<H extends Header, B> {
    B getBody();

    H getHeader();
}
