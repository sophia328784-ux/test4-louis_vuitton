package org.teleal.cling.model.meta;

import defpackage.x1;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.BitSet;
import java.util.logging.Logger;
import org.teleal.cling.model.Validatable;
import org.teleal.cling.model.types.BinHexDatatype;
import org.teleal.common.io.IO;
import org.teleal.common.util.ByteArray;
import org.teleal.common.util.MimeType;
import org.teleal.common.util.URIUtil;

/* JADX INFO: loaded from: classes5.dex */
public class Icon implements Validatable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Logger f78460h = Logger.getLogger(StateVariable.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MimeType f78461a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f78462b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f78463c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final URI f78464e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final byte[] f78465f;
    public Device g;

    public Icon(String str, int i2, int i3, int i4, URI uri, String str2) {
        this(str, i2, i3, i4, uri, (str2 == null || str2.equals("")) ? null : ByteArray.a(new BinHexDatatype().e(str2)));
    }

    public final String toString() {
        return "Icon(" + this.f78462b + "x" + this.f78463c + ", " + this.f78461a + ") " + this.f78464e;
    }

    public Icon(String str, int i2, int i3, int i4, URI uri) {
        this(str, i2, i3, i4, uri, "");
    }

    public Icon(String str, int i2, int i3, int i4, String str2) throws IllegalArgumentException {
        this(str, i2, i3, i4, URI.create(str2), "");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Icon(String str, int i2, int i3, int i4, URL url) throws IOException {
        BitSet bitSet = URIUtil.f78649a;
        URI uri = null;
        if (url != null) {
            try {
                uri = url.toURI();
            } catch (URISyntaxException e2) {
                x1.m(e2);
                throw null;
            }
        }
        this(str, i2, i3, i4, new File(uri));
    }

    public Icon(String str, int i2, int i3, int i4, URI uri, InputStream inputStream) throws IOException {
        this(str, i2, i3, i4, uri, IO.a(inputStream));
    }

    public Icon(String str, int i2, int i3, int i4, File file) throws IOException {
        URI uriCreate = URI.create(file.getName());
        int i5 = IO.f78641a;
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            byte[] bArrA = IO.a(fileInputStream);
            fileInputStream.close();
            this(str, i2, i3, i4, uriCreate, bArrA);
        } catch (Throwable th) {
            fileInputStream.close();
            throw th;
        }
    }

    public Icon(String str, int i2, int i3, int i4, URI uri, byte[] bArr) {
        this((str == null || str.length() <= 0) ? null : MimeType.a(str), i2, i3, i4, uri, bArr);
    }

    public Icon(MimeType mimeType, int i2, int i3, int i4, URI uri, byte[] bArr) {
        this.f78461a = mimeType;
        this.f78462b = i2;
        this.f78463c = i3;
        this.d = i4;
        this.f78464e = uri;
        this.f78465f = bArr;
    }
}
