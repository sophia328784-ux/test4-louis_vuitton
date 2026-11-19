package com.google.common.net;

import com.google.common.base.Ascii;
import com.google.common.base.CharMatcher;
import com.google.common.base.Joiner;
import com.google.common.base.Optional;
import com.google.common.collect.ImmutableListMultimap;
import com.google.common.collect.Maps;
import com.google.common.collect.Multimaps;
import com.google.errorprone.annotations.Immutable;
import defpackage.md;
import defpackage.uh;
import io.jsonwebtoken.Header;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.HashMap;
import java.util.Objects;
import org.teleal.cling.support.contentdirectory.callback.Browse;

/* JADX INFO: loaded from: classes2.dex */
@Immutable
public final class MediaType {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final ImmutableListMultimap f33766f = ImmutableListMultimap.o(Ascii.c(StandardCharsets.UTF_8.name()));
    public static final CharMatcher g = CharMatcher.d().b(CharMatcher.i().m()).b(CharMatcher.h()).b(CharMatcher.c("()<>@,;:\\\"/[]?=").m());

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final HashMap f33767h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final MediaType f33768i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Joiner.MapJoiner f33769j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f33770a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f33771b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImmutableListMultimap f33772c;
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f33773e;

    static {
        CharMatcher.d().b(CharMatcher.c("\"\\\r").m());
        CharMatcher.c(" \t\r\n");
        f33767h = new HashMap();
        a(Browse.CAPS_WILDCARD, Browse.CAPS_WILDCARD);
        a("text", Browse.CAPS_WILDCARD);
        a("image", Browse.CAPS_WILDCARD);
        a("audio", Browse.CAPS_WILDCARD);
        a("video", Browse.CAPS_WILDCARD);
        a("application", Browse.CAPS_WILDCARD);
        a("font", Browse.CAPS_WILDCARD);
        b("text", "cache-manifest");
        b("text", "css");
        b("text", "csv");
        b("text", "html");
        b("text", "calendar");
        b("text", "markdown");
        b("text", "plain");
        b("text", "javascript");
        b("text", "tab-separated-values");
        b("text", "vcard");
        b("text", "vnd.wap.wml");
        b("text", "xml");
        b("text", "vtt");
        a("image", "bmp");
        a("image", "x-canon-crw");
        a("image", "gif");
        a("image", "vnd.microsoft.icon");
        a("image", "jpeg");
        a("image", "png");
        a("image", "vnd.adobe.photoshop");
        b("image", "svg+xml");
        a("image", "tiff");
        a("image", "avif");
        a("image", "webp");
        a("image", "heif");
        a("image", "jp2");
        a("audio", "mp4");
        a("audio", "mpeg");
        a("audio", "ogg");
        a("audio", "webm");
        a("audio", "l16");
        a("audio", "l24");
        a("audio", "basic");
        a("audio", "aac");
        a("audio", "vorbis");
        a("audio", "x-ms-wma");
        a("audio", "x-ms-wax");
        a("audio", "vnd.rn-realaudio");
        a("audio", "vnd.wave");
        a("video", "mp4");
        a("video", "mpeg");
        a("video", "ogg");
        a("video", "quicktime");
        a("video", "webm");
        a("video", "x-ms-wmv");
        a("video", "x-flv");
        a("video", "3gpp");
        a("video", "3gpp2");
        b("application", "xml");
        b("application", "atom+xml");
        a("application", "x-bzip2");
        b("application", "dart");
        a("application", "vnd.apple.pkpass");
        a("application", "vnd.ms-fontobject");
        a("application", "epub+zip");
        a("application", "x-www-form-urlencoded");
        a("application", "pkcs12");
        a("application", "binary");
        a("application", "cbor");
        a("application", "geo+json");
        a("application", "x-gzip");
        a("application", "hal+json");
        b("application", "javascript");
        a("application", "jose");
        a("application", "jose+json");
        f33768i = b("application", "json");
        a("application", "jwt");
        b("application", "manifest+json");
        a("application", "vnd.google-earth.kml+xml");
        a("application", "vnd.google-earth.kmz");
        a("application", "mbox");
        a("application", "x-apple-aspen-config");
        a("application", "vnd.ms-excel");
        a("application", "vnd.ms-outlook");
        a("application", "vnd.ms-powerpoint");
        a("application", "msword");
        a("application", "dash+xml");
        a("application", "wasm");
        a("application", "x-nacl");
        a("application", "x-pnacl");
        a("application", "octet-stream");
        a("application", "ogg");
        a("application", "vnd.openxmlformats-officedocument.wordprocessingml.document");
        a("application", "vnd.openxmlformats-officedocument.presentationml.presentation");
        a("application", "vnd.openxmlformats-officedocument.spreadsheetml.sheet");
        a("application", "vnd.oasis.opendocument.graphics");
        a("application", "vnd.oasis.opendocument.presentation");
        a("application", "vnd.oasis.opendocument.spreadsheet");
        a("application", "vnd.oasis.opendocument.text");
        b("application", "opensearchdescription+xml");
        a("application", "pdf");
        a("application", "postscript");
        a("application", "protobuf");
        b("application", "rdf+xml");
        b("application", "rtf");
        a("application", "font-sfnt");
        a("application", "x-shockwave-flash");
        a("application", "vnd.sketchup.skp");
        b("application", "soap+xml");
        a("application", "x-tar");
        a("application", "font-woff");
        a("application", "font-woff2");
        b("application", "xhtml+xml");
        b("application", "xrd+xml");
        a("application", Header.COMPRESSION_ALGORITHM);
        a("font", "collection");
        a("font", "otf");
        a("font", "sfnt");
        a("font", "ttf");
        a("font", "woff");
        a("font", "woff2");
        f33769j = new Joiner.MapJoiner(new Joiner("; "));
    }

