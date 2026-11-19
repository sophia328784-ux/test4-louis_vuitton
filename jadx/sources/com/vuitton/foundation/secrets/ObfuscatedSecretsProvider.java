package com.vuitton.foundation.secrets;

import com.vuitton.foundation.logger.Logger;
import java.util.Arrays;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.Charsets;

/* JADX INFO: loaded from: classes4.dex */
@Singleton
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/secrets/ObfuscatedSecretsProvider;", "Lcom/vuitton/foundation/secrets/SecretsProvider;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "<init>", "(Lcom/vuitton/foundation/logger/Logger;)V", "Companion", "secrets"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ObfuscatedSecretsProvider implements SecretsProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f68295a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/secrets/ObfuscatedSecretsProvider$Companion;", "", "", "TAG", "Ljava/lang/String;", "secrets"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public ObfuscatedSecretsProvider(Logger logger) {
        logger.getClass();
        this.f68295a = logger;
        try {
            int i2 = NativeSecrets.f68294a;
        } catch (Throwable th) {
            logger.c("SecretsProvider", "libsecrets.so failed to load", th);
            throw th;
        }
    }

    @Override // com.vuitton.foundation.secrets.SecretsProvider
    public final String a(SecretKey secretKey) {
        secretKey.getClass();
        try {
            byte[] bArrNativeGetSecret = NativeSecrets.nativeGetSecret(secretKey.ordinal());
            try {
                return new String(bArrNativeGetSecret, Charsets.UTF_8);
            } finally {
                Arrays.fill(bArrNativeGetSecret, 0, bArrNativeGetSecret.length, (byte) 0);
            }
        } catch (Throwable th) {
            this.f68295a.c("SecretsProvider", "Failed to read secret " + secretKey, th);
            throw th;
        }
    }
}
