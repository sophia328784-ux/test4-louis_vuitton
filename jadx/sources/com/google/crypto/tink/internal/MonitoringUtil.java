package com.google.crypto.tink.internal;

import com.google.crypto.tink.KeyStatus;
import com.google.crypto.tink.PrimitiveSet;
import com.google.crypto.tink.monitoring.MonitoringAnnotations;
import com.google.crypto.tink.monitoring.MonitoringClient;
import com.google.crypto.tink.monitoring.MonitoringKeysetInfo;
import com.google.crypto.tink.proto.KeyStatusType;
import defpackage.bm;
import defpackage.md;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class MonitoringUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final MonitoringClient.Logger f33995a = new DoNothingLogger();

    /* JADX INFO: renamed from: com.google.crypto.tink.internal.MonitoringUtil$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f33996a;

        static {
            int[] iArr = new int[KeyStatusType.values().length];
            f33996a = iArr;
            try {
                iArr[KeyStatusType.ENABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33996a[KeyStatusType.DISABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f33996a[KeyStatusType.DESTROYED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static class DoNothingLogger implements MonitoringClient.Logger {
    }

    public static MonitoringKeysetInfo a(PrimitiveSet primitiveSet) {
        KeyStatus keyStatus;
        MonitoringKeysetInfo.Builder builder = new MonitoringKeysetInfo.Builder();
        MonitoringAnnotations monitoringAnnotations = primitiveSet.f33862c;
        if (builder.f34094a == null) {
            md.k("setAnnotations cannot be called after build()");
            return null;
        }
        builder.f34095b = monitoringAnnotations;
        Iterator it = primitiveSet.f33860a.values().iterator();
        while (it.hasNext()) {
            for (PrimitiveSet.Entry entry : (List) it.next()) {
                int i2 = AnonymousClass1.f33996a[entry.d.ordinal()];
                if (i2 == 1) {
                    keyStatus = KeyStatus.f33847b;
                } else if (i2 == 2) {
                    keyStatus = KeyStatus.f33848c;
                } else {
                    if (i2 != 3) {
                        md.k("Unknown key status");
                        return null;
                    }
                    keyStatus = KeyStatus.d;
                }
                int i3 = entry.f33870f;
                String strSubstring = entry.g;
                if (strSubstring.startsWith("type.googleapis.com/google.crypto.")) {
                    strSubstring = strSubstring.substring(34);
                }
                String strName = entry.f33869e.name();
                ArrayList arrayList = builder.f34094a;
                if (arrayList == null) {
                    md.k("addEntry cannot be called after build()");
                    return null;
                }
                arrayList.add(new MonitoringKeysetInfo.Entry(keyStatus, i3, strSubstring, strName));
            }
        }
        PrimitiveSet.Entry entry2 = primitiveSet.f33861b;
        if (entry2 != null) {
            int i4 = entry2.f33870f;
            if (builder.f34094a == null) {
                md.k("setPrimaryKeyId cannot be called after build()");
                return null;
            }
            builder.f34096c = Integer.valueOf(i4);
        }
        try {
            return builder.a();
        } catch (GeneralSecurityException e2) {
            bm.i(e2);
            return null;
        }
    }
}
