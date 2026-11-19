package coil3.fetch;

import coil3.ImageLoader;
import coil3.Uri;
import coil3.graphics.DataSource;
import coil3.graphics.SourceImageSource;
import coil3.request.Options;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.d21;
import defpackage.md;
import defpackage.pq0;
import defpackage.tg0;
import kotlin.Metadata;
import kotlin.collections.AbstractList;
import kotlin.coroutines.Continuation;
import kotlin.io.encoding.Base64;
import kotlin.io.encoding.Base64Kt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import okio.Buffer;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001:\u0002\b\tB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lcoil3/fetch/DataUriFetcher;", "Lcoil3/fetch/Fetcher;", "Lcoil3/Uri;", "uri", "Lcoil3/request/Options;", "options", "<init>", "(Lcoil3/Uri;Lcoil3/request/Options;)V", "Factory", "Companion", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class DataUriFetcher implements Fetcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Uri f21430a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Options f21431b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcoil3/fetch/DataUriFetcher$Companion;", "", "", "BASE64_TAG", "Ljava/lang/String;", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcoil3/fetch/DataUriFetcher$Factory;", "Lcoil3/fetch/Fetcher$Factory;", "Lcoil3/Uri;", "<init>", "()V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Factory implements Fetcher.Factory<Uri> {
        @Override // coil3.fetch.Fetcher.Factory
        public final Fetcher a(Object obj, Options options, ImageLoader imageLoader) {
            Uri uri = (Uri) obj;
            if (Intrinsics.c(uri.f21268c, DbParams.KEY_DATA)) {
                return new DataUriFetcher(uri, options);
            }
            return null;
        }
    }

    static {
        new Companion(null);
    }

    public DataUriFetcher(Uri uri, Options options) {
        this.f21430a = uri;
        this.f21431b = options;
    }

    @Override // coil3.fetch.Fetcher
    public final Object a(Continuation continuation) {
        int i2;
        int i3;
        int i4;
        int i5;
        byte[] bArr;
        int i6;
        int i7;
        char c2;
        int i8;
        Uri uri = this.f21430a;
        String str = uri.f21266a;
        String str2 = uri.f21266a;
        char c3 = 6;
        int iV = StringsKt.v(str, ";base64,", 0, false, 6);
        if (iV == -1) {
            tg0.d(uri, "invalid data uri: ");
            return null;
        }
        int iU = StringsKt.u(str2, ':', 0, 6);
        if (iU == -1) {
            tg0.d(uri, "invalid data uri: ");
            return null;
        }
        int i9 = 1;
        String strSubstring = str2.substring(iU + 1, iV);
        Base64.Companion companion = Base64.INSTANCE;
        int i10 = iV + 8;
        int length = str2.length();
        companion.getClass();
        Base64.PaddingOption paddingOption = companion.d;
        boolean z = companion.f71893b;
        int length2 = str2.length();
        AbstractList.Companion companion2 = AbstractList.INSTANCE;
        companion2.getClass();
        AbstractList.Companion.a(i10, length, length2);
        byte[] bytes = str2.substring(i10, length).getBytes(Charsets.d);
        bytes.getClass();
        int length3 = bytes.length;
        int length4 = bytes.length;
        companion2.getClass();
        AbstractList.Companion.a(0, length3, length4);
        int i11 = -2;
        if (length3 == 0) {
            i2 = 1;
            i5 = 0;
            c3 = 6;
        } else {
            if (length3 == 1) {
                md.n(pq0.k(length3, "Input should have at least 2 symbols for Base64 decoding, startIndex: 0, endIndex: "));
                return null;
            }
            if (z) {
                i4 = length3;
                int i12 = 0;
                while (true) {
                    i2 = i9;
                    if (i12 >= length3) {
                        break;
                    }
                    int i13 = Base64Kt.f71897b[bytes[i12] & 255];
                    if (i13 < 0) {
                        if (i13 == -2) {
                            i4 -= length3 - i12;
                            break;
                        }
                        i4--;
                    }
                    i12++;
                    i9 = i2;
                }
            } else {
                i2 = 1;
                if (bytes[length3 - 1] == 61) {
                    i4 = length3 - 1;
                    if (bytes[length3 - 2] == 61) {
                        i4 = length3 - 2;
                    }
                } else {
                    i3 = length3;
                }
                i5 = (int) ((((long) i3) * 6) / 8);
            }
            i3 = i4;
            i5 = (int) ((((long) i3) * 6) / 8);
        }
        byte[] bArr2 = new byte[i5];
        int[] iArr = companion.f71892a ? Base64Kt.d : Base64Kt.f71897b;
        int i14 = -8;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = -8;
        while (true) {
            if (i17 >= length3) {
                bArr = bytes;
                i6 = i11;
                i7 = 0;
                break;
            }
            if (i18 != i14 || (i8 = i17 + 3) >= length3) {
                bArr = bytes;
            } else {
                bArr = bytes;
                int i19 = i17 + 4;
                int i20 = (iArr[bArr[i17 + 2] & 255] << 6) | (iArr[bytes[i17] & 255] << 18) | (iArr[bytes[i17 + 1] & 255] << 12) | iArr[bArr[i8] & 255];
                if (i20 >= 0) {
                    bArr2[i15] = (byte) (i20 >> 16);
                    int i21 = i15 + 2;
                    bArr2[i15 + 1] = (byte) (i20 >> 8);
                    i15 += 3;
                    bArr2[i21] = (byte) i20;
                    bytes = bArr;
                    i17 = i19;
                    i14 = -8;
                }
                i11 = -2;
            }
            int i22 = bArr[i17] & 255;
            int i23 = iArr[i22];
            if (i23 >= 0) {
                c2 = '=';
                i17++;
                i16 = (i16 << 6) | i23;
                int i24 = i18 + 6;
                if (i24 >= 0) {
                    bArr2[i15] = (byte) (i16 >>> i24);
                    i16 &= (i2 << i24) - 1;
                    i18 -= 2;
                    i15++;
                } else {
                    i18 = i24;
                }
            } else {
                if (i23 == -2) {
                    if (i18 == -8) {
                        md.n(pq0.k(i17, "Redundant pad character at index "));
                        return null;
                    }
                    if (i18 != -6) {
                        if (i18 != -4) {
                            if (i18 != -2) {
                                md.k("Unreachable");
                                return null;
                            }
                        } else {
                            if (paddingOption == Base64.PaddingOption.ABSENT) {
                                md.n(pq0.k(i17, "The padding option is set to ABSENT, but the input has a pad character at index "));
                                return null;
                            }
                            int i25 = i17 + 1;
                            if (z) {
                                while (i25 < length3) {
                                    if (Base64Kt.f71897b[bArr[i25] & 255] != -1) {
                                        break;
                                    }
                                    i25++;
                                }
                            }
                            if (i25 == length3 || bArr[i25] != 61) {
                                md.n(pq0.k(i25, "Missing one pad character at index "));
                                return null;
                            }
                            i17 = i25 + 1;
                        }
                        i7 = i2;
                        i6 = -2;
                        break;
                    }
                    if (paddingOption == Base64.PaddingOption.ABSENT) {
                        md.n(pq0.k(i17, "The padding option is set to ABSENT, but the input has a pad character at index "));
                        return null;
                    }
                    i17++;
                    i7 = i2;
                    i6 = -2;
                    break;
                }
                c2 = '=';
                if (!z) {
                    StringBuilder sb = new StringBuilder("Invalid symbol '");
                    sb.append((char) i22);
                    sb.append("'(");
                    String string = Integer.toString(i22, CharsKt.checkRadix(8));
                    string.getClass();
                    sb.append(string);
                    md.n(d21.f(i17, ") at index ", sb));
                    return null;
                }
                i17++;
            }
            bytes = bArr;
            i14 = -8;
            i11 = -2;
        }
        if (i18 == i6) {
            md.n("The last unit of input does not have enough bits");
            return null;
        }
        if (i18 != -8 && i7 == 0 && paddingOption == Base64.PaddingOption.PRESENT) {
            md.n("The padding option is set to PRESENT, but the input is not properly padded");
            return null;
        }
        if (i16 != 0) {
            md.n("The pad bits must be zeros");
            return null;
        }
        if (z) {
            while (i17 < length3) {
                if (Base64Kt.f71897b[bArr[i17] & 255] != -1) {
                    break;
                }
                i17++;
            }
        }
        if (i17 >= length3) {
            if (i15 != i5) {
                md.k("Check failed.");
                return null;
            }
            Buffer buffer = new Buffer();
            buffer.write(bArr2, 0, i5);
            return new SourceFetchResult(new SourceImageSource(buffer, this.f21431b.f21664f, null), strSubstring, DataSource.MEMORY);
        }
        int i26 = bArr[i17] & 255;
        char c4 = (char) i26;
        String string2 = Integer.toString(i26, CharsKt.checkRadix(8));
        string2.getClass();
        StringBuilder sb2 = new StringBuilder("Symbol '");
        sb2.append(c4);
        sb2.append("'(");
        sb2.append(string2);
        sb2.append(") at index ");
        sb2.append(i17 - 1);
        sb2.append(" is prohibited after the pad character");
        throw new IllegalArgumentException(sb2.toString());
    }
}
