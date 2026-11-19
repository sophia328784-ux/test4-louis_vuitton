package androidx.loader.content;

import android.content.Context;
import androidx.core.util.DebugUtils;
import androidx.loader.app.LoaderManagerImpl;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public class Loader<D> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public LoaderManagerImpl.LoaderInfo f13629a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f13630b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f13631c = false;
    public boolean d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f13632e = false;

    public interface OnLoadCanceledListener<D> {
    }

    public interface OnLoadCompleteListener<D> {
    }

    public Loader(Context context) {
        context.getApplicationContext();
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mId=");
        printWriter.print(0);
        printWriter.print(" mListener=");
        printWriter.println(this.f13629a);
        if (this.f13630b || this.f13632e) {
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.print(this.f13630b);
            printWriter.print(" mContentChanged=");
            printWriter.print(this.f13632e);
            printWriter.print(" mProcessingChange=");
            printWriter.println(false);
        }
        if (this.f13631c || this.d) {
            printWriter.print(str);
            printWriter.print("mAbandoned=");
            printWriter.print(this.f13631c);
            printWriter.print(" mReset=");
            printWriter.println(this.d);
        }
    }

    public boolean b() {
        return false;
    }

    public void c() {
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(64);
        DebugUtils.a(this, sb);
        sb.append(" id=");
        sb.append(0);
        sb.append("}");
        return sb.toString();
    }
}
