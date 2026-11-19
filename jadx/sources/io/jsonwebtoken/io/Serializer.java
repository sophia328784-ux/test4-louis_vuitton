package io.jsonwebtoken.io;

/* JADX INFO: loaded from: classes4.dex */
public interface Serializer<T> {
    byte[] serialize(T t) throws SerializationException;
}
