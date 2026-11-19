package androidx.security.crypto;

import android.content.SharedPreferences;
import android.util.Pair;
import androidx.collection.ArraySet;
import com.google.crypto.tink.Aead;
import com.google.crypto.tink.DeterministicAead;
import com.google.crypto.tink.KeyTemplate;
import com.google.crypto.tink.KeyTemplates;
import com.google.crypto.tink.subtle.Base64;
import defpackage.d21;
import defpackage.tr;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class EncryptedSharedPreferences implements SharedPreferences {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SharedPreferences f19857b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CopyOnWriteArrayList f19858c = new CopyOnWriteArrayList();
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Aead f19859e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final DeterministicAead f19860f;

    /* JADX INFO: renamed from: androidx.security.crypto.EncryptedSharedPreferences$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f19861a;

        static {
            int[] iArr = new int[EncryptedType.values().length];
            f19861a = iArr;
            try {
                iArr[EncryptedType.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19861a[EncryptedType.INT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19861a[EncryptedType.LONG.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19861a[EncryptedType.FLOAT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f19861a[EncryptedType.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f19861a[EncryptedType.STRING_SET.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public static final class Editor implements SharedPreferences.Editor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final EncryptedSharedPreferences f19862a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SharedPreferences.Editor f19863b;
        public final AtomicBoolean d = new AtomicBoolean(false);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final CopyOnWriteArrayList f19864c = new CopyOnWriteArrayList();

        public Editor(EncryptedSharedPreferences encryptedSharedPreferences, SharedPreferences.Editor editor) {
            this.f19862a = encryptedSharedPreferences;
            this.f19863b = editor;
        }

        public final void a() {
            if (this.d.getAndSet(false)) {
                EncryptedSharedPreferences encryptedSharedPreferences = this.f19862a;
                for (String str : ((HashMap) encryptedSharedPreferences.getAll()).keySet()) {
                    if (!this.f19864c.contains(str) && !EncryptedSharedPreferences.c(str)) {
                        this.f19863b.remove(encryptedSharedPreferences.a(str));
                    }
                }
            }
        }

        @Override // android.content.SharedPreferences.Editor
        public final void apply() {
            a();
            this.f19863b.apply();
            b();
            this.f19864c.clear();
        }

        public final void b() {
            EncryptedSharedPreferences encryptedSharedPreferences = this.f19862a;
            for (SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener : encryptedSharedPreferences.f19858c) {
                Iterator it = this.f19864c.iterator();
                while (it.hasNext()) {
                    onSharedPreferenceChangeListener.onSharedPreferenceChanged(encryptedSharedPreferences, (String) it.next());
                }
            }
        }

        public final void c(String str, byte[] bArr) {
            EncryptedSharedPreferences encryptedSharedPreferences = this.f19862a;
            encryptedSharedPreferences.getClass();
            if (EncryptedSharedPreferences.c(str)) {
                throw new SecurityException(d21.j(str, " is a reserved key for the encryption keyset."));
            }
            this.f19864c.add(str);
            if (str == null) {
                str = "__NULL__";
            }
            try {
                String strA = encryptedSharedPreferences.a(str);
                try {
                    Pair pair = new Pair(strA, new String(Base64.b(encryptedSharedPreferences.f19859e.a(bArr, strA.getBytes(StandardCharsets.UTF_8))), "US-ASCII"));
                    this.f19863b.putString((String) pair.first, (String) pair.second);
                } catch (UnsupportedEncodingException e2) {
                    throw new AssertionError(e2);
                }
            } catch (GeneralSecurityException e3) {
                throw new SecurityException(tr.n(e3, new StringBuilder("Could not encrypt data: ")), e3);
            }
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor clear() {
            this.d.set(true);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public final boolean commit() {
            CopyOnWriteArrayList copyOnWriteArrayList = this.f19864c;
            a();
            try {
                return this.f19863b.commit();
            } finally {
                b();
                copyOnWriteArrayList.clear();
            }
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor putBoolean(String str, boolean z) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(5);
            byteBufferAllocate.putInt(EncryptedType.BOOLEAN.a());
            byteBufferAllocate.put(z ? (byte) 1 : (byte) 0);
            c(str, byteBufferAllocate.array());
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor putFloat(String str, float f2) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
            byteBufferAllocate.putInt(EncryptedType.FLOAT.a());
            byteBufferAllocate.putFloat(f2);
            c(str, byteBufferAllocate.array());
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor putInt(String str, int i2) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
            byteBufferAllocate.putInt(EncryptedType.INT.a());
            byteBufferAllocate.putInt(i2);
            c(str, byteBufferAllocate.array());
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor putLong(String str, long j2) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(12);
            byteBufferAllocate.putInt(EncryptedType.LONG.a());
            byteBufferAllocate.putLong(j2);
            c(str, byteBufferAllocate.array());
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor putString(String str, String str2) {
            if (str2 == null) {
                str2 = "__NULL__";
            }
            byte[] bytes = str2.getBytes(StandardCharsets.UTF_8);
            int length = bytes.length;
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length + 8);
            byteBufferAllocate.putInt(EncryptedType.STRING.a());
            byteBufferAllocate.putInt(length);
            byteBufferAllocate.put(bytes);
            c(str, byteBufferAllocate.array());
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor putStringSet(String str, Set set) {
            Set set2 = set;
            if (set == null) {
                ArraySet arraySet = new ArraySet();
                arraySet.add("__NULL__");
                set2 = arraySet;
            }
            ArrayList<byte[]> arrayList = new ArrayList(set2.size());
            int size = set2.size() * 4;
            Iterator it = set2.iterator();
            while (it.hasNext()) {
                byte[] bytes = ((String) it.next()).getBytes(StandardCharsets.UTF_8);
                arrayList.add(bytes);
                size += bytes.length;
            }
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(size + 4);
            byteBufferAllocate.putInt(EncryptedType.STRING_SET.a());
            for (byte[] bArr : arrayList) {
                byteBufferAllocate.putInt(bArr.length);
                byteBufferAllocate.put(bArr);
            }
            c(str, byteBufferAllocate.array());
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor remove(String str) {
            EncryptedSharedPreferences encryptedSharedPreferences = this.f19862a;
            encryptedSharedPreferences.getClass();
            if (EncryptedSharedPreferences.c(str)) {
                throw new SecurityException(d21.j(str, " is a reserved key for the encryption keyset."));
            }
            this.f19863b.remove(encryptedSharedPreferences.a(str));
            this.f19864c.add(str);
            return this;
        }
    }

    public enum EncryptedType {
        STRING(0),
        STRING_SET(1),
        INT(2),
        LONG(3),
        FLOAT(4),
        BOOLEAN(5);

        private final int mId;

        EncryptedType(int i2) {
            this.mId = i2;
        }

        public final int a() {
            return this.mId;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public enum PrefKeyEncryptionScheme {
        AES256_SIV;

        private final String mDeterministicAeadKeyTemplateName = "AES256_SIV";

        public final KeyTemplate a() {
            return KeyTemplates.a(this.mDeterministicAeadKeyTemplateName);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public enum PrefValueEncryptionScheme {
        AES256_GCM;

        private final String mAeadKeyTemplateName = "AES256_GCM";

        public final KeyTemplate a() {
            return KeyTemplates.a(this.mAeadKeyTemplateName);
        }
    }

    public EncryptedSharedPreferences(String str, SharedPreferences sharedPreferences, Aead aead, DeterministicAead deterministicAead) {
        this.d = str;
        this.f19857b = sharedPreferences;
        this.f19859e = aead;
        this.f19860f = deterministicAead;
    }

    public static boolean c(String str) {
        return "__androidx_security_crypto_encrypted_prefs_key_keyset__".equals(str) || "__androidx_security_crypto_encrypted_prefs_value_keyset__".equals(str);
    }

    public final String a(String str) {
        if (str == null) {
            str = "__NULL__";
        }
        try {
            try {
                return new String(Base64.b(this.f19860f.a(str.getBytes(StandardCharsets.UTF_8), this.d.getBytes())), "US-ASCII");
            } catch (UnsupportedEncodingException e2) {
                throw new AssertionError(e2);
            }
        } catch (GeneralSecurityException e3) {
            throw new SecurityException(tr.n(e3, new StringBuilder("Could not encrypt key. ")), e3);
        }
    }

    public final Object b(String str) {
        EncryptedType encryptedType;
        if (c(str)) {
            throw new SecurityException(d21.j(str, " is a reserved key for the encryption keyset."));
        }
        if (str == null) {
            str = "__NULL__";
        }
        try {
            String strA = a(str);
            String string = this.f19857b.getString(strA, null);
            if (string != null) {
                byte[] bArrA = Base64.a(string);
                Aead aead = this.f19859e;
                Charset charset = StandardCharsets.UTF_8;
                ByteBuffer byteBufferWrap = ByteBuffer.wrap(aead.decrypt(bArrA, strA.getBytes(charset)));
                byteBufferWrap.position(0);
                int i2 = byteBufferWrap.getInt();
                if (i2 == 0) {
                    encryptedType = EncryptedType.STRING;
                } else if (i2 == 1) {
                    encryptedType = EncryptedType.STRING_SET;
                } else if (i2 == 2) {
                    encryptedType = EncryptedType.INT;
                } else if (i2 == 3) {
                    encryptedType = EncryptedType.LONG;
                } else if (i2 != 4) {
                    encryptedType = i2 != 5 ? null : EncryptedType.BOOLEAN;
                } else {
                    encryptedType = EncryptedType.FLOAT;
                }
                if (encryptedType == null) {
                    throw new SecurityException("Unknown type ID for encrypted pref value: " + i2);
                }
                switch (AnonymousClass1.f19861a[encryptedType.ordinal()]) {
                    case 1:
                        int i3 = byteBufferWrap.getInt();
                        ByteBuffer byteBufferSlice = byteBufferWrap.slice();
                        byteBufferWrap.limit(i3);
                        String string2 = charset.decode(byteBufferSlice).toString();
                        if (!string2.equals("__NULL__")) {
                            return string2;
                        }
                        break;
                    case 2:
                        return Integer.valueOf(byteBufferWrap.getInt());
                    case 3:
                        return Long.valueOf(byteBufferWrap.getLong());
                    case 4:
                        return Float.valueOf(byteBufferWrap.getFloat());
                    case 5:
                        return Boolean.valueOf(byteBufferWrap.get() != 0);
                    case 6:
                        ArraySet arraySet = new ArraySet();
                        while (byteBufferWrap.hasRemaining()) {
                            int i4 = byteBufferWrap.getInt();
                            ByteBuffer byteBufferSlice2 = byteBufferWrap.slice();
                            byteBufferSlice2.limit(i4);
                            byteBufferWrap.position(byteBufferWrap.position() + i4);
                            arraySet.add(StandardCharsets.UTF_8.decode(byteBufferSlice2).toString());
                        }
                        if (arraySet.d != 1 || !"__NULL__".equals(arraySet.f3230c[0])) {
                            return arraySet;
                        }
                        break;
                        break;
                    default:
                        throw new SecurityException("Unhandled type for encrypted pref value: " + encryptedType);
                }
            }
            return null;
        } catch (GeneralSecurityException e2) {
            throw new SecurityException(tr.n(e2, new StringBuilder("Could not decrypt value. ")), e2);
        }
    }

    @Override // android.content.SharedPreferences
    public final boolean contains(String str) {
        if (c(str)) {
            throw new SecurityException(d21.j(str, " is a reserved key for the encryption keyset."));
        }
        return this.f19857b.contains(a(str));
    }

    @Override // android.content.SharedPreferences
    public final SharedPreferences.Editor edit() {
        return new Editor(this, this.f19857b.edit());
    }

    @Override // android.content.SharedPreferences
    public final Map getAll() {
        HashMap map = new HashMap();
        for (Map.Entry<String, ?> entry : this.f19857b.getAll().entrySet()) {
            if (!c(entry.getKey())) {
                try {
                    String str = new String(this.f19860f.b(Base64.a(entry.getKey()), this.d.getBytes()), StandardCharsets.UTF_8);
                    if (str.equals("__NULL__")) {
                        str = null;
                    }
                    map.put(str, b(str));
                } catch (GeneralSecurityException e2) {
                    throw new SecurityException(tr.n(e2, new StringBuilder("Could not decrypt key. ")), e2);
                }
            }
        }
        return map;
    }

    @Override // android.content.SharedPreferences
    public final boolean getBoolean(String str, boolean z) {
        Object objB = b(str);
        return objB instanceof Boolean ? ((Boolean) objB).booleanValue() : z;
    }

    @Override // android.content.SharedPreferences
    public final float getFloat(String str, float f2) {
        Object objB = b(str);
        return objB instanceof Float ? ((Float) objB).floatValue() : f2;
    }

    @Override // android.content.SharedPreferences
    public final int getInt(String str, int i2) {
        Object objB = b(str);
        return objB instanceof Integer ? ((Integer) objB).intValue() : i2;
    }

    @Override // android.content.SharedPreferences
    public final long getLong(String str, long j2) {
        Object objB = b(str);
        return objB instanceof Long ? ((Long) objB).longValue() : j2;
    }

    @Override // android.content.SharedPreferences
    public final String getString(String str, String str2) {
        Object objB = b(str);
        return objB instanceof String ? (String) objB : str2;
    }

    @Override // android.content.SharedPreferences
    public final Set getStringSet(String str, Set set) {
        Object objB = b(str);
        Set arraySet = objB instanceof Set ? (Set) objB : new ArraySet();
        return arraySet.size() > 0 ? arraySet : set;
    }

    @Override // android.content.SharedPreferences
    public final void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.f19858c.add(onSharedPreferenceChangeListener);
    }

    @Override // android.content.SharedPreferences
    public final void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.f19858c.remove(onSharedPreferenceChangeListener);
    }
}
