package io.jsonwebtoken.impl.lang;

import io.jsonwebtoken.lang.UnknownClassException;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public final class LegacyServices {
    public static <T> T loadFirst(Class<T> cls) {
        try {
            return (T) Services.loadFirst(cls);
        } catch (UnavailableImplementationException e2) {
            throw new UnknownClassException(e2.getMessage(), e2);
        }
    }
}
