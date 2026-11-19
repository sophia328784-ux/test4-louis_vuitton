package com.perfectcorp.perfectlib.makeupcam.camera;

import android.graphics.PointF;
import android.text.TextUtils;
import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.thirdparty.com.google.common.base.Predicates;
import com.perfectcorp.thirdparty.com.google.common.base.Strings;
import com.perfectcorp.thirdparty.com.google.common.collect.Collections2;
import com.perfectcorp.thirdparty.com.google.common.collect.FluentIterable;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.Lists;
import com.perfectcorp.thirdparty.com.google.gson.Gson;
import com.perfectcorp.thirdparty.com.google.gson.internal.y;
import defpackage.f7;
import defpackage.md;
import defpackage.p00;
import defpackage.r81;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class FunStickerTemplate {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final FunStickerTemplate f40650e = new FunStickerTemplate();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final List f40651f = ImmutableList.z(SupportedFeature.FACE_DISTORTION);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public transient List f40652a;
    private List<String> action_hint;
    private List<String> action_hint_image;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final transient ArrayList f40653b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final transient ArrayList f40654c = new ArrayList();
    private List<String> categories;
    public transient String d;
    private List<c> extra_event;
    private List<d> face_distortion;

    @Deprecated
    private List<e> face_sticker;
    private String guid;
    private boolean isValid;
    private boolean isValidated;

    @Deprecated
    private String look_guid;
    private List<f> multi_face_sticker;
    private List<g> scene_sticker;
    private String thumbnail;
    private int version;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class ActionHint {
        public static final ActionHint BLINK;
        public static final ActionHint MOUTH_OPEN;
        public static final ActionHint MULTIFACE;
        public static final ActionHint MULTIFACE3;
        public static final ActionHint NONE;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final /* synthetic */ ActionHint[] f40655a;

        static {
            ActionHint actionHint = new ActionHint("NONE", 0);
            NONE = actionHint;
            ActionHint actionHint2 = new ActionHint("MOUTH_OPEN", 1);
            MOUTH_OPEN = actionHint2;
            ActionHint actionHint3 = new ActionHint("MULTIFACE", 2);
            MULTIFACE = actionHint3;
            ActionHint actionHint4 = new ActionHint("MULTIFACE3", 3);
            MULTIFACE3 = actionHint4;
            ActionHint actionHint5 = new ActionHint("BLINK", 4);
            BLINK = actionHint5;
            f40655a = new ActionHint[]{actionHint, actionHint2, actionHint3, actionHint4, actionHint5};
        }

        public static ActionHint[] values() {
            return (ActionHint[]) f40655a.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class SupportedFeature {
        public static final SupportedFeature FACE_DISTORTION;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final SupportedFeature f40656a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final SupportedFeature f40657b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final /* synthetic */ SupportedFeature[] f40658c;

        static {
            SupportedFeature supportedFeature = new SupportedFeature("FACE_DISTORTION", 0);
            FACE_DISTORTION = supportedFeature;
            SupportedFeature supportedFeature2 = new SupportedFeature("EYE_BLINKING", 1);
            f40656a = supportedFeature2;
            SupportedFeature supportedFeature3 = new SupportedFeature("MOUTH", 2);
            f40657b = supportedFeature3;
            f40658c = new SupportedFeature[]{supportedFeature, supportedFeature2, supportedFeature3};
        }

        public static SupportedFeature[] a() {
            return (SupportedFeature[]) f40658c.clone();
        }
    }

    public static class b extends a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public transient int f40659a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public transient d f40660b;
        String trigger_event;

        /* JADX WARN: $VALUES field not found */
        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        public static final class a {
            public static final a ALWAYS_ON = new a("ALWAYS_ON", 0);
            public static final a MOUTH_OPENED_STATE_REPEAT = new a("MOUTH_OPENED_STATE_REPEAT", 1);
            public static final a MOUTH_OPENING_EVENT_ONCE = new a("MOUTH_OPENING_EVENT_ONCE", 2);
            public static final a MOUTH_CLOSED_STATE_REPEAT = new a("MOUTH_CLOSED_STATE_REPEAT", 3);
            public static final a MOUTH_CLOSING_EVENT_ONCE = new a("MOUTH_CLOSING_EVENT_ONCE", 4);
            public static final a EYE_BLINKING_EVENT_ONCE = new a("EYE_BLINKING_EVENT_ONCE", 5);
        }

        public b() {
            super(0);
            this.f40659a = -1;
        }

        public final int a() {
            int i2 = this.f40659a;
            if (i2 >= 0) {
                return i2;
            }
            int iOrdinal = ((a) FunStickerTemplate.d(this.trigger_event, a.ALWAYS_ON)).ordinal();
            this.f40659a = iOrdinal;
            return iOrdinal;
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public transient b f40661a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public transient a f40662b;
        String react;
        String trigger;

        /* JADX WARN: $VALUES field not found */
        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        public static final class a {
            public static final a NONE = new a("NONE", 0);
            public static final a RESET_LOOK = new a("RESET_LOOK", 1);
            public static final a SHIFT_LOOK = new a("SHIFT_LOOK", 2);
        }

        /* JADX WARN: $VALUES field not found */
        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        public static final class b {
            public static final b NONE = new b("NONE", 0);
            public static final b BY_MOUTH_OPEN = new b("BY_MOUTH_OPEN", 1);
            public static final b BY_EYE_BLINK = new b("BY_EYE_BLINK", 2);
        }
    }

    public static final class d extends a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final d f40663b = new d();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public transient boolean f40664a;
        String reference_sticker_name;

        public d() {
            super(0);
        }
    }

    public static final class e extends b {
        List<PointF> image_anchor_point;
        float model_depth_ratio;
        PointF model_offset;
        float model_scale_ratio;
    }

    public static final class f {
        int face_count;
        List<e> face_sticker;
        String look_guid;
    }

    public static final class g extends b {
        String align_mode;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public transient int f40665c = -1;
        int capInsetBottom;
        int capInsetLeft;
        int capInsetRight;
        int capInsetTop;

        /* JADX WARN: $VALUES field not found */
        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        public static final class a {
            public static final a ALIGN_STRETCH = new a("ALIGN_STRETCH", 0);
            public static final a ALIGN_TOP = new a("ALIGN_TOP", 1);
            public static final a ALIGN_BOTTOM = new a("ALIGN_BOTTOM", 2);
            public static final a ALIGN_CENTER = new a("ALIGN_CENTER", 3);
        }
    }

    public static List a(List list, List list2, ActionHint actionHint) {
        if (list2 != null) {
            return list2;
        }
        return list == null ? Collections.EMPTY_LIST : FluentIterable.n(list).r(new p00(actionHint, 0)).i(new f7(actionHint, 1)).o().p();
    }

    public static Enum d(String str, Enum r3) {
        try {
            return Enum.valueOf(r3.getClass(), str.toUpperCase(Locale.US));
        } catch (Throwable unused) {
            Log.g(5, "FunStickerTemplate", "The name doesn't exist in input enum!!! class=" + r3.getClass() + ", name=" + str);
            return r3;
        }
    }

    public static void f(Iterable iterable) {
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            if (TextUtils.isEmpty(((a) it.next()).file_name)) {
                r81.d("file_name is empty or null string.");
                return;
            }
        }
    }

    public static FunStickerTemplate r(String str) {
        int iOrdinal;
        List list = f40651f;
        try {
            FileInputStream fileInputStream = new FileInputStream(new File(str, "sticker_template.json"));
            Class<FunStickerTemplate> cls = FunStickerTemplate.class;
            Gson gson = GsonHelper.f39260a;
            InputStreamReader inputStreamReader = new InputStreamReader(fileInputStream, StandardCharsets.UTF_8);
            try {
                Gson gson2 = GsonHelper.f39260a;
                gson2.getClass();
                com.perfectcorp.thirdparty.com.google.gson.stream.a aVar = new com.perfectcorp.thirdparty.com.google.gson.stream.a(inputStreamReader);
                aVar.f42559c = false;
                Object objC = gson2.c(aVar, cls);
                Gson.f(objC, aVar);
                Class<FunStickerTemplate> cls2 = (Class) y.f42554a.get(cls);
                if (cls2 != null) {
                    cls = cls2;
                }
                FunStickerTemplate funStickerTemplateCast = cls.cast(objC);
                IO.b(inputStreamReader);
                FunStickerTemplate funStickerTemplate = funStickerTemplateCast;
                Objects.requireNonNull(funStickerTemplate, "parsed template is null!!! folder=" + str);
                Log.g(3, "FunStickerTemplate", "parseTemplate folder=" + str);
                funStickerTemplate.d = IO.d(str);
                IO.d(str);
                if (funStickerTemplate.version == 1) {
                    funStickerTemplate.version = 2;
                    funStickerTemplate.multi_face_sticker = new ArrayList();
                    f fVar = new f();
                    fVar.face_count = 1;
                    fVar.look_guid = funStickerTemplate.look_guid;
                    fVar.face_sticker = funStickerTemplate.face_sticker;
                    funStickerTemplate.multi_face_sticker.add(fVar);
                }
                funStickerTemplate.i();
                funStickerTemplate.scene_sticker = funStickerTemplate.scene_sticker == null ? Collections.EMPTY_LIST : new ArrayList<>(Collections2.a(funStickerTemplate.scene_sticker, Predicates.f()));
                funStickerTemplate.face_distortion = funStickerTemplate.face_distortion == null ? Collections.EMPTY_LIST : new ArrayList<>(Collections2.a(funStickerTemplate.face_distortion, Predicates.f()));
                funStickerTemplate.j();
                d dVarN = funStickerTemplate.n();
                ArrayList arrayList = funStickerTemplate.f40653b;
                int i2 = 1;
                for (f fVar2 : funStickerTemplate.multi_face_sticker) {
                    int i3 = fVar2.face_count;
                    if (i3 == 0) {
                        while (i2 > 0) {
                            arrayList.add(fVar2);
                            i2--;
                        }
                        i2 = 0;
                    } else {
                        while (i3 > 0 && i2 > 0) {
                            i2--;
                            arrayList.add(fVar2);
                            i3--;
                        }
                    }
                    if (i2 <= 0) {
                        break;
                    }
                }
                funStickerTemplate.b(dVarN);
                funStickerTemplate.extra_event = funStickerTemplate.extra_event == null ? Collections.EMPTY_LIST : new ArrayList<>(Collections2.a(funStickerTemplate.extra_event, Predicates.a(Predicates.f(), new u())));
                ArrayList arrayListA = Lists.a(new Integer[0]);
                Iterator it = ((ImmutableList) list).iterator();
                while (it.hasNext()) {
                    int i4 = j.f40904b[((SupportedFeature) it.next()).ordinal()];
                    if (i4 == 1) {
                        iOrdinal = b.a.EYE_BLINKING_EVENT_ONCE.ordinal();
                    } else if (i4 == 2) {
                        arrayListA.add(Integer.valueOf(b.a.MOUTH_CLOSED_STATE_REPEAT.ordinal()));
                        arrayListA.add(Integer.valueOf(b.a.MOUTH_CLOSING_EVENT_ONCE.ordinal()));
                        arrayListA.add(Integer.valueOf(b.a.MOUTH_OPENED_STATE_REPEAT.ordinal()));
                        iOrdinal = b.a.MOUTH_OPENING_EVENT_ONCE.ordinal();
                    } else if (i4 == 3) {
                        funStickerTemplate.e();
                    }
                    arrayListA.add(Integer.valueOf(iOrdinal));
                }
                if (!MoreCollections.a(arrayListA)) {
                    funStickerTemplate.c(arrayListA);
                }
                return funStickerTemplate;
            } catch (Throwable th) {
                IO.b(inputStreamReader);
                throw th;
            }
        } catch (Throwable th2) {
            Log.e("FunStickerTemplate", "parseTemplate folder=" + str, th2);
            throw th2;
        }
    }

    public final void b(d dVar) {
        ArrayList arrayList;
        d dVar2;
        Iterator it = this.f40653b.iterator();
        int i2 = 1;
        while (true) {
            boolean zHasNext = it.hasNext();
            arrayList = this.f40654c;
            if (!zHasNext) {
                break;
            }
            Iterator<e> it2 = ((f) it.next()).face_sticker.iterator();
            do {
                if (!it2.hasNext()) {
                    dVar2 = dVar;
                    break;
                }
                dVar2 = it2.next().f40660b;
            } while (dVar2 == null);
            arrayList.add(dVar2);
            i2--;
        }
        while (i2 > 0) {
            arrayList.add(d.f40663b);
            i2--;
        }
    }

    public final void c(ArrayList arrayList) {
        if (!MoreCollections.a(this.scene_sticker)) {
            for (g gVar : this.scene_sticker) {
                if (arrayList.contains(Integer.valueOf(gVar.a()))) {
                    gVar.f40659a = b.a.ALWAYS_ON.ordinal();
                }
            }
        }
        ArrayList arrayList2 = this.f40653b;
        if (MoreCollections.a(arrayList2)) {
            return;
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            List<e> list = ((f) it.next()).face_sticker;
            if (list == null) {
                list = Collections.EMPTY_LIST;
            }
            for (e eVar : list) {
                if (arrayList.contains(Integer.valueOf(eVar.a()))) {
                    eVar.f40659a = b.a.ALWAYS_ON.ordinal();
                }
            }
        }
    }

    public final void e() {
        ArrayList arrayList = this.f40654c;
        arrayList.clear();
        for (int i2 = 1; i2 > 0; i2--) {
            arrayList.add(d.f40663b);
        }
        ArrayList arrayList2 = this.f40653b;
        if (MoreCollections.a(arrayList2)) {
            return;
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            List<e> list = ((f) it.next()).face_sticker;
            if (list == null) {
                list = Collections.EMPTY_LIST;
            }
            Iterator<e> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next().f40660b = null;
            }
        }
    }

    public final List g() {
        List<g> list = this.scene_sticker;
        return list != null ? list : Collections.EMPTY_LIST;
    }

    public final List h() {
        List<c> list = this.extra_event;
        return list != null ? list : Collections.EMPTY_LIST;
    }

    public final void i() {
        String str;
        if (this.version == 2) {
            this.version = 3;
            List listA = a(this.action_hint, null, ActionHint.NONE);
            if (listA != null) {
                ArrayList arrayList = new ArrayList();
                Iterator it = listA.iterator();
                while (it.hasNext()) {
                    int i2 = j.f40903a[((ActionHint) it.next()).ordinal()];
                    if (i2 == 1) {
                        str = "multiface";
                    } else if (i2 == 2) {
                        str = "multiface3";
                    }
                    arrayList.add(str);
                }
                this.action_hint_image = arrayList.isEmpty() ? null : arrayList;
            }
        }
    }

    public final void j() {
        this.multi_face_sticker = this.multi_face_sticker == null ? Collections.EMPTY_LIST : new ArrayList<>(Collections2.a(this.multi_face_sticker, Predicates.f()));
        for (f fVar : this.multi_face_sticker) {
            fVar.face_sticker = fVar.face_sticker == null ? Collections.EMPTY_LIST : new ArrayList<>(Collections2.a(fVar.face_sticker, Predicates.f()));
            for (e eVar : fVar.face_sticker) {
                eVar.image_anchor_point = eVar.image_anchor_point == null ? Collections.EMPTY_LIST : new ArrayList<>(Collections2.a(eVar.image_anchor_point, Predicates.f()));
            }
        }
    }

    public final List k() {
        List listA = a(this.action_hint, this.f40652a, ActionHint.NONE);
        this.f40652a = listA;
        return listA;
    }

    public final String l() {
        return this.guid;
    }

    public final int m() {
        return this.version;
    }

    public final d n() {
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList(this.face_distortion);
        Iterator it = arrayList.iterator();
        while (true) {
            boolean z = false;
            if (!it.hasNext()) {
                break;
            }
            d dVar = (d) it.next();
            int i2 = 0;
            for (f fVar : this.multi_face_sticker) {
                if (!hashSet.contains(Integer.valueOf(i2))) {
                    for (b bVar : fVar.face_sticker) {
                        if (Objects.equals(dVar.reference_sticker_name, bVar.file_name)) {
                            bVar.f40660b = dVar;
                            hashSet.add(Integer.valueOf(i2));
                            z = true;
                            break;
                        }
                    }
                }
                i2++;
            }
            if (z) {
                it.remove();
            }
        }
        d dVar2 = d.f40663b;
        if (arrayList.isEmpty()) {
            return dVar2;
        }
        d dVar3 = (d) arrayList.get(0);
        dVar3.f40664a = true;
        return dVar3;
    }

    public final boolean o() {
        if (this == f40650e) {
            return true;
        }
        int i2 = this.version;
        return i2 > 0 && i2 <= 5;
    }

    public final boolean p() {
        boolean z;
        if (this.isValidated) {
            return this.isValid;
        }
        if (this != f40650e) {
            try {
                if (TextUtils.isEmpty(this.guid)) {
                    throw new NullPointerException("GUID is empty or null string.");
                }
                boolean zO = o();
                int i2 = this.version;
                if (!zO) {
                    throw new IllegalArgumentException(Strings.a("Unsupported version!!! version=%d, SUPPORTED_VERSION=%d", Integer.valueOf(i2), 5));
                }
                f(this.scene_sticker);
                q();
                z = true;
            } catch (Throwable th) {
                Log.i("FunStickerTemplate", "Template validate failed.", th);
                z = false;
            }
        } else {
            z = false;
        }
        this.isValid = z;
        this.isValidated = true;
        return z;
    }

    public final void q() {
        for (f fVar : this.f40653b) {
            if (fVar.face_count < 0) {
                md.n("face_count < 0");
                return;
            }
            f(fVar.face_sticker);
            Iterator<T> it = fVar.face_sticker.iterator();
            while (it.hasNext()) {
                Objects.requireNonNull(((e) it.next()).model_offset, "model_offset == null");
            }
        }
    }

    public final String toString() {
        return GsonHelper.f39260a.k(this);
    }

    public static class a {
        String file_name;

        private a() {
        }

        public /* synthetic */ a(int i2) {
            this();
        }
    }
}
