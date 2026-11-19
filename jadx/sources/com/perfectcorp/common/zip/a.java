package com.perfectcorp.common.zip;

import com.perfectcorp.common.io.IO;
import java.io.File;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a {
    public static void a(ZipFile zipFile, String str, File file) throws Throwable {
        com.perfectcorp.common.io.a aVar;
        c cVar = null;
        try {
            c cVarC = c.c(zipFile, str, false);
            try {
                aVar = new com.perfectcorp.common.io.a(file);
                try {
                    long j2 = cVarC.f39460c;
                    if (j2 != -1) {
                        b bVar = new b();
                        bVar.f39458a = j2;
                        aVar.f39268f = bVar;
                    }
                    IO.c(cVarC, aVar);
                    aVar.f39267e = true;
                    IO.b(cVarC);
                    aVar.close();
                } catch (Throwable th) {
                    th = th;
                    cVar = cVarC;
                    IO.b(cVar);
                    if (aVar != null) {
                        aVar.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                aVar = null;
            }
        } catch (Throwable th3) {
            th = th3;
            aVar = null;
        }
    }
}
