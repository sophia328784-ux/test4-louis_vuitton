package com.google.android.datatransport.runtime;

import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Transformer;
import com.google.android.datatransport.Transport;
import com.google.android.datatransport.TransportFactory;
import defpackage.d20;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
final class TransportFactoryImpl implements TransportFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Set f27975a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TransportContext f27976b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TransportRuntime f27977c;

    public TransportFactoryImpl(Set set, TransportContext transportContext, TransportRuntime transportRuntime) {
        this.f27975a = set;
        this.f27976b = transportContext;
        this.f27977c = transportRuntime;
    }

    @Override // com.google.android.datatransport.TransportFactory
    public final Transport a(String str, Encoding encoding, Transformer transformer) {
        Set set = this.f27975a;
        if (set.contains(encoding)) {
            return new TransportImpl(this.f27976b, str, encoding, transformer, this.f27977c);
        }
        d20.j("%s is not supported byt this factory. Supported encodings are: %s.", new Object[]{encoding, set});
        return null;
    }
}
