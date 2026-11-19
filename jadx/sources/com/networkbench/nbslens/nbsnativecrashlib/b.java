package com.networkbench.nbslens.nbsnativecrashlib;

import android.content.Context;
import android.os.FileObserver;
import android.text.TextUtils;
import defpackage.tr;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.RandomAccessFile;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
class b {
    private static final b u = new b();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f38742e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f38743f;
    private String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f38744h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f38745i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f38746j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f38747k;
    private int l;
    private int m;
    private int n;
    private boolean o;
    private boolean p;
    private g q;
    private g r;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Date f38739a = new Date();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Pattern f38740b = Pattern.compile("^-----\\spid\\s(\\d+)\\sat\\s(.*)\\s-----$");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Pattern f38741c = Pattern.compile("^Cmd\\sline:\\s+(.*)$");
    private final long d = 15000;
    private long s = 0;
    private FileObserver t = null;

    public class a extends FileObserver {
        public a(String str, int i2) {
            super(str, i2);
        }

        @Override // android.os.FileObserver
        public void onEvent(int i2, String str) throws Throwable {
            if (str != null) {
                try {
                    String strConcat = "/data/anr/".concat(str);
                    if (strConcat.contains("trace")) {
                        b.this.a(strConcat);
                    }
                } catch (Exception e2) {
                    NBSNativeCrash.c().a("NBSAgent", "AnrHandler fileObserver onEvent failed", e2);
                }
            }
        }
    }