    public MediaType(String str, String str2, ImmutableListMultimap immutableListMultimap) {
        this.f33770a = str;
        this.f33771b = str2;
        this.f33772c = immutableListMultimap;
    }

    public static void a(String str, String str2) {
        MediaType mediaType = new MediaType(str, str2, ImmutableListMultimap.n());
        f33767h.put(mediaType, mediaType);
    }

    public static MediaType b(String str, String str2) {
        MediaType mediaType = new MediaType(str, str2, f33766f);
        f33767h.put(mediaType, mediaType);
        Optional.d(StandardCharsets.UTF_8);
        return mediaType;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MediaType)) {
            return false;
        }
        MediaType mediaType = (MediaType) obj;
        if (this.f33770a.equals(mediaType.f33770a) && this.f33771b.equals(mediaType.f33771b)) {
            return ((AbstractMap) Maps.b(this.f33772c.h(), new uh(9))).equals(Maps.b(mediaType.f33772c.h(), new uh(9)));
        }
        return false;
    }

    public final int hashCode() {
        int i2 = this.f33773e;
        if (i2 != 0) {
            return i2;
        }
        int iHash = Objects.hash(this.f33770a, this.f33771b, Maps.b(this.f33772c.h(), new uh(9)));
        this.f33773e = iHash;
        return iHash;
    }

    public final String toString() {
        String str = this.d;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.f33770a);
        sb.append('/');
        sb.append(this.f33771b);
        ImmutableListMultimap immutableListMultimap = this.f33772c;
        if (!immutableListMultimap.k()) {
            sb.append("; ");
            Collection collectionF = Multimaps.a(immutableListMultimap, new uh(8)).f();
            Joiner.MapJoiner mapJoiner = f33769j;
            mapJoiner.getClass();
            try {
                mapJoiner.a(sb, collectionF.iterator());
            } catch (IOException e2) {
                md.h(e2);
                return null;
            }
        }
        String string = sb.toString();
        this.d = string;
        return string;
    }
}
