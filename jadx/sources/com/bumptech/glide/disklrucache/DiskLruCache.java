package com.bumptech.glide.disklrucache;

import android.os.StrictMode;
import defpackage.az;
import defpackage.md;
import io.jsonwebtoken.JwtParser;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public final class DiskLruCache implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final File f24325b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final File f24326c;
    public final File d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final File f24327e;
    public final long g;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public BufferedWriter f24331j;
    public int l;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f24330i = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final LinkedHashMap f24332k = new LinkedHashMap(0, 0.75f, true);
    public long m = 0;
    public final ThreadPoolExecutor n = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new DiskLruCacheThreadFactory());
    public final Callable o = new Callable<Void>() { // from class: com.bumptech.glide.disklrucache.DiskLruCache.1
        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            synchronized (DiskLruCache.this) {
                try {
                    DiskLruCache diskLruCache = DiskLruCache.this;
                    if (diskLruCache.f24331j == null) {
                        return null;
                    }
                    diskLruCache.s();
                    if (DiskLruCache.this.k()) {
                        DiskLruCache.this.q();
                        DiskLruCache.this.l = 0;
                    }
                    return null;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    };

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f24328f = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f24329h = 1;

    public static final class DiskLruCacheThreadFactory implements ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public final synchronized Thread newThread(Runnable runnable) {
            Thread thread;
            thread = new Thread(runnable, "glide-disk-lru-cache-thread");
            thread.setPriority(1);
            return thread;
        }
    }

    public final class Editor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Entry f24333a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean[] f24334b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f24335c;

        public Editor(Entry entry) {
            this.f24333a = entry;
            this.f24334b = entry.f24339e ? null : new boolean[DiskLruCache.this.f24329h];
        }

        public final void a() {
            DiskLruCache.c(DiskLruCache.this, this, false);
        }

        public final File b() {
            File file;
            synchronized (DiskLruCache.this) {
                try {
                    Entry entry = this.f24333a;
                    if (entry.f24340f != this) {
                        throw new IllegalStateException();
                    }
                    if (!entry.f24339e) {
                        this.f24334b[0] = true;
                    }
                    file = entry.d[0];
                    DiskLruCache.this.f24325b.mkdirs();
                } catch (Throwable th) {
                    throw th;
                }
            }
            return file;
        }
    }

    public final class Entry {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f24336a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long[] f24337b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final File[] f24338c;
        public final File[] d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f24339e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Editor f24340f;

        public Entry(String str) {
            this.f24336a = str;
            int i2 = DiskLruCache.this.f24329h;
            File file = DiskLruCache.this.f24325b;
            this.f24337b = new long[i2];
            this.f24338c = new File[i2];
            this.d = new File[i2];
            StringBuilder sb = new StringBuilder(str);
            sb.append(JwtParser.SEPARATOR_CHAR);
            int length = sb.length();
            for (int i3 = 0; i3 < i2; i3++) {
                sb.append(i3);
                this.f24338c[i3] = new File(file, sb.toString());
                sb.append(".tmp");
                this.d[i3] = new File(file, sb.toString());
                sb.setLength(length);
            }
        }

        public final String a() {
            StringBuilder sb = new StringBuilder();
            for (long j2 : this.f24337b) {
                sb.append(' ');
                sb.append(j2);
            }
            return sb.toString();
        }
    }

    public final class Value {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final File[] f24341a;

        public Value(File[] fileArr) {
            this.f24341a = fileArr;
        }
    }

    public DiskLruCache(File file, long j2) {
        this.f24325b = file;
        this.f24326c = new File(file, "journal");
        this.d = new File(file, "journal.tmp");
        this.f24327e = new File(file, "journal.bkp");
        this.g = j2;
    }

    public static void c(DiskLruCache diskLruCache, Editor editor, boolean z) {
        synchronized (diskLruCache) {
            Entry entry = editor.f24333a;
            if (entry.f24340f != editor) {
                throw new IllegalStateException();
            }
            if (z && !entry.f24339e) {
                for (int i2 = 0; i2 < diskLruCache.f24329h; i2++) {
                    if (!editor.f24334b[i2]) {
                        editor.a();
                        throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
                    }
                    if (!entry.d[i2].exists()) {
                        editor.a();
                        return;
                    }
                }
            }
            for (int i3 = 0; i3 < diskLruCache.f24329h; i3++) {
                File file = entry.d[i3];
                if (!z) {
                    e(file);
                } else if (file.exists()) {
                    File file2 = entry.f24338c[i3];
                    file.renameTo(file2);
                    long j2 = entry.f24337b[i3];
                    long length = file2.length();
                    entry.f24337b[i3] = length;
                    diskLruCache.f24330i = (diskLruCache.f24330i - j2) + length;
                }
            }
            diskLruCache.l++;
            entry.f24340f = null;
            if (entry.f24339e || z) {
                entry.f24339e = true;
                diskLruCache.f24331j.append((CharSequence) "CLEAN");
                diskLruCache.f24331j.append(' ');
                diskLruCache.f24331j.append((CharSequence) entry.f24336a);
                diskLruCache.f24331j.append((CharSequence) entry.a());
                diskLruCache.f24331j.append('\n');
                if (z) {
                    diskLruCache.m++;
                }
            } else {
                diskLruCache.f24332k.remove(entry.f24336a);
                diskLruCache.f24331j.append((CharSequence) "REMOVE");
                diskLruCache.f24331j.append(' ');
                diskLruCache.f24331j.append((CharSequence) entry.f24336a);
                diskLruCache.f24331j.append('\n');
            }
            h(diskLruCache.f24331j);
            if (diskLruCache.f24330i > diskLruCache.g || diskLruCache.k()) {
                diskLruCache.n.submit(diskLruCache.o);
            }
        }
    }

    public static void d(BufferedWriter bufferedWriter) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            bufferedWriter.close();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public static void e(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    public static void h(BufferedWriter bufferedWriter) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            bufferedWriter.flush();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public static DiskLruCache m(File file, long j2) throws IOException {
        if (j2 <= 0) {
            md.n("maxSize <= 0");
            return null;
        }
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else {
                r(file2, file3, false);
            }
        }
        DiskLruCache diskLruCache = new DiskLruCache(file, j2);
        if (diskLruCache.f24326c.exists()) {
            try {
                diskLruCache.o();
                diskLruCache.n();
                return diskLruCache;
            } catch (IOException e2) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e2.getMessage() + ", removing");
                diskLruCache.close();
                Util.a(diskLruCache.f24325b);
            }
        }
        file.mkdirs();
        DiskLruCache diskLruCache2 = new DiskLruCache(file, j2);
        diskLruCache2.q();
        return diskLruCache2;
    }

    public static void r(File file, File file2, boolean z) throws IOException {
        if (z) {
            e(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        try {
            if (this.f24331j == null) {
                return;
            }
            Iterator it = new ArrayList(this.f24332k.values()).iterator();
            while (it.hasNext()) {
                Editor editor = ((Entry) it.next()).f24340f;
                if (editor != null) {
                    editor.a();
                }
            }
            s();
            d(this.f24331j);
            this.f24331j = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final Editor g(String str) {
        synchronized (this) {
            try {
                if (this.f24331j == null) {
                    throw new IllegalStateException("cache is closed");
                }
                Entry entry = (Entry) this.f24332k.get(str);
                if (entry == null) {
                    entry = new Entry(str);
                    this.f24332k.put(str, entry);
                } else if (entry.f24340f != null) {
                    return null;
                }
                Editor editor = new Editor(entry);
                entry.f24340f = editor;
                this.f24331j.append((CharSequence) "DIRTY");
                this.f24331j.append(' ');
                this.f24331j.append((CharSequence) str);
                this.f24331j.append('\n');
                h(this.f24331j);
                return editor;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized Value j(String str) {
        if (this.f24331j == null) {
            throw new IllegalStateException("cache is closed");
        }
        Entry entry = (Entry) this.f24332k.get(str);
        if (entry == null) {
            return null;
        }
        if (!entry.f24339e) {
            return null;
        }
        for (File file : entry.f24338c) {
            if (!file.exists()) {
                return null;
            }
        }
        this.l++;
        this.f24331j.append((CharSequence) "READ");
        this.f24331j.append(' ');
        this.f24331j.append((CharSequence) str);
        this.f24331j.append('\n');
        if (k()) {
            this.n.submit(this.o);
        }
        return new Value(entry.f24338c);
    }

    public final boolean k() {
        int i2 = this.l;
        return i2 >= 2000 && i2 >= this.f24332k.size();
    }

    public final void n() throws IOException {
        e(this.d);
        Iterator it = this.f24332k.values().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            Editor editor = entry.f24340f;
            int i2 = this.f24329h;
            int i3 = 0;
            if (editor == null) {
                while (i3 < i2) {
                    this.f24330i += entry.f24337b[i3];
                    i3++;
                }
            } else {
                entry.f24340f = null;
                while (i3 < i2) {
                    e(entry.f24338c[i3]);
                    e(entry.d[i3]);
                    i3++;
                }
                it.remove();
            }
        }
    }

    public final void o() {
        File file = this.f24326c;
        StrictLineReader strictLineReader = new StrictLineReader(new FileInputStream(file), Util.f24347a);
        try {
            String strH = strictLineReader.h();
            String strH2 = strictLineReader.h();
            String strH3 = strictLineReader.h();
            String strH4 = strictLineReader.h();
            String strH5 = strictLineReader.h();
            if (!"libcore.io.DiskLruCache".equals(strH) || !"1".equals(strH2) || !Integer.toString(this.f24328f).equals(strH3) || !Integer.toString(this.f24329h).equals(strH4) || !"".equals(strH5)) {
                throw new IOException("unexpected journal header: [" + strH + ", " + strH2 + ", " + strH4 + ", " + strH5 + "]");
            }
            int i2 = 0;
            while (true) {
                try {
                    p(strictLineReader.h());
                    i2++;
                } catch (EOFException unused) {
                    this.l = i2 - this.f24332k.size();
                    if (strictLineReader.f24345f == -1) {
                        q();
                    } else {
                        this.f24331j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, true), Util.f24347a));
                    }
                    try {
                        strictLineReader.close();
                        return;
                    } catch (RuntimeException e2) {
                        throw e2;
                    } catch (Exception unused2) {
                        return;
                    }
                }
            }
        } catch (Throwable th) {
            try {
                strictLineReader.close();
            } catch (RuntimeException e3) {
                throw e3;
            } catch (Exception unused3) {
            }
            throw th;
        }
    }

    public final void p(String str) throws IOException {
        String strSubstring;
        int iIndexOf = str.indexOf(32);
        if (iIndexOf == -1) {
            az.o("unexpected journal line: ".concat(str));
            return;
        }
        int i2 = iIndexOf + 1;
        int iIndexOf2 = str.indexOf(32, i2);
        LinkedHashMap linkedHashMap = this.f24332k;
        if (iIndexOf2 == -1) {
            strSubstring = str.substring(i2);
            if (iIndexOf == 6 && str.startsWith("REMOVE")) {
                linkedHashMap.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i2, iIndexOf2);
        }
        Entry entry = (Entry) linkedHashMap.get(strSubstring);
        if (entry == null) {
            entry = new Entry(strSubstring);
            linkedHashMap.put(strSubstring, entry);
        }
        if (iIndexOf2 == -1 || iIndexOf != 5 || !str.startsWith("CLEAN")) {
            if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith("DIRTY")) {
                entry.f24340f = new Editor(entry);
                return;
            } else {
                if (iIndexOf2 == -1 && iIndexOf == 4 && str.startsWith("READ")) {
                    return;
                }
                az.o("unexpected journal line: ".concat(str));
                return;
            }
        }
        String[] strArrSplit = str.substring(iIndexOf2 + 1).split(" ");
        entry.f24339e = true;
        entry.f24340f = null;
        if (strArrSplit.length != DiskLruCache.this.f24329h) {
            az.y(Arrays.toString(strArrSplit), "unexpected journal line: ");
            return;
        }
        for (int i3 = 0; i3 < strArrSplit.length; i3++) {
            try {
                entry.f24337b[i3] = Long.parseLong(strArrSplit[i3]);
            } catch (NumberFormatException unused) {
                az.y(Arrays.toString(strArrSplit), "unexpected journal line: ");
                return;
            }
        }
    }

    public final synchronized void q() {
        try {
            BufferedWriter bufferedWriter = this.f24331j;
            if (bufferedWriter != null) {
                d(bufferedWriter);
            }
            BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.d), Util.f24347a));
            try {
                bufferedWriter2.write("libcore.io.DiskLruCache");
                bufferedWriter2.write("\n");
                bufferedWriter2.write("1");
                bufferedWriter2.write("\n");
                bufferedWriter2.write(Integer.toString(this.f24328f));
                bufferedWriter2.write("\n");
                bufferedWriter2.write(Integer.toString(this.f24329h));
                bufferedWriter2.write("\n");
                bufferedWriter2.write("\n");
                for (Entry entry : this.f24332k.values()) {
                    if (entry.f24340f != null) {
                        bufferedWriter2.write("DIRTY " + entry.f24336a + '\n');
                    } else {
                        bufferedWriter2.write("CLEAN " + entry.f24336a + entry.a() + '\n');
                    }
                }
                d(bufferedWriter2);
                if (this.f24326c.exists()) {
                    r(this.f24326c, this.f24327e, true);
                }
                r(this.d, this.f24326c, false);
                this.f24327e.delete();
                this.f24331j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f24326c, true), Util.f24347a));
            } catch (Throwable th) {
                d(bufferedWriter2);
                throw th;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final void s() {
        while (this.f24330i > this.g) {
            String str = (String) ((Map.Entry) this.f24332k.entrySet().iterator().next()).getKey();
            synchronized (this) {
                try {
                    if (this.f24331j == null) {
                        throw new IllegalStateException("cache is closed");
                    }
                    Entry entry = (Entry) this.f24332k.get(str);
                    if (entry != null && entry.f24340f == null) {
                        for (int i2 = 0; i2 < this.f24329h; i2++) {
                            File file = entry.f24338c[i2];
                            if (file.exists() && !file.delete()) {
                                throw new IOException("failed to delete " + file);
                            }
                            long j2 = this.f24330i;
                            long[] jArr = entry.f24337b;
                            this.f24330i = j2 - jArr[i2];
                            jArr[i2] = 0;
                        }
                        this.l++;
                        this.f24331j.append((CharSequence) "REMOVE");
                        this.f24331j.append(' ');
                        this.f24331j.append((CharSequence) str);
                        this.f24331j.append('\n');
                        this.f24332k.remove(str);
                        if (k()) {
                            this.n.submit(this.o);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
