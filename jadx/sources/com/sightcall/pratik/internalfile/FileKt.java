package com.sightcall.pratik.internalfile;

import android.content.Context;
import com.sightcall.pratik.logs.Logger;
import defpackage.md;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a,\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0001\u001a6\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00010\t2\u0006\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00012\b\b\u0002\u0010\f\u001a\u00020\r\u001a\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0001H\u0002\u001a\"\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0006\u001a\u00020\u0001¨\u0006\u0011"}, d2 = {"saveInInternalFile", "", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "body", "Ljava/io/InputStream;", "fileName", "path", "retrieveInInternalFiles", "", "folderPath", "extension", "includeAbsolutePath", "", "createSubfolder", "Ljava/io/File;", "deleteInternalFileByName", "pratik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class FileKt {
    private static final File createSubfolder(Context context, String str) {
        List<String> listSplit$default = StringsKt__StringsKt.split$default(str, new String[]{"/"}, false, 0, 6, null);
        File filesDir = context.getFilesDir();
        for (String str2 : listSplit$default) {
            if (!StringsKt.w(str2)) {
                File file = new File(filesDir, str2);
                if (!file.exists()) {
                    file.mkdir();
                }
                filesDir = file;
            }
        }
        if (filesDir != null) {
            return filesDir;
        }
        md.n("Invalid path.");
        return null;
    }

    public static final boolean deleteInternalFileByName(Context context, String str, String str2) {
        File file;
        context.getClass();
        str2.getClass();
        try {
            if (str != null) {
                file = new File(context.getFilesDir(), str + "/" + str2);
            } else {
                file = new File(context.getFilesDir(), str2);
            }
            if (file.exists()) {
                return file.delete();
            }
            return false;
        } catch (Exception e2) {
            Logger logger = Logger.INSTANCE;
            e2.toString();
            logger.getTag();
            return false;
        }
    }

    public static /* synthetic */ boolean deleteInternalFileByName$default(Context context, String str, String str2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str = null;
        }
        return deleteInternalFileByName(context, str, str2);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0046 A[Catch: Exception -> 0x00ae, TryCatch #0 {Exception -> 0x00ae, blocks: (B:4:0x0007, B:6:0x0019, B:8:0x001f, B:10:0x0025, B:12:0x002f, B:15:0x0039, B:17:0x0046, B:18:0x0049, B:19:0x004c, B:20:0x0059, B:22:0x005f, B:24:0x0067, B:26:0x0070, B:25:0x006c, B:28:0x0075, B:30:0x0078, B:32:0x0085, B:33:0x0094, B:35:0x009a), top: B:43:0x0005 }] */
    public static final List<String> retrieveInInternalFiles(Context context, String str, String str2, boolean z) {
        context.getClass();
        try {
            if (str == null) {
                String[] strArrFileList = context.fileList();
                strArrFileList.getClass();
                List<String> listW = ArraysKt.W(strArrFileList);
                if (!z) {
                    return listW;
                }
                List<String> list = listW;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
                Iterator<T> it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(context.getFileStreamPath((String) it.next()).getAbsolutePath());
                }
                return arrayList;
            }
            createSubfolder(context, str);
            File file = new File(context.getFilesDir(), str);
            if (file.exists() && file.isDirectory()) {
                File[] fileArrListFiles = file.listFiles();
                if (fileArrListFiles == null) {
                    return EmptyList.f71768b;
                }
                ArrayList<File> arrayList2 = new ArrayList();
                for (File file2 : fileArrListFiles) {
                    if (file2.isFile()) {
                        if (str2 != null) {
                            String name = file2.getName();
                            name.getClass();
                            if (StringsKt.p(name, str2, false)) {
                                arrayList2.add(file2);
                            }
                        } else {
                            arrayList2.add(file2);
                        }
                    }
                }
                ArrayList arrayList3 = new ArrayList(CollectionsKt.t(arrayList2, 10));
                for (File file3 : arrayList2) {
                    arrayList3.add(z ? file3.getAbsolutePath() : file3.getName());
                }
                return arrayList3;
            }
            return EmptyList.f71768b;
        } catch (Exception e2) {
            Logger logger = Logger.INSTANCE;
            e2.toString();
            logger.getTag();
        }
    }

    public static /* synthetic */ List retrieveInInternalFiles$default(Context context, String str, String str2, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str = null;
        }
        if ((i2 & 4) != 0) {
            str2 = null;
        }
        if ((i2 & 8) != 0) {
            z = false;
        }
        return retrieveInInternalFiles(context, str, str2, z);
    }

    public static final String saveInInternalFile(Context context, InputStream inputStream, String str, String str2) {
        context.getClass();
        inputStream.getClass();
        str.getClass();
        if (str2 != null) {
            try {
                new File(context.getFilesDir(), str2).mkdirs();
                str = new File(context.getFilesDir(), str2 + "/" + str).getAbsolutePath();
            } catch (Exception e2) {
                Logger logger = Logger.INSTANCE;
                e2.toString();
                logger.getTag();
                return null;
            }
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(str));
            try {
                ByteStreamsKt.a(inputStream, fileOutputStream);
                fileOutputStream.close();
                inputStream.close();
                return str;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.a(fileOutputStream, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                CloseableKt.a(inputStream, th3);
                throw th4;
            }
        }
    }

    public static /* synthetic */ String saveInInternalFile$default(Context context, InputStream inputStream, String str, String str2, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            str2 = null;
        }
        return saveInInternalFile(context, inputStream, str, str2);
    }
}
