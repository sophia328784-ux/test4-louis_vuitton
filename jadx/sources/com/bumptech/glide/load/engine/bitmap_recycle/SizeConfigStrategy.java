package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import com.bumptech.glide.util.Util;
import defpackage.n00;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
public class SizeConfigStrategy implements LruPoolStrategy {
    public static final Bitmap.Config[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Bitmap.Config[] f24581e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Bitmap.Config[] f24582f;
    public static final Bitmap.Config[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Bitmap.Config[] f24583h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KeyPool f24584a = new KeyPool();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GroupedLinkedMap f24585b = new GroupedLinkedMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f24586c = new HashMap();

    /* JADX INFO: renamed from: com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f24587a;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            f24587a = iArr;
            try {
                iArr[Bitmap.Config.ARGB_8888.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f24587a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f24587a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f24587a[Bitmap.Config.ALPHA_8.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static final class Key implements Poolable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final KeyPool f24588a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f24589b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Bitmap.Config f24590c;

        public Key(KeyPool keyPool) {
            this.f24588a = keyPool;
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.Poolable
        public final void a() {
            this.f24588a.a(this);
        }

        public final boolean equals(Object obj) {
            if (obj instanceof Key) {
                Key key = (Key) obj;
                if (this.f24589b == key.f24589b && Util.b(this.f24590c, key.f24590c)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            int i2 = this.f24589b * 31;
            Bitmap.Config config = this.f24590c;
            return i2 + (config != null ? config.hashCode() : 0);
        }

        public final String toString() {
            return SizeConfigStrategy.c(this.f24589b, this.f24590c);
        }
    }

    public static class KeyPool extends BaseKeyPool<Key> {
        public final Poolable b() {
            return new Key(this);
        }
    }

    static {
        Bitmap.Config[] configArr = (Bitmap.Config[]) Arrays.copyOf(new Bitmap.Config[]{Bitmap.Config.ARGB_8888, null}, 3);
        configArr[configArr.length - 1] = Bitmap.Config.RGBA_F16;
        d = configArr;
        f24581e = configArr;
        f24582f = new Bitmap.Config[]{Bitmap.Config.RGB_565};
        g = new Bitmap.Config[]{Bitmap.Config.ARGB_4444};
        f24583h = new Bitmap.Config[]{Bitmap.Config.ALPHA_8};
    }

    public static String c(int i2, Bitmap.Config config) {
        return "[" + i2 + "](" + config + ")";
    }

    public final void a(Integer num, Bitmap bitmap) {
        NavigableMap navigableMapD = d(bitmap.getConfig());
        Integer num2 = (Integer) navigableMapD.get(num);
        if (num2 != null) {
            if (num2.intValue() == 1) {
                navigableMapD.remove(num);
                return;
            } else {
                navigableMapD.put(num, Integer.valueOf(num2.intValue() - 1));
                return;
            }
        }
        StringBuilder sb = new StringBuilder("Tried to decrement empty size, size: ");
        sb.append(num);
        String strC = c(Util.c(bitmap), bitmap.getConfig());
        sb.append(", removed: ");
        sb.append(strC);
        sb.append(", this: ");
        sb.append(this);
        throw new NullPointerException(sb.toString());
    }

    public final Bitmap b(int i2, int i3, Bitmap.Config config) {
        Bitmap.Config[] configArr;
        int iD = Util.d(config) * i2 * i3;
        KeyPool keyPool = this.f24584a;
        Poolable poolableB = (Poolable) keyPool.f24562a.poll();
        if (poolableB == null) {
            poolableB = keyPool.b();
        }
        Key key = (Key) poolableB;
        key.f24589b = iD;
        key.f24590c = config;
        if (Bitmap.Config.RGBA_F16.equals(config)) {
            configArr = f24581e;
        } else {
            int i4 = AnonymousClass1.f24587a[config.ordinal()];
            if (i4 == 1) {
                configArr = d;
            } else if (i4 == 2) {
                configArr = f24582f;
            } else if (i4 != 3) {
                configArr = i4 != 4 ? new Bitmap.Config[]{config} : f24583h;
            } else {
                configArr = g;
            }
        }
        for (Bitmap.Config config2 : configArr) {
            Integer num = (Integer) d(config2).ceilingKey(Integer.valueOf(iD));
            if (num != null && num.intValue() <= iD * 8) {
                if (num.intValue() == iD && (config2 != null ? config2.equals(config) : config == null)) {
                    break;
                    break;
                }
                keyPool.a(key);
                int iIntValue = num.intValue();
                Poolable poolableB2 = (Poolable) keyPool.f24562a.poll();
                if (poolableB2 == null) {
                    poolableB2 = keyPool.b();
                }
                key = (Key) poolableB2;
                key.f24589b = iIntValue;
                key.f24590c = config2;
                break;
            }
        }
        Bitmap bitmap = (Bitmap) this.f24585b.a(key);
        if (bitmap != null) {
            a(Integer.valueOf(key.f24589b), bitmap);
            bitmap.reconfigure(i2, i3, config);
        }
        return bitmap;
    }

    public final NavigableMap d(Bitmap.Config config) {
        HashMap map = this.f24586c;
        NavigableMap navigableMap = (NavigableMap) map.get(config);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        map.put(config, treeMap);
        return treeMap;
    }

    public final String e(int i2, int i3, Bitmap.Config config) {
        return c(Util.d(config) * i2 * i3, config);
    }

    public final String f(Bitmap bitmap) {
        return c(Util.c(bitmap), bitmap.getConfig());
    }

    public final void g(Bitmap bitmap) {
        int iC = Util.c(bitmap);
        Bitmap.Config config = bitmap.getConfig();
        KeyPool keyPool = this.f24584a;
        Poolable poolableB = (Poolable) keyPool.f24562a.poll();
        if (poolableB == null) {
            poolableB = keyPool.b();
        }
        Key key = (Key) poolableB;
        key.f24589b = iC;
        key.f24590c = config;
        this.f24585b.b(key, bitmap);
        NavigableMap navigableMapD = d(bitmap.getConfig());
        Integer num = (Integer) navigableMapD.get(Integer.valueOf(key.f24589b));
        navigableMapD.put(Integer.valueOf(key.f24589b), Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    public final String toString() {
        StringBuilder sbT = n00.t("SizeConfigStrategy{groupedMap=");
        sbT.append(this.f24585b);
        sbT.append(", sortedSizes=(");
        HashMap map = this.f24586c;
        for (Map.Entry entry : map.entrySet()) {
            sbT.append(entry.getKey());
            sbT.append('[');
            sbT.append(entry.getValue());
            sbT.append("], ");
        }
        if (!map.isEmpty()) {
            sbT.replace(sbT.length() - 2, sbT.length(), "");
        }
        sbT.append(")}");
        return sbT.toString();
    }
}
