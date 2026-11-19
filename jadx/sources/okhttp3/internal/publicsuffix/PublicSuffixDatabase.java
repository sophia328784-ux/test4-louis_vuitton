package okhttp3.internal.publicsuffix;

import com.sightcall.universal.media.offline.FileUtils;
import io.jsonwebtoken.JwtParser;
import java.net.IDN;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import okhttp3.internal._UtilCommonKt;
import okio.ByteString;
import org.teleal.cling.support.contentdirectory.callback.Browse;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;", "", "Lokhttp3/internal/publicsuffix/PublicSuffixList;", "publicSuffixList", "<init>", "(Lokhttp3/internal/publicsuffix/PublicSuffixList;)V", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PublicSuffixDatabase {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f77340b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ByteString f77341c;
    public static final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final PublicSuffixDatabase f77342e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PublicSuffixList f77343a;

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0016\u0010\r\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;", "", "Lokio/ByteString;", "WILDCARD_LABEL", "Lokio/ByteString;", "", "", "PREVAILING_RULE", "Ljava/util/List;", "", "EXCEPTION_MARKER", "C", "Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;", "instance", "Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static final String a(Companion companion, ByteString byteString, ByteString[] byteStringArr, int i2) {
            int i3;
            boolean z;
            int i4;
            int i5;
            companion.getClass();
            int iE = byteString.e();
            int i6 = 0;
            while (i6 < iE) {
                int i7 = (i6 + iE) / 2;
                while (i7 > -1 && byteString.j(i7) != 10) {
                    i7--;
                }
                int i8 = i7 + 1;
                int i9 = 1;
                while (true) {
                    i3 = i8 + i9;
                    if (byteString.j(i3) == 10) {
                        break;
                    }
                    i9++;
                }
                int i10 = i3 - i8;
                int i11 = i2;
                boolean z2 = false;
                int i12 = 0;
                int i13 = 0;
                while (true) {
                    if (z2) {
                        i4 = 46;
                        z = false;
                    } else {
                        byte bJ = byteStringArr[i11].j(i12);
                        byte[] bArr = _UtilCommonKt.f77016a;
                        int i14 = bJ & 255;
                        z = z2;
                        i4 = i14;
                    }
                    byte bJ2 = byteString.j(i8 + i13);
                    byte[] bArr2 = _UtilCommonKt.f77016a;
                    i5 = i4 - (bJ2 & 255);
                    if (i5 != 0) {
                        break;
                    }
                    i13++;
                    i12++;
                    if (i13 == i10) {
                        break;
                    }
                    if (byteStringArr[i11].e() != i12) {
                        z2 = z;
                    } else {
                        if (i11 == byteStringArr.length - 1) {
                            break;
                        }
                        i11++;
                        i12 = -1;
                        z2 = true;
                    }
                }
                if (i5 >= 0) {
                    if (i5 <= 0) {
                        int i15 = i10 - i13;
                        int iE2 = byteStringArr[i11].e() - i12;
                        int length = byteStringArr.length;
                        for (int i16 = i11 + 1; i16 < length; i16++) {
                            iE2 += byteStringArr[i16].e();
                        }
                        if (iE2 >= i15) {
                            if (iE2 <= i15) {
                                return byteString.y(i8, i10 + i8).x(Charsets.UTF_8);
                            }
                        }
                    }
                    i6 = i3 + 1;
                }
                iE = i7;
            }
            return null;
        }
    }

    static {
        ByteString.f77398e.getClass();
        f77341c = new ByteString(Arrays.copyOf(new byte[]{42}, 1));
        d = CollectionsKt.O(Browse.CAPS_WILDCARD);
        f77342e = new PublicSuffixDatabase(new AssetPublicSuffixList(null, 1, null));
    }

    public PublicSuffixDatabase(PublicSuffixList publicSuffixList) {
        publicSuffixList.getClass();
        this.f77343a = publicSuffixList;
    }

    public static List b(String str) {
        List listM = StringsKt.M(str, new char[]{JwtParser.SEPARATOR_CHAR});
        return Intrinsics.c(CollectionsKt.M(listM), "") ? CollectionsKt.x(1, listM) : listM;
    }

    public final String a(String str) {
        Companion companion;
        String strA;
        String strA2;
        String strA3;
        List listM;
        int size;
        int size2;
        String unicode = IDN.toUnicode(str);
        unicode.getClass();
        List listB = b(unicode);
        PublicSuffixList publicSuffixList = this.f77343a;
        publicSuffixList.b();
        int size3 = listB.size();
        ByteString[] byteStringArr = new ByteString[size3];
        for (int i2 = 0; i2 < size3; i2++) {
            ByteString.Companion companion2 = ByteString.f77398e;
            String str2 = (String) listB.get(i2);
            companion2.getClass();
            byteStringArr[i2] = ByteString.Companion.c(str2);
        }
        int i3 = 0;
        while (true) {
            companion = f77340b;
            if (i3 >= size3) {
                strA = null;
                break;
            }
            strA = Companion.a(companion, publicSuffixList.a(), byteStringArr, i3);
            if (strA != null) {
                break;
            }
            i3++;
        }
        if (size3 <= 1) {
            strA2 = null;
            break;
        }
        ByteString[] byteStringArr2 = (ByteString[]) byteStringArr.clone();
        int length = byteStringArr2.length - 1;
        int i4 = 0;
        while (true) {
            if (i4 >= length) {
                strA2 = null;
                break;
            }
            byteStringArr2[i4] = f77341c;
            strA2 = Companion.a(companion, publicSuffixList.a(), byteStringArr2, i4);
            if (strA2 != null) {
                break;
            }
            i4++;
        }
        if (strA2 == null) {
            strA3 = null;
            break;
        }
        int i5 = size3 - 1;
        int i6 = 0;
        while (true) {
            if (i6 >= i5) {
                strA3 = null;
                break;
            }
            strA3 = Companion.a(companion, publicSuffixList.c(), byteStringArr, i6);
            if (strA3 != null) {
                break;
            }
            i6++;
        }
        if (strA3 != null) {
            listM = StringsKt.M("!".concat(strA3), new char[]{JwtParser.SEPARATOR_CHAR});
        } else if (strA == null && strA2 == null) {
            listM = d;
        } else {
            List listM2 = strA != null ? StringsKt.M(strA, new char[]{JwtParser.SEPARATOR_CHAR}) : EmptyList.f71768b;
            listM = strA2 != null ? StringsKt.M(strA2, new char[]{JwtParser.SEPARATOR_CHAR}) : EmptyList.f71768b;
            if (listM2.size() > listM.size()) {
                listM = listM2;
            }
        }
        if (listB.size() == listM.size() && ((String) listM.get(0)).charAt(0) != '!') {
            return null;
        }
        if (((String) listM.get(0)).charAt(0) == '!') {
            size = listB.size();
            size2 = listM.size();
        } else {
            size = listB.size();
            size2 = listM.size() + 1;
        }
        return SequencesKt.p(SequencesKt.d(CollectionsKt.o(b(str)), size - size2), FileUtils.HIDDEN_PREFIX);
    }
}
