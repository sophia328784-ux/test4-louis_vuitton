package androidx.datastore.core;

import defpackage.md;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.io.CloseableKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/datastore/core/FileReadScope;", "T", "Landroidx/datastore/core/ReadScope;", "Ljava/io/File;", "file", "Landroidx/datastore/core/Serializer;", "serializer", "<init>", "(Ljava/io/File;Landroidx/datastore/core/Serializer;)V", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class FileReadScope<T> implements ReadScope<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final File f12741a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Serializer f12742b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f12743c;

    public FileReadScope(File file, Serializer<T> serializer) {
        file.getClass();
        serializer.getClass();
        this.f12741a = file;
        this.f12742b = serializer;
        this.f12743c = new AtomicBoolean(false);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v11, types: [androidx.datastore.core.FileReadScope] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r7v0, types: [androidx.datastore.core.FileReadScope, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [androidx.datastore.core.FileReadScope] */
    public static Object e(FileReadScope fileReadScope, ContinuationImpl continuationImpl) {
        FileReadScope$readData$1 fileReadScope$readData$1;
        Throwable th;
        java.io.Closeable closeable;
        FileInputStream fileInputStream;
        Throwable th2;
        if (continuationImpl instanceof FileReadScope$readData$1) {
            fileReadScope$readData$1 = (FileReadScope$readData$1) continuationImpl;
            int i2 = fileReadScope$readData$1.f12747f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                fileReadScope$readData$1.f12747f = i2 - Integer.MIN_VALUE;
            } else {
                fileReadScope$readData$1 = new FileReadScope$readData$1(fileReadScope, continuationImpl);
            }
        } else {
            fileReadScope$readData$1 = new FileReadScope$readData$1(fileReadScope, continuationImpl);
        }
        Object obj = fileReadScope$readData$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ?? r2 = fileReadScope$readData$1.f12747f;
        try {
            if (r2 != 0) {
                if (r2 == 1) {
                    fileInputStream = fileReadScope$readData$1.f12745c;
                    r2 = (FileReadScope) fileReadScope$readData$1.f12744b;
                    try {
                        ResultKt.b(obj);
                        CloseableKt.a(fileInputStream, null);
                        return obj;
                    } catch (Throwable th3) {
                        th2 = th3;
                        try {
                            throw th2;
                        } catch (Throwable th4) {
                            CloseableKt.a(fileInputStream, th2);
                            throw th4;
                        }
                    }
                }
                if (r2 != 2) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                closeable = (java.io.Closeable) fileReadScope$readData$1.f12744b;
                try {
                    ResultKt.b(obj);
                    CloseableKt.a(closeable, null);
                    return obj;
                } catch (Throwable th5) {
                    th = th5;
                    try {
                        throw th;
                    } catch (Throwable th6) {
                        CloseableKt.a(closeable, th);
                        throw th6;
                    }
                }
            }
            ResultKt.b(obj);
            if (fileReadScope.f12743c.get()) {
                md.k("This scope has already been closed.");
                return null;
            }
            try {
                FileInputStream fileInputStream2 = new FileInputStream(fileReadScope.f12741a);
                try {
                    Serializer serializer = fileReadScope.f12742b;
                    fileReadScope$readData$1.f12744b = fileReadScope;
                    fileReadScope$readData$1.f12745c = fileInputStream2;
                    fileReadScope$readData$1.f12747f = 1;
                    Object objC = serializer.c(fileInputStream2);
                    if (objC != coroutineSingletons) {
                        fileInputStream = fileInputStream2;
                        obj = objC;
                        CloseableKt.a(fileInputStream, null);
                        return obj;
                    }
                } catch (Throwable th7) {
                    r2 = fileReadScope;
                    fileInputStream = fileInputStream2;
                    th2 = th7;
                    throw th2;
                }
            } catch (FileNotFoundException unused) {
                File file = fileReadScope.f12741a;
                Serializer serializer2 = fileReadScope.f12742b;
                if (!file.exists()) {
                    return serializer2.a();
                }
                FileInputStream fileInputStream3 = new FileInputStream(fileReadScope.f12741a);
                try {
                    fileReadScope$readData$1.f12744b = fileInputStream3;
                    fileReadScope$readData$1.f12745c = null;
                    fileReadScope$readData$1.f12747f = 2;
                    Object objC2 = serializer2.c(fileInputStream3);
                    if (objC2 != coroutineSingletons) {
                        obj = objC2;
                        closeable = fileInputStream3;
                        CloseableKt.a(closeable, null);
                        return obj;
                    }
                } catch (Throwable th8) {
                    th = th8;
                    closeable = fileInputStream3;
                    throw th;
                }
            }
            return coroutineSingletons;
        } catch (FileNotFoundException unused2) {
            fileReadScope = r2;
        }
    }

    @Override // androidx.datastore.core.ReadScope
    public final Object a(Continuation continuation) {
        return e(this, (ContinuationImpl) continuation);
    }

    @Override // androidx.datastore.core.Closeable
    public final void close() {
        this.f12743c.set(true);
    }
}
