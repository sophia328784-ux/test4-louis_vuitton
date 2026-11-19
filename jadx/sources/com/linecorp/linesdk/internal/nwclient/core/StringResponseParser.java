package com.linecorp.linesdk.internal.nwclient.core;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes2.dex */
public class StringResponseParser implements ResponseDataParser<String> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f36242a;

    public StringResponseParser() {
        this("UTF-8");
    }

    @Override // com.linecorp.linesdk.internal.nwclient.core.ResponseDataParser
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final String a(InputStream inputStream) throws Throwable {
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader = null;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(inputStream, this.f36242a));
            while (true) {
                try {
                    String line = bufferedReader2.readLine();
                    if (line == null) {
                        bufferedReader2.close();
                        return sb.toString();
                    }
                    sb.append(line);
                } catch (Throwable th) {
                    th = th;
                    bufferedReader = bufferedReader2;
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public StringResponseParser(String str) {
        this.f36242a = str;
    }
}
