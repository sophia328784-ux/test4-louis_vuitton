package io.jsonwebtoken.io;

/* JADX INFO: loaded from: classes4.dex */
public interface Decoder<T, R> {
    R decode(T t) throws DecodingException;
}
