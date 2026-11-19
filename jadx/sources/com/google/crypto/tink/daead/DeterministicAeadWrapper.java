package com.google.crypto.tink.daead;

import com.google.crypto.tink.CryptoFormat;
import com.google.crypto.tink.DeterministicAead;
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
public class DeterministicAeadWrapper implements PrimitiveWrapper<DeterministicAead, DeterministicAead> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Logger f33963a = Logger.getLogger(DeterministicAeadWrapper.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final DeterministicAeadWrapper f33964b = new DeterministicAeadWrapper();

    public static class WrappedDeterministicAead implements DeterministicAead {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final PrimitiveSet f33965a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MonitoringClient.Logger f33966b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final MonitoringClient.Logger f33967c;

        public WrappedDeterministicAead(PrimitiveSet<DeterministicAead> primitiveSet) {
            this.f33965a = primitiveSet;
            boolean zIsEmpty = primitiveSet.f33862c.f34089a.isEmpty();
            MonitoringClient.Logger logger = MonitoringUtil.f33995a;
            if (zIsEmpty) {
                this.f33966b = logger;
                this.f33967c = logger;
                return;
            }
            Object obj = (MonitoringClient) MutableMonitoringRegistry.f33997b.f33999a.get();
            obj = obj == null ? MutableMonitoringRegistry.f33998c : obj;
            MonitoringUtil.a(primitiveSet);
            obj.getClass();
            this.f33966b = logger;
            this.f33967c = logger;
        }

        @Override // com.google.crypto.tink.DeterministicAead
        public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
            MonitoringClient.Logger logger = this.f33966b;
            PrimitiveSet primitiveSet = this.f33965a;
            try {
                PrimitiveSet.Entry entry = primitiveSet.f33861b;
                PrimitiveSet.Entry entry2 = primitiveSet.f33861b;
                byte[] bArr3 = entry.f33868c;
                byte[] bArrA = Bytes.a(bArr3 == null ? null : Arrays.copyOf(bArr3, bArr3.length), ((DeterministicAead) entry2.f33867b).a(bArr, bArr2));
                int i2 = entry2.f33870f;
                logger.getClass();
                return bArrA;
            } catch (GeneralSecurityException e2) {
                logger.getClass();
                throw e2;
            }
        }

        @Override // com.google.crypto.tink.DeterministicAead
        public final byte[] b(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
            int length = bArr.length;
            PrimitiveSet primitiveSet = this.f33965a;
            MonitoringClient.Logger logger = this.f33967c;
            if (length > 5) {
                byte[] bArrCopyOf = Arrays.copyOf(bArr, 5);
                byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 5, bArr.length);
                Iterator it = primitiveSet.a(bArrCopyOf).iterator();
                while (it.hasNext()) {
                    try {
                        byte[] bArrB = ((DeterministicAead) ((PrimitiveSet.Entry) it.next()).f33867b).b(bArrCopyOfRange, bArr2);
                        logger.getClass();
                        return bArrB;
                    } catch (GeneralSecurityException e2) {
                        DeterministicAeadWrapper.f33963a.info("ciphertext prefix matches a key, but cannot decrypt: " + e2);
                    }
                }
            }
            Iterator it2 = primitiveSet.a(CryptoFormat.f33840a).iterator();
            while (it2.hasNext()) {
                try {
                    byte[] bArrB2 = ((DeterministicAead) ((PrimitiveSet.Entry) it2.next()).f33867b).b(bArr, bArr2);
                    logger.getClass();
                    return bArrB2;
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
        return new WrappedDeterministicAead(primitiveSet);
    }

    @Override // com.google.crypto.tink.PrimitiveWrapper
    public final Class b() {
        return DeterministicAead.class;
    }

    @Override // com.google.crypto.tink.PrimitiveWrapper
    public final Class c() {
        return DeterministicAead.class;
    }
}
