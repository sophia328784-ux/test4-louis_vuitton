package io.jsonwebtoken.io;

/* JADX INFO: loaded from: classes4.dex */
public interface Deserializer<T> {
    T deserialize(byte[] bArr) throws DeserializationException;
}
