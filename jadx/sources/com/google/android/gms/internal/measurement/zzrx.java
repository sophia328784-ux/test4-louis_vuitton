package com.google.android.gms.internal.measurement;

import android.accounts.Account;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.common.base.Joiner;
import com.google.common.collect.ImmutableList;
import com.sightcall.session.datasource.reference.v3.ReferenceApiV3ConstKt;
import defpackage.az;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class zzrx extends zzsy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f30889a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzsd f30890b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f30891c = new Object();
    public String d;

    public /* synthetic */ zzrx(zzrw zzrwVar) {
        this.f30890b = new zzsd(zzrwVar.f30888b);
        this.f30889a = zzrwVar.f30887a;
    }

    @Override // com.google.android.gms.internal.measurement.zzsx
    public final InputStream a(Uri uri) throws zzsg, zzsi {
        if (i(uri)) {
            throw new zzsg("Android backend cannot perform remote operations without a remote backend");
        }
        File fileA = zzsc.a(h(uri));
        return new zzsl(new FileInputStream(fileA), fileA);
    }

    @Override // com.google.android.gms.internal.measurement.zzsx
    public final boolean b(Uri uri) throws zzsg {
        if (i(uri)) {
            throw new zzsg("Android backend cannot perform remote operations without a remote backend");
        }
        return zzsc.a(h(uri)).exists();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:53:0x010f  */
    /* JADX WARN: Code duplicated, block: B:57:0x0116 A[Catch: all -> 0x0129, TryCatch #0 {all -> 0x0129, blocks: (B:55:0x0112, B:57:0x0116, B:60:0x012b, B:61:0x012d), top: B:80:0x0112 }] */
    /* JADX WARN: Code duplicated, block: B:65:0x0139  */
    /* JADX WARN: Code duplicated, block: B:80:0x0112 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // com.google.android.gms.internal.measurement.zzsx
    public final File c(Uri uri) throws IOException {
        File externalFilesDir;
        Account account;
        File file;
        String str;
        if (i(uri)) {
            az.o("operation is not permitted in other authorities.");
            return null;
        }
        Context context = this.f30889a;
        if (!uri.getScheme().equals(ReferenceApiV3ConstKt.OS_NAME)) {
            throw new zzsi("Scheme must be 'android'");
        }
        if (uri.getPathSegments().isEmpty()) {
            throw new zzsi(String.format("Path must start with a valid logical location: %s", uri));
        }
        if (!TextUtils.isEmpty(uri.getQuery())) {
            throw new zzsi("Did not expect uri to have query");
        }
        ArrayList arrayList = new ArrayList(uri.getPathSegments());
        String str2 = (String) arrayList.get(0);
        switch (str2.hashCode()) {
            case -1820761141:
                if (str2.equals("external")) {
                    externalFilesDir = context.getExternalFilesDir(null);
                    file = new File(externalFilesDir, TextUtils.join(File.separator, arrayList.subList(1, arrayList.size())));
                    if (!zzky.b(context)) {
                        synchronized (this.f30891c) {
                            try {
                                if (this.d == null) {
                                    this.d = zzry.a(context.createDeviceProtectedStorageContext()).getParentFile().getAbsolutePath();
                                }
                                str = this.d;
                            } catch (Throwable th) {
                                throw th;
                            }
                            break;
                        }
                        if (!file.getAbsolutePath().startsWith(str)) {
                            throw new zzsg("Cannot access credential-protected data from direct boot");
                        }
                    }
                    return file;
                }
                throw new zzsi(String.format("Path must start with a valid logical location: %s", uri));
            case 94416770:
                if (str2.equals("cache")) {
                    externalFilesDir = context.getCacheDir();
                    file = new File(externalFilesDir, TextUtils.join(File.separator, arrayList.subList(1, arrayList.size())));
                    if (!zzky.b(context)) {
                        synchronized (this.f30891c) {
                            if (this.d == null) {
                                this.d = zzry.a(context.createDeviceProtectedStorageContext()).getParentFile().getAbsolutePath();
                            }
                            str = this.d;
                            if (!file.getAbsolutePath().startsWith(str)) {
                                throw new zzsg("Cannot access credential-protected data from direct boot");
                            }
                        }
                    }
                    return file;
                }
                throw new zzsi(String.format("Path must start with a valid logical location: %s", uri));
            case 97434231:
                if (str2.equals("files")) {
                    externalFilesDir = zzry.a(context);
                    file = new File(externalFilesDir, TextUtils.join(File.separator, arrayList.subList(1, arrayList.size())));
                    if (!zzky.b(context)) {
                        synchronized (this.f30891c) {
                            if (this.d == null) {
                                this.d = zzry.a(context.createDeviceProtectedStorageContext()).getParentFile().getAbsolutePath();
                            }
                            str = this.d;
                            if (!file.getAbsolutePath().startsWith(str)) {
                                throw new zzsg("Cannot access credential-protected data from direct boot");
                            }
                        }
                    }
                    return file;
                }
                throw new zzsi(String.format("Path must start with a valid logical location: %s", uri));
            case 835260319:
                if (str2.equals("managed")) {
                    File file2 = new File(zzry.a(context), "managed");
                    if (arrayList.size() >= 3) {
                        try {
                            String str3 = (String) arrayList.get(2);
                            Account account2 = zzrv.f30886a;
                            if ("shared".equals(str3)) {
                                account = zzrv.f30886a;
                            } else {
                                int iIndexOf = str3.indexOf(58);
                                zzsq.a(iIndexOf >= 0, "Malformed account", new Object[0]);
                                account = new Account(str3.substring(iIndexOf + 1), str3.substring(0, iIndexOf));
                            }
                            if (!zzrv.f30886a.equals(account)) {
                                throw new zzsi("AccountManager cannot be null");
                            }
                        } catch (IllegalArgumentException e2) {
                            throw new zzsi(e2);
                        }
                    }
                    externalFilesDir = file2;
                    file = new File(externalFilesDir, TextUtils.join(File.separator, arrayList.subList(1, arrayList.size())));
                    if (!zzky.b(context)) {
                        synchronized (this.f30891c) {
                            if (this.d == null) {
                                this.d = zzry.a(context.createDeviceProtectedStorageContext()).getParentFile().getAbsolutePath();
                            }
                            str = this.d;
                            if (!file.getAbsolutePath().startsWith(str)) {
                                throw new zzsg("Cannot access credential-protected data from direct boot");
                            }
                        }
                    }
                    return file;
                }
                throw new zzsi(String.format("Path must start with a valid logical location: %s", uri));
            case 988548496:
                if (str2.equals("directboot-cache")) {
                    externalFilesDir = context.createDeviceProtectedStorageContext().getCacheDir();
                    file = new File(externalFilesDir, TextUtils.join(File.separator, arrayList.subList(1, arrayList.size())));
                    if (!zzky.b(context)) {
                        synchronized (this.f30891c) {
                            if (this.d == null) {
                                this.d = zzry.a(context.createDeviceProtectedStorageContext()).getParentFile().getAbsolutePath();
                            }
                            str = this.d;
                            if (!file.getAbsolutePath().startsWith(str)) {
                                throw new zzsg("Cannot access credential-protected data from direct boot");
                            }
                        }
                    }
                    return file;
                }
                throw new zzsi(String.format("Path must start with a valid logical location: %s", uri));
            case 991565957:
                if (str2.equals("directboot-files")) {
                    externalFilesDir = context.createDeviceProtectedStorageContext().getFilesDir();
                    file = new File(externalFilesDir, TextUtils.join(File.separator, arrayList.subList(1, arrayList.size())));
                    if (!zzky.b(context)) {
                        synchronized (this.f30891c) {
                            if (this.d == null) {
                                this.d = zzry.a(context.createDeviceProtectedStorageContext()).getParentFile().getAbsolutePath();
                            }
                            str = this.d;
                            if (!file.getAbsolutePath().startsWith(str)) {
                                throw new zzsg("Cannot access credential-protected data from direct boot");
                            }
                        }
                    }
                    return file;
                }
                throw new zzsi(String.format("Path must start with a valid logical location: %s", uri));
            default:
                throw new zzsi(String.format("Path must start with a valid logical location: %s", uri));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzsx
    public final String f0() {
        return ReferenceApiV3ConstKt.OS_NAME;
    }

    @Override // com.google.android.gms.internal.measurement.zzsy
    public final zzsd g() {
        return this.f30890b;
    }

    @Override // com.google.android.gms.internal.measurement.zzsy
    public final Uri h(Uri uri) throws IOException {
        if (i(uri)) {
            throw new zzsi("Operation across authorities is not allowed.");
        }
        File fileC = c(uri);
        zzsb zzsbVar = new zzsb();
        String absolutePath = fileC.getAbsolutePath();
        Uri.Builder builder = zzsbVar.f30902a;
        builder.path(absolutePath);
        ImmutableList immutableListJ = zzsbVar.f30903b.j();
        Pattern pattern = zzsp.f30911a;
        return builder.encodedFragment(immutableListJ.isEmpty() ? null : "transform=".concat(new Joiner("+").b(immutableListJ))).build();
    }

    public final boolean i(Uri uri) {
        return (TextUtils.isEmpty(uri.getAuthority()) || this.f30889a.getPackageName().equals(uri.getAuthority())) ? false : true;
    }
}
