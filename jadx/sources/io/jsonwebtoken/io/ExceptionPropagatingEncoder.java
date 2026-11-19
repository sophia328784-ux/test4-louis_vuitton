package io.jsonwebtoken.io;

import defpackage.fc;
import io.jsonwebtoken.lang.Assert;

/* JADX INFO: loaded from: classes4.dex */
class ExceptionPropagatingEncoder<T, R> implements Encoder<T, R> {
    private final Encoder<T, R> encoder;

    public ExceptionPropagatingEncoder(Encoder<T, R> encoder) {
        Assert.notNull(encoder, "Encoder cannot be null.");
        this.encoder = encoder;
    }

    @Override // io.jsonwebtoken.io.Encoder
    public R encode(T t) throws EncodingException {
        Assert.notNull(t, "Encode argument cannot be null.");
        try {
            return this.encoder.encode(t);
        } catch (EncodingException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new EncodingException(fc.g(e3, new StringBuilder("Unable to encode input: ")), e3);
        }
    }
}
