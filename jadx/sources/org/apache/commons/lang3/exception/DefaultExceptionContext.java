package org.apache.commons.lang3.exception;

import java.io.PrintWriter;
import java.io.Serializable;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Objects;
import org.apache.commons.lang3.tuple.Pair;

/* JADX INFO: loaded from: classes3.dex */
public class DefaultExceptionContext implements ExceptionContext, Serializable {
    private static final long serialVersionUID = 20110706;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f77547b = new ArrayList();

    @Override // org.apache.commons.lang3.exception.ExceptionContext
    public final String a(String str) {
        StringBuilder sb = new StringBuilder(256);
        if (str != null) {
            sb.append(str);
        }
        ArrayList<Pair> arrayList = this.f77547b;
        if (!arrayList.isEmpty()) {
            if (sb.length() > 0) {
                sb.append('\n');
            }
            sb.append("Exception Context:\n");
            int i2 = 0;
            for (Pair pair : arrayList) {
                sb.append("\t[");
                i2++;
                sb.append(i2);
                sb.append(':');
                sb.append((String) pair.a());
                sb.append("=");
                try {
                    sb.append(Objects.toString(pair.b()));
                } catch (Exception e2) {
                    sb.append("Exception thrown on toString(): ");
                    StringWriter stringWriter = new StringWriter();
                    e2.printStackTrace(new PrintWriter((Writer) stringWriter, true));
                    sb.append(stringWriter.toString());
                }
                sb.append("]\n");
            }
            sb.append("---------------------------------");
        }
        return sb.toString();
    }
}
