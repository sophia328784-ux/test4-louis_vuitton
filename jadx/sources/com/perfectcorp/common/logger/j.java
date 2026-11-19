package com.perfectcorp.common.logger;

import com.perfectcorp.common.utility.Log;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public abstract class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AtomicReference f39297a = new AtomicReference();

    public static void a() {
        AtomicReference atomicReference = f39297a;
        a aVar = (a) atomicReference.get();
        if (aVar == null) {
            return;
        }
        while (!atomicReference.compareAndSet(aVar, null)) {
            if (atomicReference.get() != aVar) {
                return;
            }
        }
        Log.f39429c.remove(aVar);
        aVar.c();
    }

    public static void b(File file) {
        AtomicReference atomicReference = f39297a;
        if (atomicReference.get() == null && file != null && file.isDirectory()) {
            ThreadLocal threadLocal = a.f39269j;
            StringBuilder sb = new StringBuilder();
            SimpleDateFormat simpleDateFormat = (SimpleDateFormat) a.f39269j.get();
            Objects.requireNonNull(simpleDateFormat);
            sb.append(simpleDateFormat.format(new Date()));
            sb.append("_sdk.txt");
            a aVar = new a(file, new File(file, sb.toString()));
            while (!atomicReference.compareAndSet(null, aVar)) {
                if (atomicReference.get() != null) {
                    return;
                }
            }
            Log.a(aVar);
        }
    }

    public static void c(boolean z) {
        Log.c cVar = z ? Log.c.f39432a : Log.c.f39433b;
        int i2 = Log.f39427a;
        Objects.requireNonNull(cVar, "printer == null");
        Log.f39428b = cVar;
    }

    public static void d() {
        c(false);
        AtomicReference atomicReference = f39297a;
        a aVar = (a) atomicReference.get();
        if (aVar == null) {
            return;
        }
        while (aVar != null) {
            do {
                if (atomicReference.compareAndSet(aVar, null)) {
                    Log.f39429c.remove(aVar);
                    aVar.c();
                    break;
                }
            } while (atomicReference.get() == aVar);
            aVar = (a) atomicReference.get();
        }
    }
}
