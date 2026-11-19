package kotlin.io;

import defpackage.v40;
import java.io.File;
import java.util.ArrayDeque;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.AbstractIterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.sequences.Sequence;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\b\t\nB\u001b\b\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\u000b"}, d2 = {"Lkotlin/io/FileTreeWalk;", "Lkotlin/sequences/Sequence;", "Ljava/io/File;", "start", "Lkotlin/io/FileWalkDirection;", "direction", "<init>", "(Ljava/io/File;Lkotlin/io/FileWalkDirection;)V", "WalkState", "DirectoryState", "FileTreeWalkIterator", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FileTreeWalk implements Sequence<File> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final File f71871a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FileWalkDirection f71872b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function1 f71873c;
    public final Function1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Function2 f71874e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f71875f;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\"\u0018\u00002\u00020\u0001B\u0011\bF\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/io/FileTreeWalk$DirectoryState;", "Lkotlin/io/FileTreeWalk$WalkState;", "rootDir", "Ljava/io/File;", "<init>", "(Ljava/io/File;)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static abstract class DirectoryState extends WalkState {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DirectoryState(File file) {
            super(file);
            file.getClass();
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0005\u0006\u0007B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\b"}, d2 = {"Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;", "Lkotlin/collections/AbstractIterator;", "Ljava/io/File;", "<init>", "(Lkotlin/io/FileTreeWalk;)V", "BottomUpDirectoryState", "TopDownDirectoryState", "SingleFileState", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public final class FileTreeWalkIterator extends AbstractIterator<File> {
        public final ArrayDeque d;

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$BottomUpDirectoryState;", "Lkotlin/io/FileTreeWalk$DirectoryState;", "Ljava/io/File;", "rootDir", "<init>", "(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
        public final class BottomUpDirectoryState extends DirectoryState {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public boolean f71877b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public File[] f71878c;
            public int d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f71879e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public final /* synthetic */ FileTreeWalkIterator f71880f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public BottomUpDirectoryState(FileTreeWalkIterator fileTreeWalkIterator, File file) {
                super(file);
                file.getClass();
                this.f71880f = fileTreeWalkIterator;
            }

            /* JADX WARN: Code duplicated, block: B:25:0x0059  */
            /* JADX WARN: Code duplicated, block: B:27:0x005c  */
            /* JADX WARN: Code duplicated, block: B:29:0x0062  */
            @Override // kotlin.io.FileTreeWalk.WalkState
            public final File a() {
                File[] fileArr;
                Function1 function1;
                boolean z = this.f71879e;
                FileTreeWalkIterator fileTreeWalkIterator = this.f71880f;
                File file = this.f71886a;
                if (z || this.f71878c != null) {
                    fileArr = this.f71878c;
                    if (fileArr == null && this.d < fileArr.length) {
                        fileArr.getClass();
                        int i2 = this.d;
                        this.d = i2 + 1;
                        return fileArr[i2];
                    }
                    if (!this.f71877b) {
                        this.f71877b = true;
                        return file;
                    }
                    function1 = FileTreeWalk.this.d;
                    if (function1 != null) {
                        function1.invoke(file);
                    }
                } else {
                    Function1 function2 = FileTreeWalk.this.f71873c;
                    if (function2 == null || ((Boolean) function2.invoke(file)).booleanValue()) {
                        File[] fileArrListFiles = file.listFiles();
                        this.f71878c = fileArrListFiles;
                        if (fileArrListFiles == null) {
                            Function2 function3 = FileTreeWalk.this.f71874e;
                            if (function3 != null) {
                                File file2 = this.f71886a;
                                function3.invoke(file2, new AccessDeniedException(file2, null, "Cannot list files in a directory", 2, null));
                            }
                            this.f71879e = true;
                        }
                        fileArr = this.f71878c;
                        if (fileArr == null) {
                        }
                        if (!this.f71877b) {
                            this.f71877b = true;
                            return file;
                        }
                        function1 = FileTreeWalk.this.d;
                        if (function1 != null) {
                            function1.invoke(file);
                        }
                    }
                }
                return null;
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$SingleFileState;", "Lkotlin/io/FileTreeWalk$WalkState;", "Ljava/io/File;", "rootFile", "<init>", "(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
        public final class SingleFileState extends WalkState {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public boolean f71881b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public SingleFileState(FileTreeWalkIterator fileTreeWalkIterator, File file) {
                super(file);
                file.getClass();
            }

            @Override // kotlin.io.FileTreeWalk.WalkState
            public final File a() {
                if (this.f71881b) {
                    return null;
                }
                this.f71881b = true;
                return this.f71886a;
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;", "Lkotlin/io/FileTreeWalk$DirectoryState;", "Ljava/io/File;", "rootDir", "<init>", "(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
        public final class TopDownDirectoryState extends DirectoryState {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public boolean f71882b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public File[] f71883c;
            public int d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final /* synthetic */ FileTreeWalkIterator f71884e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public TopDownDirectoryState(FileTreeWalkIterator fileTreeWalkIterator, File file) {
                super(file);
                file.getClass();
                this.f71884e = fileTreeWalkIterator;
            }

            @Override // kotlin.io.FileTreeWalk.WalkState
            public final File a() {
                Function2 function2;
                boolean z = this.f71882b;
                FileTreeWalkIterator fileTreeWalkIterator = this.f71884e;
                File file = this.f71886a;
                if (z) {
                    File[] fileArr = this.f71883c;
                    if (fileArr == null || this.d < fileArr.length) {
                        if (fileArr == null) {
                            File[] fileArrListFiles = file.listFiles();
                            this.f71883c = fileArrListFiles;
                            if (fileArrListFiles == null && (function2 = FileTreeWalk.this.f71874e) != null) {
                                File file2 = this.f71886a;
                                function2.invoke(file2, new AccessDeniedException(file2, null, "Cannot list files in a directory", 2, null));
                            }
                            File[] fileArr2 = this.f71883c;
                            if (fileArr2 == null || fileArr2.length == 0) {
                                Function1 function1 = FileTreeWalk.this.d;
                                if (function1 != null) {
                                    function1.invoke(file);
                                }
                            }
                        }
                        File[] fileArr3 = this.f71883c;
                        fileArr3.getClass();
                        int i2 = this.d;
                        this.d = i2 + 1;
                        return fileArr3[i2];
                    }
                    Function1 function3 = FileTreeWalk.this.d;
                    if (function3 != null) {
                        function3.invoke(file);
                        return null;
                    }
                } else {
                    Function1 function4 = FileTreeWalk.this.f71873c;
                    if (function4 == null || ((Boolean) function4.invoke(file)).booleanValue()) {
                        this.f71882b = true;
                        return file;
                    }
                }
                return null;
            }
        }

        @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
        public static final /* synthetic */ class WhenMappings {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f71885a;

            static {
                int[] iArr = new int[FileWalkDirection.values().length];
                try {
                    iArr[FileWalkDirection.TOP_DOWN.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[FileWalkDirection.BOTTOM_UP.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                f71885a = iArr;
            }
        }

        public FileTreeWalkIterator() {
            ArrayDeque arrayDeque = new ArrayDeque();
            this.d = arrayDeque;
            if (FileTreeWalk.this.f71871a.isDirectory()) {
                arrayDeque.push(c(FileTreeWalk.this.f71871a));
            } else if (FileTreeWalk.this.f71871a.isFile()) {
                arrayDeque.push(new SingleFileState(this, FileTreeWalk.this.f71871a));
            } else {
                this.f71742b = 2;
            }
        }

        @Override // kotlin.collections.AbstractIterator
        public final void a() {
            File file;
            while (true) {
                ArrayDeque arrayDeque = this.d;
                WalkState walkState = (WalkState) arrayDeque.peek();
                if (walkState == null) {
                    file = null;
                    break;
                }
                File fileA = walkState.a();
                if (fileA == null) {
                    arrayDeque.pop();
                } else {
                    if (fileA.equals(walkState.f71886a) || !fileA.isDirectory() || arrayDeque.size() >= FileTreeWalk.this.f71875f) {
                        file = fileA;
                        break;
                    }
                    arrayDeque.push(c(fileA));
                }
            }
            if (file == null) {
                this.f71742b = 2;
            } else {
                this.f71743c = file;
                this.f71742b = 1;
            }
        }

        public final DirectoryState c(File file) {
            int i2 = WhenMappings.f71885a[FileTreeWalk.this.f71872b.ordinal()];
            if (i2 == 1) {
                return new TopDownDirectoryState(this, file);
            }
            if (i2 == 2) {
                return new BottomUpDirectoryState(this, file);
            }
            v40.g();
            return null;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\"\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/io/FileTreeWalk$WalkState;", "", "Ljava/io/File;", "root", "<init>", "(Ljava/io/File;)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static abstract class WalkState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final File f71886a;

        public WalkState(File file) {
            file.getClass();
            this.f71886a = file;
        }

        public abstract File a();
    }

    public FileTreeWalk(File file, FileWalkDirection fileWalkDirection, Function1 function1, Function1 function2, Function2 function3, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        fileWalkDirection = (i3 & 2) != 0 ? FileWalkDirection.TOP_DOWN : fileWalkDirection;
        i2 = (i3 & 32) != 0 ? Integer.MAX_VALUE : i2;
        this.f71871a = file;
        this.f71872b = fileWalkDirection;
        this.f71873c = function1;
        this.d = function2;
        this.f71874e = function3;
        this.f71875f = i2;
    }

    @Override // kotlin.sequences.Sequence
    public final Iterator iterator() {
        return new FileTreeWalkIterator();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FileTreeWalk(File file, FileWalkDirection fileWalkDirection) {
        this(file, fileWalkDirection, null, null, null, 0, 32, null);
        file.getClass();
        fileWalkDirection.getClass();
    }

    public /* synthetic */ FileTreeWalk(File file, FileWalkDirection fileWalkDirection, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(file, (i2 & 2) != 0 ? FileWalkDirection.TOP_DOWN : fileWalkDirection);
    }
}
