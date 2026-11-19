package com.networkbench.agent.impl.performance.a.e;

import android.os.Process;
import defpackage.n00;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class h {
    public static List a(int i2, List<com.networkbench.agent.impl.performance.a.c.g> list, double d) {
        String str;
        Iterator<com.networkbench.agent.impl.performance.a.c.g> it;
        com.networkbench.agent.impl.c.g.z("setCpuInfoMap  Process.myPid() : " + i2);
        ArrayList arrayList = new ArrayList();
        String strM = n00.m(i2, "/proc/", "/task/");
        Iterator<com.networkbench.agent.impl.performance.a.c.g> it2 = list.iterator();
        BufferedReader bufferedReader = null;
        while (it2.hasNext()) {
            com.networkbench.agent.impl.performance.a.c.g next = it2.next();
            if (next != null) {
                if (next.f37716a == i2) {
                    next.f37717b = "main";
                }
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new FileInputStream(strM + next.f37716a + "/stat")), 1000);
                    try {
                        String line = bufferedReader2.readLine();
                        String[] strArrSplit = line.substring(line.lastIndexOf(41) + 4).split(" ");
                        long j2 = Long.parseLong(strArrSplit[10]) + Long.parseLong(strArrSplit[11]);
                        str = strM;
                        it = it2;
                        try {
                            float fCurrentTimeMillis = (j2 - next.f37718c) / (((System.currentTimeMillis() - next.g) * a.d()) / 1000);
                            com.networkbench.agent.impl.c.g.z(next.f37717b + " judge: " + j2 + " " + next.f37718c + " " + fCurrentTimeMillis + " " + d);
                            double d2 = (double) fCurrentTimeMillis;
                            if (d2 >= d) {
                                next.d = d2;
                                next.f37721h = Integer.parseInt(strArrSplit[15]);
                                arrayList.add(next);
                            }
                            com.networkbench.agent.impl.c.g.z("after item: ".concat(String.valueOf(next)));
                            b.a(bufferedReader2);
                            bufferedReader = bufferedReader2;
                        } catch (Throwable th) {
                            th = th;
                            bufferedReader = bufferedReader2;
                            try {
                                com.networkbench.agent.impl.c.g.z("error: " + th.getLocalizedMessage());
                                b.a(bufferedReader);
                                b.a(bufferedReader);
                            } catch (Throwable th2) {
                                b.a(bufferedReader);
                                throw th2;
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        str = strM;
                        it = it2;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    str = strM;
                    it = it2;
                }
            } else {
                str = strM;
                it = it2;
            }
            it2 = it;
            strM = str;
        }
        com.networkbench.agent.impl.c.g.z("after size: " + arrayList.size());
        return arrayList;
    }

    public static void a(int i2, Map<Integer, com.networkbench.agent.impl.performance.a.c.g> map) {
        BufferedReader bufferedReader;
        Throwable th;
        com.networkbench.agent.impl.c.g.z("ThreadCpuExceptionUtils setCpuInfoMap: " + i2);
        File[] fileArrListFiles = new File(n00.m(i2, "/proc/", "/task/")).listFiles();
        if (fileArrListFiles == null) {
            com.networkbench.agent.impl.c.g.z("ThreadCpuExceptionUtils setCpuInfoMap: No files in /proc/" + i2 + "/task/");
            return;
        }
        int length = fileArrListFiles.length;
        com.networkbench.agent.impl.c.g.z("ThreadCpuExceptionUtils setCpuInfoMap  length  : " + length);
        BufferedReader bufferedReader2 = null;
        for (int i3 = 0; i3 < length; i3++) {
            try {
                try {
                    bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(fileArrListFiles[i3].getPath() + "/stat")), 1000);
                    try {
                        String line = bufferedReader.readLine();
                        int iLastIndexOf = line.lastIndexOf(41);
                        String strSubstring = line.substring(0, iLastIndexOf);
                        String strSubstring2 = line.substring(iLastIndexOf + 4);
                        int iIndexOf = strSubstring.indexOf(40);
                        Integer numValueOf = Integer.valueOf(strSubstring.substring(0, iIndexOf - 1));
                        int iIntValue = numValueOf.intValue();
                        String strSubstring3 = strSubstring.substring(iIndexOf + 1);
                        String[] strArrSplit = strSubstring2.split(" ");
                        long j2 = Long.parseLong(strArrSplit[10]) + Long.parseLong(strArrSplit[11]);
                        if (iIntValue != 0 && !strSubstring3.isEmpty() && j2 != 0) {
                            com.networkbench.agent.impl.performance.a.c.g gVar = new com.networkbench.agent.impl.performance.a.c.g();
                            gVar.f37717b = strSubstring3;
                            gVar.f37716a = iIntValue;
                            gVar.f37718c = j2;
                            map.put(numValueOf, gVar);
                            b.a(bufferedReader);
                        } else {
                            b.a(bufferedReader);
                        }
                    } catch (FileNotFoundException unused) {
                        bufferedReader2 = bufferedReader;
                        b.a(bufferedReader2);
                        com.networkbench.agent.impl.c.g.z("ThreadCpuExceptionUtils setCpuInfoMap  FileNotFoundException");
                        bufferedReader = bufferedReader2;
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            com.networkbench.agent.impl.c.g.e("ThreadCpuExceptionUtils setCpuInfoMap  Throwable", th);
                            b.a(bufferedReader);
                        } catch (Throwable th3) {
                            b.a(bufferedReader);
                            throw th3;
                        }
                    }
                } catch (Throwable th4) {
                    bufferedReader = bufferedReader2;
                    th = th4;
                }
            } catch (FileNotFoundException unused2) {
            }
            b.a(bufferedReader);
            bufferedReader2 = bufferedReader;
        }
    }

    public static void a(List<com.networkbench.agent.impl.performance.a.c.g> list) {
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2 = null;
        for (File file : new File(n00.m(Process.myPid(), "/proc/", "/task/")).listFiles()) {
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file.getPath() + "/stat")), 1000);
                try {
                    String line = bufferedReader.readLine();
                    int iLastIndexOf = line.lastIndexOf(41);
                    String strSubstring = line.substring(0, iLastIndexOf);
                    String strSubstring2 = line.substring(iLastIndexOf + 4);
                    int iIndexOf = strSubstring.indexOf(40);
                    int iIntValue = Integer.valueOf(strSubstring.substring(0, iIndexOf - 1)).intValue();
                    String strSubstring3 = strSubstring.substring(iIndexOf + 1);
                    String[] strArrSplit = strSubstring2.split(" ");
                    long j2 = Long.parseLong(strArrSplit[10]) + Long.parseLong(strArrSplit[11]);
                    if (iIntValue == 0 || strSubstring3.isEmpty() || j2 == 0 || Thread.currentThread().getName().contains(strSubstring3)) {
                        d.a(bufferedReader);
                    } else {
                        com.networkbench.agent.impl.performance.a.c.g gVar = new com.networkbench.agent.impl.performance.a.c.g();
                        gVar.f37717b = strSubstring3;
                        gVar.f37716a = iIntValue;
                        gVar.f37718c = j2;
                        gVar.g = System.currentTimeMillis();
                        gVar.f37721h = Integer.parseInt(strArrSplit[15]);
                        com.networkbench.agent.impl.c.g.z("collectThreadExceptionData  add ThreadExceptionItem  15 nice : " + strArrSplit[15]);
                        list.add(gVar);
                        d.a(bufferedReader);
                    }
                } catch (Throwable unused) {
                    bufferedReader2 = bufferedReader;
                    try {
                        try {
                            d.a(bufferedReader2);
                            bufferedReader = bufferedReader2;
                        } catch (Throwable unused2) {
                            d.a(bufferedReader2);
                            d.a(bufferedReader2);
                        }
                    } catch (Throwable th) {
                        d.a(bufferedReader2);
                        throw th;
                    }
                }
            } catch (Throwable unused3) {
            }
            d.a(bufferedReader);
            bufferedReader2 = bufferedReader;
        }
    }
}
