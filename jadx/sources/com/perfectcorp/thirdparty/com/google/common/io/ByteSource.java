package com.perfectcorp.thirdparty.com.google.common.io;

import com.perfectcorp.thirdparty.com.google.common.hash.HashCode;
import com.perfectcorp.thirdparty.com.google.common.hash.HashFunction;
import com.perfectcorp.thirdparty.com.google.common.hash.j;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ByteSource {
    public final HashCode a(HashFunction hashFunction) {
        j jVarA = hashFunction.a();
        OutputStream outputStreamA = com.perfectcorp.thirdparty.com.google.common.hash.e.a(jVarA);
        d dVar = new d(d.f42374e);
        try {
            FileInputStream fileInputStream = new FileInputStream(((Files.b) this).f42373a);
            dVar.f42376c.addFirst(fileInputStream);
            ByteStreams.a(fileInputStream, outputStreamA);
            dVar.close();
            return jVarA.a();
        } catch (Throwable th) {
            try {
                dVar.d = th;
                if (IOException.class.isInstance(th)) {
                    throw ((Throwable) IOException.class.cast(th));
                }
                if (th instanceof RuntimeException) {
                    throw ((RuntimeException) th);
                }
                if (th instanceof Error) {
                    throw ((Error) th);
                }
                throw new RuntimeException(th);
            } catch (Throwable th2) {
                dVar.close();
                throw th2;
            }
        }
    }
}
