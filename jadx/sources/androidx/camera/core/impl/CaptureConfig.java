package androidx.camera.core.impl;

import android.util.ArrayMap;
import android.util.Range;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class CaptureConfig {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Config.Option f2265i = new AutoValue_Config_Option(Integer.TYPE, null, "camerax.core.captureConfig.rotation");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Config.Option f2266j = new AutoValue_Config_Option(Integer.class, null, "camerax.core.captureConfig.jpegQuality");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Config.Option f2267k = new AutoValue_Config_Option(Range.class, null, "camerax.core.captureConfig.resolvedFrameRate");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f2268a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final OptionsBundle f2269b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2270c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f2271e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f2272f;
    public final TagBundle g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CameraCaptureResult f2273h;

    public interface OptionUnpacker {
        void a(UseCaseConfig useCaseConfig, Builder builder);
    }

    public CaptureConfig(ArrayList arrayList, OptionsBundle optionsBundle, int i2, boolean z, ArrayList arrayList2, boolean z2, TagBundle tagBundle, CameraCaptureResult cameraCaptureResult) {
        this.f2268a = arrayList;
        this.f2269b = optionsBundle;
        this.f2270c = i2;
        this.f2271e = Collections.unmodifiableList(arrayList2);
        this.f2272f = z2;
        this.g = tagBundle;
        this.f2273h = cameraCaptureResult;
        this.d = z;
    }

    public final Range a() {
        Range range = (Range) this.f2269b.f(f2267k, StreamSpec.f2348a);
        Objects.requireNonNull(range);
        return range;
    }

    public final int b() {
        Object obj = this.g.f2362a.get("CAPTURE_CONFIG_ID_KEY");
        if (obj == null) {
            return -1;
        }
        return ((Integer) obj).intValue();
    }

    public final int c() {
        Integer num = (Integer) this.f2269b.f(UseCaseConfig.F, 0);
        Objects.requireNonNull(num);
        return num.intValue();
    }

    public final int d() {
        Integer num = (Integer) this.f2269b.f(UseCaseConfig.G, 0);
        Objects.requireNonNull(num);
        return num.intValue();
    }

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final HashSet f2274a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public MutableOptionsBundle f2275b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2276c;
        public boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final ArrayList f2277e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f2278f;
        public final MutableTagBundle g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public CameraCaptureResult f2279h;

        public Builder(CaptureConfig captureConfig) {
            HashSet hashSet = new HashSet();
            this.f2274a = hashSet;
            this.f2275b = MutableOptionsBundle.d0();
            this.f2276c = -1;
            this.d = false;
            ArrayList arrayList = new ArrayList();
            this.f2277e = arrayList;
            this.f2278f = false;
            this.g = new MutableTagBundle(new ArrayMap());
            hashSet.addAll(captureConfig.f2268a);
            this.f2275b = MutableOptionsBundle.e0(captureConfig.f2269b);
            this.f2276c = captureConfig.f2270c;
            arrayList.addAll(captureConfig.f2271e);
            this.f2278f = captureConfig.f2272f;
            TagBundle tagBundle = captureConfig.g;
            ArrayMap arrayMap = new ArrayMap();
            for (String str : tagBundle.f2362a.keySet()) {
                arrayMap.put(str, tagBundle.f2362a.get(str));
            }
            this.g = new MutableTagBundle(arrayMap);
            this.d = captureConfig.d;
        }

        public final void a(Collection collection) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                b((CameraCaptureCallback) it.next());
            }
        }

        public final void b(CameraCaptureCallback cameraCaptureCallback) {
            ArrayList arrayList = this.f2277e;
            if (arrayList.contains(cameraCaptureCallback)) {
                return;
            }
            arrayList.add(cameraCaptureCallback);
        }

        public final void c(Config config) {
            for (Config.Option option : config.d()) {
                Object objF = this.f2275b.f(option, null);
                Object objA = config.a(option);
                if (objF instanceof MultiValueSet) {
                    MultiValueSet multiValueSet = (MultiValueSet) objA;
                    multiValueSet.getClass();
                    ((MultiValueSet) objF).f2312a.addAll(Collections.unmodifiableList(new ArrayList(multiValueSet.f2312a)));
                } else {
                    if (objA instanceof MultiValueSet) {
                        objA = ((MultiValueSet) objA).clone();
                    }
                    this.f2275b.f0(option, config.g(option), objA);
                }
            }
        }

        public final void d(DeferrableSurface deferrableSurface) {
            this.f2274a.add(deferrableSurface);
        }

        public final CaptureConfig e() {
            ArrayList arrayList = new ArrayList(this.f2274a);
            OptionsBundle optionsBundleC0 = OptionsBundle.c0(this.f2275b);
            int i2 = this.f2276c;
            boolean z = this.d;
            ArrayList arrayList2 = new ArrayList(this.f2277e);
            boolean z2 = this.f2278f;
            TagBundle tagBundle = TagBundle.f2361b;
            ArrayMap arrayMap = new ArrayMap();
            MutableTagBundle mutableTagBundle = this.g;
            for (String str : mutableTagBundle.f2362a.keySet()) {
                arrayMap.put(str, mutableTagBundle.f2362a.get(str));
            }
            return new CaptureConfig(arrayList, optionsBundleC0, i2, z, arrayList2, z2, new TagBundle(arrayMap), this.f2279h);
        }

        public Builder() {
            this.f2274a = new HashSet();
            this.f2275b = MutableOptionsBundle.d0();
            this.f2276c = -1;
            this.d = false;
            this.f2277e = new ArrayList();
            this.f2278f = false;
            this.g = new MutableTagBundle(new ArrayMap());
        }
    }
}
