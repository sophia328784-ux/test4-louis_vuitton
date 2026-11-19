package okio;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.tg0;
import java.io.File;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0006B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lokio/Path;", "", "Lokio/ByteString;", "bytes", "<init>", "(Lokio/ByteString;)V", "Companion", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Path implements Comparable<Path> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f77432c = new Companion(null);
    public static final String d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ByteString f77433b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087D¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lokio/Path$Companion;", "", "", "DIRECTORY_SEPARATOR", "Ljava/lang/String;", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static Path a(String str) {
            str.getClass();
            ByteString byteString = okio.internal.Path.f77463a;
            Buffer buffer = new Buffer();
            buffer.M0(str);
            return okio.internal.Path.d(buffer, false);
        }

        public static Path b(Companion companion, File file) {
            companion.getClass();
            file.getClass();
            String string = file.toString();
            string.getClass();
            return a(string);
        }
    }

    static {
        String str = File.separator;
        str.getClass();
        d = str;
    }

    public Path(ByteString byteString) {
        byteString.getClass();
        this.f77433b = byteString;
    }

    public final ArrayList a() {
        ArrayList arrayList = new ArrayList();
        int iA = okio.internal.Path.a(this);
        ByteString byteString = this.f77433b;
        if (iA == -1) {
            iA = 0;
        } else if (iA < byteString.e() && byteString.j(iA) == 92) {
            iA++;
        }
        int iE = byteString.e();
        int i2 = iA;
        while (iA < iE) {
            if (byteString.j(iA) == 47 || byteString.j(iA) == 92) {
                arrayList.add(byteString.y(i2, iA));
                i2 = iA + 1;
            }
            iA++;
        }
        if (i2 < byteString.e()) {
            arrayList.add(byteString.y(i2, byteString.e()));
        }
        return arrayList;
    }

    public final String b() {
        ByteString byteString = okio.internal.Path.f77463a;
        ByteString byteStringA = this.f77433b;
        int iL = ByteString.l(byteStringA, byteString);
        if (iL == -1) {
            iL = ByteString.l(byteStringA, okio.internal.Path.f77464b);
        }
        if (iL != -1) {
            byteStringA = ByteString.A(byteStringA, iL + 1, 0, 2);
        } else if (f() != null && byteStringA.e() == 2) {
            byteStringA = ByteString.f77399f;
        }
        return byteStringA.C();
    }

    public final Path c() {
        ByteString byteString = okio.internal.Path.d;
        ByteString byteString2 = this.f77433b;
        if (Intrinsics.c(byteString2, byteString)) {
            return null;
        }
        ByteString byteString3 = okio.internal.Path.f77463a;
        if (Intrinsics.c(byteString2, byteString3)) {
            return null;
        }
        ByteString byteString4 = okio.internal.Path.f77464b;
        if (Intrinsics.c(byteString2, byteString4)) {
            return null;
        }
        ByteString byteString5 = okio.internal.Path.f77466e;
        byteString2.getClass();
        byteString5.getClass();
        int iE = byteString2.e();
        byte[] bArr = byteString5.data;
        if (byteString2.w(iE - bArr.length, byteString5, bArr.length) && (byteString2.e() == 2 || byteString2.w(byteString2.e() - 3, byteString3, 1) || byteString2.w(byteString2.e() - 3, byteString4, 1))) {
            return null;
        }
        int iL = ByteString.l(byteString2, byteString3);
        if (iL == -1) {
            iL = ByteString.l(byteString2, byteString4);
        }
        if (iL == 2 && f() != null) {
            if (byteString2.e() == 3) {
                return null;
            }
            return new Path(ByteString.A(byteString2, 0, 3, 1));
        }
        if (iL == 1) {
            byteString4.getClass();
            if (byteString2.w(0, byteString4, byteString4.e())) {
                return null;
            }
        }
        if (iL != -1 || f() == null) {
            if (iL == -1) {
                return new Path(byteString);
            }
            return iL == 0 ? new Path(ByteString.A(byteString2, 0, 1, 1)) : new Path(ByteString.A(byteString2, 0, iL, 1));
        }
        if (byteString2.e() == 2) {
            return null;
        }
        return new Path(ByteString.A(byteString2, 0, 2, 1));
    }

    @Override // java.lang.Comparable
    public final int compareTo(Path path) {
        Path path2 = path;
        path2.getClass();
        return this.f77433b.compareTo(path2.f77433b);
    }

    public final Path d(Path path) {
        path.getClass();
        ByteString byteString = path.f77433b;
        int iA = okio.internal.Path.a(this);
        ByteString byteString2 = this.f77433b;
        Path path2 = iA == -1 ? null : new Path(byteString2.y(0, iA));
        int iA2 = okio.internal.Path.a(path);
        if (!Intrinsics.c(path2, iA2 == -1 ? null : new Path(byteString.y(0, iA2)))) {
            tg0.h("Paths of different roots cannot be relative to each other: ", this, " and ", path);
            return null;
        }
        ArrayList arrayListA = a();
        ArrayList arrayListA2 = path.a();
        int iMin = Math.min(arrayListA.size(), arrayListA2.size());
        int i2 = 0;
        while (i2 < iMin && Intrinsics.c(arrayListA.get(i2), arrayListA2.get(i2))) {
            i2++;
        }
        if (i2 == iMin && byteString2.e() == byteString.e()) {
            f77432c.getClass();
            return Companion.a(FileUtils.HIDDEN_PREFIX);
        }
        if (arrayListA2.subList(i2, arrayListA2.size()).indexOf(okio.internal.Path.f77466e) != -1) {
            tg0.h("Impossible relative path to resolve: ", this, " and ", path);
            return null;
        }
        if (Intrinsics.c(byteString, okio.internal.Path.d)) {
            return this;
        }
        Buffer buffer = new Buffer();
        ByteString byteStringC = okio.internal.Path.c(path);
        if (byteStringC == null && (byteStringC = okio.internal.Path.c(this)) == null) {
            byteStringC = okio.internal.Path.f(d);
        }
        int size = arrayListA2.size();
        for (int i3 = i2; i3 < size; i3++) {
            buffer.l0(okio.internal.Path.f77466e);
            buffer.l0(byteStringC);
        }
        int size2 = arrayListA.size();
        while (i2 < size2) {
            buffer.l0((ByteString) arrayListA.get(i2));
            buffer.l0(byteStringC);
            i2++;
        }
        return okio.internal.Path.d(buffer, false);
    }

    public final Path e(String str) {
        str.getClass();
        Buffer buffer = new Buffer();
        buffer.M0(str);
        return okio.internal.Path.b(this, okio.internal.Path.d(buffer, false), false);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof Path) && Intrinsics.c(((Path) obj).f77433b, this.f77433b);
    }

    public final Character f() {
        ByteString byteString = okio.internal.Path.f77463a;
        ByteString byteString2 = this.f77433b;
        if (ByteString.h(byteString2, byteString) != -1 || byteString2.e() < 2 || byteString2.j(1) != 58) {
            return null;
        }
        char cJ = (char) byteString2.j(0);
        if (('a' > cJ || cJ >= '{') && ('A' > cJ || cJ >= '[')) {
            return null;
        }
        return Character.valueOf(cJ);
    }

    public final int hashCode() {
        return this.f77433b.hashCode();
    }

    public final File toFile() {
        return new File(this.f77433b.C());
    }

    public final String toString() {
        return this.f77433b.C();
    }
}
