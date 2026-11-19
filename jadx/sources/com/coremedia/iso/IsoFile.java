package com.coremedia.iso;

import com.googlecode.mp4parser.BasicContainer;
import com.googlecode.mp4parser.DataSource;
import com.googlecode.mp4parser.FileDataSourceImpl;
import com.googlecode.mp4parser.annotations.DoNotParseDetail;
import com.googlecode.mp4parser.util.Logger;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
@DoNotParseDetail
public class IsoFile extends BasicContainer implements Closeable {
    static {
        Logger.a(IsoFile.class);
    }

    public IsoFile(DataSource dataSource, BoxParser boxParser) throws IOException {
        long size = dataSource.size();
        this.f35695c = dataSource;
        this.f35696e = dataSource.position();
        dataSource.position(dataSource.position() + size);
        this.f35697f = dataSource.position();
        this.f35694b = boxParser;
    }

    public static byte[] n(String str) {
        byte[] bArr = new byte[4];
        if (str != null) {
            for (int i2 = 0; i2 < Math.min(4, str.length()); i2++) {
                bArr[i2] = (byte) str.charAt(i2);
            }
        }
        return bArr;
    }

    @Override // com.googlecode.mp4parser.BasicContainer, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f35695c.close();
    }

    @Override // com.googlecode.mp4parser.BasicContainer
    public final String toString() {
        return "model(" + this.f35695c.toString() + ")";
    }

    public IsoFile(DataSource dataSource) throws IOException {
        this(dataSource, new PropertyBoxParserImpl(new String[0]));
    }

    public IsoFile(String str) throws IOException {
        this(new FileDataSourceImpl(new File(str)));
    }
}
