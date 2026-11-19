package com.perfectcorp.perfectlib.ph.template;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Color;
import android.graphics.Point;
import android.text.TextUtils;
import com.perfectcorp.common.debug.PerformanceCounter;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.makeupcam.template.ColorInfo;
import com.perfectcorp.perfectlib.makeupcam.template.LocalizedString;
import com.perfectcorp.perfectlib.makeupcam.template.TemplateConsts;
import com.perfectcorp.perfectlib.makeupcam.template.TemplatePaths;
import com.perfectcorp.perfectlib.ymk.Globals;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import com.perfectcorp.thirdparty.io.reactivex.Maybe;
import defpackage.w21;
import java.io.File;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.UUID;
import net.rtccloud.sdk.Call;
import org.json.JSONArray;
import org.json.JSONObject;
import org.w3c.dom.NodeList;

/* JADX INFO: loaded from: classes3.dex */
public abstract class TemplateUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f41580a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final PerformanceCounter f41581b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final PerformanceCounter f41582c;
    public static final PerformanceCounter d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final PerformanceCounter f41583e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final PerformanceCounter f41584f;
    public static final PerformanceCounter g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final PerformanceCounter f41585h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final PerformanceCounter f41586i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final PerformanceCounter f41587j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final PerformanceCounter f41588k;
    public static final PerformanceCounter l;
    public static final PerformanceCounter m;
    public static final PerformanceCounter n;
    public static final PerformanceCounter o;
    public static final PerformanceCounter p;
    public static final PerformanceCounter q;
    public static final PerformanceCounter r;
    public static final PerformanceCounter s;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f41589a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final EnumC0180a f41590b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final BeautyMode f41591c;
        public final YMKPrimitiveData.SourceType d;

        /* JADX WARN: $VALUES field not found */
        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.template.TemplateUtils$a$a, reason: collision with other inner class name */
        public static abstract class EnumC0180a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final EnumC0180a f41592a = new t();
        }

        public a(String str, EnumC0180a enumC0180a, BeautyMode beautyMode, YMKPrimitiveData.SourceType sourceType) {
            Objects.requireNonNull(str);
            this.f41589a = str;
            Objects.requireNonNull(enumC0180a);
            this.f41590b = enumC0180a;
            Objects.requireNonNull(beautyMode);
            this.f41591c = beautyMode;
            Objects.requireNonNull(sourceType);
            this.d = sourceType;
        }

        public final Maybe a(String str, NetworkTaskManager.TaskPriority taskPriority, DownloadTaskCancelable downloadTaskCancelable) {
            ((t) this.f41590b).getClass();
            return com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.j.a(ImmutableList.z(this.f41589a), str, this.f41591c, this.d, TemplateUtils.f41580a, taskPriority, downloadTaskCancelable).map(new o());
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Objects.equals(this.f41589a, aVar.f41589a) && this.f41590b == aVar.f41590b && this.f41591c == aVar.f41591c && this.d == aVar.d;
        }

        public final int hashCode() {
            return Arrays.hashCode(new Object[]{this.f41589a, this.f41590b, this.f41591c, this.d});
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final HashMap f41593a = new HashMap();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final HashMap f41594b = new HashMap();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final HashMap f41595c = new HashMap();
        public final ArrayList d = new ArrayList();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final ArrayList f41596e = new ArrayList();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final ArrayList f41597f = new ArrayList();
        public final ArrayList g = new ArrayList();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final ArrayList f41598h = new ArrayList();

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final ArrayList f41599i = new ArrayList();

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final ArrayList f41600j = new ArrayList();

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final ArrayList f41601k = new ArrayList();
        public final ArrayList l = new ArrayList();
        public final ArrayList m = new ArrayList();
        public final ArrayList n = new ArrayList();
        public final ArrayList o = new ArrayList();
        public final ArrayList p = new ArrayList();
        public final ArrayList q = new ArrayList();
        public final ArrayList r = new ArrayList();
        public final ArrayList s = new ArrayList();
        public final HashMap t = new HashMap();
        public final HashMap u = new HashMap();
        public final HashSet v = new HashSet();
        public String w;
    }

    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f41604a = "";

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f41605b = "";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public YMKPrimitiveData.SourceType f41606c = YMKPrimitiveData.SourceType.DEFAULT;
    }

    static {
        float fA = TemplateConsts.a("94.0", -1.0f);
        f41580a = fA;
        TemplateConsts.f40987a = fA;
        PerformanceCounter performanceCounter = PerformanceCounter.f39180b;
        f41581b = performanceCounter;
        f41582c = performanceCounter;
        d = performanceCounter;
        f41583e = performanceCounter;
        f41584f = performanceCounter;
        g = performanceCounter;
        f41585h = performanceCounter;
        f41586i = performanceCounter;
        f41587j = performanceCounter;
        f41588k = performanceCounter;
        l = performanceCounter;
        m = performanceCounter;
        n = performanceCounter;
        o = performanceCounter;
        p = performanceCounter;
        q = performanceCounter;
        r = performanceCounter;
        s = performanceCounter;
    }

    public static ArrayList A(String str) {
        YMKPrimitiveData.MakeupColor makeupColor;
        ArrayList<ColorInfo> arrayListA = com.perfectcorp.perfectlib.ph.database.ymk.color.a.a(YMKDatabase.b(), str);
        ArrayList arrayList = new ArrayList();
        for (ColorInfo colorInfo : arrayListA) {
            String str2 = "";
            int iB = TemplateConsts.b(-1, colorInfo.d);
            String str3 = colorInfo.f40933f;
            try {
                int iV = v(colorInfo.f40931c);
                JSONObject jSONObject = new JSONObject(str3);
                int iB2 = TemplateConsts.b(-1, jSONObject.optString("level_max"));
                int iB3 = TemplateConsts.b(-1, jSONObject.optString("level_default"));
                boolean zOptBoolean = jSONObject.optBoolean("is_shimmer", false);
                int iB4 = TemplateConsts.b(-1, jSONObject.optString("shimmer_intensity"));
                String strOptString = jSONObject.optString("engine_color", "");
                if (strOptString != null) {
                    str2 = strOptString;
                }
                String[] strArrSplit = str2.split(",");
                int[] iArr = new int[8];
                int i2 = 0;
                for (int i3 = 8; i2 < i3; i3 = 8) {
                    if (i2 < strArrSplit.length) {
                        String str4 = strArrSplit[i2];
                        if (str4 == null || str4.isEmpty()) {
                            iArr[i2] = -1;
                        } else {
                            iArr[i2] = Integer.parseInt(strArrSplit[i2]);
                        }
                    } else {
                        iArr[i2] = -1;
                    }
                    i2++;
                }
                try {
                    makeupColor = new YMKPrimitiveData.MakeupColor(iV, iB, colorInfo.f40929a, iB2, iB3, zOptBoolean, iB4, iArr, TemplateConsts.b(-1, jSONObject.optString("shine_intensity")), jSONObject.optString("hair_dye_mode"), TemplateConsts.b(-1000, jSONObject.optString("glow_intensity")), TemplateConsts.b(-1, jSONObject.optString("coverage_intensity")), TemplateConsts.b(-1000, jSONObject.optString("skin_smooth_intensity")), TemplateConsts.b(-1, jSONObject.optString("shimmer_density")), TemplateConsts.b(-1, jSONObject.optString("shimmer_granularity")), TemplateConsts.b(-1, jSONObject.optString("metallic_intensity")), TemplateConsts.b(-1, jSONObject.optString("shimmer_color")), TemplateConsts.b(-1, jSONObject.optString("color_intensity")), TemplateConsts.b(-1, jSONObject.optString("gloss")), TemplateConsts.b(-1, jSONObject.optString("transparency")), jSONObject.optString("inner_text"));
                } catch (Throwable th) {
                    th = th;
                    Log.j("TemplateUtils", th.getMessage(), th);
                    makeupColor = new YMKPrimitiveData.MakeupColor(0);
                }
            } catch (Throwable th2) {
                th = th2;
            }
            arrayList.add(makeupColor);
        }
        return arrayList;
    }

    public static YMKPrimitiveData.Look B(String str) {
        com.perfectcorp.perfectlib.ph.database.ymk.look.d dVarA;
        if (!TextUtils.isEmpty(str) && (dVarA = com.perfectcorp.perfectlib.ph.database.ymk.look.e.a(YMKDatabase.b(), str)) != null) {
            YMKPrimitiveData.SourceType sourceTypeValueOf = YMKPrimitiveData.SourceType.valueOf(dVarA.g);
            return new YMKPrimitiveData.Look(str, dVarA.f41206e, dVarA.f41204b, new LocalizedString(dVarA.f41205c), new LocalizedString(dVarA.d), sourceTypeValueOf, dVarA.m);
        }
        return YMKPrimitiveData.Look.f40780j;
    }

    public static float a(String str, float f2) {
        if (TextUtils.isEmpty(str)) {
            return f2;
        }
        try {
            return Float.parseFloat(str.trim());
        } catch (Throwable th) {
            Log.e("TemplateUtils", "[floatStringToFloat] " + str + " can't be parsed.", th);
            return f2;
        }
    }

    public static c addDefaultTemplates(SQLiteDatabase sQLiteDatabase) throws Throwable {
        YMKPrimitiveData.SourceType sourceType = YMKPrimitiveData.SourceType.DEFAULT;
        d dVar = new d();
        dVar.f41606c = sourceType;
        dVar.f41604a = "assets://makeup/";
        dVar.f41605b = "makeup_template.xml";
        c cVar = new c();
        new r(sQLiteDatabase, dVar, cVar).f(null, null);
        if (cVar.f41603b == null) {
            DBUtility.i(sQLiteDatabase, new w21(sQLiteDatabase, cVar, 5));
        } else {
            Log.e("TemplateUtils", "addMakeupTemplate, folderPath=assets://makeup/, sourceType=" + sourceType, cVar.f41603b);
        }
        Throwable th = cVar.f41603b;
        if (th == null) {
            return cVar;
        }
        throw th;
    }

    public static float b(String str, JSONObject jSONObject, float f2) {
        Object objOpt = jSONObject.opt(str);
        if (objOpt == null) {
            return f2;
        }
        if (objOpt instanceof String) {
            return a((String) objOpt, f2);
        }
        Log.d("TemplateUtils", "[floatStringToFloat] " + objOpt + " is not string. fieldName=" + str);
        return f2;
    }

    /* JADX WARN: Code duplicated, block: B:138:0x03ca A[PHI: r21
      0x03ca: PHI (r21v8 com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData$Mask$EyeShadowSide) = 
      (r21v6 com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData$Mask$EyeShadowSide)
      (r21v7 com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData$Mask$EyeShadowSide)
     binds: [B:137:0x03c8, B:140:0x03d9] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 3 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 4 */
    public static YMKPrimitiveData.Mask c(com.perfectcorp.perfectlib.ph.template.c cVar) {
        int iOptInt;
        int iOptInt2;
        int iOptInt3;
        int iOptInt4;
        int iOptInt5;
        int iOptInt6;
        int i2;
        int iOptInt7;
        String strB;
        String str;
        String strOptString;
        String strOptString2;
        String strOptString3;
        String strOptString4;
        String str2;
        String strB2;
        String strB3;
        String strB4;
        String strOptString5;
        boolean z;
        boolean zEquals;
        boolean z2;
        boolean zOptBoolean;
        boolean z3;
        String str3;
        String str4;
        String str5;
        boolean z4;
        boolean z5;
        boolean z6;
        int i3;
        String str6;
        String str7;
        Point point;
        int i4;
        int i5;
        YMKPrimitiveData.Mask.Position position;
        String str8;
        int i6;
        int i7;
        String str9;
        int i8;
        int i9;
        String str10;
        String str11;
        int i10;
        String str12;
        String str13;
        Point point2;
        String str14;
        int i11;
        int i12;
        String strB5;
        String str15 = cVar.f41610a;
        List list = cVar.f41612c;
        String str16 = !list.isEmpty() ? (String) list.get(0) : "";
        String str17 = cVar.d;
        YMKPrimitiveData.Mask.Position position2 = YMKPrimitiveData.Mask.Position.NONE;
        Point point3 = TemplateConsts.f40988b;
        Point point4 = new Point(point3);
        Point point5 = new Point(point3);
        Point point6 = new Point(point3);
        Point point7 = new Point(point3);
        YMKPrimitiveData.Mask.EyeShadowSide eyeShadowSide = YMKPrimitiveData.Mask.EyeShadowSide.BOTH;
        String str18 = str16;
        Point point8 = new Point(point3);
        String strOptString6 = "";
        Point point9 = new Point(point3);
        YMKPrimitiveData.Mask.Position position3 = position2;
        Point point10 = new Point(point3);
        Point point11 = new Point(point3);
        Point point12 = new Point(point3);
        Point point13 = new Point(point3);
        Point point14 = new Point(point3);
        Point point15 = new Point(point3);
        Point point16 = new Point(point3);
        Point point17 = new Point(point3);
        Point point18 = new Point(point3);
        Point point19 = new Point(point3);
        Point point20 = new Point(point3);
        Point point21 = new Point(point3);
        Point point22 = new Point(point3);
        Point point23 = new Point(point3);
        Point point24 = new Point(point3);
        Point point25 = new Point(point3);
        Point point26 = new Point(point3);
        List list2 = cVar.f41613e;
        String str19 = !list2.isEmpty() ? (String) list2.get(0) : strOptString6;
        String str20 = cVar.f41614f;
        int iIntValue = Integer.valueOf(cVar.f41611b).intValue();
        String strA = cVar.a();
        List list3 = cVar.f41615h;
        String str21 = !list3.isEmpty() ? (String) list3.get(0) : strOptString6;
        int i13 = cVar.f41616i;
        Point point27 = new Point(point3);
        Point point28 = new Point(point3);
        Point point29 = new Point(point3);
        Point point30 = new Point(point3);
        Point point31 = new Point(point3);
        Point point32 = new Point(point3);
        Point point33 = new Point(point3);
        Point point34 = new Point(point3);
        Point point35 = new Point(point3);
        try {
            JSONObject jSONObject = new JSONObject(str17);
            String strOptString7 = jSONObject.optString("position");
            String strOptString8 = jSONObject.optString("eyeshadowside");
            strB2 = TemplatePaths.b(jSONObject.optJSONArray("shapesrc"));
            try {
                strB3 = TemplatePaths.b(jSONObject.optJSONArray("imagesrc"));
                try {
                    strB4 = TemplatePaths.b(jSONObject.optJSONArray("secondsrc"));
                    try {
                        i(point4, jSONObject, "eyeleft");
                        i(point5, jSONObject, "eyetop");
                        i(point6, jSONObject, "eyeright");
                        i(point7, jSONObject, "eyebottom");
                        i(point8, jSONObject, "browhead");
                        i(point9, jSONObject, "browtop");
                        i(point10, jSONObject, "browtail");
                        i(point11, jSONObject, "basicbrowhead");
                        i(point12, jSONObject, "basicbrowtop");
                        i(point13, jSONObject, "basicbrowtail");
                        i(point14, jSONObject, "basiceyehead");
                        point11 = point11;
                        try {
                            i(point15, jSONObject, "basiceyetop");
                            point15 = point15;
                            try {
                                i(point16, jSONObject, "basiceyetail");
                                point16 = point16;
                                try {
                                    i(point17, jSONObject, "modelanchorleft");
                                    point17 = point17;
                                    try {
                                        i(point18, jSONObject, "modelanchorright");
                                        point18 = point18;
                                        try {
                                            i(point19, jSONObject, "modelanchorlefttop");
                                            point19 = point19;
                                            try {
                                                i(point20, jSONObject, "modelanchorleftbottom");
                                                point20 = point20;
                                                try {
                                                    i(point21, jSONObject, "modelanchorrighttop");
                                                    point21 = point21;
                                                    try {
                                                        i(point22, jSONObject, "modelanchorrightbottom");
                                                        point22 = point22;
                                                        try {
                                                            i(point23, jSONObject, "modelanchorlefteye");
                                                            point23 = point23;
                                                            try {
                                                                i(point24, jSONObject, "modelanchorrighteye");
                                                                point24 = point24;
                                                                try {
                                                                    i(point25, jSONObject, "modelanchorleftface");
                                                                    point25 = point25;
                                                                    try {
                                                                        i(point26, jSONObject, "modelanchorrightface");
                                                                        i(point27, jSONObject, "browhead3d");
                                                                        point26 = point26;
                                                                        try {
                                                                            i(point28, jSONObject, "browtop3d");
                                                                            point28 = point28;
                                                                            try {
                                                                                i(point29, jSONObject, "browtail3d");
                                                                                point29 = point29;
                                                                                i11 = -1000;
                                                                                try {
                                                                                    iOptInt = jSONObject.optInt("browcurvature", -1000);
                                                                                    point12 = point12;
                                                                                    try {
                                                                                        iOptInt3 = jSONObject.optInt("browthickness", -1000);
                                                                                        try {
                                                                                            iOptInt4 = jSONObject.optInt("browpositionx", -1000);
                                                                                            try {
                                                                                                iOptInt5 = jSONObject.optInt("browpositiony", -1000);
                                                                                                i12 = -1;
                                                                                                try {
                                                                                                    int iOptInt8 = jSONObject.optInt("browdefinition", -1);
                                                                                                    try {
                                                                                                        iOptInt7 = jSONObject.optInt("oversizedratio", -1);
                                                                                                        try {
                                                                                                            iOptInt2 = jSONObject.optInt("browheadlocation", -1000);
                                                                                                            try {
                                                                                                                iOptInt6 = jSONObject.optInt("browtaillocation", -1000);
                                                                                                                try {
                                                                                                                    i(point30, jSONObject, "upperhead3d");
                                                                                                                    point30 = point30;
                                                                                                                    try {
                                                                                                                        i(point31, jSONObject, "uppermiddle3d");
                                                                                                                        point31 = point31;
                                                                                                                        try {
                                                                                                                            i(point32, jSONObject, "uppertail3d");
                                                                                                                            point32 = point32;
                                                                                                                            try {
                                                                                                                                i(point33, jSONObject, "lowerhead3d");
                                                                                                                                point33 = point33;
                                                                                                                                try {
                                                                                                                                    i(point34, jSONObject, "lowermiddle3d");
                                                                                                                                    i(point35, jSONObject, "lowertail3d");
                                                                                                                                    JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("feathersrc3d");
                                                                                                                                    if (jSONArrayOptJSONArray != null) {
                                                                                                                                        try {
                                                                                                                                            strB5 = TemplatePaths.b(jSONArrayOptJSONArray);
                                                                                                                                        } catch (Throwable th) {
                                                                                                                                            th = th;
                                                                                                                                            i2 = iOptInt8;
                                                                                                                                            point34 = point34;
                                                                                                                                            iOptInt = iOptInt;
                                                                                                                                            strB = strOptString6;
                                                                                                                                            str = strB;
                                                                                                                                            strOptString = str;
                                                                                                                                            strOptString2 = strOptString;
                                                                                                                                            strOptString3 = strOptString2;
                                                                                                                                            strOptString4 = strOptString3;
                                                                                                                                            str2 = strOptString4;
                                                                                                                                            strOptString5 = str2;
                                                                                                                                            z = false;
                                                                                                                                            zEquals = false;
                                                                                                                                            z2 = false;
                                                                                                                                            zOptBoolean = false;
                                                                                                                                            Log.j("TemplateUtils", th.getMessage(), th);
                                                                                                                                            z3 = z;
                                                                                                                                            str3 = str;
                                                                                                                                            str4 = strOptString6;
                                                                                                                                            str5 = strB2;
                                                                                                                                            z4 = z2;
                                                                                                                                            z5 = zOptBoolean;
                                                                                                                                            z6 = zEquals;
                                                                                                                                            i3 = iOptInt2;
                                                                                                                                            str6 = strB;
                                                                                                                                            str7 = strOptString2;
                                                                                                                                            point = point12;
                                                                                                                                            i4 = iOptInt3;
                                                                                                                                            i5 = iOptInt;
                                                                                                                                            position = position3;
                                                                                                                                            str8 = strB4;
                                                                                                                                            i6 = iOptInt4;
                                                                                                                                            i7 = i2;
                                                                                                                                            str9 = strOptString4;
                                                                                                                                            i8 = iOptInt5;
                                                                                                                                            i9 = iOptInt7;
                                                                                                                                            str10 = strOptString5;
                                                                                                                                            str11 = strB3;
                                                                                                                                            i10 = iOptInt6;
                                                                                                                                            str12 = strOptString;
                                                                                                                                            str13 = str2;
                                                                                                                                            point2 = point15;
                                                                                                                                            str14 = strOptString3;
                                                                                                                                            return new YMKPrimitiveData.Mask(str15, str18, str5, str11, str8, position, point4, point5, point6, point7, eyeShadowSide, point8, point9, point10, point11, point, point13, point14, point2, point16, point17, point18, point19, point20, point21, point22, str4, iIntValue, str19, str20, point23, point24, point25, point26, str14, strA, str7, str12, str21, i13, str6, point27, point28, point29, i6, i8, i4, i5, i7, i9, point30, point31, point32, point33, point34, point35, str13, z6, z4, i3, i10, str9, z5, str10, str3, z3);
                                                                                                                                        }
                                                                                                                                    } else {
                                                                                                                                        strB5 = jSONObject.optString("feathersrc3d");
                                                                                                                                    }
                                                                                                                                    point34 = point34;
                                                                                                                                    try {
                                                                                                                                        str2 = strB5;
                                                                                                                                        try {
                                                                                                                                            zEquals = "1".equals(jSONObject.optString("browgoldenratio"));
                                                                                                                                            try {
                                                                                                                                                boolean zEquals2 = "1".equals(jSONObject.optString("browmatchthickness"));
                                                                                                                                                try {
                                                                                                                                                    strB = TemplatePaths.b(jSONObject.optJSONArray("shapesrc3d"));
                                                                                                                                                    z2 = zEquals2;
                                                                                                                                                    try {
                                                                                                                                                        String strOptString9 = jSONObject.optString("eyewearwidth");
                                                                                                                                                        String str22 = "left_glpf_path";
                                                                                                                                                        try {
                                                                                                                                                            if (TextUtils.isEmpty(jSONObject.optString(str22))) {
                                                                                                                                                                str22 = "left_obc_path";
                                                                                                                                                                if (TextUtils.isEmpty(jSONObject.optString(str22))) {
                                                                                                                                                                    str22 = "left_obb_path";
                                                                                                                                                                }
                                                                                                                                                            }
                                                                                                                                                            strOptString2 = jSONObject.optString(str22);
                                                                                                                                                            String str23 = "right_glpf_path";
                                                                                                                                                            try {
                                                                                                                                                                if (TextUtils.isEmpty(jSONObject.optString(str23))) {
                                                                                                                                                                    str23 = "right_obc_path";
                                                                                                                                                                    if (TextUtils.isEmpty(jSONObject.optString(str23))) {
                                                                                                                                                                        str23 = "right_obb_path";
                                                                                                                                                                    }
                                                                                                                                                                }
                                                                                                                                                                strOptString = jSONObject.optString(str23);
                                                                                                                                                                try {
                                                                                                                                                                    strOptString3 = jSONObject.optString("wigshadowstrength");
                                                                                                                                                                    try {
                                                                                                                                                                        strOptString4 = jSONObject.optString("object_distance_ratio");
                                                                                                                                                                        try {
                                                                                                                                                                            zOptBoolean = jSONObject.optBoolean("is_rigid_body");
                                                                                                                                                                            try {
                                                                                                                                                                                strOptString5 = jSONObject.optString("object_distance_ratio_back");
                                                                                                                                                                                try {
                                                                                                                                                                                    strOptString6 = jSONObject.optString("object_distance_ratio_palm");
                                                                                                                                                                                    boolean zOptBoolean2 = jSONObject.optBoolean("adaptive_rotate");
                                                                                                                                                                                    try {
                                                                                                                                                                                        YMKPrimitiveData.Mask.Position positionA = YMKPrimitiveData.Mask.a(strOptString7);
                                                                                                                                                                                        try {
                                                                                                                                                                                            if (!strOptString8.equalsIgnoreCase(eyeShadowSide.name())) {
                                                                                                                                                                                                YMKPrimitiveData.Mask.EyeShadowSide eyeShadowSide2 = YMKPrimitiveData.Mask.EyeShadowSide.LEFT;
                                                                                                                                                                                                if (strOptString8.equalsIgnoreCase(eyeShadowSide2.name())) {
                                                                                                                                                                                                    eyeShadowSide = eyeShadowSide2;
                                                                                                                                                                                                } else {
                                                                                                                                                                                                    eyeShadowSide2 = YMKPrimitiveData.Mask.EyeShadowSide.RIGHT;
                                                                                                                                                                                                    if (strOptString8.equalsIgnoreCase(eyeShadowSide2.name())) {
                                                                                                                                                                                                        eyeShadowSide = eyeShadowSide2;
                                                                                                                                                                                                    }
                                                                                                                                                                                                }
                                                                                                                                                                                            }
                                                                                                                                                                                            z3 = zOptBoolean2;
                                                                                                                                                                                            position = positionA;
                                                                                                                                                                                            str3 = strOptString6;
                                                                                                                                                                                            str8 = strB4;
                                                                                                                                                                                            i6 = iOptInt4;
                                                                                                                                                                                            str4 = strOptString9;
                                                                                                                                                                                            z5 = zOptBoolean;
                                                                                                                                                                                            i7 = iOptInt8;
                                                                                                                                                                                            i3 = iOptInt2;
                                                                                                                                                                                            z4 = z2;
                                                                                                                                                                                            str7 = strOptString2;
                                                                                                                                                                                            z6 = zEquals;
                                                                                                                                                                                            point = point12;
                                                                                                                                                                                            i4 = iOptInt3;
                                                                                                                                                                                            i5 = iOptInt;
                                                                                                                                                                                            str5 = strB2;
                                                                                                                                                                                            str6 = strB;
                                                                                                                                                                                            str12 = strOptString;
                                                                                                                                                                                            str9 = strOptString4;
                                                                                                                                                                                            str10 = strOptString5;
                                                                                                                                                                                            str11 = strB3;
                                                                                                                                                                                            i10 = iOptInt6;
                                                                                                                                                                                            str13 = str2;
                                                                                                                                                                                            point2 = point15;
                                                                                                                                                                                            str14 = strOptString3;
                                                                                                                                                                                            i8 = iOptInt5;
                                                                                                                                                                                            i9 = iOptInt7;
                                                                                                                                                                                        } catch (Throwable th2) {
                                                                                                                                                                                            th = th2;
                                                                                                                                                                                            position3 = positionA;
                                                                                                                                                                                            str = strOptString6;
                                                                                                                                                                                            zEquals = zEquals;
                                                                                                                                                                                            strOptString6 = strOptString9;
                                                                                                                                                                                            i2 = iOptInt8;
                                                                                                                                                                                            z = zOptBoolean2;
                                                                                                                                                                                            Log.j("TemplateUtils", th.getMessage(), th);
                                                                                                                                                                                            z3 = z;
                                                                                                                                                                                            str3 = str;
                                                                                                                                                                                            str4 = strOptString6;
                                                                                                                                                                                            str5 = strB2;
                                                                                                                                                                                            z4 = z2;
                                                                                                                                                                                            z5 = zOptBoolean;
                                                                                                                                                                                            z6 = zEquals;
                                                                                                                                                                                            i3 = iOptInt2;
                                                                                                                                                                                            str6 = strB;
                                                                                                                                                                                            str7 = strOptString2;
                                                                                                                                                                                            point = point12;
                                                                                                                                                                                            i4 = iOptInt3;
                                                                                                                                                                                            i5 = iOptInt;
                                                                                                                                                                                            position = position3;
                                                                                                                                                                                            str8 = strB4;
                                                                                                                                                                                            i6 = iOptInt4;
                                                                                                                                                                                            i7 = i2;
                                                                                                                                                                                            str9 = strOptString4;
                                                                                                                                                                                            i8 = iOptInt5;
                                                                                                                                                                                            i9 = iOptInt7;
                                                                                                                                                                                            str10 = strOptString5;
                                                                                                                                                                                            str11 = strB3;
                                                                                                                                                                                            i10 = iOptInt6;
                                                                                                                                                                                            str12 = strOptString;
                                                                                                                                                                                            str13 = str2;
                                                                                                                                                                                            point2 = point15;
                                                                                                                                                                                            str14 = strOptString3;
                                                                                                                                                                                        }
                                                                                                                                                                                    } catch (Throwable th3) {
                                                                                                                                                                                        th = th3;
                                                                                                                                                                                    }
                                                                                                                                                                                } catch (Throwable th4) {
                                                                                                                                                                                    th = th4;
                                                                                                                                                                                    str = strOptString6;
                                                                                                                                                                                    zEquals = zEquals;
                                                                                                                                                                                    strOptString6 = strOptString9;
                                                                                                                                                                                    i2 = iOptInt8;
                                                                                                                                                                                    z = false;
                                                                                                                                                                                    Log.j("TemplateUtils", th.getMessage(), th);
                                                                                                                                                                                    z3 = z;
                                                                                                                                                                                    str3 = str;
                                                                                                                                                                                    str4 = strOptString6;
                                                                                                                                                                                    str5 = strB2;
                                                                                                                                                                                    z4 = z2;
                                                                                                                                                                                    z5 = zOptBoolean;
                                                                                                                                                                                    z6 = zEquals;
                                                                                                                                                                                    i3 = iOptInt2;
                                                                                                                                                                                    str6 = strB;
                                                                                                                                                                                    str7 = strOptString2;
                                                                                                                                                                                    point = point12;
                                                                                                                                                                                    i4 = iOptInt3;
                                                                                                                                                                                    i5 = iOptInt;
                                                                                                                                                                                    position = position3;
                                                                                                                                                                                    str8 = strB4;
                                                                                                                                                                                    i6 = iOptInt4;
                                                                                                                                                                                    i7 = i2;
                                                                                                                                                                                    str9 = strOptString4;
                                                                                                                                                                                    i8 = iOptInt5;
                                                                                                                                                                                    i9 = iOptInt7;
                                                                                                                                                                                    str10 = strOptString5;
                                                                                                                                                                                    str11 = strB3;
                                                                                                                                                                                    i10 = iOptInt6;
                                                                                                                                                                                    str12 = strOptString;
                                                                                                                                                                                    str13 = str2;
                                                                                                                                                                                    point2 = point15;
                                                                                                                                                                                    str14 = strOptString3;
                                                                                                                                                                                    return new YMKPrimitiveData.Mask(str15, str18, str5, str11, str8, position, point4, point5, point6, point7, eyeShadowSide, point8, point9, point10, point11, point, point13, point14, point2, point16, point17, point18, point19, point20, point21, point22, str4, iIntValue, str19, str20, point23, point24, point25, point26, str14, strA, str7, str12, str21, i13, str6, point27, point28, point29, i6, i8, i4, i5, i7, i9, point30, point31, point32, point33, point34, point35, str13, z6, z4, i3, i10, str9, z5, str10, str3, z3);
                                                                                                                                                                                }
                                                                                                                                                                            } catch (Throwable th5) {
                                                                                                                                                                                th = th5;
                                                                                                                                                                                str = strOptString6;
                                                                                                                                                                                strOptString5 = str;
                                                                                                                                                                            }
                                                                                                                                                                        } catch (Throwable th6) {
                                                                                                                                                                            th = th6;
                                                                                                                                                                            iOptInt = iOptInt;
                                                                                                                                                                            str = strOptString6;
                                                                                                                                                                            strOptString5 = str;
                                                                                                                                                                            strOptString6 = strOptString9;
                                                                                                                                                                            zOptBoolean = false;
                                                                                                                                                                            i2 = iOptInt8;
                                                                                                                                                                            z = false;
                                                                                                                                                                            Log.j("TemplateUtils", th.getMessage(), th);
                                                                                                                                                                            z3 = z;
                                                                                                                                                                            str3 = str;
                                                                                                                                                                            str4 = strOptString6;
                                                                                                                                                                            str5 = strB2;
                                                                                                                                                                            z4 = z2;
                                                                                                                                                                            z5 = zOptBoolean;
                                                                                                                                                                            z6 = zEquals;
                                                                                                                                                                            i3 = iOptInt2;
                                                                                                                                                                            str6 = strB;
                                                                                                                                                                            str7 = strOptString2;
                                                                                                                                                                            point = point12;
                                                                                                                                                                            i4 = iOptInt3;
                                                                                                                                                                            i5 = iOptInt;
                                                                                                                                                                            position = position3;
                                                                                                                                                                            str8 = strB4;
                                                                                                                                                                            i6 = iOptInt4;
                                                                                                                                                                            i7 = i2;
                                                                                                                                                                            str9 = strOptString4;
                                                                                                                                                                            i8 = iOptInt5;
                                                                                                                                                                            i9 = iOptInt7;
                                                                                                                                                                            str10 = strOptString5;
                                                                                                                                                                            str11 = strB3;
                                                                                                                                                                            i10 = iOptInt6;
                                                                                                                                                                            str12 = strOptString;
                                                                                                                                                                            str13 = str2;
                                                                                                                                                                            point2 = point15;
                                                                                                                                                                            str14 = strOptString3;
                                                                                                                                                                            return new YMKPrimitiveData.Mask(str15, str18, str5, str11, str8, position, point4, point5, point6, point7, eyeShadowSide, point8, point9, point10, point11, point, point13, point14, point2, point16, point17, point18, point19, point20, point21, point22, str4, iIntValue, str19, str20, point23, point24, point25, point26, str14, strA, str7, str12, str21, i13, str6, point27, point28, point29, i6, i8, i4, i5, i7, i9, point30, point31, point32, point33, point34, point35, str13, z6, z4, i3, i10, str9, z5, str10, str3, z3);
                                                                                                                                                                        }
                                                                                                                                                                    } catch (Throwable th7) {
                                                                                                                                                                        th = th7;
                                                                                                                                                                        iOptInt = iOptInt;
                                                                                                                                                                        str = strOptString6;
                                                                                                                                                                        strOptString4 = str;
                                                                                                                                                                        strOptString5 = strOptString4;
                                                                                                                                                                        strOptString6 = strOptString9;
                                                                                                                                                                        zOptBoolean = false;
                                                                                                                                                                        i2 = iOptInt8;
                                                                                                                                                                        z = false;
                                                                                                                                                                        Log.j("TemplateUtils", th.getMessage(), th);
                                                                                                                                                                        z3 = z;
                                                                                                                                                                        str3 = str;
                                                                                                                                                                        str4 = strOptString6;
                                                                                                                                                                        str5 = strB2;
                                                                                                                                                                        z4 = z2;
                                                                                                                                                                        z5 = zOptBoolean;
                                                                                                                                                                        z6 = zEquals;
                                                                                                                                                                        i3 = iOptInt2;
                                                                                                                                                                        str6 = strB;
                                                                                                                                                                        str7 = strOptString2;
                                                                                                                                                                        point = point12;
                                                                                                                                                                        i4 = iOptInt3;
                                                                                                                                                                        i5 = iOptInt;
                                                                                                                                                                        position = position3;
                                                                                                                                                                        str8 = strB4;
                                                                                                                                                                        i6 = iOptInt4;
                                                                                                                                                                        i7 = i2;
                                                                                                                                                                        str9 = strOptString4;
                                                                                                                                                                        i8 = iOptInt5;
                                                                                                                                                                        i9 = iOptInt7;
                                                                                                                                                                        str10 = strOptString5;
                                                                                                                                                                        str11 = strB3;
                                                                                                                                                                        i10 = iOptInt6;
                                                                                                                                                                        str12 = strOptString;
                                                                                                                                                                        str13 = str2;
                                                                                                                                                                        point2 = point15;
                                                                                                                                                                        str14 = strOptString3;
                                                                                                                                                                        return new YMKPrimitiveData.Mask(str15, str18, str5, str11, str8, position, point4, point5, point6, point7, eyeShadowSide, point8, point9, point10, point11, point, point13, point14, point2, point16, point17, point18, point19, point20, point21, point22, str4, iIntValue, str19, str20, point23, point24, point25, point26, str14, strA, str7, str12, str21, i13, str6, point27, point28, point29, i6, i8, i4, i5, i7, i9, point30, point31, point32, point33, point34, point35, str13, z6, z4, i3, i10, str9, z5, str10, str3, z3);
                                                                                                                                                                    }
                                                                                                                                                                } catch (Throwable th8) {
                                                                                                                                                                    th = th8;
                                                                                                                                                                    str = strOptString6;
                                                                                                                                                                    strOptString3 = str;
                                                                                                                                                                    strOptString4 = strOptString3;
                                                                                                                                                                    strOptString5 = strOptString4;
                                                                                                                                                                    strOptString6 = strOptString9;
                                                                                                                                                                    zOptBoolean = false;
                                                                                                                                                                    i2 = iOptInt8;
                                                                                                                                                                    z = false;
                                                                                                                                                                    Log.j("TemplateUtils", th.getMessage(), th);
                                                                                                                                                                    z3 = z;
                                                                                                                                                                    str3 = str;
                                                                                                                                                                    str4 = strOptString6;
                                                                                                                                                                    str5 = strB2;
                                                                                                                                                                    z4 = z2;
                                                                                                                                                                    z5 = zOptBoolean;
                                                                                                                                                                    z6 = zEquals;
                                                                                                                                                                    i3 = iOptInt2;
                                                                                                                                                                    str6 = strB;
                                                                                                                                                                    str7 = strOptString2;
                                                                                                                                                                    point = point12;
                                                                                                                                                                    i4 = iOptInt3;
                                                                                                                                                                    i5 = iOptInt;
                                                                                                                                                                    position = position3;
                                                                                                                                                                    str8 = strB4;
                                                                                                                                                                    i6 = iOptInt4;
                                                                                                                                                                    i7 = i2;
                                                                                                                                                                    str9 = strOptString4;
                                                                                                                                                                    i8 = iOptInt5;
                                                                                                                                                                    i9 = iOptInt7;
                                                                                                                                                                    str10 = strOptString5;
                                                                                                                                                                    str11 = strB3;
                                                                                                                                                                    i10 = iOptInt6;
                                                                                                                                                                    str12 = strOptString;
                                                                                                                                                                    str13 = str2;
                                                                                                                                                                    point2 = point15;
                                                                                                                                                                    str14 = strOptString3;
                                                                                                                                                                    return new YMKPrimitiveData.Mask(str15, str18, str5, str11, str8, position, point4, point5, point6, point7, eyeShadowSide, point8, point9, point10, point11, point, point13, point14, point2, point16, point17, point18, point19, point20, point21, point22, str4, iIntValue, str19, str20, point23, point24, point25, point26, str14, strA, str7, str12, str21, i13, str6, point27, point28, point29, i6, i8, i4, i5, i7, i9, point30, point31, point32, point33, point34, point35, str13, z6, z4, i3, i10, str9, z5, str10, str3, z3);
                                                                                                                                                                }
                                                                                                                                                            } catch (Throwable th9) {
                                                                                                                                                                th = th9;
                                                                                                                                                                str = strOptString6;
                                                                                                                                                                strOptString = str;
                                                                                                                                                                strOptString3 = strOptString;
                                                                                                                                                            }
                                                                                                                                                        } catch (Throwable th10) {
                                                                                                                                                            th = th10;
                                                                                                                                                            str = strOptString6;
                                                                                                                                                            strOptString = str;
                                                                                                                                                            strOptString2 = strOptString;
                                                                                                                                                            strOptString3 = strOptString2;
                                                                                                                                                        }
                                                                                                                                                    } catch (Throwable th11) {
                                                                                                                                                        th = th11;
                                                                                                                                                        str = strOptString6;
                                                                                                                                                        strOptString = str;
                                                                                                                                                        strOptString2 = strOptString;
                                                                                                                                                        strOptString3 = strOptString2;
                                                                                                                                                        strOptString4 = strOptString3;
                                                                                                                                                        strOptString5 = strOptString4;
                                                                                                                                                        zOptBoolean = false;
                                                                                                                                                        i2 = iOptInt8;
                                                                                                                                                        z = false;
                                                                                                                                                        Log.j("TemplateUtils", th.getMessage(), th);
                                                                                                                                                        z3 = z;
                                                                                                                                                        str3 = str;
                                                                                                                                                        str4 = strOptString6;
                                                                                                                                                        str5 = strB2;
                                                                                                                                                        z4 = z2;
                                                                                                                                                        z5 = zOptBoolean;
                                                                                                                                                        z6 = zEquals;
                                                                                                                                                        i3 = iOptInt2;
                                                                                                                                                        str6 = strB;
                                                                                                                                                        str7 = strOptString2;
                                                                                                                                                        point = point12;
                                                                                                                                                        i4 = iOptInt3;
                                                                                                                                                        i5 = iOptInt;
                                                                                                                                                        position = position3;
                                                                                                                                                        str8 = strB4;
                                                                                                                                                        i6 = iOptInt4;
                                                                                                                                                        i7 = i2;
                                                                                                                                                        str9 = strOptString4;
                                                                                                                                                        i8 = iOptInt5;
                                                                                                                                                        i9 = iOptInt7;
                                                                                                                                                        str10 = strOptString5;
                                                                                                                                                        str11 = strB3;
                                                                                                                                                        i10 = iOptInt6;
                                                                                                                                                        str12 = strOptString;
                                                                                                                                                        str13 = str2;
                                                                                                                                                        point2 = point15;
                                                                                                                                                        str14 = strOptString3;
                                                                                                                                                        return new YMKPrimitiveData.Mask(str15, str18, str5, str11, str8, position, point4, point5, point6, point7, eyeShadowSide, point8, point9, point10, point11, point, point13, point14, point2, point16, point17, point18, point19, point20, point21, point22, str4, iIntValue, str19, str20, point23, point24, point25, point26, str14, strA, str7, str12, str21, i13, str6, point27, point28, point29, i6, i8, i4, i5, i7, i9, point30, point31, point32, point33, point34, point35, str13, z6, z4, i3, i10, str9, z5, str10, str3, z3);
                                                                                                                                                    }
                                                                                                                                                } catch (Throwable th12) {
                                                                                                                                                    th = th12;
                                                                                                                                                    z2 = zEquals2;
                                                                                                                                                    strB = strOptString6;
                                                                                                                                                    str = strB;
                                                                                                                                                }
                                                                                                                                            } catch (Throwable th13) {
                                                                                                                                                th = th13;
                                                                                                                                                iOptInt = iOptInt;
                                                                                                                                                strB = strOptString6;
                                                                                                                                                str = strB;
                                                                                                                                                strOptString = str;
                                                                                                                                                strOptString2 = strOptString;
                                                                                                                                                strOptString3 = strOptString2;
                                                                                                                                                strOptString4 = strOptString3;
                                                                                                                                                strOptString5 = strOptString4;
                                                                                                                                                z2 = false;
                                                                                                                                            }
                                                                                                                                        } catch (Throwable th14) {
                                                                                                                                            th = th14;
                                                                                                                                            i2 = iOptInt8;
                                                                                                                                            iOptInt = iOptInt;
                                                                                                                                            strB = strOptString6;
                                                                                                                                            str = strB;
                                                                                                                                            strOptString = str;
                                                                                                                                            strOptString2 = strOptString;
                                                                                                                                            strOptString3 = strOptString2;
                                                                                                                                            strOptString4 = strOptString3;
                                                                                                                                            strOptString5 = strOptString4;
                                                                                                                                            z = false;
                                                                                                                                            zEquals = false;
                                                                                                                                            z2 = false;
                                                                                                                                            zOptBoolean = false;
                                                                                                                                            Log.j("TemplateUtils", th.getMessage(), th);
                                                                                                                                            z3 = z;
                                                                                                                                            str3 = str;
                                                                                                                                            str4 = strOptString6;
                                                                                                                                            str5 = strB2;
                                                                                                                                            z4 = z2;
                                                                                                                                            z5 = zOptBoolean;
                                                                                                                                            z6 = zEquals;
                                                                                                                                            i3 = iOptInt2;
                                                                                                                                            str6 = strB;
                                                                                                                                            str7 = strOptString2;
                                                                                                                                            point = point12;
                                                                                                                                            i4 = iOptInt3;
                                                                                                                                            i5 = iOptInt;
                                                                                                                                            position = position3;
                                                                                                                                            str8 = strB4;
                                                                                                                                            i6 = iOptInt4;
                                                                                                                                            i7 = i2;
                                                                                                                                            str9 = strOptString4;
                                                                                                                                            i8 = iOptInt5;
                                                                                                                                            i9 = iOptInt7;
                                                                                                                                            str10 = strOptString5;
                                                                                                                                            str11 = strB3;
                                                                                                                                            i10 = iOptInt6;
                                                                                                                                            str12 = strOptString;
                                                                                                                                            str13 = str2;
                                                                                                                                            point2 = point15;
                                                                                                                                            str14 = strOptString3;
                                                                                                                                            return new YMKPrimitiveData.Mask(str15, str18, str5, str11, str8, position, point4, point5, point6, point7, eyeShadowSide, point8, point9, point10, point11, point, point13, point14, point2, point16, point17, point18, point19, point20, point21, point22, str4, iIntValue, str19, str20, point23, point24, point25, point26, str14, strA, str7, str12, str21, i13, str6, point27, point28, point29, i6, i8, i4, i5, i7, i9, point30, point31, point32, point33, point34, point35, str13, z6, z4, i3, i10, str9, z5, str10, str3, z3);
                                                                                                                                        }
                                                                                                                                    } catch (Throwable th15) {
                                                                                                                                        th = th15;
                                                                                                                                        str2 = strB5;
                                                                                                                                    }
                                                                                                                                } catch (Throwable th16) {
                                                                                                                                    th = th16;
                                                                                                                                    point34 = point34;
                                                                                                                                    i2 = iOptInt8;
                                                                                                                                    iOptInt = iOptInt;
                                                                                                                                    strB = strOptString6;
                                                                                                                                    str = strB;
                                                                                                                                    strOptString = str;
                                                                                                                                    strOptString2 = strOptString;
                                                                                                                                    strOptString3 = strOptString2;
                                                                                                                                    strOptString4 = strOptString3;
                                                                                                                                    str2 = strOptString4;
                                                                                                                                    strOptString5 = str2;
                                                                                                                                    z = false;
                                                                                                                                    zEquals = false;
                                                                                                                                    z2 = false;
                                                                                                                                    zOptBoolean = false;
                                                                                                                                    Log.j("TemplateUtils", th.getMessage(), th);
                                                                                                                                    z3 = z;
                                                                                                                                    str3 = str;
                                                                                                                                    str4 = strOptString6;
                                                                                                                                    str5 = strB2;
                                                                                                                                    z4 = z2;
                                                                                                                                    z5 = zOptBoolean;
                                                                                                                                    z6 = zEquals;
                                                                                                                                    i3 = iOptInt2;
                                                                                                                                    str6 = strB;
                                                                                                                                    str7 = strOptString2;
                                                                                                                                    point = point12;
                                                                                                                                    i4 = iOptInt3;
                                                                                                                                    i5 = iOptInt;
                                                                                                                                    position = position3;
                                                                                                                                    str8 = strB4;
                                                                                                                                    i6 = iOptInt4;
                                                                                                                                    i7 = i2;
                                                                                                                                    str9 = strOptString4;
                                                                                                                                    i8 = iOptInt5;
                                                                                                                                    i9 = iOptInt7;
                                                                                                                                    str10 = strOptString5;
                                                                                                                                    str11 = strB3;
                                                                                                                                    i10 = iOptInt6;
                                                                                                                                    str12 = strOptString;
                                                                                                                                    str13 = str2;
                                                                                                                                    point2 = point15;
                                                                                                                                    str14 = strOptString3;
                                                                                                                                    return new YMKPrimitiveData.Mask(str15, str18, str5, str11, str8, position, point4, point5, point6, point7, eyeShadowSide, point8, point9, point10, point11, point, point13, point14, point2, point16, point17, point18, point19, point20, point21, point22, str4, iIntValue, str19, str20, point23, point24, point25, point26, str14, strA, str7, str12, str21, i13, str6, point27, point28, point29, i6, i8, i4, i5, i7, i9, point30, point31, point32, point33, point34, point35, str13, z6, z4, i3, i10, str9, z5, str10, str3, z3);
                                                                                                                                }
                                                                                                                            } catch (Throwable th17) {
                                                                                                                                th = th17;
                                                                                                                                point33 = point33;
                                                                                                                            }
                                                                                                                        } catch (Throwable th18) {
                                                                                                                            th = th18;
                                                                                                                            point32 = point32;
                                                                                                                        }
                                                                                                                    } catch (Throwable th19) {
                                                                                                                        th = th19;
                                                                                                                        point31 = point31;
                                                                                                                    }
                                                                                                                } catch (Throwable th20) {
                                                                                                                    th = th20;
                                                                                                                    point30 = point30;
                                                                                                                }
                                                                                                            } catch (Throwable th21) {
                                                                                                                th = th21;
                                                                                                                i2 = iOptInt8;
                                                                                                                iOptInt6 = -1000;
                                                                                                            }
                                                                                                        } catch (Throwable th22) {
                                                                                                            th = th22;
                                                                                                            i2 = iOptInt8;
                                                                                                            iOptInt2 = -1000;
                                                                                                            iOptInt6 = -1000;
                                                                                                        }
                                                                                                    } catch (Throwable th23) {
                                                                                                        th = th23;
                                                                                                        i2 = iOptInt8;
                                                                                                        iOptInt2 = -1000;
                                                                                                        iOptInt6 = -1000;
                                                                                                        iOptInt7 = -1;
                                                                                                    }
                                                                                                } catch (Throwable th24) {
                                                                                                    th = th24;
                                                                                                    iOptInt2 = -1000;
                                                                                                    iOptInt6 = -1000;
                                                                                                    i2 = i12;
                                                                                                    iOptInt7 = i2;
                                                                                                    iOptInt = iOptInt;
                                                                                                    strB = strOptString6;
                                                                                                    str = strB;
                                                                                                    strOptString = str;
                                                                                                    strOptString2 = strOptString;
                                                                                                    strOptString3 = strOptString2;
                                                                                                    strOptString4 = strOptString3;
                                                                                                    str2 = strOptString4;
                                                                                                    strOptString5 = str2;
                                                                                                    z = false;
                                                                                                    zEquals = false;
                                                                                                    z2 = false;
                                                                                                    zOptBoolean = false;
                                                                                                    Log.j("TemplateUtils", th.getMessage(), th);
                                                                                                    z3 = z;
                                                                                                    str3 = str;
                                                                                                    str4 = strOptString6;
                                                                                                    str5 = strB2;
                                                                                                    z4 = z2;
                                                                                                    z5 = zOptBoolean;
                                                                                                    z6 = zEquals;
                                                                                                    i3 = iOptInt2;
                                                                                                    str6 = strB;
                                                                                                    str7 = strOptString2;
                                                                                                    point = point12;
                                                                                                    i4 = iOptInt3;
                                                                                                    i5 = iOptInt;
                                                                                                    position = position3;
                                                                                                    str8 = strB4;
                                                                                                    i6 = iOptInt4;
                                                                                                    i7 = i2;
                                                                                                    str9 = strOptString4;
                                                                                                    i8 = iOptInt5;
                                                                                                    i9 = iOptInt7;
                                                                                                    str10 = strOptString5;
                                                                                                    str11 = strB3;
                                                                                                    i10 = iOptInt6;
                                                                                                    str12 = strOptString;
                                                                                                    str13 = str2;
                                                                                                    point2 = point15;
                                                                                                    str14 = strOptString3;
                                                                                                    return new YMKPrimitiveData.Mask(str15, str18, str5, str11, str8, position, point4, point5, point6, point7, eyeShadowSide, point8, point9, point10, point11, point, point13, point14, point2, point16, point17, point18, point19, point20, point21, point22, str4, iIntValue, str19, str20, point23, point24, point25, point26, str14, strA, str7, str12, str21, i13, str6, point27, point28, point29, i6, i8, i4, i5, i7, i9, point30, point31, point32, point33, point34, point35, str13, z6, z4, i3, i10, str9, z5, str10, str3, z3);
                                                                                                }
                                                                                            } catch (Throwable th25) {
                                                                                                th = th25;
                                                                                                i12 = -1;
                                                                                                iOptInt2 = -1000;
                                                                                                iOptInt5 = -1000;
                                                                                                iOptInt6 = iOptInt5;
                                                                                                i2 = i12;
                                                                                                iOptInt7 = i2;
                                                                                                iOptInt = iOptInt;
                                                                                                strB = strOptString6;
                                                                                                str = strB;
                                                                                                strOptString = str;
                                                                                                strOptString2 = strOptString;
                                                                                                strOptString3 = strOptString2;
                                                                                                strOptString4 = strOptString3;
                                                                                                str2 = strOptString4;
                                                                                                strOptString5 = str2;
                                                                                                z = false;
                                                                                                zEquals = false;
                                                                                                z2 = false;
                                                                                                zOptBoolean = false;
                                                                                                Log.j("TemplateUtils", th.getMessage(), th);
                                                                                                z3 = z;
                                                                                                str3 = str;
                                                                                                str4 = strOptString6;
                                                                                                str5 = strB2;
                                                                                                z4 = z2;
                                                                                                z5 = zOptBoolean;
                                                                                                z6 = zEquals;
                                                                                                i3 = iOptInt2;
                                                                                                str6 = strB;
                                                                                                str7 = strOptString2;
                                                                                                point = point12;
                                                                                                i4 = iOptInt3;
                                                                                                i5 = iOptInt;
                                                                                                position = position3;
                                                                                                str8 = strB4;
                                                                                                i6 = iOptInt4;
                                                                                                i7 = i2;
                                                                                                str9 = strOptString4;
                                                                                                i8 = iOptInt5;
                                                                                                i9 = iOptInt7;
                                                                                                str10 = strOptString5;
                                                                                                str11 = strB3;
                                                                                                i10 = iOptInt6;
                                                                                                str12 = strOptString;
                                                                                                str13 = str2;
                                                                                                point2 = point15;
                                                                                                str14 = strOptString3;
                                                                                                return new YMKPrimitiveData.Mask(str15, str18, str5, str11, str8, position, point4, point5, point6, point7, eyeShadowSide, point8, point9, point10, point11, point, point13, point14, point2, point16, point17, point18, point19, point20, point21, point22, str4, iIntValue, str19, str20, point23, point24, point25, point26, str14, strA, str7, str12, str21, i13, str6, point27, point28, point29, i6, i8, i4, i5, i7, i9, point30, point31, point32, point33, point34, point35, str13, z6, z4, i3, i10, str9, z5, str10, str3, z3);
                                                                                            }
                                                                                        } catch (Throwable th26) {
                                                                                            th = th26;
                                                                                            i12 = -1;
                                                                                            iOptInt2 = -1000;
                                                                                            iOptInt4 = -1000;
                                                                                            iOptInt5 = iOptInt4;
                                                                                            iOptInt6 = iOptInt5;
                                                                                            i2 = i12;
                                                                                            iOptInt7 = i2;
                                                                                            iOptInt = iOptInt;
                                                                                            strB = strOptString6;
                                                                                            str = strB;
                                                                                            strOptString = str;
                                                                                            strOptString2 = strOptString;
                                                                                            strOptString3 = strOptString2;
                                                                                            strOptString4 = strOptString3;
                                                                                            str2 = strOptString4;
                                                                                            strOptString5 = str2;
                                                                                            z = false;
                                                                                            zEquals = false;
                                                                                            z2 = false;
                                                                                            zOptBoolean = false;
                                                                                            Log.j("TemplateUtils", th.getMessage(), th);
                                                                                            z3 = z;
                                                                                            str3 = str;
                                                                                            str4 = strOptString6;
                                                                                            str5 = strB2;
                                                                                            z4 = z2;
                                                                                            z5 = zOptBoolean;
                                                                                            z6 = zEquals;
                                                                                            i3 = iOptInt2;
                                                                                            str6 = strB;
                                                                                            str7 = strOptString2;
                                                                                            point = point12;
                                                                                            i4 = iOptInt3;
                                                                                            i5 = iOptInt;
                                                                                            position = position3;
                                                                                            str8 = strB4;
                                                                                            i6 = iOptInt4;
                                                                                            i7 = i2;
                                                                                            str9 = strOptString4;
                                                                                            i8 = iOptInt5;
                                                                                            i9 = iOptInt7;
                                                                                            str10 = strOptString5;
                                                                                            str11 = strB3;
                                                                                            i10 = iOptInt6;
                                                                                            str12 = strOptString;
                                                                                            str13 = str2;
                                                                                            point2 = point15;
                                                                                            str14 = strOptString3;
                                                                                            return new YMKPrimitiveData.Mask(str15, str18, str5, str11, str8, position, point4, point5, point6, point7, eyeShadowSide, point8, point9, point10, point11, point, point13, point14, point2, point16, point17, point18, point19, point20, point21, point22, str4, iIntValue, str19, str20, point23, point24, point25, point26, str14, strA, str7, str12, str21, i13, str6, point27, point28, point29, i6, i8, i4, i5, i7, i9, point30, point31, point32, point33, point34, point35, str13, z6, z4, i3, i10, str9, z5, str10, str3, z3);
                                                                                        }
                                                                                    } catch (Throwable th27) {
                                                                                        th = th27;
                                                                                        i12 = -1;
                                                                                        iOptInt2 = -1000;
                                                                                        iOptInt3 = -1000;
                                                                                        iOptInt4 = -1000;
                                                                                    }
                                                                                } catch (Throwable th28) {
                                                                                    th = th28;
                                                                                    iOptInt = i11;
                                                                                    iOptInt2 = iOptInt;
                                                                                    iOptInt3 = iOptInt2;
                                                                                    iOptInt4 = iOptInt3;
                                                                                    iOptInt5 = iOptInt4;
                                                                                    iOptInt6 = iOptInt5;
                                                                                    i2 = -1;
                                                                                    iOptInt7 = -1;
                                                                                    strB = strOptString6;
                                                                                    str = strB;
                                                                                    strOptString = str;
                                                                                    strOptString2 = strOptString;
                                                                                    strOptString3 = strOptString2;
                                                                                    strOptString4 = strOptString3;
                                                                                    str2 = strOptString4;
                                                                                    strOptString5 = str2;
                                                                                    z = false;
                                                                                    zEquals = false;
                                                                                    z2 = false;
                                                                                    zOptBoolean = false;
                                                                                    Log.j("TemplateUtils", th.getMessage(), th);
                                                                                    z3 = z;
                                                                                    str3 = str;
                                                                                    str4 = strOptString6;
                                                                                    str5 = strB2;
                                                                                    z4 = z2;
                                                                                    z5 = zOptBoolean;
                                                                                    z6 = zEquals;
                                                                                    i3 = iOptInt2;
                                                                                    str6 = strB;
                                                                                    str7 = strOptString2;
                                                                                    point = point12;
                                                                                    i4 = iOptInt3;
                                                                                    i5 = iOptInt;
                                                                                    position = position3;
                                                                                    str8 = strB4;
                                                                                    i6 = iOptInt4;
                                                                                    i7 = i2;
                                                                                    str9 = strOptString4;
                                                                                    i8 = iOptInt5;
                                                                                    i9 = iOptInt7;
                                                                                    str10 = strOptString5;
                                                                                    str11 = strB3;
                                                                                    i10 = iOptInt6;
                                                                                    str12 = strOptString;
                                                                                    str13 = str2;
                                                                                    point2 = point15;
                                                                                    str14 = strOptString3;
                                                                                    return new YMKPrimitiveData.Mask(str15, str18, str5, str11, str8, position, point4, point5, point6, point7, eyeShadowSide, point8, point9, point10, point11, point, point13, point14, point2, point16, point17, point18, point19, point20, point21, point22, str4, iIntValue, str19, str20, point23, point24, point25, point26, str14, strA, str7, str12, str21, i13, str6, point27, point28, point29, i6, i8, i4, i5, i7, i9, point30, point31, point32, point33, point34, point35, str13, z6, z4, i3, i10, str9, z5, str10, str3, z3);
                                                                                }
                                                                            } catch (Throwable th29) {
                                                                                th = th29;
                                                                                point29 = point29;
                                                                                i11 = -1000;
                                                                                iOptInt = i11;
                                                                                iOptInt2 = iOptInt;
                                                                                iOptInt3 = iOptInt2;
                                                                                iOptInt4 = iOptInt3;
                                                                                iOptInt5 = iOptInt4;
                                                                                iOptInt6 = iOptInt5;
                                                                                i2 = -1;
                                                                                iOptInt7 = -1;
                                                                                strB = strOptString6;
                                                                                str = strB;
                                                                                strOptString = str;
                                                                                strOptString2 = strOptString;
                                                                                strOptString3 = strOptString2;
                                                                                strOptString4 = strOptString3;
                                                                                str2 = strOptString4;
                                                                                strOptString5 = str2;
                                                                                z = false;
                                                                                zEquals = false;
                                                                                z2 = false;
                                                                                zOptBoolean = false;
                                                                                Log.j("TemplateUtils", th.getMessage(), th);
                                                                                z3 = z;
                                                                                str3 = str;
                                                                                str4 = strOptString6;
                                                                                str5 = strB2;
                                                                                z4 = z2;
                                                                                z5 = zOptBoolean;
                                                                                z6 = zEquals;
                                                                                i3 = iOptInt2;
                                                                                str6 = strB;
                                                                                str7 = strOptString2;
                                                                                point = point12;
                                                                                i4 = iOptInt3;
                                                                                i5 = iOptInt;
                                                                                position = position3;
                                                                                str8 = strB4;
                                                                                i6 = iOptInt4;
                                                                                i7 = i2;
                                                                                str9 = strOptString4;
                                                                                i8 = iOptInt5;
                                                                                i9 = iOptInt7;
                                                                                str10 = strOptString5;
                                                                                str11 = strB3;
                                                                                i10 = iOptInt6;
                                                                                str12 = strOptString;
                                                                                str13 = str2;
                                                                                point2 = point15;
                                                                                str14 = strOptString3;
                                                                                return new YMKPrimitiveData.Mask(str15, str18, str5, str11, str8, position, point4, point5, point6, point7, eyeShadowSide, point8, point9, point10, point11, point, point13, point14, point2, point16, point17, point18, point19, point20, point21, point22, str4, iIntValue, str19, str20, point23, point24, point25, point26, str14, strA, str7, str12, str21, i13, str6, point27, point28, point29, i6, i8, i4, i5, i7, i9, point30, point31, point32, point33, point34, point35, str13, z6, z4, i3, i10, str9, z5, str10, str3, z3);
                                                                            }
                                                                        } catch (Throwable th30) {
                                                                            th = th30;
                                                                            point28 = point28;
                                                                        }
                                                                    } catch (Throwable th31) {
                                                                        th = th31;
                                                                        point26 = point26;
                                                                    }
                                                                } catch (Throwable th32) {
                                                                    th = th32;
                                                                    point25 = point25;
                                                                }
                                                            } catch (Throwable th33) {
                                                                th = th33;
                                                                point24 = point24;
                                                            }
                                                        } catch (Throwable th34) {
                                                            th = th34;
                                                            point23 = point23;
                                                        }
                                                    } catch (Throwable th35) {
                                                        th = th35;
                                                        point22 = point22;
                                                    }
                                                } catch (Throwable th36) {
                                                    th = th36;
                                                    point21 = point21;
                                                }
                                            } catch (Throwable th37) {
                                                th = th37;
                                                point20 = point20;
                                            }
                                        } catch (Throwable th38) {
                                            th = th38;
                                            point19 = point19;
                                        }
                                    } catch (Throwable th39) {
                                        th = th39;
                                        point18 = point18;
                                    }
                                } catch (Throwable th40) {
                                    th = th40;
                                    point17 = point17;
                                }
                            } catch (Throwable th41) {
                                th = th41;
                                point16 = point16;
                            }
                        } catch (Throwable th42) {
                            th = th42;
                            point15 = point15;
                        }
                    } catch (Throwable th43) {
                        th = th43;
                        point11 = point11;
                    }
                } catch (Throwable th44) {
                    th = th44;
                    point11 = point11;
                    point12 = point12;
                    iOptInt = -1000;
                    iOptInt2 = -1000;
                    iOptInt3 = -1000;
                    iOptInt4 = -1000;
                    iOptInt5 = -1000;
                    iOptInt6 = -1000;
                    i2 = -1;
                    iOptInt7 = -1;
                    strB = strOptString6;
                    str = strB;
                    strOptString = str;
                    strOptString2 = strOptString;
                    strOptString3 = strOptString2;
                    strOptString4 = strOptString3;
                    str2 = strOptString4;
                    strB4 = str2;
                    strOptString5 = strB4;
                    z = false;
                    zEquals = false;
                    z2 = false;
                    zOptBoolean = false;
                    Log.j("TemplateUtils", th.getMessage(), th);
                    z3 = z;
                    str3 = str;
                    str4 = strOptString6;
                    str5 = strB2;
                    z4 = z2;
                    z5 = zOptBoolean;
                    z6 = zEquals;
                    i3 = iOptInt2;
                    str6 = strB;
                    str7 = strOptString2;
                    point = point12;
                    i4 = iOptInt3;
                    i5 = iOptInt;
                    position = position3;
                    str8 = strB4;
                    i6 = iOptInt4;
                    i7 = i2;
                    str9 = strOptString4;
                    i8 = iOptInt5;
                    i9 = iOptInt7;
                    str10 = strOptString5;
                    str11 = strB3;
                    i10 = iOptInt6;
                    str12 = strOptString;
                    str13 = str2;
                    point2 = point15;
                    str14 = strOptString3;
                    return new YMKPrimitiveData.Mask(str15, str18, str5, str11, str8, position, point4, point5, point6, point7, eyeShadowSide, point8, point9, point10, point11, point, point13, point14, point2, point16, point17, point18, point19, point20, point21, point22, str4, iIntValue, str19, str20, point23, point24, point25, point26, str14, strA, str7, str12, str21, i13, str6, point27, point28, point29, i6, i8, i4, i5, i7, i9, point30, point31, point32, point33, point34, point35, str13, z6, z4, i3, i10, str9, z5, str10, str3, z3);
                }
            } catch (Throwable th45) {
                th = th45;
                iOptInt = -1000;
                iOptInt2 = -1000;
                iOptInt3 = -1000;
                iOptInt4 = -1000;
                iOptInt5 = -1000;
                iOptInt6 = -1000;
                i2 = -1;
                iOptInt7 = -1;
                strB = strOptString6;
                str = strB;
                strOptString = str;
                strOptString2 = strOptString;
                strOptString3 = strOptString2;
                strOptString4 = strOptString3;
                str2 = strOptString4;
                strB3 = str2;
                strB4 = strB3;
                strOptString5 = strB4;
                z = false;
                zEquals = false;
                z2 = false;
                zOptBoolean = false;
                Log.j("TemplateUtils", th.getMessage(), th);
                z3 = z;
                str3 = str;
                str4 = strOptString6;
                str5 = strB2;
                z4 = z2;
                z5 = zOptBoolean;
                z6 = zEquals;
                i3 = iOptInt2;
                str6 = strB;
                str7 = strOptString2;
                point = point12;
                i4 = iOptInt3;
                i5 = iOptInt;
                position = position3;
                str8 = strB4;
                i6 = iOptInt4;
                i7 = i2;
                str9 = strOptString4;
                i8 = iOptInt5;
                i9 = iOptInt7;
                str10 = strOptString5;
                str11 = strB3;
                i10 = iOptInt6;
                str12 = strOptString;
                str13 = str2;
                point2 = point15;
                str14 = strOptString3;
                return new YMKPrimitiveData.Mask(str15, str18, str5, str11, str8, position, point4, point5, point6, point7, eyeShadowSide, point8, point9, point10, point11, point, point13, point14, point2, point16, point17, point18, point19, point20, point21, point22, str4, iIntValue, str19, str20, point23, point24, point25, point26, str14, strA, str7, str12, str21, i13, str6, point27, point28, point29, i6, i8, i4, i5, i7, i9, point30, point31, point32, point33, point34, point35, str13, z6, z4, i3, i10, str9, z5, str10, str3, z3);
            }
        } catch (Throwable th46) {
            th = th46;
            iOptInt = -1000;
            iOptInt2 = -1000;
            iOptInt3 = -1000;
            iOptInt4 = -1000;
            iOptInt5 = -1000;
            iOptInt6 = -1000;
            i2 = -1;
            iOptInt7 = -1;
            strB = strOptString6;
            str = strB;
            strOptString = str;
            strOptString2 = strOptString;
            strOptString3 = strOptString2;
            strOptString4 = strOptString3;
            str2 = strOptString4;
            strB2 = str2;
            strB3 = strB2;
        }
        return new YMKPrimitiveData.Mask(str15, str18, str5, str11, str8, position, point4, point5, point6, point7, eyeShadowSide, point8, point9, point10, point11, point, point13, point14, point2, point16, point17, point18, point19, point20, point21, point22, str4, iIntValue, str19, str20, point23, point24, point25, point26, str14, strA, str7, str12, str21, i13, str6, point27, point28, point29, i6, i8, i4, i5, i7, i9, point30, point31, point32, point33, point34, point35, str13, z6, z4, i3, i10, str9, z5, str10, str3, z3);
    }

    public static c d(String str, YMKPrimitiveData.SourceType sourceType, com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar, com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar) {
        d dVar = new d();
        dVar.f41606c = sourceType;
        dVar.f41604a = str;
        dVar.f41605b = "makeup_template.xml";
        c cVar = new c();
        new r(YMKDatabase.c(), dVar, cVar).f(bVar, hVar);
        return cVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Optional e(Iterable iterable, String str) {
        bz bzVarListIterator = ((ImmutableList) iterable).listIterator(0);
        while (bzVarListIterator.hasNext()) {
            m mVar = (m) bzVarListIterator.next();
            if (TextUtils.equals(mVar.f41671a, str)) {
                return Optional.e(mVar);
            }
        }
        return Optional.a();
    }

    public static Optional f(AbstractCollection abstractCollection, int i2) {
        String string = Integer.toString(i2);
        Iterator it = abstractCollection.iterator();
        while (it.hasNext()) {
            com.perfectcorp.perfectlib.ph.template.c cVar = (com.perfectcorp.perfectlib.ph.template.c) it.next();
            if (string.equals(cVar.f41611b)) {
                return Optional.e(cVar);
            }
        }
        return Optional.a();
    }

    public static String g() {
        return UUID.randomUUID() + "_" + new Date().getTime();
    }

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 9 */
    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:181:0x056e
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:143)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:58)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:50)
        */
    public static void h(android.database.sqlite.SQLiteDatabase r33, com.perfectcorp.perfectlib.ph.template.TemplateUtils.c r34) {
        /*
            Method dump skipped, instruction units count: 2940
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.perfectcorp.perfectlib.ph.template.TemplateUtils.h(android.database.sqlite.SQLiteDatabase, com.perfectcorp.perfectlib.ph.template.TemplateUtils$c):void");
    }

    public static void i(Point point, JSONObject jSONObject, String str) {
        String[] strArrSplit = jSONObject.optString(str).split(",");
        if (strArrSplit.length == 2) {
            point.x = TemplateConsts.b(-1, strArrSplit[0]);
            point.y = TemplateConsts.b(-1, strArrSplit[1]);
        }
    }

    public static void j(c cVar) throws Throwable {
        Throwable th = cVar.f41603b;
        if (th != null) {
            throw th;
        }
    }

    public static boolean k(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                if (str.indexOf("assets://") == 0) {
                    IO.b(Globals.f41932a.getAssets().open(str.substring(9)));
                    return true;
                }
                File file = new File(str);
                if (!file.isDirectory() && file.exists()) {
                    return true;
                }
            } catch (Throwable th) {
                Log.e("TemplateUtils", th.getMessage(), th);
                return false;
            }
        }
        return false;
    }

    public static boolean l(String str, JSONObject jSONObject, boolean z) {
        Object objOpt = jSONObject.opt(str);
        if (objOpt == null) {
            return z;
        }
        if (objOpt instanceof String) {
            return m((String) objOpt, z);
        }
        Log.d("TemplateUtils", "[booleanStringToBoolean] " + objOpt + " is not string. fieldName=" + str);
        return z;
    }

    public static boolean m(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return z;
        }
        try {
            return Boolean.parseBoolean(str.trim());
        } catch (Throwable th) {
            Log.e("TemplateUtils", "[booleanStringToBoolean] " + str + " can't be parsed.", th);
            return z;
        }
    }

    public static boolean n(NodeList nodeList, int i2) {
        if (nodeList != null && i2 <= nodeList.getLength() - 1) {
            try {
                if ("1".equalsIgnoreCase(nodeList.item(i2).getTextContent().trim())) {
                    return true;
                }
            } catch (Exception unused) {
                Log.d("TemplateUtils", "getIsShimmer() fail. idx=" + i2);
            }
        }
        return false;
    }

    public static float[] o(String str, int i2, float[] fArr) {
        if (TextUtils.isEmpty(str)) {
            return fArr;
        }
        try {
            String[] strArrSplit = str.split(",");
            float[] fArr2 = new float[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                fArr2[i3] = Float.parseFloat(strArrSplit[i3].trim());
            }
            return fArr2;
        } catch (Throwable th) {
            Log.e("TemplateUtils", "[floatArrayStringToFloatArray] " + str + " can't be parsed. size=" + i2, th);
            return fArr;
        }
    }

    public static float[] p(String str, JSONObject jSONObject, float[] fArr) {
        Object objOpt = jSONObject.opt(str);
        if (objOpt == null) {
            return fArr;
        }
        if (objOpt instanceof String) {
            return o((String) objOpt, 2, fArr);
        }
        Log.d("TemplateUtils", "[floatArrayStringToFloatArray] " + objOpt + " is not string. fieldName=" + str);
        return fArr;
    }

    public static float[] q(String str, float[] fArr) {
        if (TextUtils.isEmpty(str)) {
            return fArr;
        }
        try {
            int i2 = Integer.parseInt(str.trim(), 16);
            return new float[]{Color.red(i2), Color.green(i2), Color.blue(i2)};
        } catch (Throwable th) {
            Log.e("TemplateUtils", "[hexColorStringToFloatArray] " + str + " can't be parsed.", th);
            return fArr;
        }
    }

    public static float[] r(String str, JSONObject jSONObject, float[] fArr) {
        Object objOpt = jSONObject.opt(str);
        if (objOpt == null) {
            return fArr;
        }
        if (objOpt instanceof String) {
            return q((String) objOpt, fArr);
        }
        Log.d("TemplateUtils", "[hexColorStringToFloatArray] " + objOpt + " is not string. fieldName=" + str);
        return fArr;
    }

    public static int s(String str, String str2) {
        Throwable th;
        String string;
        Cursor cursor = null;
        try {
            Cursor cursorQuery = YMKDatabase.b().query("PatternPaletteInfo", new String[]{"Radius"}, "PatternGUID=? AND PaletteGUID=?", new String[]{str, str2}, null, null, null, null);
            try {
                string = DBUtility.f(cursorQuery) ? cursorQuery.getString(cursorQuery.getColumnIndex("Radius")) : null;
                IO.b(cursorQuery);
            } catch (Throwable th2) {
                th = th2;
                cursor = cursorQuery;
                try {
                    int i2 = Log.f39427a;
                    Log.j("PatternPaletteInfoDao", th.getMessage(), th);
                    IO.b(cursor);
                    string = "";
                } catch (Throwable th3) {
                    IO.b(cursor);
                    throw th3;
                }
            }
        } catch (Throwable th4) {
            th = th4;
        }
        if (string == null || string.isEmpty()) {
            return -1;
        }
        return Integer.parseInt(string);
    }

    public static Optional t(AbstractCollection abstractCollection, int i2) {
        String string = Integer.toString(i2);
        Iterator it = abstractCollection.iterator();
        while (it.hasNext()) {
            com.perfectcorp.perfectlib.ph.database.ymk.tattooMask.a aVar = (com.perfectcorp.perfectlib.ph.database.ymk.tattooMask.a) it.next();
            if (string.equals(aVar.f41350b)) {
                return Optional.e(aVar);
            }
        }
        return Optional.a();
    }

    public static String u(String str) {
        return str.length() < 6 ? "000000" : str.substring(str.length() - 6).toUpperCase(Locale.US);
    }

    public static int v(String str) {
        return Integer.parseInt(u(str), 16) | com.batch.android.q0.b.v;
    }

    public static YMKPrimitiveData.Pattern w(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        m mVarD = com.perfectcorp.perfectlib.ph.database.ymk.pattern.a.d(YMKDatabase.b(), str);
        if (mVarD == null) {
            if ("hairdye_pattern_one_color_full".equals(str)) {
                return YMKPrimitiveData.Pattern.E;
            }
            if ("hairdye_pattern_one_color_ombre".equals(str)) {
                return YMKPrimitiveData.Pattern.D;
            }
            defpackage.a.v(5, "getPattern: patternInfo == null, patternId: ", str, "TemplateUtils");
            return null;
        }
        m.b bVar = mVarD.f41678j;
        YMKPrimitiveData.Pattern.Builder builder = new YMKPrimitiveData.Pattern.Builder();
        builder.f40832a = str;
        builder.f40833b = mVarD.a();
        builder.f40834c = mVarD.f41677i;
        builder.d = new YMKPrimitiveData.LipstickProfile(YMKPrimitiveData.LipstickType.c(bVar.lipstickType));
        builder.f40835e = new LocalizedString(mVarD.f41673c);
        builder.g = YMKPrimitiveData.TextureSupportedMode.a(mVarD.m);
        builder.f40837h = YMKPrimitiveData.FaceArtLayer2.a(bVar.faceArtLayer2);
        builder.f40836f = YMKPrimitiveData.EyebrowMode.c(bVar.eyebrowMode3D);
        builder.f40838i = TemplateConsts.b(-1, bVar.widthEnlarge);
        builder.f40839j = TemplateConsts.b(-1, bVar.upperEnlarge);
        builder.f40840k = TemplateConsts.b(-1, bVar.lowerEnlarge);
        builder.l = YMKPrimitiveData.HairDyePatternType.a(bVar.hairDyePatternType);
        builder.m = TemplateConsts.a(bVar.ombreRange, -1.0f);
        builder.n = TemplateConsts.a(bVar.ombreLineOffset, -1.0f);
        builder.o = TemplateConsts.b(-1, bVar.transparency);
        TemplateConsts.b(-1, bVar.light);
        builder.p = TemplateConsts.b(-1, bVar.reflection);
        builder.q = TemplateConsts.b(-1, bVar.contrast);
        builder.r = TemplateConsts.b(-1, bVar.roughness);
        builder.s = bVar.finishType;
        builder.t = bVar.textureMode;
        builder.u = bVar.color;
        builder.v = TemplateConsts.a(bVar.tipRatioThumb, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        builder.w = TemplateConsts.a(bVar.tipRatioFore, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        builder.x = TemplateConsts.a(bVar.tipRatioMiddle, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        builder.y = TemplateConsts.a(bVar.tipRatioRing, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        builder.z = TemplateConsts.a(bVar.tipRatioLittle, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        builder.A = TemplateConsts.b(0, bVar.shimmerOpacity);
        builder.B = TemplateConsts.b(0, bVar.texturedGranularity);
        builder.C = TemplateConsts.b(0, bVar.shimmerGranularity);
        return new YMKPrimitiveData.Pattern(builder);
    }

    public static YMKPrimitiveData.Palette x(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        com.perfectcorp.perfectlib.ph.template.d dVarA = com.perfectcorp.perfectlib.ph.database.ymk.palette.a.a(YMKDatabase.b(), str);
        if (dVarA == null) {
            defpackage.a.v(5, "getPalette: paletteInfo == null, paletteId: ", str, "TemplateUtils");
            return null;
        }
        YMKPrimitiveData.Palette.Builder builder = new YMKPrimitiveData.Palette.Builder();
        builder.f40818a = dVarA.f41624a;
        builder.f40819b = dVarA.f41625b;
        builder.f40820c = dVarA.f41626c;
        builder.d = YMKPrimitiveData.SourceType.valueOf(dVarA.f41628f);
        builder.f40821e = dVarA.f41630i;
        builder.f40822f = dVarA.f41631j;
        return new YMKPrimitiveData.Palette(builder);
    }

    public static YMKPrimitiveData.LipstickStyle y(String str) {
        com.perfectcorp.perfectlib.ph.database.ymk.palette.d dVarA = com.perfectcorp.perfectlib.ph.database.ymk.palette.e.a(YMKDatabase.b(), str);
        if (dVarA != null) {
            return new YMKPrimitiveData.LipstickStyle(dVarA.f41243b, dVarA.f41244c, dVarA.d);
        }
        return null;
    }

    public static ArrayList z(String str) {
        ArrayList arrayList = new ArrayList();
        for (com.perfectcorp.perfectlib.ph.template.c cVar : com.perfectcorp.perfectlib.ph.database.ymk.mask.a.a(YMKDatabase.b(), str)) {
            if (com.perfectcorp.perfectlib.ph.database.ymk.color.a.a(YMKDatabase.b(), cVar.f41614f).isEmpty()) {
                arrayList.add(cVar);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(c((com.perfectcorp.perfectlib.ph.template.c) it.next()));
        }
        return arrayList2;
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final b f41602a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Throwable f41603b;

        public c() {
            this.f41602a = new b();
        }

        public c(b bVar) {
            Objects.requireNonNull(bVar);
            this.f41602a = bVar;
        }
    }
}
