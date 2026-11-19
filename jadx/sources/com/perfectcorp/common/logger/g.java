package com.perfectcorp.common.logger;

import com.perfectcorp.common.utility.Log;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
final class g implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ long f39287a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ long f39288b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private /* synthetic */ long f39289c;
    private /* synthetic */ Date d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private /* synthetic */ a.EnumC0121a f39290e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private /* synthetic */ String f39291f;
    private /* synthetic */ String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private /* synthetic */ a f39292h;

    public g(a aVar, long j2, long j3, long j4, Date date, a.EnumC0121a enumC0121a, String str, String str2) {
        this.f39292h = aVar;
        this.f39287a = j2;
        this.f39288b = j3;
        this.f39289c = j4;
        this.d = date;
        this.f39290e = enumC0121a;
        this.f39291f = str;
        this.g = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a aVar = this.f39292h;
        if (aVar.f39275h == null) {
            File file = aVar.f39273e;
            Objects.requireNonNull(file);
            if (!file.exists()) {
                file.mkdirs();
            } else if (!file.isDirectory()) {
                file.delete();
                file.mkdirs();
            }
            try {
                aVar.f39275h = new BufferedWriter(new FileWriter(aVar.f39274f, false), 16384);
            } catch (IOException e2) {
                Log.i("FileLogger", "Cannot create log writer", e2);
            }
        }
        a aVar2 = this.f39292h;
        ScheduledFuture scheduledFuture = aVar2.f39276i;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        aVar2.f39276i = aVar2.g.schedule(new h(aVar2), 2L, TimeUnit.SECONDS);
        try {
            a aVar3 = this.f39292h;
            BufferedWriter bufferedWriter = aVar3.f39275h;
            Locale locale = Locale.US;
            Integer numValueOf = Integer.valueOf(aVar3.d.incrementAndGet());
            Float fValueOf = Float.valueOf(this.f39287a / 1000.0f);
            Long lValueOf = Long.valueOf(this.f39288b);
            Long lValueOf2 = Long.valueOf(this.f39289c);
            SimpleDateFormat simpleDateFormat = (SimpleDateFormat) a.f39270k.get();
            Objects.requireNonNull(simpleDateFormat);
            bufferedWriter.write(String.format(locale, "%08d\t%10.9f\t[%05d-%05d] %s %s/%s:\t%s", numValueOf, fValueOf, lValueOf, lValueOf2, simpleDateFormat.format(this.d), this.f39290e, this.f39291f, this.g));
            if (this.g.endsWith("\n") || this.g.endsWith("\r")) {
                return;
            }
            this.f39292h.f39275h.newLine();
        } catch (IOException e3) {
            Log.i("FileLogger", "Cannot log message", e3);
        }
    }
}
