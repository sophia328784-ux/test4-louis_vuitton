package com.batch.android.v;

import android.content.Context;
import com.batch.android.e.t;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class a implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f24079a = "LocalCampaignsFilePersistence";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f24080b = "com.batch.tmp.";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final String f24081c = "save_version";
    static final int d = 1;

    /* JADX WARN: Code duplicated, block: B:67:0x0154 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:70:0x0159 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:77:? A[SYNTHETIC] */
    @Override // com.batch.android.v.b
    public void a(Context context, JSONObject jSONObject, String str) throws Throwable {
        OutputStreamWriter outputStreamWriter;
        Exception e2;
        FileOutputStream fileOutputStream;
        Throwable th;
        OutputStreamWriter outputStreamWriter2;
        File cacheDir = context.getCacheDir();
        File file = new File(cacheDir, str);
        File file2 = new File(cacheDir, f24080b + UUID.randomUUID().toString() + ".json");
        FileOutputStream fileOutputStream2 = null;
        OutputStreamWriter outputStreamWriter3 = null;
        try {
            if (!file2.createNewFile()) {
                t.c(f24079a, "Unable to create a temporary file " + file.getName());
            }
            JSONObject jSONObject2 = new JSONObject(jSONObject);
            if (!jSONObject2.has(f24081c)) {
                jSONObject2.put(f24081c, 1);
            }
            fileOutputStream = new FileOutputStream(file2);
            try {
                outputStreamWriter = new OutputStreamWriter(fileOutputStream, "UTF-8");
                try {
                    outputStreamWriter.append((CharSequence) jSONObject2.toString());
                    outputStreamWriter.close();
                    fileOutputStream.close();
                    if (file.exists() && !file.delete()) {
                        t.c(f24079a, "Unable to create previous cached file " + file.getName());
                    }
                    if (!file2.exists()) {
                        throw new c("unable to rename temporary cached file " + file2.getName() + ". File not found.");
                    }
                    if (file2.renameTo(file)) {
                        return;
                    }
                    throw new c("unable to rename temporary cached file " + file2.getName() + " to " + file.getName() + ". " + (file2.delete() ? "Removed temporary cache file" : "Tried to remove temporary cache file but unable to do it."));
                } catch (Exception e3) {
                    e2 = e3;
                    try {
                        if (!file2.exists() || file2.delete()) {
                            throw new c("Can't save json file. " + e2.toString(), e2);
                        }
                        throw new c("unable to delete temporary cached file " + file2.getName(), e2);
                    } catch (Throwable th2) {
                        fileOutputStream2 = fileOutputStream;
                        th = th2;
                        outputStreamWriter2 = outputStreamWriter;
                        th = th;
                        fileOutputStream = fileOutputStream2;
                        outputStreamWriter3 = outputStreamWriter2;
                        if (outputStreamWriter3 != null) {
                            try {
                                outputStreamWriter3.close();
                            } catch (IOException unused) {
                            }
                        }
                        if (fileOutputStream != null) {
                            throw th;
                        }
                        try {
                            fileOutputStream.close();
                            throw th;
                        } catch (IOException unused2) {
                            throw th;
                        }
                    }
                } catch (Throwable th3) {
                    outputStreamWriter2 = outputStreamWriter;
                    th = th3;
                    outputStreamWriter3 = outputStreamWriter2;
                    if (outputStreamWriter3 != null) {
                        outputStreamWriter3.close();
                    }
                    if (fileOutputStream != null) {
                        throw th;
                    }
                    fileOutputStream.close();
                    throw th;
                }
            } catch (Exception e4) {
                outputStreamWriter = null;
                e2 = e4;
            } catch (Throwable th4) {
                th = th4;
                if (outputStreamWriter3 != null) {
                    outputStreamWriter3.close();
                }
                if (fileOutputStream != null) {
                    throw th;
                }
                fileOutputStream.close();
                throw th;
            }
        } catch (Exception e5) {
            outputStreamWriter = null;
            e2 = e5;
            fileOutputStream = null;
        } catch (Throwable th5) {
            th = th5;
            outputStreamWriter = null;
            outputStreamWriter2 = outputStreamWriter;
            th = th;
            fileOutputStream = fileOutputStream2;
            outputStreamWriter3 = outputStreamWriter2;
            if (outputStreamWriter3 != null) {
                outputStreamWriter3.close();
            }
            if (fileOutputStream != null) {
                throw th;
            }
            fileOutputStream.close();
            throw th;
        }
    }

    @Override // com.batch.android.v.b
    public void b(Context context, String str) throws c {
        File file = new File(context.getCacheDir(), str);
        if (file.exists() && file.delete()) {
            t.c(f24079a, "Unable to delete file " + file.getName());
        }
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:51:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:53:0x00b7  */
    @Override // com.batch.android.v.b
    public JSONObject c(Context context, String str) throws Throwable {
        FileInputStream fileInputStream;
        InputStreamReader inputStreamReader;
        BufferedReader bufferedReader;
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader2 = null;
        bufferedReader2 = null;
        bufferedReader2 = null;
        FileInputStream fileInputStream2 = null;
        try {
            fileInputStream = new FileInputStream(new File(context.getCacheDir(), str));
            try {
                inputStreamReader = new InputStreamReader(fileInputStream, "UTF-8");
                try {
                    bufferedReader = new BufferedReader(inputStreamReader);
                    while (true) {
                        try {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                break;
                            }
                            sb.append(line);
                        } catch (Exception e2) {
                            e = e2;
                            fileInputStream2 = fileInputStream;
                            try {
                                throw new c("Can't read file. " + e.toString());
                            } catch (Throwable th) {
                                th = th;
                                fileInputStream = fileInputStream2;
                                bufferedReader2 = bufferedReader;
                                if (bufferedReader2 != null) {
                                    bufferedReader2.close();
                                }
                                if (inputStreamReader != null) {
                                    inputStreamReader.close();
                                }
                                if (fileInputStream != null) {
                                    fileInputStream.close();
                                }
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedReader2 = bufferedReader;
                            if (bufferedReader2 != null) {
                                bufferedReader2.close();
                            }
                            if (inputStreamReader != null) {
                                inputStreamReader.close();
                            }
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                            throw th;
                        }
                    }
                    bufferedReader.close();
                    inputStreamReader.close();
                    fileInputStream.close();
                    try {
                        JSONObject jSONObject = new JSONObject(sb.toString());
                        if (!jSONObject.has(f24081c)) {
                            return null;
                        }
                        if (jSONObject.getInt(f24081c) == 1) {
                            return jSONObject;
                        }
                        throw new c("The loaded file has a wrong version. Dropping.");
                    } catch (JSONException e3) {
                        throw new c("Can't parse loaded json response. " + e3.toString(), e3);
                    }
                } catch (Exception e4) {
                    e = e4;
                    bufferedReader = null;
                } catch (Throwable th3) {
                    th = th3;
                    if (bufferedReader2 != null) {
                        bufferedReader2.close();
                    }
                    if (inputStreamReader != null) {
                        inputStreamReader.close();
                    }
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    throw th;
                }
            } catch (Exception e5) {
                e = e5;
                inputStreamReader = null;
                bufferedReader = null;
            } catch (Throwable th4) {
                th = th4;
                inputStreamReader = null;
            }
        } catch (Exception e6) {
            e = e6;
            inputStreamReader = null;
            bufferedReader = null;
        } catch (Throwable th5) {
            th = th5;
            fileInputStream = null;
            inputStreamReader = null;
        }
    }

    @Override // com.batch.android.v.b
    public boolean a(Context context, String str) throws c {
        return new File(context.getCacheDir(), str).exists();
    }
}
