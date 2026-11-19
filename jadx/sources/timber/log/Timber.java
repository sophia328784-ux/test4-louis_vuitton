package timber.log;

import android.util.Log;
import defpackage.zy0;
import io.jsonwebtoken.JwtParser;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004¨\u0006\u0005"}, d2 = {"Ltimber/log/Timber;", "", "DebugTree", "Forest", "Tree", "timber_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public abstract class Timber {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Forest f80066a = new Forest(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ArrayList f80067b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile Tree[] f80068c = new Tree[0];

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Ltimber/log/Timber$DebugTree;", "Ltimber/log/Timber$Tree;", "<init>", "()V", "Companion", "timber_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static class DebugTree extends Tree {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Pattern f80069c;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f80070b = CollectionsKt.P(Timber.class.getName(), Forest.class.getName(), Tree.class.getName(), DebugTree.class.getName());

        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001c\u0010\u0004\u001a\n \u0003*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\b¨\u0006\n"}, d2 = {"Ltimber/log/Timber$DebugTree$Companion;", "", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "ANONYMOUS_CLASS", "Ljava/util/regex/Pattern;", "", "MAX_LOG_LENGTH", "I", "MAX_TAG_LENGTH", "timber_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }

        static {
            new Companion(null);
            f80069c = Pattern.compile("(\\$\\d+)+$");
        }

        @Override // timber.log.Timber.Tree
        public final String c() {
            String strC = super.c();
            if (strC != null) {
                return strC;
            }
            StackTraceElement[] stackTrace = new Throwable().getStackTrace();
            stackTrace.getClass();
            for (StackTraceElement stackTraceElement : stackTrace) {
                if (!this.f80070b.contains(stackTraceElement.getClassName())) {
                    String className = stackTraceElement.getClassName();
                    className.getClass();
                    String strR = StringsKt.R(JwtParser.SEPARATOR_CHAR, className, className);
                    Matcher matcher = f80069c.matcher(strR);
                    if (!matcher.find()) {
                        return strR;
                    }
                    String strReplaceAll = matcher.replaceAll("");
                    strReplaceAll.getClass();
                    return strReplaceAll;
                }
            }
            zy0.c("Array contains no element matching the predicate.");
            return null;
        }

        @Override // timber.log.Timber.Tree
        public final void d(int i2, String str, String str2, Throwable th) {
            int iMin;
            str2.getClass();
            if (str2.length() < 4000) {
                if (i2 == 7) {
                    Log.wtf(str, str2);
                    return;
                } else {
                    Log.println(i2, str, str2);
                    return;
                }
            }
            int length = str2.length();
            int i3 = 0;
            while (i3 < length) {
                int iU = StringsKt.u(str2, '\n', i3, 4);
                if (iU == -1) {
                    iU = length;
                }
                while (true) {
                    iMin = Math.min(iU, i3 + 4000);
                    String strSubstring = str2.substring(i3, iMin);
                    if (i2 == 7) {
                        Log.wtf(str, strSubstring);
                    } else {
                        Log.println(i2, str, strSubstring);
                    }
                    if (iMin >= iU) {
                        break;
                    } else {
                        i3 = iMin;
                    }
                }
                i3 = iMin + 1;
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001c\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00010\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Ltimber/log/Timber$Forest;", "Ltimber/log/Timber$Tree;", "", "treeArray", "[Ltimber/log/Timber$Tree;", "Ljava/util/ArrayList;", "trees", "Ljava/util/ArrayList;", "timber_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Forest extends Tree {
        public Forest(DefaultConstructorMarker defaultConstructorMarker) {
        }

        @Override // timber.log.Timber.Tree
        public final void a(String str, Object... objArr) {
            for (Tree tree : Timber.f80068c) {
                tree.a(str, Arrays.copyOf(objArr, objArr.length));
            }
        }

        @Override // timber.log.Timber.Tree
        public final void b(Throwable th, String str, Object... objArr) {
            for (Tree tree : Timber.f80068c) {
                tree.b(th, str, Arrays.copyOf(objArr, objArr.length));
            }
        }

        @Override // timber.log.Timber.Tree
        public final void d(int i2, String str, String str2, Throwable th) {
            str2.getClass();
            throw new AssertionError();
        }

        @Override // timber.log.Timber.Tree
        public final void e(int i2, Throwable th, String str, Object... objArr) {
            for (Tree tree : Timber.f80068c) {
                tree.e(i2, th, str, Arrays.copyOf(objArr, objArr.length));
            }
        }

        public final void g(String str) {
            str.getClass();
            Tree[] treeArr = Timber.f80068c;
            int length = treeArr.length;
            int i2 = 0;
            while (i2 < length) {
                Tree tree = treeArr[i2];
                i2++;
                tree.f80071a.set(str);
            }
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Ltimber/log/Timber$Tree;", "", "<init>", "()V", "timber_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static abstract class Tree {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ThreadLocal f80071a = new ThreadLocal();

        public void a(String str, Object... objArr) {
            f(3, null, str, Arrays.copyOf(objArr, objArr.length));
        }

        public void b(Throwable th, String str, Object... objArr) {
            f(6, th, str, Arrays.copyOf(objArr, objArr.length));
        }

        public /* synthetic */ String c() {
            ThreadLocal threadLocal = this.f80071a;
            String str = (String) threadLocal.get();
            if (str != null) {
                threadLocal.remove();
            }
            return str;
        }

        public abstract void d(int i2, String str, String str2, Throwable th);

        public void e(int i2, Throwable th, String str, Object... objArr) {
            f(i2, th, str, Arrays.copyOf(objArr, objArr.length));
        }

        public final void f(int i2, Throwable th, String str, Object... objArr) {
            String strC = c();
            if (str != null && str.length() != 0) {
                if (objArr.length != 0) {
                    Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
                    str = String.format(str, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
                }
                if (th != null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append((Object) str);
                    sb.append('\n');
                    StringWriter stringWriter = new StringWriter(256);
                    PrintWriter printWriter = new PrintWriter((Writer) stringWriter, false);
                    th.printStackTrace(printWriter);
                    printWriter.flush();
                    String string = stringWriter.toString();
                    string.getClass();
                    sb.append(string);
                    str = sb.toString();
                }
            } else {
                if (th == null) {
                    return;
                }
                StringWriter stringWriter2 = new StringWriter(256);
                PrintWriter printWriter2 = new PrintWriter((Writer) stringWriter2, false);
                th.printStackTrace(printWriter2);
                printWriter2.flush();
                str = stringWriter2.toString();
                str.getClass();
            }
            d(i2, strC, str, th);
        }
    }
}
