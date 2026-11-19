package io.jsonwebtoken;

/* JADX INFO: loaded from: classes4.dex */
public interface CompressionCodecResolver {
    CompressionCodec resolveCompressionCodec(Header header) throws CompressionException;
}
