package com.networkbench.agent.impl.performance.a.e;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    public interface a {
        boolean a(String str);
    }

    private static void a(File file, a aVar) {
        BufferedReader bufferedReaderA;
        if (aVar == null || (bufferedReaderA = a(file)) == null) {
            return;
        }
        while (true) {
            try {
                try {
                    String line = bufferedReaderA.readLine();
                    if (line == null) {
                        a(bufferedReaderA);
                        return;
                    }
                    aVar.a(line);
                } catch (IOException e2) {
                    e2.printStackTrace();
                    a(bufferedReaderA);
                    return;
                }
            } catch (Throwable th) {
                a(bufferedReaderA);
                throw th;
            }
        }
    }

    public static void a(BufferedReader bufferedReader) {
        if (bufferedReader != null) {
            try {
                bufferedReader.close();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public static BufferedReader a(File file) {
        if (file == null || !file.exists() || !file.canRead()) {
            return null;
        }
        try {
            return new BufferedReader(new FileReader(file), 10000);
        } catch (Exception unused) {
            return null;
        }
    }

    public static void a(String str, a aVar) {
        if (str == null) {
            return;
        }
        a(new File(str), aVar);
    }
}
