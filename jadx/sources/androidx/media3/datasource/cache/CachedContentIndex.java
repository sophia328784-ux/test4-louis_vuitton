package androidx.media3.datasource.cache;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import androidx.media3.common.util.AtomicFile;
import androidx.media3.common.util.Util;
import androidx.media3.database.DatabaseIOException;
import androidx.media3.database.DatabaseProvider;
import androidx.media3.database.VersionTable;
import com.batch.android.s.b;
import com.google.common.base.Preconditions;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.az;
import defpackage.bm;
import defpackage.pq0;
import defpackage.tr;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
class CachedContentIndex {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f14496a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SparseArray f14497b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SparseBooleanArray f14498c;
    public final SparseBooleanArray d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Storage f14499e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Storage f14500f;

    public static final class DatabaseStorage implements Storage {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String[] f14501e = {b.a.f24015b, ConfigurationName.KEY, "metadata"};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final DatabaseProvider f14502a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SparseArray f14503b = new SparseArray();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f14504c;
        public String d;

        public DatabaseStorage(DatabaseProvider databaseProvider) {
            this.f14502a = databaseProvider;
        }

        @Override // androidx.media3.datasource.cache.CachedContentIndex.Storage
        public final boolean a() throws DatabaseIOException {
            try {
                SQLiteDatabase readableDatabase = this.f14502a.getReadableDatabase();
                String str = this.f14504c;
                str.getClass();
                return VersionTable.a(1, readableDatabase, str) != -1;
            } catch (SQLException e2) {
                throw new DatabaseIOException(e2);
            }
        }

        @Override // androidx.media3.datasource.cache.CachedContentIndex.Storage
        public final void b(HashMap map) throws DatabaseIOException {
            SparseArray sparseArray = this.f14503b;
            if (sparseArray.size() == 0) {
                return;
            }
            try {
                SQLiteDatabase writableDatabase = this.f14502a.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                for (int i2 = 0; i2 < sparseArray.size(); i2++) {
                    try {
                        CachedContent cachedContent = (CachedContent) sparseArray.valueAt(i2);
                        if (cachedContent == null) {
                            int iKeyAt = sparseArray.keyAt(i2);
                            String str = this.d;
                            str.getClass();
                            writableDatabase.delete(str, "id = ?", new String[]{Integer.toString(iKeyAt)});
                        } else {
                            i(writableDatabase, cachedContent);
                        }
                    } catch (Throwable th) {
                        writableDatabase.endTransaction();
                        throw th;
                    }
                }
                writableDatabase.setTransactionSuccessful();
                sparseArray.clear();
                writableDatabase.endTransaction();
            } catch (SQLException e2) {
                throw new DatabaseIOException(e2);
            }
        }

        @Override // androidx.media3.datasource.cache.CachedContentIndex.Storage
        public final void c(long j2) {
            String hexString = Long.toHexString(j2);
            this.f14504c = hexString;
            this.d = tr.g("ExoPlayerCacheIndex", hexString);
        }

        @Override // androidx.media3.datasource.cache.CachedContentIndex.Storage
        public final void d(CachedContent cachedContent, boolean z) {
            int i2 = cachedContent.f14490a;
            SparseArray sparseArray = this.f14503b;
            if (z) {
                sparseArray.delete(i2);
            } else {
                sparseArray.put(i2, null);
            }
        }

        @Override // androidx.media3.datasource.cache.CachedContentIndex.Storage
        public final void e(HashMap map) throws DatabaseIOException {
            try {
                SQLiteDatabase writableDatabase = this.f14502a.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    j(writableDatabase);
                    Iterator it = map.values().iterator();
                    while (it.hasNext()) {
                        i(writableDatabase, (CachedContent) it.next());
                    }
                    writableDatabase.setTransactionSuccessful();
                    this.f14503b.clear();
                } finally {
                    writableDatabase.endTransaction();
                }
            } catch (SQLException e2) {
                throw new DatabaseIOException(e2);
            }
        }

