package androidx.datastore.core;

import defpackage.md;
import java.io.File;
import java.io.FileOutputStream;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.io.CloseableKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B\u001d\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/datastore/core/FileWriteScope;", "T", "Landroidx/datastore/core/FileReadScope;", "Landroidx/datastore/core/WriteScope;", "Ljava/io/File;", "file", "Landroidx/datastore/core/Serializer;", "serializer", "<init>", "(Ljava/io/File;Landroidx/datastore/core/Serializer;)V", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class FileWriteScope<T> extends FileReadScope<T> implements WriteScope<T> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileWriteScope(File file, Serializer<T> serializer) {
        super(file, serializer);
        file.getClass();
        serializer.getClass();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.datastore.core.WriteScope
    public final Object d(Object obj, ContinuationImpl continuationImpl) {
        FileWriteScope$writeData$1 fileWriteScope$writeData$1;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2;
        if (continuationImpl instanceof FileWriteScope$writeData$1) {
            fileWriteScope$writeData$1 = (FileWriteScope$writeData$1) continuationImpl;
            int i2 = fileWriteScope$writeData$1.f12772f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                fileWriteScope$writeData$1.f12772f = i2 - Integer.MIN_VALUE;
            } else {
                fileWriteScope$writeData$1 = new FileWriteScope$writeData$1(this, continuationImpl);
            }
        } else {
            fileWriteScope$writeData$1 = new FileWriteScope$writeData$1(this, continuationImpl);
        }
        Object obj2 = fileWriteScope$writeData$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = fileWriteScope$writeData$1.f12772f;
        if (i3 == 0) {
            ResultKt.b(obj2);
            if (this.f12743c.get()) {
                md.k("This scope has already been closed.");
                return null;
            }
            FileOutputStream fileOutputStream3 = new FileOutputStream(this.f12741a);
            try {
                Serializer serializer = this.f12742b;
                UncloseableOutputStream uncloseableOutputStream = new UncloseableOutputStream(fileOutputStream3);
                fileWriteScope$writeData$1.f12769b = fileOutputStream3;
                fileWriteScope$writeData$1.f12770c = fileOutputStream3;
                fileWriteScope$writeData$1.f12772f = 1;
                if (serializer.b(obj, uncloseableOutputStream) == coroutineSingletons) {
                    return coroutineSingletons;
                }
                fileOutputStream2 = fileOutputStream3;
                fileOutputStream = fileOutputStream2;
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream3;
                throw th;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            fileOutputStream2 = fileWriteScope$writeData$1.f12770c;
            fileOutputStream = fileWriteScope$writeData$1.f12769b;
            try {
                ResultKt.b(obj2);
            } catch (Throwable th2) {
                th = th2;
                try {
                    throw th;
                } catch (Throwable th3) {
                    CloseableKt.a(fileOutputStream, th);
                    throw th3;
                }
            }
        }
        fileOutputStream2.getFD().sync();
        CloseableKt.a(fileOutputStream, null);
        return Unit.f71739a;
    }
}
