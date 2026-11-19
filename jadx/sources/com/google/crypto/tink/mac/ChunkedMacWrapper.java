package com.google.crypto.tink.mac;

import com.google.crypto.tink.PrimitiveSet;
import com.google.crypto.tink.PrimitiveWrapper;
import com.google.errorprone.annotations.Immutable;
import defpackage.v40;
import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ChunkedMacWrapper implements PrimitiveWrapper<ChunkedMac, ChunkedMac> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ChunkedMacWrapper f34052a = new ChunkedMacWrapper();

    @Immutable
    public static class WrappedChunkedMac implements ChunkedMac {
    }

    @Override // com.google.crypto.tink.PrimitiveWrapper
    public final Object a(PrimitiveSet primitiveSet) throws GeneralSecurityException {
        if (primitiveSet.f33861b == null) {
            v40.j("no primary in primitive set");
            return null;
        }
        Iterator it = primitiveSet.f33860a.values().iterator();
        while (it.hasNext()) {
            Iterator it2 = ((List) it.next()).iterator();
            while (it2.hasNext()) {
            }
        }
        return new WrappedChunkedMac();
    }

    @Override // com.google.crypto.tink.PrimitiveWrapper
    public final Class b() {
        return ChunkedMac.class;
    }

    @Override // com.google.crypto.tink.PrimitiveWrapper
    public final Class c() {
        return ChunkedMac.class;
    }
}
