package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Key;
import defpackage.x1;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class GlideException extends Exception {
    public static final StackTraceElement[] g = new StackTraceElement[0];
    private static final long serialVersionUID = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f24524b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Key f24525c;
    public DataSource d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Class f24526e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f24527f;

    public GlideException(String str, List<Throwable> list) {
        this.f24527f = str;
        setStackTrace(g);
        this.f24524b = list;
    }

    public static void a(Throwable th, ArrayList arrayList) {
        if (th instanceof GlideException) {
            Iterator it = ((GlideException) th).f24524b.iterator();
            while (it.hasNext()) {
                a((Throwable) it.next(), arrayList);
            }
        } else if (th != null) {
            arrayList.add(th);
        }
    }

    public static void b(List list, Appendable appendable) throws IOException {
        int size = list.size();
        int i2 = 0;
        while (i2 < size) {
            IndentedAppendable indentedAppendable = (IndentedAppendable) appendable;
            indentedAppendable.append("Cause (");
            int i3 = i2 + 1;
            indentedAppendable.append(String.valueOf(i3));
            indentedAppendable.append(" of ");
            indentedAppendable.append(String.valueOf(size));
            indentedAppendable.append("): ");
            Throwable th = (Throwable) list.get(i2);
            if (th instanceof GlideException) {
                ((GlideException) th).d(indentedAppendable);
            } else {
                c(th, indentedAppendable);
            }
            i2 = i3;
        }
    }

    public static void c(Throwable th, Appendable appendable) {
        try {
            appendable.append(th.getClass().toString()).append(": ").append(th.getMessage()).append('\n');
        } catch (IOException unused) {
            x1.m(th);
        }
    }

    public final void d(Appendable appendable) {
        c(this, appendable);
        try {
            b(this.f24524b, new IndentedAppendable(appendable));
        } catch (IOException e2) {
            x1.m(e2);
        }
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        return this;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        StringBuilder sb = new StringBuilder(71);
        sb.append(this.f24527f);
        sb.append(this.f24526e != null ? ", " + this.f24526e : "");
        sb.append(this.d != null ? ", " + this.d : "");
        sb.append(this.f24525c != null ? ", " + this.f24525c : "");
        ArrayList<Throwable> arrayList = new ArrayList();
        a(this, arrayList);
        if (arrayList.isEmpty()) {
            return sb.toString();
        }
        if (arrayList.size() == 1) {
            sb.append("\nThere was 1 root cause:");
        } else {
            sb.append("\nThere were ");
            sb.append(arrayList.size());
            sb.append(" root causes:");
        }
        for (Throwable th : arrayList) {
            sb.append('\n');
            sb.append(th.getClass().getName());
            sb.append('(');
            sb.append(th.getMessage());
            sb.append(')');
        }
        sb.append("\n call GlideException#logRootCauses(String) for more detail");
        return sb.toString();
    }

    @Override // java.lang.Throwable
    public final void printStackTrace() {
        d(System.err);
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintStream printStream) {
        d(printStream);
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintWriter printWriter) {
        d(printWriter);
    }

    public GlideException(String str, Throwable th) {
        this(str, (List<Throwable>) Collections.singletonList(th));
    }

    public GlideException(String str) {
        this(str, (List<Throwable>) Collections.EMPTY_LIST);
    }

    public static final class IndentedAppendable implements Appendable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Appendable f24528b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f24529c = true;

        public IndentedAppendable(Appendable appendable) {
            this.f24528b = appendable;
        }

        @Override // java.lang.Appendable
        public final Appendable append(CharSequence charSequence, int i2, int i3) throws IOException {
            if (charSequence == null) {
                charSequence = "";
            }
            boolean z = this.f24529c;
            Appendable appendable = this.f24528b;
            boolean z2 = false;
            if (z) {
                this.f24529c = false;
                appendable.append("  ");
            }
            if (charSequence.length() > 0 && charSequence.charAt(i3 - 1) == '\n') {
                z2 = true;
            }
            this.f24529c = z2;
            appendable.append(charSequence, i2, i3);
            return this;
        }

        @Override // java.lang.Appendable
        public final Appendable append(CharSequence charSequence) throws IOException {
            if (charSequence == null) {
                charSequence = "";
            }
            append(charSequence, 0, charSequence.length());
            return this;
        }

        @Override // java.lang.Appendable
        public final Appendable append(char c2) throws IOException {
            boolean z = this.f24529c;
            Appendable appendable = this.f24528b;
            if (z) {
                this.f24529c = false;
                appendable.append("  ");
            }
            this.f24529c = c2 == '\n';
            appendable.append(c2);
            return this;
        }
    }
}
