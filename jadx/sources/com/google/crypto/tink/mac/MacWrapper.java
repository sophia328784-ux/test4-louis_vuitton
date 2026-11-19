package com.google.crypto.tink.mac;

import com.google.crypto.tink.CryptoFormat;
import com.google.crypto.tink.Key;
import com.google.crypto.tink.Mac;
import com.google.crypto.tink.PrimitiveSet;
import com.google.crypto.tink.PrimitiveWrapper;
import com.google.crypto.tink.internal.MonitoringUtil;
import com.google.crypto.tink.internal.MutableMonitoringRegistry;
import com.google.crypto.tink.monitoring.MonitoringClient;
import com.google.crypto.tink.proto.OutputPrefixType;
import com.google.crypto.tink.subtle.Bytes;
import defpackage.v40;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
class MacWrapper implements PrimitiveWrapper<Mac, Mac> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Logger f34079a = Logger.getLogger(MacWrapper.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f34080b = {0};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final MacWrapper f34081c = new MacWrapper();

    public static class WrappedMac implements Mac {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final PrimitiveSet f34082a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MonitoringClient.Logger f34083b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final MonitoringClient.Logger f34084c;

        public WrappedMac(PrimitiveSet primitiveSet) {
            this.f34082a = primitiveSet;
            boolean zIsEmpty = primitiveSet.f33862c.f34089a.isEmpty();
            MonitoringClient.Logger logger = MonitoringUtil.f33995a;
            if (zIsEmpty) {
                this.f34083b = logger;
                this.f34084c = logger;
                return;
            }
            Object obj = (MonitoringClient) MutableMonitoringRegistry.f33997b.f33999a.get();
            obj = obj == null ? MutableMonitoringRegistry.f33998c : obj;
            MonitoringUtil.a(primitiveSet);
            obj.getClass();
            this.f34083b = logger;
            this.f34084c = logger;
        }

        @Override // com.google.crypto.tink.Mac
        public final void a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
            int length = bArr.length;
            MonitoringClient.Logger logger = this.f34084c;
            if (length <= 5) {
                logger.getClass();
                v40.j("tag too short");
                return;
            }
            byte[] bArrCopyOf = Arrays.copyOf(bArr, 5);
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 5, bArr.length);
            PrimitiveSet primitiveSet = this.f34082a;
            for (PrimitiveSet.Entry entry : primitiveSet.a(bArrCopyOf)) {
                try {
                    ((Mac) entry.f33867b).a(bArrCopyOfRange, entry.f33869e.equals(OutputPrefixType.LEGACY) ? Bytes.a(bArr2, MacWrapper.f34080b) : bArr2);
                    logger.getClass();
                    return;
                } catch (GeneralSecurityException e2) {
                    MacWrapper.f34079a.info("tag prefix matches a key, but cannot verify: " + e2);
                }
            }
            Iterator it = primitiveSet.a(CryptoFormat.f33840a).iterator();
            while (it.hasNext()) {
                try {
                    ((Mac) ((PrimitiveSet.Entry) it.next()).f33867b).a(bArr, bArr2);
                    logger.getClass();
                    return;
                } catch (GeneralSecurityException unused) {
                }
            }
            logger.getClass();
            v40.j("invalid MAC");
        }

        @Override // com.google.crypto.tink.Mac
        public final byte[] b(byte[] bArr) throws GeneralSecurityException {
            MonitoringClient.Logger logger = this.f34083b;
            PrimitiveSet.Entry entry = this.f34082a.f33861b;
            if (entry.f33869e.equals(OutputPrefixType.LEGACY)) {
                bArr = Bytes.a(bArr, MacWrapper.f34080b);
            }
            try {
                byte[] bArr2 = entry.f33868c;
                byte[] bArrA = Bytes.a(bArr2 == null ? null : Arrays.copyOf(bArr2, bArr2.length), ((Mac) entry.f33867b).b(bArr));
                int i2 = entry.f33870f;
                logger.getClass();
                return bArrA;
            } catch (GeneralSecurityException e2) {
                logger.getClass();
                throw e2;
            }
        }
    }

    @Override // com.google.crypto.tink.PrimitiveWrapper
    public final Object a(PrimitiveSet primitiveSet) throws GeneralSecurityException {
        Iterator it = primitiveSet.f33860a.values().iterator();
        while (it.hasNext()) {
            for (PrimitiveSet.Entry entry : (List) it.next()) {
                Key key = entry.f33871h;
                if (key instanceof MacKey) {
                    MacKey macKey = (MacKey) key;
                    byte[] bArr = entry.f33868c;
                    com.google.crypto.tink.util.Bytes bytesA = com.google.crypto.tink.util.Bytes.a(bArr == null ? null : Arrays.copyOf(bArr, bArr.length));
                    if (!bytesA.equals(macKey.a())) {
                        StringBuilder sb = new StringBuilder("Mac Key with parameters ");
                        sb.append(macKey.b());
                        com.google.crypto.tink.util.Bytes bytesA2 = macKey.a();
                        sb.append(" has wrong output prefix (");
                        sb.append(bytesA2);
                        sb.append(") instead of (");
                        sb.append(bytesA);
                        sb.append(")");
                        throw new GeneralSecurityException(sb.toString());
                    }
                }
            }
        }
        return new WrappedMac(primitiveSet);
    }

    @Override // com.google.crypto.tink.PrimitiveWrapper
    public final Class b() {
        return Mac.class;
    }

    @Override // com.google.crypto.tink.PrimitiveWrapper
    public final Class c() {
        return Mac.class;
    }
}