        @Override // androidx.media3.datasource.cache.CachedContentIndex.Storage
        public final void f(CachedContent cachedContent) {
            this.f14503b.put(cachedContent.f14490a, cachedContent);
        }

        @Override // androidx.media3.datasource.cache.CachedContentIndex.Storage
        public final void g(HashMap map, SparseArray sparseArray) throws DatabaseIOException {
            DatabaseProvider databaseProvider = this.f14502a;
            Preconditions.q(this.f14503b.size() == 0);
            try {
                SQLiteDatabase readableDatabase = databaseProvider.getReadableDatabase();
                String str = this.f14504c;
                str.getClass();
                if (VersionTable.a(1, readableDatabase, str) != 1) {
                    SQLiteDatabase writableDatabase = databaseProvider.getWritableDatabase();
                    writableDatabase.beginTransactionNonExclusive();
                    try {
                        j(writableDatabase);
                        writableDatabase.setTransactionSuccessful();
                        writableDatabase.endTransaction();
                    } catch (Throwable th) {
                        writableDatabase.endTransaction();
                        throw th;
                    }
                }
                SQLiteDatabase readableDatabase2 = databaseProvider.getReadableDatabase();
                String str2 = this.d;
                str2.getClass();
                Cursor cursorQuery = readableDatabase2.query(str2, f14501e, null, null, null, null, null);
                while (cursorQuery.moveToNext()) {
                    try {
                        int i2 = cursorQuery.getInt(0);
                        String string = cursorQuery.getString(1);
                        string.getClass();
                        CachedContent cachedContent = new CachedContent(i2, string, CachedContentIndex.a(new DataInputStream(new ByteArrayInputStream(cursorQuery.getBlob(2)))));
                        String str3 = cachedContent.f14491b;
                        map.put(str3, cachedContent);
                        sparseArray.put(cachedContent.f14490a, str3);
                    } catch (Throwable th2) {
                        if (cursorQuery == null) {
                            throw th2;
                        }
                        try {
                            cursorQuery.close();
                            throw th2;
                        } catch (Throwable th3) {
                            th2.addSuppressed(th3);
                            throw th2;
                        }
                    }
                }
                cursorQuery.close();
            } catch (SQLiteException e2) {
                map.clear();
                sparseArray.clear();
                throw new DatabaseIOException(e2);
            }
        }

