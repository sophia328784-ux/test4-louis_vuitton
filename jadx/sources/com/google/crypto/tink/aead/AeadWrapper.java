package com.google.crypto.tink.aead;

import com.google.crypto.tink.Aead;
import com.google.crypto.tink.CryptoFormat;
import com.google.crypto.tink.PrimitiveSet;
import com.google.crypto.tink.PrimitiveWrapper;
import com.google.crypto.tink.internal.MonitoringUtil;
import com.google.crypto.tink.internal.MutableMonitoringRegistry;
import com.google.crypto.tink.monitoring.MonitoringClient;
import com.google.crypto.tink.subtle.Bytes;
import defpackage.v40;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class AeadWrapper implements PrimitiveWrapper<Aead, Aead> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Logger f33878a = Logger.getLogger(AeadWrapper.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final AeadWrapper f33879b = new AeadWrapper();

    public static class WrappedAead implements Aead {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final PrimitiveSet f33880a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MonitoringClient.Logger f33881b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final MonitoringClient.Logger f33882c;

        public WrappedAead(PrimitiveSet primitiveSet) {
            this.f33880a = primitiveSet;
            boolean zIsEmpty = primitiveSet.f33862c.f34089a.isEmpty();
            MonitoringClient.Logger logger = MonitoringUtil.f33995a;
            if (zIsEmpty) {
                this.f33881b = logger;
                this.f33882c = logger;
                return;
            }
            Object obj = (MonitoringClient) MutableMonitoringRegistry.f33997b.f33999a.get();
            obj = obj == null ? MutableMonitoringRegistry.f33998c : obj;
            MonitoringUtil.a(primitiveSet);
            obj.getClass();
            this.f33881b = logger;
            this.f33882c = logger;
        }

        @Override // com.google.crypto.tink.Aead
        public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
            MonitoringClient.Logger logger = this.f33881b;
            PrimitiveSet.Entry entry = this.f33880a.f33861b;
            try {
                byte[] bArr3 = entry.f33868c;
                byte[] bArrA = Bytes.a(bArr3 == null ? null : Arrays.copyOf(bArr3, bArr3.length), ((Aead) entry.f33867b).a(bArr, bArr2));
                int i2 = entry.f33870f;
                int length = bArr.length;
                logger.getClass();
                return bArrA;
            } catch (GeneralSecurityException e2) {
                logger.getClass();
                throw e2;
            }
        }

        @Override // com.google.crypto.tink.Aead
        public final byte[] decrypt(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
            int length = bArr.length;
            PrimitiveSet primitiveSet = this.f33880a;
            MonitoringClient.Logger logger = this.f33882c;
            if (length > 5) {
                byte[] bArrCopyOf = Arrays.copyOf(bArr, 5);
                byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 5, bArr.length);
                Iterator it = primitiveSet.a(bArrCopyOf).iterator();
                while (it.hasNext()) {
                    try {
                        byte[] bArrDecrypt = ((Aead) ((PrimitiveSet.Entry) it.next()).f33867b).decrypt(bArrCopyOfRange, bArr2);
                        logger.getClass();
                        return bArrDecrypt;
                    } catch (GeneralSecurityException e2) {
                        AeadWrapper.f33878a.info("ciphertext prefix matches a key, but cannot decrypt: " + e2);
                    }
                }
            }
            Iterator it2 = primitiveSet.a(CryptoFormat.f33840a).iterator();
            while (it2.hasNext()) {
                try {
                    byte[] bArrDecrypt2 = ((Aead) ((PrimitiveSet.Entry) it2.next()).f33867b).decrypt(bArr, bArr2);
                    logger.getClass();
                    return bArrDecrypt2;
                } catch (GeneralSecurityException unused) {
                }
            }
            logger.getClass();
            v40.j("decryption failed");
            return null;
        }
    }

    @Override // com.google.crypto.tink.PrimitiveWrapper
    public final Object a(PrimitiveSet primitiveSet) {
        return new WrappedAead(primitiveSet);
    }

    @Override // com.google.crypto.tink.PrimitiveWrapper
    public final Class b() {
        return Aead.class;
    }

    @Override // com.google.crypto.tink.PrimitiveWrapper
    public final Class c() {
        return Aead.class;
    }
}
