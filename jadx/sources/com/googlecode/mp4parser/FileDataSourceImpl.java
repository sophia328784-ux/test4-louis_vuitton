package com.googlecode.mp4parser;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes2.dex */
public class FileDataSourceImpl implements DataSource {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FileChannel f35698b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f35699c;

    public FileDataSourceImpl(String str) throws FileNotFoundException {
        File file = new File(str);
        this.f35698b = new FileInputStream(file).getChannel();
        this.f35699c = file.getName();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f35698b.close();
    }

    @Override // com.googlecode.mp4parser.DataSource
    public final long f(long j2, long j3, WritableByteChannel writableByteChannel) {
        return this.f35698b.transferTo(j2, j3, writableByteChannel);
    }

    @Override // com.googlecode.mp4parser.DataSource
    public final long position() {
        return this.f35698b.position();
    }

    @Override // com.googlecode.mp4parser.DataSource
    public final int read(ByteBuffer byteBuffer) {
        return this.f35698b.read(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.DataSource
    public final ByteBuffer s1(long j2, long j3) {
        return this.f35698b.map(FileChannel.MapMode.READ_ONLY, j2, j3);
    }

    @Override // com.googlecode.mp4parser.DataSource
    public final long size() {
        return this.f35698b.size();
    }

    public final String toString() {
        return this.f35699c;
    }

    @Override // com.googlecode.mp4parser.DataSource
    public final void position(long j2) throws IOException {
        this.f35698b.position(j2);
    }

    public FileDataSourceImpl(File file) throws FileNotFoundException {
        this.f35698b = new FileInputStream(file).getChannel();
        this.f35699c = file.getName();
    }

    public FileDataSourceImpl(FileChannel fileChannel) {
        this.f35698b = fileChannel;
        this.f35699c = "unknown";
    }

    public FileDataSourceImpl(FileChannel fileChannel, String str) {
        this.f35698b = fileChannel;
        this.f35699c = str;
    }
}