    private b() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:101:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:103:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:70:0x011c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:90:0x010e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:92:0x0114 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:94:0x011f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void a(String str) throws Throwable {
        String strA;
        File fileA;
        Throwable th;
        RandomAccessFile randomAccessFile;
        g gVar;
        Date date = new Date();
        if (date.getTime() - this.s < 15000) {
            return;
        }
        g gVar2 = this.r;
        RandomAccessFile randomAccessFile2 = null;
        if (gVar2 != null) {
            try {
                gVar2.a(null, null);
            } catch (Exception unused) {
            }
        }
        if (!this.f38747k || n.a(this.f38742e, 15000L)) {
            String strA2 = a(str, date.getTime());
            if (TextUtils.isEmpty(strA2)) {
                return;
            }
            this.s = date.getTime();
            if (f.b().e()) {
                try {
                    strA = a(date, strA2);
                } catch (Exception e2) {
                    NBSNativeCrash.c().a("NBSAgent", "AnrHandler getEmergency failed", e2);
                    strA = null;
                }
                try {
                    fileA = f.b().a(String.format(Locale.US, "%s/%s_%020d_%s__%s%s", this.f38746j, n.f38808k, Long.valueOf(date.getTime() * 1000), this.f38745i, this.g, n.n));
                } catch (Exception e3) {
                    NBSNativeCrash.c().a("NBSAgent", "AnrHandler createLogFile failed", e3);
                    fileA = null;
                }
                if (fileA != null) {
                    try {
                        randomAccessFile = new RandomAccessFile(fileA, "rws");
                        if (strA != null) {
                            try {
                                try {
                                    randomAccessFile.write(strA.getBytes("UTF-8"));
                                } catch (Exception e4) {
                                    e = e4;
                                    NBSNativeCrash.c().a("NBSAgent", "AnrHandler write log file failed", e);
                                    if (randomAccessFile != null) {
                                        try {
                                            randomAccessFile.close();
                                        } catch (Exception unused2) {
                                        }
                                    }
                                    gVar = this.q;
                                    if (gVar != null) {
                                        if (fileA != null) {
                                            try {
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        gVar.a(fileA != null ? fileA.getAbsolutePath() : null, strA);
                                    }
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                randomAccessFile2 = randomAccessFile;
                                if (randomAccessFile2 != null) {
                                    throw th;
                                }
                                try {
                                    randomAccessFile2.close();
                                    throw th;
                                } catch (Exception unused4) {
                                    throw th;
                                }
                            }
                        }
                        try {
                            int i2 = this.n;
                            if (i2 > 0 || this.l > 0 || this.m > 0) {
                                randomAccessFile.write(n.a(i2, this.l, this.m).getBytes("UTF-8"));
                            }
                            if (this.o) {
                                randomAccessFile.write(n.b().getBytes("UTF-8"));
                            }
                            if (this.p) {
                                randomAccessFile.write(n.e().getBytes("UTF-8"));
                            }
                            randomAccessFile.write(n.c().getBytes("UTF-8"));
                            try {
                                randomAccessFile.close();
                            } catch (Exception unused5) {
                            }
                            strA = null;
                        } catch (Exception e5) {
                            e = e5;
                            strA = null;
                            NBSNativeCrash.c().a("NBSAgent", "AnrHandler write log file failed", e);
                            if (randomAccessFile != null) {
                                randomAccessFile.close();
                            }
                        }
                    } catch (Exception e6) {
                        e = e6;
                        randomAccessFile = null;
                    } catch (Throwable th3) {
                        th = th3;
                        if (randomAccessFile2 != null) {
                            throw th;
                        }
                        randomAccessFile2.close();
                        throw th;
                    }
                }
                gVar = this.q;
                if (gVar != null) {
                    gVar.a(fileA != null ? fileA.getAbsolutePath() : null, strA);
                }
            }
        }
    }

    public void b() {
        FileObserver fileObserver = this.t;
        if (fileObserver != null) {
            try {
                try {
                    fileObserver.stopWatching();
                } catch (Exception e2) {
                    NBSNativeCrash.c().a("NBSAgent", "AnrHandler fileObserver stopWatching failed", e2);
                }
            } finally {
                this.t = null;
            }
        }
    }

    public static b a() {
        return u;
    }

    public void a(Context context, int i2, String str, String str2, String str3, String str4, boolean z, int i3, int i4, int i5, boolean z2, boolean z3, g gVar, g gVar2) {
    }

    private String a(Date date, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(n.a(this.f38739a, date, n.f38807j, this.f38744h, this.f38745i));
        sb.append("pid: ");
        sb.append(this.f38743f);
        sb.append("  >>> ");
        return tr.l(sb, this.g, " <<<\n\n--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n", str, "\n+++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++\n\n");
    }

    private String a(String str, long j2) throws Throwable {
        BufferedReader bufferedReader;
        Date date;
        String strGroup;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(com.android.wiimu.model.cling_callback.renderingcontrol.alarm.b.f22423j, Locale.US);
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader2 = null;
        try {
            bufferedReader = new BufferedReader(new FileReader(str));
            boolean z = false;
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    if (!z && line.startsWith("----- pid ")) {
                        Matcher matcher = this.f38740b.matcher(line);
                        if (matcher.find() && matcher.groupCount() == 2) {
                            String strGroup2 = matcher.group(1);
                            String strGroup3 = matcher.group(2);
                            if (strGroup2 != null && strGroup3 != null && this.f38743f == Integer.parseInt(strGroup2) && (date = simpleDateFormat.parse(strGroup3)) != null && Math.abs(date.getTime() - j2) <= 15000) {
                                String line2 = bufferedReader.readLine();
                                if (line2 == null) {
                                    break;
                                }
                                Matcher matcher2 = this.f38741c.matcher(line2);
                                if (matcher2.find() && matcher2.groupCount() == 1 && (strGroup = matcher2.group(1)) != null && strGroup.equals(this.g)) {
                                    sb.append(line2);
                                    sb.append('\n');
                                    sb.append("Mode: Watching /data/anr/*\n");
                                    z = true;
                                }
                            }
                        }
                    } else if (!z) {
                        continue;
                    } else {
                        if (line.startsWith("----- end ")) {
                            break;
                        }
                        sb.append(line);
                        sb.append('\n');
                    }
                } catch (Exception unused) {
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (Exception unused2) {
                        }
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    bufferedReader2 = bufferedReader;
                    if (bufferedReader2 != null) {
                        try {
                            bufferedReader2.close();
                        } catch (Exception unused3) {
                        }
                    }
                    throw th;
                }
            }
            String string = sb.toString();
            try {
                bufferedReader.close();
            } catch (Exception unused4) {
            }
            return string;
        } catch (Exception unused5) {
            bufferedReader = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
