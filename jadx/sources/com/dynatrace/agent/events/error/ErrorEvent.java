package com.dynatrace.agent.events.error;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.nio.charset.StandardCharsets;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class ErrorEvent {

    public static class ExceptionInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f26800a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f26801b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f26802c;

        public ExceptionInfo(String str, String str2, String str3) {
            this.f26800a = str;
            this.f26801b = str2;
            this.f26802c = str3;
        }
    }

    public static JSONObject a(Throwable th, boolean z) throws JSONException {
        ExceptionInfo exceptionInfo;
        String message;
        if (z) {
            StringWriter stringWriter = new StringWriter();
            th.printStackTrace(new PrintWriter(stringWriter));
            String string = stringWriter.toString();
            int i2 = 0;
            String str = null;
            if (th.getMessage() != null) {
                message = th.getMessage();
                byte[] bytes = message.getBytes();
                if (bytes.length > 24000) {
                    message = new String(bytes, 0, 24000).concat("...");
                }
            } else {
                message = null;
            }
            if (th.getStackTrace().length > 0) {
                if (string.getBytes().length > 224000) {
                    StringBuilder sb = new StringBuilder();
                    String[] strArrSplit = string.split("\n");
                    int length = strArrSplit.length;
                    int length2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            sb.append("...");
                            string = sb.toString();
                            break;
                        }
                        String str2 = strArrSplit[i2];
                        length2 += str2.getBytes(StandardCharsets.UTF_8).length + 1;
                        if (length2 > 224000) {
                            sb.append("...");
                            string = sb.toString();
                            break;
                        }
                        sb.append(str2);
                        sb.append("\n");
                        i2++;
                    }
                }
                str = string;
            }
            exceptionInfo = new ExceptionInfo(th.getClass().getName(), message, str);
        } else {
            StringWriter stringWriter2 = new StringWriter();
            th.printStackTrace(new PrintWriter(stringWriter2));
            exceptionInfo = new ExceptionInfo(th.getClass().getName(), th.getMessage(), stringWriter2.toString());
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("characteristics.has_error", true);
        String str3 = exceptionInfo.f26801b;
        if (str3 != null) {
            jSONObject.put("exception.message", str3);
        }
        String str4 = exceptionInfo.f26800a;
        if (str4 != null) {
            jSONObject.put("exception.type", str4);
        }
        String str5 = exceptionInfo.f26802c;
        if (str5 != null) {
            jSONObject.put("exception.stack_trace", str5);
        }
        return jSONObject;
    }
}
