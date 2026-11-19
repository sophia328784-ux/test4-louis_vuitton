package androidx.datastore.core;

import android.os.ParcelFileDescriptor;
import defpackage.a61;
import defpackage.md;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileLock;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexImpl;
import kotlinx.coroutines.sync.MutexKt;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/datastore/core/MultiProcessCoordinator;", "Landroidx/datastore/core/InterProcessCoordinator;", "Lkotlin/coroutines/CoroutineContext;", MvelScriptManager.VAR_CONTEXT, "Ljava/io/File;", "file", "<init>", "(Lkotlin/coroutines/CoroutineContext;Ljava/io/File;)V", "Companion", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class MultiProcessCoordinator implements InterProcessCoordinator {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Companion f12777j = new Companion(null);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f12778k = "Resource deadlock would occur";
    public static final long l = 10;
    public static final long m = 60000;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CoroutineContext f12779a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final File f12780b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Flow f12781c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f12782e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f12783f;
    public final MutexImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Lazy f12784h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Lazy f12785i;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082D¢\u0006\u0006\n\u0004\b\b\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/datastore/core/MultiProcessCoordinator$Companion;", "", "", "DEADLOCK_ERROR_MESSAGE", "Ljava/lang/String;", "", "INITIAL_WAIT_MILLIS", "J", "MAX_WAIT_MILLIS", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        /* JADX WARN: Can't wrap try/catch for region: R(4:31|17|18|33) */
        /* JADX WARN: Code duplicated, block: B:7:0x0016  */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0057, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0058, code lost:
        
            r1 = r0.getMessage();
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x005c, code lost:
        
            if (r1 == null) goto L28;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0067, code lost:
        
            r11.f12786b = r12;
            r11.f12787c = r3;
            r11.f12789f = 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x0071, code lost:
        
            if (kotlinx.coroutines.DelayKt.b(r3, r11) == r13) goto L34;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x0078, code lost:
        
            throw r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:?, code lost:
        
            return r13;
         */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0071 -> B:27:0x0074). Please report as a decompilation issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final java.lang.Object a(androidx.datastore.core.MultiProcessCoordinator.Companion r11, java.io.FileOutputStream r12, kotlin.coroutines.jvm.internal.ContinuationImpl r13) throws java.io.IOException {
            /*
                r11.getClass()
                boolean r0 = r13 instanceof androidx.datastore.core.MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1
                if (r0 == 0) goto L16
                r0 = r13
                androidx.datastore.core.MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1 r0 = (androidx.datastore.core.MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1) r0
                int r1 = r0.f12789f
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L16
                int r1 = r1 - r2
                r0.f12789f = r1
                goto L1b
            L16:
                androidx.datastore.core.MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1 r0 = new androidx.datastore.core.MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1
                r0.<init>(r11, r13)
            L1b:
                java.lang.Object r11 = r0.d
                kotlin.coroutines.intrinsics.CoroutineSingletons r13 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r1 = r0.f12789f
                r2 = 1
                if (r1 == 0) goto L36
                if (r1 != r2) goto L2f
                long r3 = r0.f12787c
                java.io.FileOutputStream r12 = r0.f12786b
                kotlin.ResultKt.b(r11)
                r11 = r0
                goto L74
            L2f:
                java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.md.k(r11)
                r11 = 0
                return r11
            L36:
                kotlin.ResultKt.b(r11)
                long r3 = androidx.datastore.core.MultiProcessCoordinator.l
                r11 = r0
            L3c:
                long r0 = androidx.datastore.core.MultiProcessCoordinator.m
                int r0 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
                if (r0 > 0) goto L79
                java.nio.channels.FileChannel r5 = r12.getChannel()     // Catch: java.io.IOException -> L57
                r8 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                r10 = 0
                r6 = 0
                java.nio.channels.FileLock r0 = r5.lock(r6, r8, r10)     // Catch: java.io.IOException -> L57
                r0.getClass()     // Catch: java.io.IOException -> L57
                r13 = r0
                goto L8c
            L57:
                r0 = move-exception
                java.lang.String r1 = r0.getMessage()
                if (r1 == 0) goto L78
                java.lang.String r5 = androidx.datastore.core.MultiProcessCoordinator.f12778k
                r6 = 0
                boolean r1 = kotlin.text.StringsKt.k(r1, r5, r6)
                if (r1 != r2) goto L78
                r11.f12786b = r12
                r11.f12787c = r3
                r11.f12789f = r2
                java.lang.Object r0 = kotlinx.coroutines.DelayKt.b(r3, r11)
                if (r0 != r13) goto L74
                goto L8c
            L74:
                r0 = 2
                long r3 = r3 * r0
                goto L3c
            L78:
                throw r0
            L79:
                java.nio.channels.FileChannel r5 = r12.getChannel()
                r8 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                r10 = 0
                r6 = 0
                java.nio.channels.FileLock r13 = r5.lock(r6, r8, r10)
                r13.getClass()
            L8c:
                return r13
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.MultiProcessCoordinator.Companion.a(androidx.datastore.core.MultiProcessCoordinator$Companion, java.io.FileOutputStream, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
        }
    }

    public MultiProcessCoordinator(CoroutineContext coroutineContext, File file) {
        coroutineContext.getClass();
        file.getClass();
        this.f12779a = coroutineContext;
        this.f12780b = file;
        MulticastFileObserver.f12805b.getClass();
        this.f12781c = FlowKt.f(new MulticastFileObserver$Companion$observe$1(file, null));
        this.d = ".lock";
        this.f12782e = ".version";
        this.f12783f = "fcntl failed: EAGAIN";
        this.g = MutexKt.a();
        this.f12784h = LazyKt.b(new Function0<File>() { // from class: androidx.datastore.core.MultiProcessCoordinator$lockFile$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() throws IOException {
                MultiProcessCoordinator multiProcessCoordinator = this.f12798c;
                File file2 = new File(multiProcessCoordinator.f12780b.getAbsolutePath() + multiProcessCoordinator.d);
                MultiProcessCoordinator.f(multiProcessCoordinator, file2);
                return file2;
            }
        });
        this.f12785i = LazyKt.b(new Function0<SharedCounter>() { // from class: androidx.datastore.core.MultiProcessCoordinator$lazySharedCounter$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() throws Throwable {
                SharedCounter.f12820b.getClass();
                System.loadLibrary("datastore_shared_counter");
                final MultiProcessCoordinator multiProcessCoordinator = this.f12792c;
                ParcelFileDescriptor parcelFileDescriptor = null;
                try {
                    ParcelFileDescriptor parcelFileDescriptorOpen = ParcelFileDescriptor.open((File) new Function0<File>() { // from class: androidx.datastore.core.MultiProcessCoordinator$lazySharedCounter$1.1
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() throws IOException {
                            MultiProcessCoordinator multiProcessCoordinator2 = multiProcessCoordinator;
                            File file2 = new File(multiProcessCoordinator2.f12780b.getAbsolutePath() + multiProcessCoordinator2.f12782e);
                            MultiProcessCoordinator.f(multiProcessCoordinator2, file2);
                            return file2;
                        }
                    }.mo47invoke(), 939524096);
                    try {
                        int fd = parcelFileDescriptorOpen.getFd();
                        NativeSharedCounter nativeSharedCounter = SharedCounter.f12821c;
                        if (nativeSharedCounter.nativeTruncateFile(fd) != 0) {
                            throw new IOException("Failed to truncate counter file");
                        }
                        long jNativeCreateSharedCounter = nativeSharedCounter.nativeCreateSharedCounter(fd);
                        if (jNativeCreateSharedCounter < 0) {
                            throw new IOException("Failed to mmap counter file");
                        }
                        SharedCounter sharedCounter = new SharedCounter(jNativeCreateSharedCounter, null);
                        parcelFileDescriptorOpen.close();
                        return sharedCounter;
                    } catch (Throwable th) {
                        th = th;
                        parcelFileDescriptor = parcelFileDescriptorOpen;
                        if (parcelFileDescriptor != null) {
                            parcelFileDescriptor.close();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        });
    }

    public static final void f(MultiProcessCoordinator multiProcessCoordinator, File file) throws IOException {
        File parentFile = file.getCanonicalFile().getParentFile();
        if (parentFile != null) {
            parentFile.mkdirs();
            if (!parentFile.isDirectory()) {
                a61.n(file, "Unable to create parent directories of ");
                return;
            }
        }
        if (file.exists()) {
            return;
        }
        file.createNewFile();
    }

    /* JADX WARN: Code duplicated, block: B:31:0x006d  */
    /* JADX WARN: Code duplicated, block: B:61:0x00dc A[Catch: all -> 0x00e0, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x00e0, blocks: (B:61:0x00dc, B:75:0x00f7, B:76:0x00fa), top: B:88:0x0027 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:75:0x00f7 A[Catch: all -> 0x00e0, TRY_ENTER, TryCatch #1 {all -> 0x00e0, blocks: (B:61:0x00dc, B:75:0x00f7, B:76:0x00fa), top: B:88:0x0027 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r19v0, types: [kotlin.jvm.functions.Function2] */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r2v10, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r2v13, types: [kotlinx.coroutines.sync.MutexImpl] */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v2, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v2, types: [androidx.datastore.core.MultiProcessCoordinator$tryLock$1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.io.Closeable, java.lang.Object, kotlin.coroutines.intrinsics.CoroutineSingletons] */
    @Override // androidx.datastore.core.InterProcessCoordinator
    public final Object a(Function2 function2, ContinuationImpl continuationImpl) throws Throwable {
        ?? multiProcessCoordinator$tryLock$1;
        ?? r1;
        ?? r2;
        String message;
        FileLock fileLockTryLock;
        FileLock fileLock;
        FileInputStream fileInputStream;
        ?? r3;
        ?? r4;
        if (continuationImpl instanceof MultiProcessCoordinator$tryLock$1) {
            MultiProcessCoordinator$tryLock$1 multiProcessCoordinator$tryLock$2 = (MultiProcessCoordinator$tryLock$1) continuationImpl;
            int i2 = multiProcessCoordinator$tryLock$2.f12803h;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                multiProcessCoordinator$tryLock$2.f12803h = i2 - Integer.MIN_VALUE;
                multiProcessCoordinator$tryLock$1 = multiProcessCoordinator$tryLock$2;
            } else {
                multiProcessCoordinator$tryLock$1 = new MultiProcessCoordinator$tryLock$1(this, continuationImpl);
            }
        } else {
            multiProcessCoordinator$tryLock$1 = new MultiProcessCoordinator$tryLock$1(this, continuationImpl);
        }
        Object objInvoke = multiProcessCoordinator$tryLock$1.f12802f;
        ?? r5 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = multiProcessCoordinator$tryLock$1.f12803h;
        try {
            if (i3 == 0) {
                ResultKt.b(objInvoke);
                MutexImpl mutexImpl = this.g;
                boolean zG = mutexImpl.g();
                try {
                    if (zG) {
                        FileInputStream fileInputStream2 = new FileInputStream((File) this.f12784h.getF71699b());
                        try {
                            try {
                                fileLockTryLock = fileInputStream2.getChannel().tryLock(0L, Long.MAX_VALUE, true);
                            } catch (Throwable th) {
                                th = th;
                                fileLock = null;
                                if (fileLock != null) {
                                    fileLock.release();
                                }
                                throw th;
                            }
                        } catch (IOException e2) {
                            String message2 = e2.getMessage();
                            if ((message2 == null || !StringsKt.P(message2, this.f12783f, false)) && ((message = e2.getMessage()) == null || !StringsKt.P(message, f12778k, false))) {
                                throw e2;
                            }
                            fileLockTryLock = null;
                        }
                        try {
                            Boolean boolValueOf = Boolean.valueOf(fileLockTryLock != null);
                            multiProcessCoordinator$tryLock$1.f12799b = mutexImpl;
                            multiProcessCoordinator$tryLock$1.f12800c = fileInputStream2;
                            multiProcessCoordinator$tryLock$1.d = fileLockTryLock;
                            multiProcessCoordinator$tryLock$1.f12801e = zG;
                            multiProcessCoordinator$tryLock$1.f12803h = 2;
                            objInvoke = function2.invoke(boolValueOf, multiProcessCoordinator$tryLock$1);
                            if (objInvoke != r5) {
                                fileLock = fileLockTryLock;
                                multiProcessCoordinator$tryLock$1 = mutexImpl;
                                r1 = zG;
                                fileInputStream = fileInputStream2;
                                if (fileLock != null) {
                                    fileLock.release();
                                }
                                CloseableKt.a(fileInputStream, null);
                                if (r1 != 0) {
                                    multiProcessCoordinator$tryLock$1.d(null);
                                }
                                return objInvoke;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            fileLock = fileLockTryLock;
                            if (fileLock != null) {
                                fileLock.release();
                            }
                            throw th;
                        }
                    } else {
                        Boolean bool = Boolean.FALSE;
                        multiProcessCoordinator$tryLock$1.f12799b = mutexImpl;
                        multiProcessCoordinator$tryLock$1.f12801e = zG;
                        multiProcessCoordinator$tryLock$1.f12803h = 1;
                        objInvoke = function2.invoke(bool, multiProcessCoordinator$tryLock$1);
                        if (objInvoke != r5) {
                            r3 = mutexImpl;
                            r4 = zG;
                            if (r4 != 0) {
                                r3.d(null);
                            }
                            return objInvoke;
                        }
                    }
                    return r5;
                } catch (Throwable th3) {
                    th = th3;
                    r2 = mutexImpl;
                    r1 = zG;
                }
            } else if (i3 == 1) {
                r1 = multiProcessCoordinator$tryLock$1.f12801e;
                r2 = multiProcessCoordinator$tryLock$1.f12799b;
                try {
                    ResultKt.b(objInvoke);
                    r4 = r1;
                    r3 = r2;
                    if (r4 != 0) {
                        r3.d(null);
                    }
                    return objInvoke;
                } catch (Throwable th4) {
                    th = th4;
                }
            } else {
                if (i3 != 2) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                boolean z = multiProcessCoordinator$tryLock$1.f12801e;
                fileLock = multiProcessCoordinator$tryLock$1.d;
                fileInputStream = multiProcessCoordinator$tryLock$1.f12800c;
                MutexImpl mutexImpl2 = multiProcessCoordinator$tryLock$1.f12799b;
                try {
                    ResultKt.b(objInvoke);
                    r1 = z;
                    multiProcessCoordinator$tryLock$1 = mutexImpl2;
                    if (fileLock != null) {
                        fileLock.release();
                    }
                    try {
                        CloseableKt.a(fileInputStream, null);
                        if (r1 != 0) {
                            multiProcessCoordinator$tryLock$1.d(null);
                        }
                        return objInvoke;
                    } catch (Throwable th5) {
                        th = th5;
                    }
                } catch (Throwable th6) {
                    th = th6;
                    if (fileLock != null) {
                        fileLock.release();
                    }
                    throw th;
                }
            }
        } catch (Throwable th7) {
            try {
                throw th7;
            } catch (Throwable th8) {
                try {
                    CloseableKt.a(r5, th7);
                    throw th8;
                } catch (Throwable th9) {
                    th = th9;
                    r1 = this;
                }
            }
        }
        r2 = multiProcessCoordinator$tryLock$1;
        if (r1 != 0) {
            r2.d(null);
        }
        throw th;
    }

    @Override // androidx.datastore.core.InterProcessCoordinator
    /* JADX INFO: renamed from: b, reason: from getter */
    public final Flow getF12781c() {
        return this.f12781c;
    }

    @Override // androidx.datastore.core.InterProcessCoordinator
    public final Object c(ContinuationImpl continuationImpl) {
        Lazy lazy = this.f12785i;
        if (lazy.a()) {
            return new Integer(SharedCounter.f12821c.nativeGetCounterValue(((SharedCounter) lazy.getF71699b()).f12822a));
        }
        return BuildersKt.f(this.f12779a, new MultiProcessCoordinator$getVersion$$inlined$withLazyCounter$1(this, null), continuationImpl);
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:41:0x00bb A[Catch: all -> 0x00bf, TRY_ENTER, TRY_LEAVE, TryCatch #7 {all -> 0x00bf, blocks: (B:41:0x00bb, B:55:0x00d9, B:56:0x00dc), top: B:77:0x0022, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x00d9 A[Catch: all -> 0x00bf, TRY_ENTER, TryCatch #7 {all -> 0x00bf, blocks: (B:41:0x00bb, B:55:0x00d9, B:56:0x00dc), top: B:77:0x0022, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r10v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r10v16, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v17 */
    /* JADX WARN: Type inference failed for: r10v18 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v20 */
    /* JADX WARN: Type inference failed for: r10v21 */
    /* JADX WARN: Type inference failed for: r10v22 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r10v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [kotlin.jvm.functions.Function1] */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v25, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r8v29 */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.io.Closeable, java.lang.Object, kotlin.jvm.functions.Function1] */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v13 */
    @Override // androidx.datastore.core.InterProcessCoordinator
    public final Object d(Function1 function1, ContinuationImpl continuationImpl) throws Throwable {
        MultiProcessCoordinator$lock$1 multiProcessCoordinator$lock$1;
        MutexImpl mutexImpl;
        ?? r9;
        FileOutputStream fileOutputStream;
        Throwable th;
        ?? r10;
        ?? r8;
        ?? r2;
        java.io.Closeable closeable;
        FileLock fileLock;
        FileLock fileLock2;
        Object objInvoke;
        ?? r0;
        ?? r11;
        if (continuationImpl instanceof MultiProcessCoordinator$lock$1) {
            multiProcessCoordinator$lock$1 = (MultiProcessCoordinator$lock$1) continuationImpl;
            int i2 = multiProcessCoordinator$lock$1.g;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                multiProcessCoordinator$lock$1.g = i2 - Integer.MIN_VALUE;
            } else {
                multiProcessCoordinator$lock$1 = new MultiProcessCoordinator$lock$1(this, continuationImpl);
            }
        } else {
            multiProcessCoordinator$lock$1 = new MultiProcessCoordinator$lock$1(this, continuationImpl);
        }
        ?? r12 = multiProcessCoordinator$lock$1.f12796e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = multiProcessCoordinator$lock$1.g;
        try {
            try {
                try {
                    if (i3 == 0) {
                        ResultKt.b(r12);
                        multiProcessCoordinator$lock$1.f12794b = this;
                        multiProcessCoordinator$lock$1.f12795c = function1;
                        mutexImpl = this.g;
                        multiProcessCoordinator$lock$1.d = mutexImpl;
                        multiProcessCoordinator$lock$1.g = 1;
                        if (mutexImpl.c(multiProcessCoordinator$lock$1) != coroutineSingletons) {
                        }
                        r9 = function1;
                        r12 = mutexImpl;
                        return coroutineSingletons;
                    }
                    if (i3 != 1) {
                        if (i3 != 2) {
                            if (i3 != 3) {
                                md.k("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                            fileLock = (FileLock) multiProcessCoordinator$lock$1.d;
                            closeable = (java.io.Closeable) multiProcessCoordinator$lock$1.f12795c;
                            Mutex mutex = (Mutex) multiProcessCoordinator$lock$1.f12794b;
                            try {
                                ResultKt.b(r12);
                                r0 = mutex;
                                r11 = r12;
                                if (fileLock != null) {
                                    fileLock.release();
                                }
                                try {
                                    CloseableKt.a(closeable, null);
                                    r0.d(null);
                                    return r11;
                                } catch (Throwable th2) {
                                    th = th2;
                                    r12 = r0;
                                    r12.d(null);
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                if (fileLock != null) {
                                    fileLock.release();
                                }
                                throw th;
                            }
                        }
                        closeable = (java.io.Closeable) multiProcessCoordinator$lock$1.d;
                        r8 = (Mutex) multiProcessCoordinator$lock$1.f12795c;
                        Function1 function2 = (Function1) multiProcessCoordinator$lock$1.f12794b;
                        try {
                            ResultKt.b(r12);
                            r2 = function2;
                            r8 = r8;
                            r10 = r12;
                            fileLock2 = (FileLock) r10;
                            try {
                                multiProcessCoordinator$lock$1.f12794b = r8;
                                multiProcessCoordinator$lock$1.f12795c = closeable;
                                multiProcessCoordinator$lock$1.d = fileLock2;
                                multiProcessCoordinator$lock$1.g = 3;
                                objInvoke = r2.invoke(multiProcessCoordinator$lock$1);
                                if (objInvoke != coroutineSingletons) {
                                    r0 = r8;
                                    fileLock = fileLock2;
                                    r11 = objInvoke;
                                    if (fileLock != null) {
                                        fileLock.release();
                                    }
                                    CloseableKt.a(closeable, null);
                                    r0.d(null);
                                    return r11;
                                }
                                r9 = function1;
                                r12 = mutexImpl;
                                return coroutineSingletons;
                            } catch (Throwable th4) {
                                fileLock = fileLock2;
                                th = th4;
                                if (fileLock != null) {
                                    fileLock.release();
                                }
                                throw th;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            fileLock = null;
                            if (fileLock != null) {
                                fileLock.release();
                            }
                            throw th;
                        }
                    }
                    Mutex mutex2 = (Mutex) multiProcessCoordinator$lock$1.d;
                    Function1 function3 = (Function1) multiProcessCoordinator$lock$1.f12795c;
                    MultiProcessCoordinator multiProcessCoordinator = (MultiProcessCoordinator) multiProcessCoordinator$lock$1.f12794b;
                    ResultKt.b(r12);
                    r12 = mutex2;
                    this = multiProcessCoordinator;
                    r9 = function3;
                    Companion companion = f12777j;
                    multiProcessCoordinator$lock$1.f12794b = r9;
                    multiProcessCoordinator$lock$1.f12795c = r12;
                    multiProcessCoordinator$lock$1.d = fileOutputStream;
                    multiProcessCoordinator$lock$1.g = 2;
                    Object objA = Companion.a(companion, fileOutputStream, multiProcessCoordinator$lock$1);
                    if (objA != coroutineSingletons) {
                        ?? r7 = r12;
                        r10 = objA;
                        r8 = r7;
                        r2 = r9;
                        closeable = fileOutputStream;
                        fileLock2 = (FileLock) r10;
                        multiProcessCoordinator$lock$1.f12794b = r8;
                        multiProcessCoordinator$lock$1.f12795c = closeable;
                        multiProcessCoordinator$lock$1.d = fileLock2;
                        multiProcessCoordinator$lock$1.g = 3;
                        objInvoke = r2.invoke(multiProcessCoordinator$lock$1);
                        if (objInvoke != coroutineSingletons) {
                            r0 = r8;
                            fileLock = fileLock2;
                            r11 = objInvoke;
                            if (fileLock != null) {
                                fileLock.release();
                            }
                            CloseableKt.a(closeable, null);
                            r0.d(null);
                            return r11;
                        }
                    }
                    r9 = function1;
                    r12 = mutexImpl;
                    return coroutineSingletons;
                } catch (Throwable th6) {
                    th = th6;
                    fileLock = null;
                    if (fileLock != null) {
                        fileLock.release();
                    }
                    throw th;
                }
                r9 = function1;
                r12 = mutexImpl;
                fileOutputStream = new FileOutputStream((File) this.f12784h.getF71699b());
            } catch (Throwable th7) {
                th = th7;
                r12.d(null);
                throw th;
            }
        } catch (Throwable th8) {
            r12 = multiProcessCoordinator$lock$1;
            try {
                throw th8;
            } catch (Throwable th9) {
                CloseableKt.a(function1, th8);
                throw th9;
            }
        }
    }

    @Override // androidx.datastore.core.InterProcessCoordinator
    public final Object e(Continuation continuation) {
        Lazy lazy = this.f12785i;
        if (lazy.a()) {
            return new Integer(SharedCounter.f12821c.nativeIncrementAndGetCounterValue(((SharedCounter) lazy.getF71699b()).f12822a));
        }
        return BuildersKt.f(this.f12779a, new MultiProcessCoordinator$incrementAndGetVersion$$inlined$withLazyCounter$1(this, null), continuation);
    }
}
