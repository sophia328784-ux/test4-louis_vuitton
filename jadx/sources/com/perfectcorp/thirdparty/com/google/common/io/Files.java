package com.perfectcorp.thirdparty.com.google.common.io;

import com.perfectcorp.thirdparty.com.google.common.base.Strings;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.com.google.common.hash.HashCode;
import com.perfectcorp.thirdparty.com.google.common.hash.HashFunction;
import defpackage.md;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Files {

    public static final class a extends com.perfectcorp.thirdparty.com.google.common.io.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final File f42371a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ImmutableSet f42372b;

        public a(File file, e[] eVarArr) {
            this.f42371a = file;
            this.f42372b = ImmutableSet.u(eVarArr);
        }

        public final String toString() {
            return "Files.asByteSink(" + this.f42371a + ", " + this.f42372b + ")";
        }
    }

    public static final class b extends ByteSource {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final File f42373a;

        public b(File file) {
            file.getClass();
            this.f42373a = file;
        }

        public final String toString() {
            return "Files.asByteSource(" + this.f42373a + ")";
        }
    }

    public static ByteSource a(File file) {
        return new b(file);
    }

    public static void b(File file, File file2) {
        if (file.equals(file2)) {
            md.n(Strings.a("Source %s and destination %s must be different", file, file2));
            return;
        }
        new b(file);
        a aVar = new a(file2, new e[0]);
        d dVar = new d(d.f42374e);
        ArrayDeque arrayDeque = dVar.f42376c;
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            arrayDeque.addFirst(fileInputStream);
            FileOutputStream fileOutputStream = new FileOutputStream(file2, aVar.f42372b.contains(e.f42380a));
            arrayDeque.addFirst(fileOutputStream);
            ByteStreams.a(fileInputStream, fileOutputStream);
            dVar.close();
        } catch (Throwable th) {
            try {
                dVar.d = th;
                if (IOException.class.isInstance(th)) {
                    throw ((Throwable) IOException.class.cast(th));
                }
                if (th instanceof RuntimeException) {
                    throw ((RuntimeException) th);
                }
                if (!(th instanceof Error)) {
                    throw new RuntimeException(th);
                }
                throw ((Error) th);
            } catch (Throwable th2) {
                dVar.close();
                throw th2;
            }
        }
    }

    public static HashCode c(File file, HashFunction hashFunction) {
        return new b(file).a(hashFunction);
    }

    public static MappedByteBuffer d(File file) {
        FileChannel.MapMode mapMode = FileChannel.MapMode.READ_ONLY;
        mapMode.getClass();
        d dVar = new d(d.f42374e);
        ArrayDeque arrayDeque = dVar.f42376c;
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
            arrayDeque.addFirst(randomAccessFile);
            FileChannel channel = randomAccessFile.getChannel();
            if (channel != null) {
                arrayDeque.addFirst(channel);
            }
            MappedByteBuffer map = channel.map(mapMode, 0L, channel.size());
            dVar.close();
            return map;
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
