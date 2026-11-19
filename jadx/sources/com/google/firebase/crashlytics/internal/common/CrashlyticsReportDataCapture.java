package com.google.firebase.crashlytics.internal.common;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.SensorManager;
import android.os.Environment;
import android.os.StatFs;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.settings.SettingsProvider;
import com.google.firebase.crashlytics.internal.stacktrace.StackTraceTrimmingStrategy;
import com.google.firebase.crashlytics.internal.stacktrace.TrimmedThrowableData;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.cj;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class CrashlyticsReportDataCapture {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final HashMap f34544f;
    public static final String g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f34545a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final IdManager f34546b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppData f34547c;
    public final StackTraceTrimmingStrategy d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SettingsProvider f34548e;

    static {
        HashMap map = new HashMap();
        f34544f = map;
        cj.u(5, map, "armeabi", 6, "armeabi-v7a");
        cj.u(9, map, "arm64-v8a", 0, "x86");
        map.put("x86_64", 1);
        Locale locale = Locale.US;
        g = "Crashlytics Android SDK/20.1.0";
    }

    public CrashlyticsReportDataCapture(Context context, IdManager idManager, AppData appData, StackTraceTrimmingStrategy stackTraceTrimmingStrategy, SettingsProvider settingsProvider) {
        this.f34545a = context;
        this.f34546b = idManager;
        this.f34547c = appData;
        this.d = stackTraceTrimmingStrategy;
        this.f34548e = settingsProvider;
    }

    public static CrashlyticsReport.Session.Event.Application.Execution.Exception c(TrimmedThrowableData trimmedThrowableData, int i2) {
        String str = trimmedThrowableData.f35070b;
        String str2 = trimmedThrowableData.f35069a;
        StackTraceElement[] stackTraceElementArr = trimmedThrowableData.f35071c;
        int i3 = 0;
        if (stackTraceElementArr == null) {
            stackTraceElementArr = new StackTraceElement[0];
        }
        TrimmedThrowableData trimmedThrowableData2 = trimmedThrowableData.d;
        if (i2 >= 8) {
            TrimmedThrowableData trimmedThrowableData3 = trimmedThrowableData2;
            while (trimmedThrowableData3 != null) {
                trimmedThrowableData3 = trimmedThrowableData3.d;
                i3++;
            }
        }
        CrashlyticsReport.Session.Event.Application.Execution.Exception.Builder builderA = CrashlyticsReport.Session.Event.Application.Execution.Exception.a();
        builderA.f(str);
        builderA.e(str2);
        builderA.c(d(stackTraceElementArr, 4));
        builderA.d(i3);
        if (trimmedThrowableData2 != null && i3 == 0) {
            builderA.b(c(trimmedThrowableData2, i2 + 1));
        }
        return builderA.a();
    }

    public static List d(StackTraceElement[] stackTraceElementArr, int i2) {
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame.Builder builderA = CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame.a();
            builderA.c(i2);
            long lineNumber = 0;
            long jMax = stackTraceElement.isNativeMethod() ? Math.max(stackTraceElement.getLineNumber(), 0L) : 0L;
            String str = stackTraceElement.getClassName() + FileUtils.HIDDEN_PREFIX + stackTraceElement.getMethodName();
            String fileName = stackTraceElement.getFileName();
            if (!stackTraceElement.isNativeMethod() && stackTraceElement.getLineNumber() > 0) {
                lineNumber = stackTraceElement.getLineNumber();
            }
            builderA.e(jMax);
            builderA.f(str);
            builderA.b(fileName);
            builderA.d(lineNumber);
            arrayList.add(builderA.a());
        }
        return Collections.unmodifiableList(arrayList);
    }

    public final List a() {
        CrashlyticsReport.Session.Event.Application.Execution.BinaryImage.Builder builderA = CrashlyticsReport.Session.Event.Application.Execution.BinaryImage.a();
        builderA.b(0L);
        builderA.d(0L);
        AppData appData = this.f34547c;
        builderA.c(appData.f34496e);
        builderA.e(appData.f34494b);
        return Collections.singletonList(builderA.a());
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0049  */
    /* JADX WARN: Code duplicated, block: B:31:0x0067  */
    /* JADX WARN: Code duplicated, block: B:34:0x006e  */
    /* JADX WARN: Code duplicated, block: B:40:0x009e  */
    public final CrashlyticsReport.Session.Event.Device b(int i2) {
        boolean z;
        Float fValueOf;
        long j2;
        Context context = this.f34545a;
        int i3 = 2;
        try {
            Intent intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            if (intentRegisterReceiver != null) {
                int intExtra = intentRegisterReceiver.getIntExtra("status", -1);
                z = intExtra != -1 && (intExtra == 2 || intExtra == 5);
                try {
                    int intExtra2 = intentRegisterReceiver.getIntExtra("level", -1);
                    int intExtra3 = intentRegisterReceiver.getIntExtra("scale", -1);
                    if (intExtra2 != -1 && intExtra3 != -1) {
                        fValueOf = Float.valueOf(intExtra2 / intExtra3);
                    }
                } catch (IllegalStateException unused) {
                    Logger.f34483b.b();
                }
                Double dValueOf = fValueOf != null ? Double.valueOf(fValueOf.doubleValue()) : null;
                if (z || fValueOf == null) {
                    i3 = 1;
                } else if (fValueOf.floatValue() >= 0.99d) {
                    i3 = 3;
                }
                boolean z2 = CommonUtils.g() && ((SensorManager) context.getSystemService("sensor")).getDefaultSensor(8) != null;
                long jA = CommonUtils.a(context);
                ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                ((ActivityManager) context.getSystemService(ActionFloatingViewItem.f37018a)).getMemoryInfo(memoryInfo);
                j2 = jA - memoryInfo.availMem;
                if (j2 <= 0) {
                    j2 = 0;
                }
                StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
                long blockSize = statFs.getBlockSize();
                long blockCount = (((long) statFs.getBlockCount()) * blockSize) - (blockSize * ((long) statFs.getAvailableBlocks()));
                CrashlyticsReport.Session.Event.Device.Builder builderA = CrashlyticsReport.Session.Event.Device.a();
                builderA.b(dValueOf);
                builderA.c(i3);
                builderA.f(z2);
                builderA.e(i2);
                builderA.g(j2);
                builderA.d(blockCount);
                return builderA.a();
            }
            z = false;
        } catch (IllegalStateException unused2) {
            z = false;
        }
        fValueOf = null;
        if (fValueOf != null) {
        }
        if (z) {
            i3 = 1;
        } else {
            i3 = 1;
        }
        if (CommonUtils.g()) {
        }
        long jA2 = CommonUtils.a(context);
        ActivityManager.MemoryInfo memoryInfo2 = new ActivityManager.MemoryInfo();
        ((ActivityManager) context.getSystemService(ActionFloatingViewItem.f37018a)).getMemoryInfo(memoryInfo2);
        j2 = jA2 - memoryInfo2.availMem;
        if (j2 <= 0) {
            j2 = 0;
        }
        StatFs statFs2 = new StatFs(Environment.getDataDirectory().getPath());
        long blockSize2 = statFs2.getBlockSize();
        long blockCount2 = (((long) statFs2.getBlockCount()) * blockSize2) - (blockSize2 * ((long) statFs2.getAvailableBlocks()));
        CrashlyticsReport.Session.Event.Device.Builder builderA2 = CrashlyticsReport.Session.Event.Device.a();
        builderA2.b(dValueOf);
        builderA2.c(i3);
        builderA2.f(z2);
        builderA2.e(i2);
        builderA2.g(j2);
        builderA2.d(blockCount2);
        return builderA2.a();
    }
}
