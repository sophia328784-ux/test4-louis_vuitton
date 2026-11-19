package com.networkbench.agent.impl.crash;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.Process;
import android.os.StatFs;
import com.linkplay.medialib.ContentTree;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.com.google.gson.JsonObject;
import defpackage.d21;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.Locale;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f36621a = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static long f36622b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f36623c = 1024;

    public static void a(Context context, com.networkbench.agent.impl.performance.a.c.b bVar) {
        try {
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            ((ActivityManager) context.getSystemService(ActionFloatingViewItem.f37018a)).getMemoryInfo(memoryInfo);
            long j2 = memoryInfo.totalMem;
            long j3 = memoryInfo.availMem;
            if (j2 == 0) {
                bVar.a(ContentTree.ROOT_ID);
                bVar.b(ContentTree.ROOT_ID);
                bVar.d(ContentTree.ROOT_ID);
                return;
            }
            long j4 = j2 >> 20;
            bVar.a(a(j4));
            if (j3 == 0) {
                bVar.d(ContentTree.ROOT_ID);
            } else {
                long j5 = j3 >> 20;
                bVar.d(a(a(j5), j5, j4));
            }
            long jH = (long) h(context);
            bVar.b(a(a(jH), jH, j4));
            bVar.c(b());
        } catch (Throwable unused) {
        }
    }

    public static String b() {
        try {
            String absolutePath = Environment.getDataDirectory().getAbsolutePath();
            f36621a.d("rootpath is " + absolutePath);
            StatFs statFs = new StatFs(absolutePath);
            long blockSize = (long) statFs.getBlockSize();
            long blockCount = (((long) statFs.getBlockCount()) * blockSize) >> 20;
            long availableBlocks = (blockSize * ((long) statFs.getAvailableBlocks())) >> 20;
            return a(a(availableBlocks), availableBlocks, blockCount);
        } catch (Throwable unused) {
            return "";
        }
    }

    public static long c() {
        try {
            String absolutePath = Environment.getDataDirectory().getAbsolutePath();
            f36621a.d("rootpath is " + absolutePath);
            StatFs statFs = new StatFs(absolutePath);
            return (((long) statFs.getBlockSize()) * ((long) statFs.getAvailableBlocks())) >> 20;
        } catch (Throwable th) {
            f36621a.f("getAvailableRomMemroyInMBOld:" + th);
            return 0L;
        }
    }

    /* JADX WARN: Code duplicated, block: B:75:0x0177 A[Catch: IOException -> 0x0173, TRY_LEAVE, TryCatch #4 {IOException -> 0x0173, blocks: (B:71:0x016f, B:75:0x0177), top: B:84:0x016f }] */
    public static String d() {
        BufferedReader bufferedReader;
        Throwable th;
        FileReader fileReader;
        IOException e2;
        FileNotFoundException e3;
        com.networkbench.agent.impl.c.e eVar;
        StringBuilder sb;
        String line;
        try {
            try {
                fileReader = new FileReader("/proc/cpuinfo");
                try {
                    bufferedReader = new BufferedReader(fileReader);
                    do {
                        try {
                            line = bufferedReader.readLine();
                            if (line == null) {
                                bufferedReader.close();
                                try {
                                    bufferedReader.close();
                                    fileReader.close();
                                } catch (IOException e4) {
                                    e = e4;
                                    eVar = f36621a;
                                    sb = new StringBuilder("IOException:");
                                    sb.append(e.getMessage());
                                    eVar.f(sb.toString());
                                }
                                f36621a.d("can't get cpu model");
                                return "UNKNOWN";
                            }
                        } catch (FileNotFoundException e5) {
                            e3 = e5;
                            f36621a.f("FileNotFoundException:" + e3.getMessage());
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException e6) {
                                    e = e6;
                                    eVar = f36621a;
                                    sb = new StringBuilder("IOException:");
                                    sb.append(e.getMessage());
                                    eVar.f(sb.toString());
                                }
                            }
                            if (fileReader != null) {
                                fileReader.close();
                            }
                            f36621a.d("can't get cpu model");
                            return "UNKNOWN";
                        } catch (IOException e7) {
                            e2 = e7;
                            f36621a.f("IOException:" + e2.getMessage());
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException e8) {
                                    e = e8;
                                    eVar = f36621a;
                                    sb = new StringBuilder("IOException:");
                                    sb.append(e.getMessage());
                                    eVar.f(sb.toString());
                                }
                            }
                            if (fileReader != null) {
                                fileReader.close();
                            }
                            f36621a.d("can't get cpu model");
                            return "UNKNOWN";
                        } catch (Throwable th2) {
                            th = th2;
                            f36621a.f("Exception:" + th.getMessage());
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException e9) {
                                    e = e9;
                                    eVar = f36621a;
                                    sb = new StringBuilder("IOException:");
                                    sb.append(e.getMessage());
                                    eVar.f(sb.toString());
                                }
                            }
                            if (fileReader != null) {
                                fileReader.close();
                            }
                            f36621a.d("can't get cpu model");
                            return "UNKNOWN";
                        }
                    } while (!line.toUpperCase().contains("Hardware".toUpperCase()));
                    com.networkbench.agent.impl.c.e eVar2 = f36621a;
                    eVar2.d("cpu model text is.." + line + ",");
                    String[] strArrSplit = line.replace(":", "").split("\\s+", 2);
                    eVar2.d("get cpu model,model is..." + strArrSplit[1]);
                    String str = strArrSplit[1];
                    try {
                        bufferedReader.close();
                        fileReader.close();
                        return str;
                    } catch (IOException e10) {
                        f36621a.f("IOException:" + e10.getMessage());
                        return str;
                    }
                } catch (FileNotFoundException e11) {
                    bufferedReader = null;
                    e3 = e11;
                } catch (IOException e12) {
                    bufferedReader = null;
                    e2 = e12;
                } catch (Throwable th3) {
                    bufferedReader = null;
                    th = th3;
                }
            } catch (Throwable th4) {
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                        if (fileReader != null) {
                            fileReader.close();
                        }
                    } catch (IOException e13) {
                        f36621a.f("IOException:" + e13.getMessage());
                        throw th4;
                    }
                } else if (fileReader != null) {
                    fileReader.close();
                }
                throw th4;
            }
        } catch (FileNotFoundException e14) {
            bufferedReader = null;
            e3 = e14;
            fileReader = null;
        } catch (IOException e15) {
            bufferedReader = null;
            e2 = e15;
            fileReader = null;
        } catch (Throwable th5) {
            bufferedReader = null;
            th = th5;
            fileReader = null;
        }
    }

    public static final int e(Context context) {
        return -1;
    }

    public static boolean f(Context context) {
        return (context.getApplicationInfo().flags & 2) != 0;
    }

    public static boolean g(Context context) {
        return f(context);
    }

    public static float h(Context context) {
        try {
            int totalPss = ((ActivityManager) context.getSystemService(ActionFloatingViewItem.f37018a)).getProcessMemoryInfo(new int[]{Process.myPid()})[0].getTotalPss();
            if (totalPss >= 0) {
                return totalPss / 1024.0f;
            }
        } catch (Throwable unused) {
        }
        return Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public static long i(Context context) {
        try {
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            ((ActivityManager) context.getSystemService(ActionFloatingViewItem.f37018a)).getMemoryInfo(memoryInfo);
            long j2 = memoryInfo.availMem;
            if (j2 == 0) {
                return 0L;
            }
            long j3 = j2 >> 20;
            if (j3 < 0) {
                return 0L;
            }
            return j3;
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public static long j(Context context) {
        try {
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            ((ActivityManager) context.getSystemService(ActionFloatingViewItem.f37018a)).getMemoryInfo(memoryInfo);
            long j2 = memoryInfo.totalMem;
            if (j2 == 0) {
                return 0L;
            }
            long j3 = j2 >> 20;
            if (j3 < 0) {
                return 0L;
            }
            return j3;
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public static boolean b(Context context) {
        try {
            return a(context) != 1;
        } catch (Throwable unused) {
        }
    }

    public static int c(Context context) {
        return 0;
    }

    public static String a() {
        String str;
        String[] strArr = Build.SUPPORTED_ABIS;
        if (strArr == null || strArr.length <= 0) {
            str = "";
        } else {
            str = strArr[0];
        }
        if (ak.r(str)) {
            f36621a.a("Architecture#getValue()::Build.CPU_ABI returned null or empty");
            return "";
        }
        return str.toLowerCase(Locale.US);
    }

    public static void a(Context context, JsonObject jsonObject) {
        try {
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            ((ActivityManager) context.getSystemService(ActionFloatingViewItem.f37018a)).getMemoryInfo(memoryInfo);
            long j2 = memoryInfo.totalMem;
            long j3 = memoryInfo.availMem;
            if (j2 == 0) {
                jsonObject.addProperty("mem_total", ContentTree.ROOT_ID);
                jsonObject.addProperty("mem_used", ContentTree.ROOT_ID);
                jsonObject.addProperty("mem_free", ContentTree.ROOT_ID);
                return;
            }
            long j4 = j2 >> 20;
            jsonObject.addProperty("mem_total", a(j4));
            if (j3 == 0) {
                jsonObject.addProperty("mem_free", ContentTree.ROOT_ID);
            } else {
                long j5 = j3 >> 20;
                jsonObject.addProperty("mem_free", a(a(j5), j5, j4));
            }
            long jH = (long) h(context);
            jsonObject.addProperty("mem_used", a(a(jH), jH, j4));
        } catch (Throwable unused) {
        }
    }

    public static int a(Context context) {
        return context.getResources().getConfiguration().orientation == 2 ? 1 : 0;
    }

    public static String a(long j2) {
        Float f2 = new Float(j2);
        DecimalFormat decimalFormat = new DecimalFormat("0.00");
        if (f2.floatValue() >= 1000.0f) {
            return decimalFormat.format(Float.valueOf(f2.floatValue() / 1024.0f)) + "GB";
        }
        return j2 + NBSSpanMetricUnit.Megabytes;
    }

    public static String a(String str, long j2, long j3) {
        NumberFormat percentInstance = NumberFormat.getPercentInstance();
        percentInstance.setMaximumFractionDigits(2);
        return d21.k(str, "(", percentInstance.format(new Float(j2).floatValue() / new Float(j3).floatValue()), ")");
    }

    public static final int d(Context context) {
        return -1;
    }
}
