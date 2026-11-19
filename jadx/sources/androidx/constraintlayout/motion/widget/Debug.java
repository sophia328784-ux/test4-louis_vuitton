package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.view.View;
import defpackage.pq0;

/* JADX INFO: loaded from: classes.dex */
public class Debug {
    public static void a() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        stackTraceElement.getFileName();
        stackTraceElement.getLineNumber();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.String] */
    public static String b(int i2, Context context) {
        if (i2 == -1) {
            return "UNKNOWN";
        }
        try {
            i2 = context.getResources().getResourceEntryName(i2);
            return i2;
        } catch (Exception unused) {
            return pq0.k(i2, "?");
        }
    }

    public static String c(View view) {
        try {
            return view.getContext().getResources().getResourceEntryName(view.getId());
        } catch (Exception unused) {
            return "UNKNOWN";
        }
    }
}
