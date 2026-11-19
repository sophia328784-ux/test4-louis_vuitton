package com.sightcall.universal.media;

import java.io.File;
import java.io.IOException;
import net.rtccloud.sdk.util.Utils;
import okio.Okio;
import okio.RealBufferedSink;
import okio.RealBufferedSource;

/* JADX INFO: loaded from: classes3.dex */
public final class Media {
    private final File image;
    private final long lengthInBytes;
    private final File metadata;

    public Media(File file, File file2) {
        this.image = file;
        this.metadata = file2;
        this.lengthInBytes = file.length();
    }

    private static void copy(File file, File file2) throws Throwable {
        RealBufferedSource realBufferedSource;
        RealBufferedSink realBufferedSink = null;
        try {
            realBufferedSource = new RealBufferedSource(Okio.e(file));
            try {
                file2.getClass();
                RealBufferedSink realBufferedSink2 = new RealBufferedSink(Okio.d(file2));
                try {
                    realBufferedSink2.u0(realBufferedSource);
                    Utils.closeSilently(realBufferedSink2);
                    Utils.closeSilently(realBufferedSource);
                } catch (Throwable th) {
                    th = th;
                    realBufferedSink = realBufferedSink2;
                    Utils.closeSilently(realBufferedSink);
                    Utils.closeSilently(realBufferedSource);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            realBufferedSource = null;
        }
    }

    public File copyImageTo(File file, String str) throws Throwable {
        file.mkdirs();
        File fileImage = image();
        File file2 = new File(file, str);
        copy(fileImage, file2);
        return file2;
    }

    public File copyMetadataTo(File file, String str) throws Throwable {
        file.mkdirs();
        File fileMetadata = metadata();
        File file2 = new File(file, str);
        copy(fileMetadata, file2);
        return file2;
    }

    public Media copyTo(File file) throws IOException {
        return new Media(copyImageTo(file), copyMetadataTo(file));
    }

    public boolean delete() {
        return deleteImage() && deleteMetadata();
    }

    public boolean deleteImage() {
        return this.image.delete();
    }

    public boolean deleteMetadata() {
        return this.metadata.delete();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Media.class != obj.getClass()) {
            return false;
        }
        Media media = (Media) obj;
        if (this.image.equals(media.image)) {
            return this.metadata.equals(media.metadata);
        }
        return false;
    }

    public int hashCode() {
        return this.metadata.hashCode() + (this.image.hashCode() * 31);
    }

    public File image() {
        return this.image;
    }

    public long lengthInBytes() {
        return this.lengthInBytes;
    }

    public File metadata() {
        return this.metadata;
    }

    public File moveImageTo(File file) throws IOException {
        return moveImageTo(file, image().getName());
    }

    public File moveMetadataTo(File file) throws IOException {
        return moveMetadataTo(file, metadata().getName());
    }

    public Media moveTo(File file) throws IOException {
        return new Media(moveImageTo(file), moveMetadataTo(file));
    }

    public boolean renameTo(File file) {
        return this.image.renameTo(new File(file, this.image.getName())) && this.metadata.renameTo(new File(file, this.metadata.getName()));
    }

    public String toString() {
        return "Media{image=" + this.image + ", metadata=" + this.metadata + ", lengthInBytes=" + com.sightcall.universal.util.Utils.bytes2size(this.lengthInBytes) + '}';
    }

    public File moveImageTo(File file, String str) throws Throwable {
        File fileCopyImageTo = copyImageTo(file, str);
        image().delete();
        return fileCopyImageTo;
    }

    public File moveMetadataTo(File file, String str) throws Throwable {
        File fileCopyMetadataTo = copyMetadataTo(file, str);
        metadata().delete();
        return fileCopyMetadataTo;
    }

    public File copyImageTo(File file) throws IOException {
        return copyImageTo(file, image().getName());
    }

    public File copyMetadataTo(File file) throws IOException {
        return copyMetadataTo(file, metadata().getName());
    }
}
