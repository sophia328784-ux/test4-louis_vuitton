package okio.internal;

import com.dynatrace.android.callback.Callback;
import defpackage.mt;
import defpackage.xn0;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.JarURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import okio.FileHandle;
import okio.FileMetadata;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import okio.Sink;
import okio.Source;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001:\u0001\tB#\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0001¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lokio/internal/ResourceFileSystem;", "Lokio/FileSystem;", "Ljava/lang/ClassLoader;", "classLoader", "", "indexEagerly", "systemFileSystem", "<init>", "(Ljava/lang/ClassLoader;ZLokio/FileSystem;)V", "Companion", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ResourceFileSystem extends FileSystem {
    public static final Companion g = new Companion(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Path f77480h;
    public final ClassLoader d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FileSystem f77481e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Lazy f77482f;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokio/internal/ResourceFileSystem$Companion;", "", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static final boolean a(Companion companion, Path path) {
            companion.getClass();
            return !StringsKt.p(path.b(), ".class", true);
        }
    }

    static {
        Path.f77432c.getClass();
        f77480h = Path.Companion.a("/");
    }

    public ResourceFileSystem(ClassLoader classLoader, boolean z, FileSystem fileSystem) {
        classLoader.getClass();
        fileSystem.getClass();
        this.d = classLoader;
        this.f77481e = fileSystem;
        Lazy lazyB = LazyKt.b(new xn0(this, 15));
        this.f77482f = lazyB;
        if (z) {
            ((List) lazyB.getF71699b()).size();
        }
    }

    @Override // okio.FileSystem
    public final Sink c(Path path) throws IOException {
        path.getClass();
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public final void d(Path path, Path path2) throws IOException {
        path.getClass();
        path2.getClass();
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public final void g(Path path) throws IOException {
        path.getClass();
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public final void h(Path path) throws IOException {
        path.getClass();
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public final List m(Path path) throws FileNotFoundException {
        Companion companion;
        path.getClass();
        Path path2 = f77480h;
        path2.getClass();
        String strC = Path.b(path2, path, true).d(path2).f77433b.C();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        boolean z = false;
        for (Pair pair : (List) this.f77482f.getF71699b()) {
            FileSystem fileSystem = (FileSystem) pair.f71705b;
            Path path3 = (Path) pair.f71706c;
            try {
                List listM = fileSystem.m(path3.e(strC));
                ArrayList<Path> arrayList = new ArrayList();
                Iterator it = listM.iterator();
                while (true) {
                    boolean zHasNext = it.hasNext();
                    companion = g;
                    if (!zHasNext) {
                        break;
                    }
                    Object next = it.next();
                    if (Companion.a(companion, (Path) next)) {
                        arrayList.add(next);
                    }
                }
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
                for (Path path4 : arrayList) {
                    companion.getClass();
                    path4.getClass();
                    String strReplace = StringsKt.E(path4.f77433b.C(), path3.f77433b.C()).replace('\\', '/');
                    strReplace.getClass();
                    arrayList2.add(path2.e(strReplace));
                }
                CollectionsKt.j(linkedHashSet, arrayList2);
                z = true;
            } catch (IOException unused) {
            }
        }
        if (z) {
            return CollectionsKt.y0(linkedHashSet);
        }
        mt.l(path, "file not found: ");
        return null;
    }

    @Override // okio.FileSystem
    public final FileMetadata o(Path path) {
        path.getClass();
        if (!Companion.a(g, path)) {
            return null;
        }
        Path path2 = f77480h;
        path2.getClass();
        String strC = Path.b(path2, path, true).d(path2).f77433b.C();
        for (Pair pair : (List) this.f77482f.getF71699b()) {
            FileMetadata fileMetadataO = ((FileSystem) pair.f71705b).o(((Path) pair.f71706c).e(strC));
            if (fileMetadataO != null) {
                return fileMetadataO;
            }
        }
        return null;
    }

    @Override // okio.FileSystem
    public final FileHandle p(Path path) throws FileNotFoundException {
        path.getClass();
        if (!Companion.a(g, path)) {
            mt.l(path, "file not found: ");
            return null;
        }
        Path path2 = f77480h;
        path2.getClass();
        String strC = Path.b(path2, path, true).d(path2).f77433b.C();
        Iterator it = ((List) this.f77482f.getF71699b()).iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            try {
                return ((FileSystem) pair.f71705b).p(((Path) pair.f71706c).e(strC));
            } catch (FileNotFoundException unused) {
            }
        }
        mt.l(path, "file not found: ");
        return null;
    }

    @Override // okio.FileSystem
    public final Sink q(Path path, boolean z) throws IOException {
        path.getClass();
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public final Source r(Path path) throws IOException {
        path.getClass();
        if (!Companion.a(g, path)) {
            mt.l(path, "file not found: ");
            return null;
        }
        Path path2 = f77480h;
        path2.getClass();
        URL resource = this.d.getResource(Path.b(path2, path, false).d(path2).f77433b.C());
        if (resource == null) {
            mt.l(path, "file not found: ");
            return null;
        }
        URLConnection uRLConnectionOpenConnection = resource.openConnection();
        Callback.C(uRLConnectionOpenConnection);
        if (uRLConnectionOpenConnection instanceof JarURLConnection) {
            ((JarURLConnection) uRLConnectionOpenConnection).setUseCaches(false);
        }
        InputStream inputStreamH = Callback.h(uRLConnectionOpenConnection);
        inputStreamH.getClass();
        return Okio.f(inputStreamH);
    }

    public /* synthetic */ ResourceFileSystem(ClassLoader classLoader, boolean z, FileSystem fileSystem, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(classLoader, z, (i2 & 4) != 0 ? FileSystem.f77414b : fileSystem);
    }
}