        @Override // androidx.media3.datasource.cache.CachedContentIndex.Storage
        public final void h() throws DatabaseIOException {
            DatabaseProvider databaseProvider = this.f14502a;
            String str = this.f14504c;
            str.getClass();
            try {
                String strConcat = "ExoPlayerCacheIndex".concat(str);
                SQLiteDatabase writableDatabase = databaseProvider.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    int i2 = VersionTable.f14360a;
                    try {
                        String str2 = Util.f14242a;
                        if (DatabaseUtils.queryNumEntries(writableDatabase, "sqlite_master", "tbl_name = ?", new String[]{"ExoPlayerVersions"}) > 0) {
                            writableDatabase.delete("ExoPlayerVersions", "feature = ? AND instance_uid = ?", new String[]{Integer.toString(1), str});
                        }
                        writableDatabase.execSQL("DROP TABLE IF EXISTS ".concat(strConcat));
                        writableDatabase.setTransactionSuccessful();
                        writableDatabase.endTransaction();
                    } catch (SQLException e2) {
                        throw new DatabaseIOException(e2);
                    }
                } catch (Throwable th) {
                    writableDatabase.endTransaction();
                    throw th;
                }
            } catch (SQLException e3) {
                throw new DatabaseIOException(e3);
            }
        }

        public final void i(SQLiteDatabase sQLiteDatabase, CachedContent cachedContent) throws IOException {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            CachedContentIndex.b(cachedContent.f14493e, new DataOutputStream(byteArrayOutputStream));
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            ContentValues contentValues = new ContentValues();
            contentValues.put(b.a.f24015b, Integer.valueOf(cachedContent.f14490a));
            contentValues.put(ConfigurationName.KEY, cachedContent.f14491b);
            contentValues.put("metadata", byteArray);
            String str = this.d;
            str.getClass();
            sQLiteDatabase.replaceOrThrow(str, null, contentValues);
        }

        public final void j(SQLiteDatabase sQLiteDatabase) throws DatabaseIOException {
            String str = this.f14504c;
            str.getClass();
            VersionTable.b(1, sQLiteDatabase, str);
            String str2 = this.d;
            str2.getClass();
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS ".concat(str2));
            sQLiteDatabase.execSQL("CREATE TABLE " + this.d + " (id INTEGER PRIMARY KEY NOT NULL,key TEXT NOT NULL,metadata BLOB NOT NULL)");
        }
    }

    public static class LegacyStorage implements Storage {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f14505a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Cipher f14506b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SecretKeySpec f14507c;
        public final SecureRandom d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final AtomicFile f14508e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f14509f;
        public ReusableBufferedOutputStream g;

        public LegacyStorage(File file, byte[] bArr, boolean z) {
            Cipher cipher;
            SecretKeySpec secretKeySpec;
            Preconditions.q((bArr == null && z) ? false : true);
            if (bArr != null) {
                Preconditions.g(bArr.length == 16);
                try {
                    cipher = Cipher.getInstance("AES/CBC/PKCS5PADDING");
                    secretKeySpec = new SecretKeySpec(bArr, "AES");
                } catch (NoSuchAlgorithmException | NoSuchPaddingException e2) {
                    bm.i(e2);
                    throw null;
                }
            } else {
                Preconditions.g(!z);
                cipher = null;
                secretKeySpec = null;
            }
            this.f14505a = z;
            this.f14506b = cipher;
            this.f14507c = secretKeySpec;
            this.d = z ? new SecureRandom() : null;
            this.f14508e = new AtomicFile(file);
        }

        public static int i(CachedContent cachedContent, int i2) {
            int iHashCode = cachedContent.f14491b.hashCode() + (cachedContent.f14490a * 31);
            DefaultContentMetadata defaultContentMetadata = cachedContent.f14493e;
            if (i2 < 2) {
                long jB = defaultContentMetadata.b();
                return (iHashCode * 31) + ((int) (jB ^ (jB >>> 32)));
            }
            return defaultContentMetadata.hashCode() + (iHashCode * 31);
        }

        public static CachedContent j(int i2, DataInputStream dataInputStream) throws IOException {
            DefaultContentMetadata defaultContentMetadataA;
            int i3 = dataInputStream.readInt();
            String utf = dataInputStream.readUTF();
            if (i2 < 2) {
                long j2 = dataInputStream.readLong();
                ContentMetadataMutations contentMetadataMutations = new ContentMetadataMutations();
                contentMetadataMutations.a(Long.valueOf(j2), "exo_len");
                defaultContentMetadataA = DefaultContentMetadata.f14512c.a(contentMetadataMutations);
            } else {
                defaultContentMetadataA = CachedContentIndex.a(dataInputStream);
            }
            return new CachedContent(i3, utf, defaultContentMetadataA);
        }

        @Override // androidx.media3.datasource.cache.CachedContentIndex.Storage
        public final boolean a() {
            AtomicFile atomicFile = this.f14508e;
            return atomicFile.f14130a.exists() || atomicFile.f14131b.exists();
        }

        @Override // androidx.media3.datasource.cache.CachedContentIndex.Storage
        public final void b(HashMap map) throws Throwable {
            if (this.f14509f) {
                e(map);
            }
        }

        @Override // androidx.media3.datasource.cache.CachedContentIndex.Storage
        public final void c(long j2) {
        }

        @Override // androidx.media3.datasource.cache.CachedContentIndex.Storage
        public final void d(CachedContent cachedContent, boolean z) {
            this.f14509f = true;
        }

        @Override // androidx.media3.datasource.cache.CachedContentIndex.Storage
        public final void e(HashMap map) throws Throwable {
            DataOutputStream dataOutputStream;
            Cipher cipher = this.f14506b;
            boolean z = this.f14505a;
            AtomicFile atomicFile = this.f14508e;
            DataOutputStream dataOutputStream2 = null;
            try {
                OutputStream outputStreamA = atomicFile.a();
                ReusableBufferedOutputStream reusableBufferedOutputStream = this.g;
                if (reusableBufferedOutputStream == null) {
                    this.g = new ReusableBufferedOutputStream(outputStreamA);
                } else {
                    reusableBufferedOutputStream.c(outputStreamA);
                }
                ReusableBufferedOutputStream reusableBufferedOutputStream2 = this.g;
                DataOutputStream dataOutputStream3 = new DataOutputStream(reusableBufferedOutputStream2);
                try {
                    dataOutputStream3.writeInt(2);
                    dataOutputStream3.writeInt(z ? 1 : 0);
                    if (z) {
                        byte[] bArr = new byte[16];
                        SecureRandom secureRandom = this.d;
                        String str = Util.f14242a;
                        secureRandom.nextBytes(bArr);
                        dataOutputStream3.write(bArr);
                        try {
                            cipher.init(1, this.f14507c, new IvParameterSpec(bArr));
                            dataOutputStream3.flush();
                            dataOutputStream = new DataOutputStream(new CipherOutputStream(reusableBufferedOutputStream2, cipher));
                        } catch (InvalidAlgorithmParameterException | InvalidKeyException e2) {
                            throw new IllegalStateException(e2);
                        }
                    } else {
                        dataOutputStream = dataOutputStream3;
                    }
                    try {
                        dataOutputStream.writeInt(map.size());
                        int i2 = 0;
                        for (CachedContent cachedContent : map.values()) {
                            dataOutputStream.writeInt(cachedContent.f14490a);
                            dataOutputStream.writeUTF(cachedContent.f14491b);
                            CachedContentIndex.b(cachedContent.f14493e, dataOutputStream);
                            i2 += i(cachedContent, 2);
                        }
                        dataOutputStream.writeInt(i2);
                        dataOutputStream.close();
                        atomicFile.f14131b.delete();
                        String str2 = Util.f14242a;
                        this.f14509f = false;
                    } catch (Throwable th) {
                        th = th;
                        dataOutputStream2 = dataOutputStream;
                        Util.h(dataOutputStream2);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    dataOutputStream2 = dataOutputStream3;
                    Util.h(dataOutputStream2);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }

        @Override // androidx.media3.datasource.cache.CachedContentIndex.Storage
        public final void f(CachedContent cachedContent) {
            this.f14509f = true;
        }

        /* JADX WARN: Code duplicated, block: B:23:0x004e  */
        /* JADX WARN: Code duplicated, block: B:57:0x00c6  */
        /* JADX WARN: Code duplicated, block: B:60:0x00cc  */
        @Override // androidx.media3.datasource.cache.CachedContentIndex.Storage
        public final void g(HashMap map, SparseArray sparseArray) throws Throwable {
            DataInputStream dataInputStream;
            Preconditions.q(!this.f14509f);
            AtomicFile atomicFile = this.f14508e;
            File file = atomicFile.f14130a;
            File file2 = atomicFile.f14130a;
            File file3 = atomicFile.f14131b;
            if (file.exists() || file3.exists()) {
                DataInputStream dataInputStream2 = null;
                try {
                    if (file3.exists()) {
                        file2.delete();
                        file3.renameTo(file2);
                    }
                    BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file2));
                    DataInputStream dataInputStream3 = new DataInputStream(bufferedInputStream);
                    try {
                        int i2 = dataInputStream3.readInt();
                        if (i2 < 0 || i2 > 2) {
                            Util.h(dataInputStream3);
                        } else {
                            if ((dataInputStream3.readInt() & 1) != 0) {
                                Cipher cipher = this.f14506b;
                                if (cipher == null) {
                                    Util.h(dataInputStream3);
                                } else {
                                    byte[] bArr = new byte[16];
                                    dataInputStream3.readFully(bArr);
                                    IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr);
                                    try {
                                        SecretKeySpec secretKeySpec = this.f14507c;
                                        String str = Util.f14242a;
                                        cipher.init(2, secretKeySpec, ivParameterSpec);
                                        dataInputStream = new DataInputStream(new CipherInputStream(bufferedInputStream, cipher));
                                    } catch (InvalidAlgorithmParameterException | InvalidKeyException e2) {
                                        throw new IllegalStateException(e2);
                                    }
                                }
                            } else {
                                if (this.f14505a) {
                                    this.f14509f = true;
                                }
                                dataInputStream = dataInputStream3;
                            }
                            try {
                                int i3 = dataInputStream.readInt();
                                int i4 = 0;
                                for (int i5 = 0; i5 < i3; i5++) {
                                    CachedContent cachedContentJ = j(i2, dataInputStream);
                                    String str2 = cachedContentJ.f14491b;
                                    map.put(str2, cachedContentJ);
                                    sparseArray.put(cachedContentJ.f14490a, str2);
                                    i4 += i(cachedContentJ, i2);
                                }
                                int i6 = dataInputStream.readInt();
                                boolean z = dataInputStream.read() == -1;
                                if (i6 == i4 && z) {
                                    Util.h(dataInputStream);
                                    return;
                                }
                                Util.h(dataInputStream);
                            } catch (IOException unused) {
                                dataInputStream2 = dataInputStream;
                                if (dataInputStream2 != null) {
                                    Util.h(dataInputStream2);
                                }
                            } catch (Throwable th) {
                                dataInputStream2 = dataInputStream;
                                th = th;
                                if (dataInputStream2 != null) {
                                    Util.h(dataInputStream2);
                                }
                                throw th;
                            }
                        }
                    } catch (IOException unused2) {
                        dataInputStream2 = dataInputStream3;
                        if (dataInputStream2 != null) {
                            Util.h(dataInputStream2);
                        }
                        map.clear();
                        sparseArray.clear();
                        file2.delete();
                        file3.delete();
                    } catch (Throwable th2) {
                        th = th2;
                        dataInputStream2 = dataInputStream3;
                        if (dataInputStream2 != null) {
                            Util.h(dataInputStream2);
                        }
                        throw th;
                    }
                } catch (IOException unused3) {
                } catch (Throwable th3) {
                    th = th3;
                }
                map.clear();
                sparseArray.clear();
                file2.delete();
                file3.delete();
            }
        }

        @Override // androidx.media3.datasource.cache.CachedContentIndex.Storage
        public final void h() {
            AtomicFile atomicFile = this.f14508e;
            atomicFile.f14130a.delete();
            atomicFile.f14131b.delete();
        }
    }

    public interface Storage {
        boolean a();

        void b(HashMap map);

        void c(long j2);

        void d(CachedContent cachedContent, boolean z);

        void e(HashMap map);

        void f(CachedContent cachedContent);

        void g(HashMap map, SparseArray sparseArray);

        void h();
    }

    public CachedContentIndex(DatabaseProvider databaseProvider, File file, byte[] bArr, boolean z, boolean z2) {
        Preconditions.q((databaseProvider == null && file == null) ? false : true);
        this.f14496a = new HashMap();
        this.f14497b = new SparseArray();
        this.f14498c = new SparseBooleanArray();
        this.d = new SparseBooleanArray();
        DatabaseStorage databaseStorage = databaseProvider != null ? new DatabaseStorage(databaseProvider) : null;
        LegacyStorage legacyStorage = file != null ? new LegacyStorage(new File(file, "cached_content_index.exi"), bArr, z) : null;
        if (databaseStorage != null && (legacyStorage == null || !z2)) {
            this.f14499e = databaseStorage;
            this.f14500f = legacyStorage;
        } else {
            String str = Util.f14242a;
            this.f14499e = legacyStorage;
            this.f14500f = databaseStorage;
        }
    }

    public static DefaultContentMetadata a(DataInputStream dataInputStream) throws IOException {
        int i2 = dataInputStream.readInt();
        HashMap map = new HashMap();
        for (int i3 = 0; i3 < i2; i3++) {
            String utf = dataInputStream.readUTF();
            int i4 = dataInputStream.readInt();
            if (i4 < 0) {
                az.o(pq0.k(i4, "Invalid value size: "));
                return null;
            }
            int iMin = Math.min(i4, 10485760);
            byte[] bArrCopyOf = Util.f14243b;
            int i5 = 0;
            while (i5 != i4) {
                int i6 = i5 + iMin;
                bArrCopyOf = Arrays.copyOf(bArrCopyOf, i6);
                dataInputStream.readFully(bArrCopyOf, i5, iMin);
                iMin = Math.min(i4 - i6, 10485760);
                i5 = i6;
            }
            map.put(utf, bArrCopyOf);
        }
        return new DefaultContentMetadata(map);
    }

    public static void b(DefaultContentMetadata defaultContentMetadata, DataOutputStream dataOutputStream) throws IOException {
        Set<Map.Entry> setEntrySet = defaultContentMetadata.f14514b.entrySet();
        dataOutputStream.writeInt(setEntrySet.size());
        for (Map.Entry entry : setEntrySet) {
            dataOutputStream.writeUTF((String) entry.getKey());
            byte[] bArr = (byte[]) entry.getValue();
            dataOutputStream.writeInt(bArr.length);
            dataOutputStream.write(bArr);
        }
    }

    public final CachedContent c(String str) {
        return (CachedContent) this.f14496a.get(str);
    }

    public final CachedContent d(String str) {
        HashMap map = this.f14496a;
        CachedContent cachedContent = (CachedContent) map.get(str);
        if (cachedContent != null) {
            return cachedContent;
        }
        SparseArray sparseArray = this.f14497b;
        int size = sparseArray.size();
        int i2 = 0;
        int iKeyAt = size == 0 ? 0 : sparseArray.keyAt(size - 1) + 1;
        if (iKeyAt < 0) {
            while (i2 < size && i2 == sparseArray.keyAt(i2)) {
                i2++;
            }
            iKeyAt = i2;
        }
        CachedContent cachedContent2 = new CachedContent(iKeyAt, str);
        map.put(str, cachedContent2);
        sparseArray.put(iKeyAt, str);
        this.d.put(iKeyAt, true);
        this.f14499e.f(cachedContent2);
        return cachedContent2;
    }

    public final void e(long j2) {
        Storage storage;
        Storage storage2 = this.f14499e;
        storage2.c(j2);
        Storage storage3 = this.f14500f;
        if (storage3 != null) {
            storage3.c(j2);
        }
        boolean zA = storage2.a();
        SparseArray sparseArray = this.f14497b;
        HashMap map = this.f14496a;
        if (zA || (storage = this.f14500f) == null || !storage.a()) {
            storage2.g(map, sparseArray);
        } else {
            this.f14500f.g(map, sparseArray);
            storage2.e(map);
        }
        Storage storage4 = this.f14500f;
        if (storage4 != null) {
            storage4.h();
            this.f14500f = null;
        }
    }

    public final void f(String str) {
        HashMap map = this.f14496a;
        CachedContent cachedContent = (CachedContent) map.get(str);
        if (cachedContent != null && cachedContent.f14492c.isEmpty() && cachedContent.d.isEmpty()) {
            map.remove(str);
            int i2 = cachedContent.f14490a;
            SparseBooleanArray sparseBooleanArray = this.d;
            boolean z = sparseBooleanArray.get(i2);
            this.f14499e.d(cachedContent, z);
            SparseArray sparseArray = this.f14497b;
            if (z) {
                sparseArray.remove(i2);
                sparseBooleanArray.delete(i2);
            } else {
                sparseArray.put(i2, null);
                this.f14498c.put(i2, true);
            }
        }
    }

    public final void g() {
        this.f14499e.b(this.f14496a);
        SparseBooleanArray sparseBooleanArray = this.f14498c;
        int size = sparseBooleanArray.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f14497b.remove(sparseBooleanArray.keyAt(i2));
        }
        sparseBooleanArray.clear();
        this.d.clear();
    }

    public CachedContentIndex(DatabaseProvider databaseProvider) {
        this(databaseProvider, null, null, false, false);
    }
}
