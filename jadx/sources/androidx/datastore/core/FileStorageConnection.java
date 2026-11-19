package androidx.datastore.core;

import defpackage.a61;
import defpackage.md;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexImpl;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B3\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/datastore/core/FileStorageConnection;", "T", "Landroidx/datastore/core/StorageConnection;", "Ljava/io/File;", "file", "Landroidx/datastore/core/Serializer;", "serializer", "Landroidx/datastore/core/InterProcessCoordinator;", "coordinator", "Lkotlin/Function0;", "", "onClose", "<init>", "(Ljava/io/File;Landroidx/datastore/core/Serializer;Landroidx/datastore/core/InterProcessCoordinator;Lkotlin/jvm/functions/Function0;)V", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class FileStorageConnection<T> implements StorageConnection<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final File f12755a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Serializer f12756b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InterProcessCoordinator f12757c;
    public final Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AtomicBoolean f12758e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutexImpl f12759f;

    public FileStorageConnection(File file, Serializer<T> serializer, InterProcessCoordinator interProcessCoordinator, Function0<Unit> function0) {
        file.getClass();
        serializer.getClass();
        interProcessCoordinator.getClass();
        function0.getClass();
        this.f12755a = file;
        this.f12756b = serializer;
        this.f12757c = interProcessCoordinator;
        this.d = function0;
        this.f12758e = new AtomicBoolean(false);
        this.f12759f = MutexKt.a();
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0075 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:31:0x0077  */
    /* JADX WARN: Code duplicated, block: B:57:0x007d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r10v9 */
    @Override // androidx.datastore.core.StorageConnection
    public final Object b(Function3 function3, ContinuationImpl continuationImpl) throws Throwable {
        FileStorageConnection$readScope$1 fileStorageConnection$readScope$1;
        Throwable th;
        FileReadScope fileReadScope;
        FileStorageConnection<T> fileStorageConnection;
        boolean z;
        ?? r10;
        if (continuationImpl instanceof FileStorageConnection$readScope$1) {
            fileStorageConnection$readScope$1 = (FileStorageConnection$readScope$1) continuationImpl;
            int i2 = fileStorageConnection$readScope$1.g;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                fileStorageConnection$readScope$1.g = i2 - Integer.MIN_VALUE;
            } else {
                fileStorageConnection$readScope$1 = new FileStorageConnection$readScope$1(this, continuationImpl);
            }
        } else {
            fileStorageConnection$readScope$1 = new FileStorageConnection$readScope$1(this, continuationImpl);
        }
        ?? r11 = fileStorageConnection$readScope$1.f12762e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = fileStorageConnection$readScope$1.g;
        try {
            if (i3 == 0) {
                ResultKt.b(r11);
                if (this.f12758e.get()) {
                    md.k("StorageConnection has already been disposed.");
                    return null;
                }
                boolean zG = this.f12759f.g();
                FileReadScope fileReadScope2 = new FileReadScope(this.f12755a, this.f12756b);
                try {
                    Boolean boolValueOf = Boolean.valueOf(zG);
                    fileStorageConnection$readScope$1.f12760b = this;
                    fileStorageConnection$readScope$1.f12761c = fileReadScope2;
                    fileStorageConnection$readScope$1.d = zG;
                    fileStorageConnection$readScope$1.g = 1;
                    Object objA = ((StorageConnectionKt$readData$2) function3).A(fileReadScope2, boolValueOf, fileStorageConnection$readScope$1);
                    if (objA == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    fileStorageConnection = this;
                    z = zG ? 1 : 0;
                    r10 = objA;
                    fileReadScope = fileReadScope2;
                    fileReadScope.close();
                    th = null;
                    if (th != null) {
                        throw th;
                    }
                    if (z) {
                        fileStorageConnection.f12759f.d(null);
                    }
                    return r10;
                } catch (Throwable th2) {
                    th = th2;
                    fileReadScope = fileReadScope2;
                    r11 = zG;
                    fileReadScope.close();
                    throw th;
                }
            }
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            z = fileStorageConnection$readScope$1.d;
            fileReadScope = fileStorageConnection$readScope$1.f12761c;
            fileStorageConnection = fileStorageConnection$readScope$1.f12760b;
            try {
                ResultKt.b(r11);
                r10 = r11;
                try {
                    fileReadScope.close();
                    th = null;
                } catch (Throwable th3) {
                    th = th3;
                }
                if (th != null) {
                    if (z) {
                        fileStorageConnection.f12759f.d(null);
                    }
                    return r10;
                }
                try {
                    throw th;
                } catch (Throwable th4) {
                    th = th4;
                    r11 = z;
                    this = fileStorageConnection;
                }
            } catch (Throwable th5) {
                r11 = z ? 1 : 0;
                this = fileStorageConnection;
                th = th5;
                try {
                    fileReadScope.close();
                    throw th;
                } catch (Throwable th6) {
                    ExceptionsKt.a(th, th6);
                    throw th;
                }
            }
        } catch (Throwable th7) {
            th = th7;
        }
        if (r11 != 0) {
            this.f12759f.d(null);
        }
        throw th;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00cb A[Catch: all -> 0x010e, IOException -> 0x0111, TRY_ENTER, TryCatch #2 {IOException -> 0x0111, blocks: (B:42:0x00cb, B:44:0x00d1, B:51:0x00ed, B:52:0x010d, B:59:0x011b, B:66:0x0129, B:65:0x0126), top: B:82:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00d1 A[Catch: all -> 0x010e, IOException -> 0x0111, TRY_LEAVE, TryCatch #2 {IOException -> 0x0111, blocks: (B:42:0x00cb, B:44:0x00d1, B:51:0x00ed, B:52:0x010d, B:59:0x011b, B:66:0x0129, B:65:0x0126), top: B:82:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00ed A[Catch: all -> 0x010e, IOException -> 0x0111, TRY_ENTER, TryCatch #2 {IOException -> 0x0111, blocks: (B:42:0x00cb, B:44:0x00d1, B:51:0x00ed, B:52:0x010d, B:59:0x011b, B:66:0x0129, B:65:0x0126), top: B:82:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x011b A[Catch: all -> 0x010e, IOException -> 0x0111, TRY_ENTER, TRY_LEAVE, TryCatch #2 {IOException -> 0x0111, blocks: (B:42:0x00cb, B:44:0x00d1, B:51:0x00ed, B:52:0x010d, B:59:0x011b, B:66:0x0129, B:65:0x0126), top: B:82:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Instruction removed from duplicated block: B:51:0x00ed, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6, types: [java.io.File, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v13, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.io.File, java.lang.Object] */
    @Override // androidx.datastore.core.StorageConnection
    public final Object c(Function2 function2, ContinuationImpl continuationImpl) throws Throwable {
        FileStorageConnection$writeScope$1 fileStorageConnection$writeScope$1;
        ?? file;
        Mutex mutex;
        FileWriteScope fileWriteScope;
        Throwable th;
        FileWriteScope fileWriteScope2;
        FileStorageConnection<T> fileStorageConnection;
        Mutex mutex2;
        ?? r10;
        if (continuationImpl instanceof FileStorageConnection$writeScope$1) {
            fileStorageConnection$writeScope$1 = (FileStorageConnection$writeScope$1) continuationImpl;
            int i2 = fileStorageConnection$writeScope$1.f12768h;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                fileStorageConnection$writeScope$1.f12768h = i2 - Integer.MIN_VALUE;
            } else {
                fileStorageConnection$writeScope$1 = new FileStorageConnection$writeScope$1(this, continuationImpl);
            }
        } else {
            fileStorageConnection$writeScope$1 = new FileStorageConnection$writeScope$1(this, continuationImpl);
        }
        ?? r11 = fileStorageConnection$writeScope$1.f12767f;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = fileStorageConnection$writeScope$1.f12768h;
        boolean z = true;
        try {
            try {
                try {
                    try {
                        try {
                            if (i3 == 0) {
                                ResultKt.b(r11);
                                if (this.f12758e.get()) {
                                    md.k("StorageConnection has already been disposed.");
                                    return null;
                                }
                                File file2 = this.f12755a;
                                File parentFile = file2.getCanonicalFile().getParentFile();
                                if (parentFile != null) {
                                    parentFile.mkdirs();
                                    if (!parentFile.isDirectory()) {
                                        a61.n(file2, "Unable to create parent directories of ");
                                        return null;
                                    }
                                }
                                fileStorageConnection$writeScope$1.f12764b = this;
                                fileStorageConnection$writeScope$1.f12765c = function2;
                                mutex = this.f12759f;
                                fileStorageConnection$writeScope$1.d = mutex;
                                fileStorageConnection$writeScope$1.f12768h = 1;
                                if (mutex.c(fileStorageConnection$writeScope$1) != coroutineSingletons) {
                                }
                                return coroutineSingletons;
                            }
                            if (i3 != 1) {
                                if (i3 != 2) {
                                    md.k("call to 'resume' before 'invoke' with coroutine");
                                    return null;
                                }
                                fileWriteScope2 = fileStorageConnection$writeScope$1.f12766e;
                                File file3 = (File) fileStorageConnection$writeScope$1.d;
                                mutex2 = (Mutex) fileStorageConnection$writeScope$1.f12765c;
                                fileStorageConnection = fileStorageConnection$writeScope$1.f12764b;
                                try {
                                    ResultKt.b(r11);
                                    r10 = file3;
                                    try {
                                        fileWriteScope2.close();
                                        th = null;
                                    } catch (Throwable th2) {
                                        th = th2;
                                    }
                                    if (th == null) {
                                        throw th;
                                    }
                                    if (r10.exists()) {
                                        File file4 = fileStorageConnection.f12755a;
                                        file4.getClass();
                                        try {
                                            Files.move(r10.toPath(), file4.toPath(), StandardCopyOption.REPLACE_EXISTING);
                                        } catch (IOException unused) {
                                            z = false;
                                        }
                                        if (!z) {
                                            throw new IOException("Unable to rename " + r10 + " to " + fileStorageConnection.f12755a + ". This likely means that there are multiple instances of DataStore for this file. Ensure that you are only creating a single instance of datastore for this file.");
                                        }
                                    }
                                    mutex2.d(null);
                                    return Unit.f71739a;
                                } catch (Throwable th3) {
                                    th = th3;
                                    try {
                                        fileWriteScope2.close();
                                    } catch (Throwable th4) {
                                        ExceptionsKt.a(th, th4);
                                    }
                                    throw th;
                                }
                            }
                            Mutex mutex3 = (Mutex) fileStorageConnection$writeScope$1.d;
                            function2 = (Function2) fileStorageConnection$writeScope$1.f12765c;
                            FileStorageConnection<T> fileStorageConnection2 = fileStorageConnection$writeScope$1.f12764b;
                            ResultKt.b(r11);
                            mutex = mutex3;
                            this = fileStorageConnection2;
                            fileStorageConnection$writeScope$1.f12764b = this;
                            fileStorageConnection$writeScope$1.f12765c = mutex;
                            fileStorageConnection$writeScope$1.d = file;
                            fileStorageConnection$writeScope$1.f12766e = fileWriteScope;
                            fileStorageConnection$writeScope$1.f12768h = 2;
                            if (function2.invoke(fileWriteScope, fileStorageConnection$writeScope$1) != coroutineSingletons) {
                                fileStorageConnection = this;
                                mutex2 = mutex;
                                r10 = file;
                                fileWriteScope2 = fileWriteScope;
                                fileWriteScope2.close();
                                th = null;
                                if (th == null) {
                                    throw th;
                                }
                                if (r10.exists()) {
                                    File file5 = fileStorageConnection.f12755a;
                                    file5.getClass();
                                    Files.move(r10.toPath(), file5.toPath(), StandardCopyOption.REPLACE_EXISTING);
                                    if (!z) {
                                        throw new IOException("Unable to rename " + r10 + " to " + fileStorageConnection.f12755a + ". This likely means that there are multiple instances of DataStore for this file. Ensure that you are only creating a single instance of datastore for this file.");
                                    }
                                }
                                mutex2.d(null);
                                return Unit.f71739a;
                            }
                            return coroutineSingletons;
                        } catch (Throwable th5) {
                            th = th5;
                            fileWriteScope2 = fileWriteScope;
                            fileWriteScope2.close();
                            throw th;
                        }
                        fileWriteScope = new FileWriteScope(file, this.f12756b);
                    } catch (IOException e2) {
                        e = e2;
                        if (file.exists()) {
                            file.delete();
                        }
                        throw e;
                    }
                    file = new File(this.f12755a.getAbsolutePath() + ".tmp");
                } catch (IOException e3) {
                    e = e3;
                    file = function2;
                }
            } catch (Throwable th6) {
                th = th6;
                r11.d(null);
                throw th;
            }
        } catch (Throwable th7) {
            th = th7;
            r11 = coroutineSingletons;
            r11.d(null);
            throw th;
        }
    }

    @Override // androidx.datastore.core.Closeable
    public final void close() {
        this.f12758e.set(true);
        this.d.mo47invoke();
    }

    @Override // androidx.datastore.core.StorageConnection
    /* JADX INFO: renamed from: getCoordinator, reason: from getter */
    public final InterProcessCoordinator getF12757c() {
        return this.f12757c;
    }
}
