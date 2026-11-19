package com.dynatrace.android.agent.crash;

import com.dynatrace.agent.common.InstrumentationFlavor;

/* JADX INFO: loaded from: classes2.dex */
public class StacktraceProcessorFactory {
    public static StacktraceProcessor a(Throwable th, InstrumentationFlavor instrumentationFlavor) {
        String message;
        if (instrumentationFlavor == InstrumentationFlavor.XAMARIN || instrumentationFlavor == InstrumentationFlavor.MAUI) {
            Throwable cause = th;
            loop0: while (true) {
                if (cause == null) {
                    message = null;
                    break;
                }
                message = cause.getMessage();
                if (message != null) {
                    for (String str : message.split("\n")) {
                        if (str.startsWith("  at ")) {
                            break loop0;
                        }
                    }
                }
                cause = cause.getCause();
            }
            if (message != null) {
                return new SafeXamarinStacktraceProcessor(th, message, Integer.MAX_VALUE);
            }
        }
        return new JavaStacktraceProcessor(th, Integer.MAX_VALUE);
    }
}
