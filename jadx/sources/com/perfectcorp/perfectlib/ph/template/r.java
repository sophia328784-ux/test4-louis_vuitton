package com.perfectcorp.perfectlib.ph.template;

import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import android.util.Pair;
import com.android.wiimu.model.WiimuPendingMask;
import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.makeupcam.template.ColorInfo;
import com.perfectcorp.perfectlib.makeupcam.template.EffectInfo;
import com.perfectcorp.perfectlib.makeupcam.template.TemplateConsts;
import com.perfectcorp.perfectlib.makeupcam.template.TemplatePaths;
import com.perfectcorp.perfectlib.ymk.Globals;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.DownloadFolderHelper;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.thirdparty.com.google.gson.JsonElement;
import com.perfectcorp.thirdparty.com.google.gson.JsonObject;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.tr;
import defpackage.x5;
import defpackage.z81;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import javax.xml.parsers.DocumentBuilderFactory;
import org.json.JSONException;
import org.json.JSONObject;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* JADX INFO: loaded from: classes3.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SQLiteDatabase f41706a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TemplateUtils.c f41707b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TemplateUtils.b f41708c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f41709e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final YMKPrimitiveData.SourceType f41710f;

    public r(SQLiteDatabase sQLiteDatabase, TemplateUtils.d dVar, TemplateUtils.c cVar) {
        this.f41706a = sQLiteDatabase;
        this.f41707b = cVar;
        this.f41708c = cVar.f41602a;
        String str = dVar.f41604a;
        this.d = str;
        this.f41709e = str.concat(dVar.f41605b);
        this.f41710f = dVar.f41606c;
    }

    public static int a(NodeList nodeList, int i2) {
        if (nodeList != null && i2 <= nodeList.getLength() - 1) {
            try {
                return (int) Float.parseFloat(nodeList.item(i2).getTextContent().trim());
            } catch (Throwable th) {
                Log.e("TemplateParser", "getShimmerIntensity() fail. exception=" + th.getMessage(), th);
            }
        }
        return -1;
    }

    public static ColorInfo c(String str, Node node, int i2, boolean z, int i3, int i4, String str2, String str3, String str4, int i5, int i6, int i7, int i8, int i9, String str5, String str6) {
        Element element = (Element) node;
        String attribute = element.getAttribute("guid");
        String strA = YMKPrimitiveData.MakeupColor.ExtraData.a(str3);
        String attribute2 = element.getAttribute("glow_intensity");
        if (TextUtils.isEmpty(attribute2)) {
            attribute2 = String.valueOf(i5);
        }
        String attribute3 = element.getAttribute("coverage_intensity");
        String attribute4 = element.getAttribute("skin_smooth_intensity");
        return new ColorInfo(str, str2, TemplateUtils.u(element.getTextContent().trim()), String.valueOf(i2), str6, YMKPrimitiveData.MakeupColor.ExtraData.c("", "", String.valueOf(z), String.valueOf(i3), strA, String.valueOf(i4), str4, attribute2, attribute3, attribute4, String.valueOf(i6), String.valueOf(i7), String.valueOf(i8), String.valueOf(i9), "", "", "", str5).toString(), attribute, "");
    }

    public static String d(String str, Float f2) {
        return (str == null || f2.floatValue() >= 5.0f) ? str : str.replace("thumb/", "thumb_android/");
    }

    public static EnumMap e(Node node) {
        TemplateConsts.LocaleEnum[] localeEnumArrValues = TemplateConsts.LocaleEnum.values();
        EnumMap enumMap = new EnumMap(TemplateConsts.LocaleEnum.class);
        Element element = (Element) node;
        for (TemplateConsts.LocaleEnum localeEnum : localeEnumArrValues) {
            NodeList elementsByTagName = element.getElementsByTagName(localeEnum.name());
            enumMap.put(localeEnum, elementsByTagName.getLength() > 0 ? elementsByTagName.item(0).getTextContent().trim() : "");
        }
        return enumMap;
    }

    public static void h(TemplateUtils.b bVar, ArrayList arrayList) {
        ArrayList<Pair> arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        boolean z = true;
        while (it.hasNext()) {
            List list = (List) it.next();
            if (list.isEmpty()) {
                z = false;
            } else {
                arrayList2.add((Pair) fc.e(1, list));
            }
        }
        if (arrayList2.size() <= 1) {
            z = false;
            break;
        }
        Iterator it2 = arrayList2.iterator();
        if (z && it2.hasNext()) {
            com.perfectcorp.perfectlib.ph.database.ymk.pattern.b bVar2 = (com.perfectcorp.perfectlib.ph.database.ymk.pattern.b) ((Pair) it2.next()).second;
            while (it2.hasNext()) {
                Pair pair = (Pair) it2.next();
                if (!bVar2.f41252b.equals(((com.perfectcorp.perfectlib.ph.database.ymk.pattern.b) pair.second).f41252b) || !bVar2.f41251a.equals(((com.perfectcorp.perfectlib.ph.database.ymk.pattern.b) pair.second).f41251a)) {
                    z = false;
                    break;
                }
            }
        }
        if (!z) {
            for (Pair pair2 : arrayList2) {
                List arrayList3 = (List) bVar.f41593a.get(((com.perfectcorp.perfectlib.ph.database.ymk.pattern.b) pair2.second).f41251a);
                if (arrayList3 == null) {
                    arrayList3 = new ArrayList();
                    bVar.f41593a.put(((com.perfectcorp.perfectlib.ph.database.ymk.pattern.b) pair2.second).f41251a, arrayList3);
                }
                arrayList3.add((com.perfectcorp.perfectlib.ph.database.ymk.pattern.b) pair2.second);
            }
            return;
        }
        Collections.sort(arrayList2, new x5(19));
        StringBuilder sb = new StringBuilder();
        Iterator it3 = arrayList2.iterator();
        while (it3.hasNext()) {
            sb.append(((com.perfectcorp.perfectlib.ph.database.ymk.pattern.b) ((Pair) it3.next()).second).f41253c);
            sb.append(", ");
        }
        sb.setLength(sb.length() - 2);
        com.perfectcorp.perfectlib.ph.database.ymk.pattern.b bVar3 = (com.perfectcorp.perfectlib.ph.database.ymk.pattern.b) ((Pair) arrayList2.get(0)).second;
        String str = bVar3.f41251a;
        com.perfectcorp.perfectlib.ph.database.ymk.pattern.b bVar4 = new com.perfectcorp.perfectlib.ph.database.ymk.pattern.b(str, bVar3.f41252b, sb.toString(), bVar3.d, bVar3.f41254e, bVar3.f41255f, bVar3.g, bVar3.f41256h, bVar3.f41257i);
        List arrayList4 = (List) bVar.f41593a.get(str);
        if (arrayList4 == null) {
            arrayList4 = new ArrayList();
            bVar.f41593a.put(str, arrayList4);
        }
        arrayList4.add(bVar4);
    }

    public static JSONObject n(NodeList nodeList) {
        TemplateConsts.LocaleEnum[] localeEnumArrValues = TemplateConsts.LocaleEnum.values();
        JSONObject jSONObjectC = new e.d().f41645a.c();
        if (nodeList.getLength() > 0) {
            Element element = (Element) nodeList.item(0);
            for (TemplateConsts.LocaleEnum localeEnum : localeEnumArrValues) {
                try {
                    NodeList elementsByTagName = element.getElementsByTagName(localeEnum.name());
                    if (elementsByTagName.getLength() > 0) {
                        String strTrim = elementsByTagName.item(0).getTextContent().trim();
                        if (!TextUtils.isEmpty(strTrim)) {
                            jSONObjectC.put(localeEnum.name(), strTrim);
                        }
                    }
                } catch (Throwable th) {
                    Log.e("TemplateParser", "[extractLookNameToJSON] error occur on assign a name to JSON from a field: " + localeEnum.name() + ", exception: " + th.getMessage(), th);
                }
            }
        }
        return jSONObjectC;
    }

    public final ColorInfo b(String str, int i2, Node node, String str2) {
        Element element = (Element) node;
        String strTrim = element.getTextContent().trim();
        int length = strTrim.length();
        YMKPrimitiveData.SourceType sourceType = this.f41710f;
        if (length != 12) {
            return new ColorInfo(str, str2, "000000", String.valueOf(i2), sourceType.name(), "{}", "", "");
        }
        String attribute = element.getAttribute("guid");
        return new ColorInfo(str, str2, strTrim.substring(6).toUpperCase(Locale.getDefault()), String.valueOf(i2), sourceType.name(), YMKPrimitiveData.MakeupColor.ExtraData.b(Integer.parseInt(strTrim.substring(0, 2), 16), Integer.parseInt(strTrim.substring(2, 4), 16), false, 0, -1, -1, -1, -1, -1, -1, "").toString(), attribute, "");
    }

    public final void f(com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar, com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar) {
        String str = this.f41709e;
        InputStream inputStreamOpen = null;
        try {
            inputStreamOpen = str.indexOf("assets://") == 0 ? Globals.f41932a.getAssets().open(str.substring(9)) : new FileInputStream(str);
            Document document = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(inputStreamOpen);
            document.getDocumentElement().normalize();
            Element element = (Element) document.getElementsByTagName("makeup").item(0);
            float f2 = TemplateUtils.f41580a;
            if (element == null) {
                NodeList elementsByTagName = document.getElementsByTagName("pattern");
                elementsByTagName.item(0);
                q(hVar.type, (Element) elementsByTagName.item(0), f2);
            }
            if (element == null) {
                IO.b(inputStreamOpen);
                return;
            }
            for (String str2 : TemplateConsts.f40989c) {
                NodeList elementsByTagName2 = element.getElementsByTagName(str2);
                if (elementsByTagName2.getLength() != 0) {
                    i(str2, (Element) elementsByTagName2.item(0), f2);
                }
            }
            g(bVar, element.getElementsByTagName("preset"), f2);
            o();
            k(element.getElementsByTagName("Translation"));
            IO.b(inputStreamOpen);
        } catch (Throwable th) {
            try {
                Log.j("TemplateParser", "TemplateParser.parse()", th);
                this.f41707b.f41603b = th;
            } finally {
                IO.b(inputStreamOpen);
            }
        }
    }

    public final void g(com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar, NodeList nodeList, float f2) {
        TemplateUtils.b bVar2;
        String str;
        String str2;
        int i2;
        NodeList nodeList2;
        String str3;
        int i3;
        Element element;
        String strTrim;
        r rVar = this;
        int i4 = 0;
        int i5 = 0;
        while (i5 < nodeList.getLength()) {
            Element element2 = (Element) nodeList.item(i5);
            NodeList elementsByTagName = element2.getElementsByTagName("effect");
            NodeList elementsByTagName2 = element2.getElementsByTagName("name");
            NodeList elementsByTagName3 = element2.getElementsByTagName("look_category");
            NodeList elementsByTagName4 = element2.getElementsByTagName("description");
            String attribute = element2.getAttribute("guid");
            String strD = d(element2.getAttribute("thumbnail"), Float.valueOf(f2));
            String attribute2 = element2.getAttribute("preview_image");
            String attribute3 = element2.getAttribute("supported_mode");
            String attribute4 = element2.getAttribute("look_type");
            String string = n(elementsByTagName2).toString();
            TemplateConsts.LocaleEnum[] localeEnumArrValues = TemplateConsts.LocaleEnum.values();
            JSONObject jSONObjectC = new e.a().f41645a.c();
            String str4 = "";
            if (elementsByTagName4.getLength() > 0) {
                Element element3 = (Element) elementsByTagName4.item(i4);
                int length = localeEnumArrValues.length;
                int i6 = 0;
                while (i6 < length) {
                    TemplateConsts.LocaleEnum localeEnum = localeEnumArrValues[i6];
                    try {
                        NodeList elementsByTagName5 = element3.getElementsByTagName(localeEnum.name());
                        i3 = i6;
                        try {
                            String strName = localeEnum.name();
                            if (elementsByTagName5.getLength() > 0) {
                                element = element3;
                                try {
                                    strTrim = elementsByTagName5.item(0).getTextContent().trim();
                                } catch (Throwable th) {
                                    th = th;
                                    Log.e("TemplateParser", "[extractDescriptionToJSON] error occur on assign a description to JSON from a field: " + localeEnum.name() + ", exception: " + th.getMessage(), th);
                                }
                            } else {
                                element = element3;
                                strTrim = "";
                            }
                            jSONObjectC.put(strName, strTrim);
                        } catch (Throwable th2) {
                            th = th2;
                            element = element3;
                            Log.e("TemplateParser", "[extractDescriptionToJSON] error occur on assign a description to JSON from a field: " + localeEnum.name() + ", exception: " + th.getMessage(), th);
                            i6 = i3 + 1;
                            element3 = element;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        i3 = i6;
                    }
                    i6 = i3 + 1;
                    element3 = element;
                }
            }
            String string2 = jSONObjectC.toString();
            int i7 = 0;
            while (true) {
                int length2 = elementsByTagName3.getLength();
                bVar2 = rVar.f41708c;
                if (i7 >= length2) {
                    break;
                }
                EnumMap enumMapE = e(elementsByTagName3.item(i7));
                for (TemplateConsts.LocaleEnum localeEnum2 : enumMapE.keySet()) {
                    bVar2.m.add(new com.perfectcorp.perfectlib.ph.database.ymk.localization.a(localeEnum2.name(), (String) enumMapE.get(TemplateConsts.LocaleEnum.def), (String) enumMapE.get(localeEnum2)));
                    i7 = i7;
                    elementsByTagName3 = elementsByTagName3;
                    strD = strD;
                }
                bVar2.l.add(new com.perfectcorp.perfectlib.ph.database.ymk.look.b(attribute, attribute4, (String) enumMapE.get(TemplateConsts.LocaleEnum.def), null, null, null, null));
                str4 = str4;
                elementsByTagName3 = elementsByTagName3;
                i7++;
                rVar = this;
            }
            String str5 = strD;
            int i8 = 0;
            while (true) {
                str = str4;
                if (i8 >= elementsByTagName.getLength()) {
                    break;
                }
                Element element4 = (Element) elementsByTagName.item(i8);
                NodeList elementsByTagName6 = element4.getElementsByTagName("patterns");
                if (elementsByTagName6.getLength() > 0) {
                    NodeList elementsByTagName7 = ((Element) elementsByTagName6.item(0)).getElementsByTagName("pattern");
                    ArrayList arrayList = new ArrayList();
                    int i9 = 0;
                    while (i9 < elementsByTagName7.getLength()) {
                        Element element5 = (Element) elementsByTagName7.item(i9);
                        int i10 = i5;
                        NodeList elementsByTagName8 = ((Element) element5.getElementsByTagName("palettes").item(0)).getElementsByTagName("palette");
                        ArrayList arrayList2 = new ArrayList();
                        arrayList.add(arrayList2);
                        Element element6 = element4;
                        int i11 = 0;
                        while (i11 < elementsByTagName8.getLength()) {
                            Element element7 = (Element) elementsByTagName8.item(i11);
                            NodeList nodeList3 = elementsByTagName;
                            String str6 = string;
                            NodeList nodeList4 = elementsByTagName7;
                            String str7 = str;
                            Element element8 = element6;
                            int i12 = i11;
                            String str8 = attribute2;
                            Element element9 = element5;
                            j(element8, attribute, f2, i8, element9, element7, arrayList2);
                            int i13 = i12 + 1;
                            element6 = element8;
                            element5 = element9;
                            attribute2 = str8;
                            str = str7;
                            elementsByTagName8 = elementsByTagName8;
                            i9 = i9;
                            elementsByTagName7 = nodeList4;
                            i11 = i13;
                            string = str6;
                            elementsByTagName = nodeList3;
                        }
                        NodeList nodeList5 = elementsByTagName;
                        i9++;
                        element4 = element6;
                        str = str;
                        i5 = i10;
                        elementsByTagName7 = elementsByTagName7;
                        string = string;
                        elementsByTagName = nodeList5;
                    }
                    str4 = str;
                    str2 = attribute2;
                    i2 = i5;
                    nodeList2 = elementsByTagName;
                    str3 = string;
                    h(bVar2, arrayList);
                } else {
                    str4 = str;
                    str2 = attribute2;
                    i2 = i5;
                    nodeList2 = elementsByTagName;
                    str3 = string;
                    j(element4, attribute, f2, i8, null, null, null);
                }
                i8++;
                str5 = str5;
                attribute2 = str2;
                string = str3;
                i5 = i2;
                elementsByTagName = nodeList2;
            }
            rVar = this;
            String str9 = attribute2;
            int i14 = i5;
            String str10 = string;
            String str11 = str5;
            e.f fVarA = e.c.a(attribute4) == e.c.USERMADE ? e.f.ALL : e.f.a(attribute3);
            YMKPrimitiveData.SourceType sourceType = YMKPrimitiveData.SourceType.DOWNLOAD;
            YMKPrimitiveData.SourceType sourceType2 = rVar.f41710f;
            boolean z = sourceType2 == sourceType;
            ArrayList arrayList3 = bVar2.f41600j;
            com.perfectcorp.perfectlib.ph.database.ymk.look.d.a aVar = new com.perfectcorp.perfectlib.ph.database.ymk.look.d.a(attribute);
            aVar.f41213b = f2;
            aVar.f41214c = str10;
            aVar.d = string2;
            aVar.f41215e = rVar.r(str11);
            aVar.f41216f = rVar.r(str9);
            aVar.g = sourceType2.name();
            aVar.f41217h = fVarA.name();
            aVar.f41218i = z;
            aVar.f41219j = str;
            aVar.m = (bVar != null ? bVar.e() : com.perfectcorp.perfectlib.ph.database.ymk.look.d.b.MAKEUP).d;
            arrayList3.add(new com.perfectcorp.perfectlib.ph.database.ymk.look.d(aVar));
            i5 = i14 + 1;
            i4 = 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void i(String str, Element element, float f2) throws JSONException {
        int i2;
        r rVar;
        String string;
        String str2;
        String string2;
        String str3;
        ArrayList arrayList;
        YMKPrimitiveData.SourceType sourceType;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        TemplateUtils.b bVar;
        String str13;
        String str14;
        String str15;
        String str16;
        Element element2;
        String str17;
        String str18;
        String str19;
        String str20;
        int i3;
        String str21;
        String str22;
        String str23;
        int i4;
        String str24;
        String str25;
        String str26;
        String str27;
        YMKPrimitiveData.SourceType sourceType2;
        String str28;
        String str29;
        String str30;
        String str31;
        int i5;
        String str32;
        String str33;
        int i6;
        int i7;
        String str34;
        NodeList nodeList;
        String str35;
        com.perfectcorp.perfectlib.ph.template.idc.d.s sVar;
        int i8;
        String[] strArrSplit;
        NodeList nodeList2;
        NodeList nodeList3;
        String textContent;
        NodeList nodeList4;
        int i9;
        int length;
        ArrayList arrayList2;
        TemplateUtils.b bVar2;
        r rVar2;
        YMKPrimitiveData.SourceType sourceType3;
        String str36;
        String str37;
        r rVar3 = this;
        NodeList childNodes = element.getChildNodes();
        int i10 = 0;
        while (i10 < childNodes.getLength()) {
            Node nodeItem = childNodes.item(i10);
            if (nodeItem.getNodeName().equals("patterns")) {
                NodeList elementsByTagName = ((Element) nodeItem).getElementsByTagName("pattern");
                for (int i11 = 0; i11 < elementsByTagName.getLength(); i11++) {
                    rVar3.q(str, (Element) elementsByTagName.item(i11), f2);
                }
                rVar = rVar3;
                childNodes = childNodes;
                i2 = i10;
            } else {
                String str38 = "colors";
                boolean zEquals = nodeItem.getNodeName().equals("colors");
                String str39 = "level_color";
                String str40 = "color";
                YMKPrimitiveData.SourceType sourceType4 = rVar3.f41710f;
                String str41 = "sku_guid";
                String str42 = "intensity";
                String str43 = "color_number";
                String str44 = "engine_color";
                String str45 = "pattern_guid";
                TemplateUtils.b bVar3 = rVar3.f41708c;
                String str46 = "patterns";
                if (zEquals) {
                    Element element3 = (Element) nodeItem;
                    NodeList elementsByTagName2 = element.getElementsByTagName("engine_colors");
                    if (elementsByTagName2.getLength() > 0) {
                        ArrayList arrayList3 = new ArrayList();
                        NodeList elementsByTagName3 = ((Element) elementsByTagName2.item(0)).getElementsByTagName("engine_color");
                        for (int i12 = 0; i12 < elementsByTagName3.getLength(); i12++) {
                            arrayList3.add(elementsByTagName3.item(i12).getTextContent().trim());
                        }
                        arrayList2 = arrayList3;
                    } else {
                        arrayList2 = null;
                    }
                    NodeList elementsByTagName4 = element3.getElementsByTagName("color");
                    NodeList elementsByTagName5 = element3.getElementsByTagName("level_color");
                    int i13 = 0;
                    while (i13 < elementsByTagName4.getLength()) {
                        NodeList nodeList5 = elementsByTagName5;
                        Node nodeItem2 = elementsByTagName4.item(i13);
                        Element element4 = (Element) nodeItem2;
                        String attribute = element4.getAttribute(str41);
                        NodeList nodeList6 = elementsByTagName4;
                        HashSet hashSet = bVar3.v;
                        HashMap map = bVar3.f41594b;
                        hashSet.add(attribute);
                        String attribute2 = element4.getAttribute(str42);
                        int i14 = i10;
                        String str47 = str43;
                        TemplateUtils.b bVar4 = bVar3;
                        int i15 = i13;
                        YMKPrimitiveData.SourceType sourceType5 = sourceType4;
                        String str48 = str41;
                        String str49 = str42;
                        String str50 = str45;
                        ArrayList arrayList4 = arrayList2;
                        ColorInfo colorInfoC = c(TemplateUtils.g(), nodeItem2, TemplateConsts.b(-1, attribute2), false, -1, -1, str, (arrayList2 == null || arrayList2.size() <= i13) ? null : (String) arrayList2.get(i13), null, -1, -1, -1, -1, -1, null, sourceType4.name());
                        str = str;
                        String str51 = colorInfoC.g;
                        if (TextUtils.isEmpty(str51)) {
                            str51 = colorInfoC.f40929a;
                        }
                        bVar4.f41597f.add(colorInfoC);
                        map.put(str51, new ArrayList());
                        if (str.equals("eye_shadow") || str.equals("lipstick") || str.equals("face_contour_pattern") || str.equals("hair_dye")) {
                            rVar2 = this;
                            sourceType3 = sourceType5;
                            str36 = str47;
                        } else {
                            str36 = str47;
                            sourceType3 = sourceType5;
                            d dVar = new d(str51, colorInfoC.f40929a, 1, "", "", sourceType5.name(), f2, sourceType5 == YMKPrimitiveData.SourceType.DOWNLOAD, attribute, str, element4.getAttribute(str47), "", GsonHelper.f39261b.k(new com.perfectcorp.perfectlib.ph.template.idc.d.f(new com.perfectcorp.perfectlib.ph.template.idc.d.f.a())));
                            rVar2 = this;
                            if (!rVar2.l(dVar.f41624a) || sourceType3 == YMKPrimitiveData.SourceType.SKU) {
                                bVar4.f41596e.add(dVar);
                                str37 = str50;
                                String attribute3 = element4.getAttribute(str37);
                                if (!TextUtils.isEmpty(attribute3)) {
                                    ((List) map.get(str51)).add(new com.perfectcorp.perfectlib.ph.database.ymk.pattern.b(attribute3, dVar.f41624a, sourceType3.name(), 1, attribute2, "", "", com.perfectcorp.perfectlib.ph.database.ymk.pattern.b.f41250j));
                                }
                            }
                            r rVar4 = rVar2;
                            bVar3 = bVar4;
                            rVar3 = rVar4;
                            sourceType4 = sourceType3;
                            str45 = str37;
                            i10 = i14;
                            elementsByTagName5 = nodeList5;
                            arrayList2 = arrayList4;
                            str41 = str48;
                            str42 = str49;
                            str43 = str36;
                            i13 = i15 + 1;
                            elementsByTagName4 = nodeList6;
                        }
                        str37 = str50;
                        r rVar5 = rVar2;
                        bVar3 = bVar4;
                        rVar3 = rVar5;
                        sourceType4 = sourceType3;
                        str45 = str37;
                        i10 = i14;
                        elementsByTagName5 = nodeList5;
                        arrayList2 = arrayList4;
                        str41 = str48;
                        str42 = str49;
                        str43 = str36;
                        i13 = i15 + 1;
                        elementsByTagName4 = nodeList6;
                    }
                    TemplateUtils.b bVar5 = bVar3;
                    r rVar6 = rVar3;
                    TemplateUtils.b bVar6 = bVar5;
                    NodeList nodeList7 = elementsByTagName5;
                    i2 = i10;
                    YMKPrimitiveData.SourceType sourceType6 = sourceType4;
                    String str52 = str41;
                    String str53 = str42;
                    String str54 = str43;
                    String str55 = str45;
                    int i16 = 0;
                    while (i16 < nodeList7.getLength()) {
                        NodeList nodeList8 = nodeList7;
                        Node nodeItem3 = nodeList8.item(i16);
                        Element element5 = (Element) nodeItem3;
                        String str56 = str53;
                        int iB = TemplateConsts.b(-1, element5.getAttribute(str56));
                        ColorInfo colorInfoB = rVar6.b(TemplateUtils.g(), iB, nodeItem3, str);
                        String str57 = colorInfoB.g;
                        if (TextUtils.isEmpty(str57)) {
                            str57 = colorInfoB.f40929a;
                        }
                        bVar6.f41594b.put(str57, new ArrayList());
                        String attribute4 = element5.getAttribute(str55);
                        int i17 = i16;
                        String str58 = colorInfoB.f40929a;
                        String strName = sourceType6.name();
                        boolean z = sourceType6 == YMKPrimitiveData.SourceType.DOWNLOAD;
                        nodeList7 = nodeList8;
                        String str59 = str57;
                        String str60 = str52;
                        String attribute5 = element5.getAttribute(str60);
                        String str61 = str54;
                        String str62 = str55;
                        TemplateUtils.b bVar7 = bVar6;
                        d dVar2 = new d(str59, str58, 1, "", "", strName, f2, z, attribute5, str, element5.getAttribute(str61), "", GsonHelper.f39261b.k(new com.perfectcorp.perfectlib.ph.template.idc.d.f(new com.perfectcorp.perfectlib.ph.template.idc.d.f.a())));
                        if (!l(dVar2.f41624a) || sourceType6 == YMKPrimitiveData.SourceType.SKU) {
                            bVar2 = bVar7;
                            bVar2.f41597f.add(colorInfoB);
                            bVar2.f41596e.add(dVar2);
                            if (!TextUtils.isEmpty(attribute4)) {
                                List list = (List) bVar2.f41594b.get(str59);
                                String strName2 = sourceType6.name();
                                StringBuilder sb = new StringBuilder();
                                sb.append(iB);
                                list.add(new com.perfectcorp.perfectlib.ph.database.ymk.pattern.b(attribute4, dVar2.f41624a, strName2, 1, sb.toString(), "", "", com.perfectcorp.perfectlib.ph.database.ymk.pattern.b.f41250j));
                            }
                        } else {
                            bVar2 = bVar7;
                        }
                        i16 = i17 + 1;
                        str = str;
                        rVar6 = this;
                        bVar6 = bVar2;
                        str52 = str60;
                        str53 = str56;
                        str54 = str61;
                        str55 = str62;
                    }
                    rVar = rVar6;
                } else {
                    childNodes = childNodes;
                    i2 = i10;
                    TemplateUtils.b bVar8 = bVar3;
                    String str63 = "sku_guid";
                    String str64 = "intensity";
                    String str65 = str43;
                    String str66 = str45;
                    String str67 = "engine_colors";
                    YMKPrimitiveData.SourceType sourceType7 = sourceType4;
                    String str68 = "inner_ratio";
                    String str69 = "textures";
                    String str70 = "styles";
                    String str71 = "TemplateParser";
                    String str72 = "thumbnail";
                    String str73 = "guid";
                    String str74 = "texture";
                    if (nodeItem.getNodeName().equals("palettes")) {
                        String str75 = "";
                        String str76 = "pattern";
                        NodeList elementsByTagName6 = ((Element) nodeItem).getElementsByTagName("palette");
                        String str77 = "feather_strength";
                        int i18 = 0;
                        while (i18 < elementsByTagName6.getLength()) {
                            Element element6 = (Element) elementsByTagName6.item(i18);
                            NodeList nodeList9 = elementsByTagName6;
                            int i19 = i18;
                            String str78 = str63;
                            String attribute6 = element6.getAttribute(str78);
                            if (!TextUtils.isEmpty(attribute6)) {
                                bVar8.v.add(attribute6);
                            }
                            NodeList elementsByTagName7 = element6.getElementsByTagName("name");
                            NodeList elementsByTagName8 = element6.getElementsByTagName(str38);
                            TemplateUtils.b bVar9 = bVar8;
                            NodeList elementsByTagName9 = element6.getElementsByTagName("color_is_shimmers");
                            NodeList elementsByTagName10 = element6.getElementsByTagName("shimmer_intensity");
                            String str79 = str38;
                            NodeList elementsByTagName11 = element6.getElementsByTagName("glow_intensity");
                            String str80 = str68;
                            NodeList elementsByTagName12 = element6.getElementsByTagName("shimmer_density");
                            NodeList elementsByTagName13 = element6.getElementsByTagName("shimmer_granularity");
                            NodeList elementsByTagName14 = element6.getElementsByTagName("metallic_intensity");
                            NodeList elementsByTagName15 = element6.getElementsByTagName("shimmer_color");
                            NodeList nodeList10 = elementsByTagName11;
                            String str81 = "inner_text";
                            String str82 = str46;
                            NodeList elementsByTagName16 = element6.getElementsByTagName("inner_text");
                            NodeList elementsByTagName17 = element6.getElementsByTagName(str82);
                            NodeList elementsByTagName18 = element6.getElementsByTagName("supported_patterns");
                            NodeList elementsByTagName19 = element6.getElementsByTagName(str70);
                            NodeList elementsByTagName20 = element6.getElementsByTagName(str69);
                            String attribute7 = element6.getAttribute(str73);
                            if (rVar3.l(attribute7)) {
                                str3 = str73;
                                if (sourceType7 != YMKPrimitiveData.SourceType.SKU) {
                                    sourceType2 = sourceType7;
                                    str67 = str67;
                                    str44 = str44;
                                    str6 = str40;
                                    str7 = str82;
                                    str8 = str69;
                                    str9 = str70;
                                    str10 = str71;
                                    str27 = str72;
                                    str28 = str77;
                                    bVar = bVar9;
                                    str13 = str79;
                                    str3 = str3;
                                    str26 = str65;
                                    str25 = str66;
                                    str23 = str74;
                                    str24 = str80;
                                    str17 = str39;
                                    str20 = str75;
                                }
                                i18 = i19 + 1;
                                str77 = str28;
                                bVar8 = bVar;
                                elementsByTagName6 = nodeList9;
                                str75 = str20;
                                str65 = str26;
                                str74 = str23;
                                str39 = str17;
                                str40 = str6;
                                str38 = str13;
                                sourceType7 = sourceType2;
                                str46 = str7;
                                str67 = str67;
                                str44 = str44;
                                str68 = str24;
                                str69 = str8;
                                str70 = str9;
                                str71 = str10;
                                str73 = str3;
                                str72 = str27;
                                rVar3 = this;
                                str63 = str78;
                                str66 = str25;
                            } else {
                                str3 = str73;
                            }
                            String strG = TemplateUtils.g();
                            NodeList elementsByTagName21 = element6.getElementsByTagName(str67);
                            if (elementsByTagName21.getLength() > 0) {
                                ArrayList arrayList5 = new ArrayList();
                                int i20 = 0;
                                NodeList elementsByTagName22 = ((Element) elementsByTagName21.item(0)).getElementsByTagName(str44);
                                while (i20 < elementsByTagName22.getLength()) {
                                    Node nodeItem4 = elementsByTagName22.item(i20);
                                    arrayList5.add(nodeItem4.getTextContent().trim());
                                    Log.g(3, str71, "engine color string=" + nodeItem4.getTextContent().trim());
                                    i20++;
                                    arrayList5 = arrayList5;
                                }
                                arrayList = arrayList5;
                            } else {
                                arrayList = null;
                            }
                            String str83 = "shine_intensities";
                            if (elementsByTagName8.getLength() > 0) {
                                Element element7 = (Element) elementsByTagName8.item(0);
                                NodeList elementsByTagName23 = element7.getElementsByTagName(str40);
                                NodeList elementsByTagName24 = element7.getElementsByTagName(str39);
                                String str84 = str39;
                                int iMax = Math.max(elementsByTagName23.getLength(), elementsByTagName24.getLength());
                                String attribute8 = element6.getAttribute("color_intensities");
                                String[] strArrSplit2 = attribute8.isEmpty() ? new String[0] : attribute8.split(",");
                                String attribute9 = element6.getAttribute("shine_intensities");
                                if (attribute9.isEmpty()) {
                                    i8 = 0;
                                    strArrSplit = new String[0];
                                } else {
                                    i8 = 0;
                                    strArrSplit = attribute9.split(",");
                                }
                                String attribute10 = element6.getAttribute("hair_dye_mode");
                                if (elementsByTagName9.getLength() > 0) {
                                    NodeList elementsByTagName25 = ((Element) elementsByTagName9.item(i8)).getElementsByTagName("color_is_shimmer");
                                    if (elementsByTagName25 != null && (length = elementsByTagName25.getLength()) != 0 && iMax != length) {
                                        StringBuilder sbP = fc.p(iMax, length, "parse() warning. colorCount(", ") != isShimmerCount(", ") (paletteGuid=");
                                        sbP.append(attribute7);
                                        sbP.append(")");
                                        Log.g(5, str71, sbP.toString());
                                    }
                                    nodeList2 = elementsByTagName25;
                                } else {
                                    element6 = element6;
                                    attribute10 = attribute10;
                                    nodeList2 = null;
                                }
                                int i21 = 0;
                                while (i21 < elementsByTagName23.getLength()) {
                                    boolean zN = TemplateUtils.n(nodeList2, i21);
                                    int i22 = iMax;
                                    int iA = a(elementsByTagName10, i21);
                                    NodeList nodeList11 = nodeList2;
                                    NodeList nodeList12 = nodeList10;
                                    int iA2 = a(nodeList12, i21);
                                    NodeList nodeList13 = elementsByTagName12;
                                    String str85 = str82;
                                    int iA3 = a(nodeList13, i21);
                                    NodeList nodeList14 = elementsByTagName13;
                                    String str86 = str69;
                                    int iA4 = a(nodeList14, i21);
                                    NodeList nodeList15 = elementsByTagName14;
                                    String str87 = str70;
                                    int iA5 = a(nodeList15, i21);
                                    NodeList nodeList16 = elementsByTagName15;
                                    String str88 = str71;
                                    int iA6 = a(nodeList16, i21);
                                    if (elementsByTagName16.getLength() > i21) {
                                        NodeList nodeList17 = elementsByTagName16;
                                        textContent = nodeList17.item(i21).getTextContent();
                                        nodeList3 = nodeList17;
                                    } else {
                                        nodeList3 = elementsByTagName16;
                                        textContent = str75;
                                    }
                                    Node nodeItem5 = elementsByTagName23.item(i21);
                                    NodeList nodeList18 = elementsByTagName23;
                                    int i23 = i21 < strArrSplit2.length ? (int) Float.parseFloat(strArrSplit2[i21]) : -1;
                                    if (i21 < strArrSplit.length) {
                                        NodeList nodeList19 = elementsByTagName10;
                                        i9 = (int) Float.parseFloat(strArrSplit[i21]);
                                        nodeList4 = nodeList19;
                                    } else {
                                        nodeList4 = elementsByTagName10;
                                        i9 = -1;
                                    }
                                    NodeList nodeList20 = nodeList4;
                                    String str89 = (arrayList == null || arrayList.size() <= i21) ? null : (String) arrayList.get(i21);
                                    String str90 = str72;
                                    ArrayList arrayList6 = arrayList;
                                    TemplateUtils.b bVar10 = bVar9;
                                    String str91 = str79;
                                    bVar10.g.add(c(strG, nodeItem5, i23, zN, iA, i9, str, str89, attribute10, iA2, iA3, iA4, iA5, iA6, textContent, sourceType7.name()));
                                    i21++;
                                    str75 = str75;
                                    strArrSplit2 = strArrSplit2;
                                    strArrSplit = strArrSplit;
                                    str74 = str74;
                                    str79 = str91;
                                    str82 = str85;
                                    iMax = i22;
                                    str77 = str77;
                                    attribute7 = attribute7;
                                    nodeList2 = nodeList11;
                                    nodeList10 = nodeList12;
                                    elementsByTagName13 = nodeList14;
                                    elementsByTagName15 = nodeList16;
                                    elementsByTagName16 = nodeList3;
                                    elementsByTagName23 = nodeList18;
                                    elementsByTagName10 = nodeList20;
                                    str69 = str86;
                                    str70 = str87;
                                    str81 = str81;
                                    str71 = str88;
                                    str76 = str76;
                                    str72 = str90;
                                    str80 = str80;
                                    bVar9 = bVar10;
                                    str40 = str40;
                                    sourceType7 = sourceType7;
                                    elementsByTagName12 = nodeList13;
                                    elementsByTagName14 = nodeList15;
                                    arrayList = arrayList6;
                                }
                                sourceType = sourceType7;
                                int i24 = iMax;
                                str7 = str82;
                                str8 = str69;
                                str9 = str70;
                                str10 = str71;
                                str11 = str72;
                                str12 = str76;
                                bVar = bVar9;
                                str13 = str79;
                                str14 = str80;
                                str15 = str81;
                                str16 = strG;
                                str17 = str84;
                                str6 = str40;
                                str4 = "color_intensities";
                                element2 = element6;
                                str5 = attribute7;
                                str18 = str74;
                                str19 = str77;
                                str20 = str75;
                                for (int i25 = 0; i25 < elementsByTagName24.getLength(); i25++) {
                                    Node nodeItem6 = elementsByTagName24.item(i25);
                                    bVar.g.add(b(str16, TemplateConsts.b(-1, ((Element) nodeItem6).getAttribute(str64)), nodeItem6, str));
                                }
                                i3 = i24;
                            } else {
                                sourceType = sourceType7;
                                str4 = "color_intensities";
                                str5 = attribute7;
                                str6 = str40;
                                str7 = str82;
                                str8 = str69;
                                str9 = str70;
                                str10 = str71;
                                str11 = str72;
                                str12 = str76;
                                bVar = bVar9;
                                str13 = str79;
                                str14 = str80;
                                str15 = str81;
                                str16 = strG;
                                element2 = element6;
                                str17 = str39;
                                str18 = str74;
                                str19 = str77;
                                str20 = str75;
                                i3 = 0;
                            }
                            if (elementsByTagName19.getLength() > 0) {
                                NodeList elementsByTagName26 = ((Element) elementsByTagName19.item(0)).getElementsByTagName("style_guid");
                                int i26 = 0;
                                while (i26 < elementsByTagName26.getLength()) {
                                    NamedNodeMap attributes = elementsByTagName26.item(i26).getAttributes();
                                    String str92 = str5;
                                    bVar.q.add(new com.perfectcorp.perfectlib.ph.database.ymk.palette.d(str92, z81.h(elementsByTagName26, i26), (int) Float.parseFloat(attributes.getNamedItem(str14).getNodeValue()), (int) Float.parseFloat(attributes.getNamedItem(str19).getNodeValue()), (int) Float.parseFloat("100")));
                                    i26++;
                                    str5 = str92;
                                }
                            }
                            String str93 = str19;
                            String str94 = str5;
                            if (elementsByTagName20.getLength() > 0) {
                                str21 = str18;
                                NodeList elementsByTagName27 = ((Element) elementsByTagName20.item(0)).getElementsByTagName(str21);
                                int i27 = 0;
                                while (i27 < elementsByTagName27.getLength()) {
                                    Element element8 = (Element) elementsByTagName27.item(i27);
                                    if (element8.hasAttributes()) {
                                        JsonObject jsonObject = new JsonObject();
                                        NamedNodeMap attributes2 = element8.getAttributes();
                                        int i28 = 0;
                                        while (i28 < attributes2.getLength()) {
                                            Node nodeItem7 = attributes2.item(i28);
                                            jsonObject.p(nodeItem7.getNodeName(), nodeItem7.getNodeValue());
                                            i28++;
                                            elementsByTagName27 = elementsByTagName27;
                                        }
                                        nodeList = elementsByTagName27;
                                        str35 = str15;
                                        jsonObject.p(str35, element8.getTextContent());
                                        sVar = new com.perfectcorp.perfectlib.ph.template.idc.d.s(jsonObject);
                                    } else {
                                        nodeList = elementsByTagName27;
                                        str35 = str15;
                                        sVar = new com.perfectcorp.perfectlib.ph.template.idc.d.s(element8.getTextContent());
                                    }
                                    bVar.s.add(new com.perfectcorp.perfectlib.ph.database.ymk.palette.f(str94, GsonHelper.b(sVar.f41661a, str35), sVar.a()));
                                    i27++;
                                    str15 = str35;
                                    elementsByTagName27 = nodeList;
                                    str16 = str16;
                                }
                            } else {
                                str21 = str18;
                            }
                            String str95 = str16;
                            HashMap map2 = bVar.f41594b;
                            HashMap map3 = bVar.f41594b;
                            map2.put(str94, new ArrayList());
                            if (elementsByTagName17.getLength() > 0) {
                                str22 = str66;
                                NodeList elementsByTagName28 = ((Element) elementsByTagName17.item(0)).getElementsByTagName(str22);
                                int i29 = 0;
                                while (i29 < elementsByTagName28.getLength()) {
                                    Element element9 = (Element) elementsByTagName28.item(i29);
                                    String strTrim = element9.getTextContent().trim();
                                    if (TextUtils.isEmpty(strTrim)) {
                                        i7 = i3;
                                        str34 = str4;
                                    } else {
                                        str34 = str4;
                                        String attribute11 = element9.getAttribute(str34);
                                        String attribute12 = element9.getAttribute("hidden_intensity");
                                        JsonObject jsonObject2 = new JsonObject();
                                        NamedNodeMap attributes3 = element9.getAttributes();
                                        i7 = i3;
                                        int i30 = 0;
                                        while (i30 < attributes3.getLength()) {
                                            Node nodeItem8 = attributes3.item(i30);
                                            int i31 = i30;
                                            String nodeName = nodeItem8.getNodeName();
                                            if (!str34.equals(nodeName) && !"hidden_intensity".equals(nodeName)) {
                                                jsonObject2.p(nodeName, nodeItem8.getNodeValue());
                                            }
                                            i30 = i31 + 1;
                                        }
                                        ((List) map3.get(str94)).add(new com.perfectcorp.perfectlib.ph.database.ymk.pattern.b(strTrim, str94, sourceType.name(), i7, attribute11, "", attribute12, new com.perfectcorp.perfectlib.ph.database.ymk.pattern.b.C0149b(jsonObject2, false)));
                                    }
                                    i29++;
                                    str4 = str34;
                                    elementsByTagName28 = elementsByTagName28;
                                    str21 = str21;
                                    i3 = i7;
                                }
                            } else {
                                str22 = str66;
                            }
                            str23 = str21;
                            int i32 = i3;
                            if (elementsByTagName18.getLength() > 0) {
                                int i33 = 0;
                                String str96 = str12;
                                NodeList elementsByTagName29 = ((Element) elementsByTagName18.item(0)).getElementsByTagName(str96);
                                int i34 = 0;
                                while (i34 < elementsByTagName29.getLength()) {
                                    Element element10 = (Element) elementsByTagName29.item(i34);
                                    NodeList elementsByTagName30 = ((Element) element10.getElementsByTagName("color_references").item(i33)).getElementsByTagName("color_reference");
                                    String attribute13 = element10.getAttribute(str22);
                                    String attribute14 = element10.getAttribute("thickness");
                                    NodeList nodeList21 = elementsByTagName29;
                                    String attribute15 = element10.getAttribute("smoothness");
                                    if (TextUtils.isEmpty(attribute13)) {
                                        str29 = str14;
                                        str30 = str94;
                                        str31 = str22;
                                        i5 = i34;
                                        str32 = str93;
                                        str33 = str83;
                                        i6 = 0;
                                    } else {
                                        String string3 = str20;
                                        String string4 = string3;
                                        String string5 = string4;
                                        String string6 = string5;
                                        String string7 = string6;
                                        String string8 = string7;
                                        String string9 = string8;
                                        String string10 = string9;
                                        int i35 = 0;
                                        while (true) {
                                            str31 = str22;
                                            i5 = i34;
                                            str32 = str93;
                                            str29 = str14;
                                            if (i35 >= elementsByTagName30.getLength()) {
                                                break;
                                            }
                                            Element element11 = (Element) elementsByTagName30.item(i35);
                                            NodeList nodeList22 = elementsByTagName30;
                                            StringBuilder sbT = n00.t(string9);
                                            sbT.append(TextUtils.isEmpty(string9) ? str20 : ", ");
                                            sbT.append(element11.getAttribute("palette_color_index"));
                                            string9 = sbT.toString();
                                            StringBuilder sbT2 = n00.t(string10);
                                            sbT2.append(TextUtils.isEmpty(string10) ? str20 : ", ");
                                            sbT2.append(element11.getAttribute("color_intensity"));
                                            string10 = sbT2.toString();
                                            StringBuilder sbT3 = n00.t(string3);
                                            sbT3.append(TextUtils.isEmpty(string3) ? str20 : ", ");
                                            sbT3.append(element11.getAttribute("shine_intensity"));
                                            string3 = sbT3.toString();
                                            StringBuilder sbT4 = n00.t(string4);
                                            sbT4.append(TextUtils.isEmpty(string4) ? str20 : ", ");
                                            sbT4.append(element11.getAttribute("ombre_range"));
                                            string4 = sbT4.toString();
                                            StringBuilder sbT5 = n00.t(string5);
                                            sbT5.append(TextUtils.isEmpty(string5) ? str20 : ", ");
                                            sbT5.append(element11.getAttribute("ombre_line_offset"));
                                            string5 = sbT5.toString();
                                            StringBuilder sbT6 = n00.t(string6);
                                            sbT6.append(TextUtils.isEmpty(string6) ? str20 : ", ");
                                            sbT6.append(element11.getAttribute("coloring_section"));
                                            string6 = sbT6.toString();
                                            StringBuilder sbT7 = n00.t(string7);
                                            sbT7.append(TextUtils.isEmpty(string7) ? str20 : ", ");
                                            sbT7.append(element11.getAttribute("color_under_eye_intensity"));
                                            string7 = sbT7.toString();
                                            StringBuilder sbT8 = n00.t(string8);
                                            sbT8.append(TextUtils.isEmpty(string8) ? str20 : ", ");
                                            sbT8.append(element11.getAttribute("coverage_level"));
                                            string8 = sbT8.toString();
                                            i35++;
                                            str22 = str31;
                                            i34 = i5;
                                            str93 = str32;
                                            str14 = str29;
                                            elementsByTagName30 = nodeList22;
                                        }
                                        JsonObject jsonObject3 = new JsonObject();
                                        jsonObject3.p("thickness", attribute14);
                                        jsonObject3.p("smoothness", attribute15);
                                        str33 = str83;
                                        jsonObject3.p(str33, string3);
                                        jsonObject3.p("ombre_range", string4);
                                        jsonObject3.p("ombre_line_offset", string5);
                                        jsonObject3.p("coloring_section", string6);
                                        jsonObject3.p("color_under_eye_intensity", string7);
                                        jsonObject3.p("coverage_level", string8);
                                        i6 = 0;
                                        int i36 = i32;
                                        str30 = str94;
                                        i32 = i36;
                                        ((List) map3.get(str94)).add(new com.perfectcorp.perfectlib.ph.database.ymk.pattern.b(attribute13, str30, string9, sourceType.name(), i36, string10, "", "", new com.perfectcorp.perfectlib.ph.database.ymk.pattern.b.C0149b(jsonObject3, false)));
                                    }
                                    i34 = i5 + 1;
                                    i33 = i6;
                                    str83 = str33;
                                    elementsByTagName29 = nodeList21;
                                    str96 = str96;
                                    str22 = str31;
                                    str93 = str32;
                                    str64 = str64;
                                    str14 = str29;
                                    str94 = str30;
                                }
                                i4 = i33;
                                str76 = str96;
                            } else {
                                str76 = str12;
                                i4 = 0;
                            }
                            str24 = str14;
                            String str97 = str94;
                            str64 = str64;
                            str25 = str22;
                            String str98 = str93;
                            Element element12 = element2;
                            String attribute16 = element12.getAttribute("transparency");
                            String attribute17 = element12.getAttribute("light");
                            String attribute18 = element12.getAttribute("diffuse");
                            String attribute19 = element12.getAttribute("reflection");
                            String attribute20 = element12.getAttribute("contrast");
                            String attribute21 = element12.getAttribute("roughness");
                            String attribute22 = element12.getAttribute("finish_type");
                            com.perfectcorp.perfectlib.ph.template.idc.d.f.a aVar = new com.perfectcorp.perfectlib.ph.template.idc.d.f.a();
                            aVar.f41656a = attribute16;
                            aVar.f41657b = attribute17;
                            aVar.f41658c = attribute18;
                            aVar.f41660f = attribute21;
                            aVar.d = attribute19;
                            aVar.g = attribute22;
                            aVar.f41659e = attribute20;
                            com.perfectcorp.perfectlib.ph.template.idc.d.f fVar = new com.perfectcorp.perfectlib.ph.template.idc.d.f(aVar);
                            int i37 = i4;
                            String string11 = n(elementsByTagName7).toString();
                            String str99 = str11;
                            String strR = r(element12.getAttribute(str99));
                            String strName3 = sourceType.name();
                            YMKPrimitiveData.SourceType sourceType8 = sourceType;
                            int i38 = sourceType8 == YMKPrimitiveData.SourceType.DOWNLOAD ? 1 : i37;
                            String str100 = str65;
                            String attribute23 = element12.getAttribute(str100);
                            String attribute24 = element12.getAttribute("subtype");
                            String strK = GsonHelper.f39261b.k(fVar);
                            str26 = str100;
                            str27 = str99;
                            sourceType2 = sourceType8;
                            str28 = str98;
                            bVar.f41596e.add(new d(str97, str95, i32, string11, strR, strName3, f2, i38, attribute6, str, attribute23, attribute24, strK));
                            i18 = i19 + 1;
                            str77 = str28;
                            bVar8 = bVar;
                            elementsByTagName6 = nodeList9;
                            str75 = str20;
                            str65 = str26;
                            str74 = str23;
                            str39 = str17;
                            str40 = str6;
                            str38 = str13;
                            sourceType7 = sourceType2;
                            str46 = str7;
                            str67 = str67;
                            str44 = str44;
                            str68 = str24;
                            str69 = str8;
                            str70 = str9;
                            str71 = str10;
                            str73 = str3;
                            str72 = str27;
                            rVar3 = this;
                            str63 = str78;
                            str66 = str25;
                        }
                    } else {
                        String str101 = "TemplateParser";
                        String str102 = str72;
                        if (nodeItem.getNodeName().equals("styles")) {
                            NodeList elementsByTagName31 = ((Element) nodeItem).getElementsByTagName("style");
                            for (int i39 = 0; i39 < elementsByTagName31.getLength(); i39++) {
                                Element element13 = (Element) elementsByTagName31.item(i39);
                                bVar8.n.add(new com.perfectcorp.perfectlib.ph.database.ymk.style.a(element13.getAttribute("guid"), element13.getAttribute("inner_ratio"), element13.getAttribute("feather_strength")));
                            }
                        } else {
                            String str103 = "guid";
                            boolean zEquals2 = "textures".equals(nodeItem.getNodeName());
                            rVar = this;
                            String str104 = rVar.d;
                            if (zEquals2) {
                                NodeList elementsByTagName32 = ((Element) nodeItem).getElementsByTagName(str74);
                                int i40 = 0;
                                while (i40 < elementsByTagName32.getLength()) {
                                    Element element14 = (Element) elementsByTagName32.item(i40);
                                    String attribute25 = element14.getAttribute(str103);
                                    String str105 = str102;
                                    String strD = d(element14.getAttribute(str105), Float.valueOf(f2));
                                    bVar8.p.add(new u(attribute25, Collections.singletonList(!TextUtils.isEmpty(strD) ? d21.j(str104, strD) : ""), ""));
                                    i40++;
                                    str102 = str105;
                                }
                            } else {
                                String str106 = "";
                                String str107 = str102;
                                if ("shapes".equals(nodeItem.getNodeName())) {
                                    NodeList elementsByTagName33 = ((Element) nodeItem).getElementsByTagName("shape");
                                    int i41 = 0;
                                    while (i41 < elementsByTagName33.getLength()) {
                                        Element element15 = (Element) elementsByTagName33.item(i41);
                                        String attribute26 = element15.getAttribute(str103);
                                        String attribute27 = element15.getAttribute(str107);
                                        String attribute28 = element15.getAttribute(WiimuPendingMask.Mask);
                                        String attribute29 = element15.getAttribute("shadow");
                                        String attribute30 = element15.getAttribute("highlight");
                                        String attribute31 = element15.getAttribute("lip_shape_ombre");
                                        String attribute32 = element15.getAttribute("itemZIP");
                                        String str108 = str104;
                                        String attribute33 = element15.getAttribute("height_intensity");
                                        NodeList nodeList23 = elementsByTagName33;
                                        String attribute34 = element15.getAttribute("height_upper_intensity");
                                        int i42 = i41;
                                        String attribute35 = element15.getAttribute("height_lower_intensity");
                                        String str109 = str103;
                                        String attribute36 = element15.getAttribute("size_intensity");
                                        String str110 = str107;
                                        String attribute37 = element15.getAttribute("width_intensity");
                                        String str111 = str106;
                                        String attribute38 = element15.getAttribute("mshaped_intensity");
                                        String attribute39 = element15.getAttribute("lip_shape_roi_start");
                                        if (TextUtils.isEmpty(attribute27)) {
                                            string = str111;
                                        } else {
                                            StringBuilder sbT9 = n00.t(str108);
                                            sbT9.append(d(attribute27, Float.valueOf(f2)));
                                            string = sbT9.toString();
                                        }
                                        String strR2 = rVar.r(attribute28);
                                        String strR3 = rVar.r(attribute29);
                                        String strR4 = rVar.r(attribute30);
                                        String strR5 = rVar.r(attribute31);
                                        boolean z2 = TextUtils.isEmpty(attribute28) || TemplateUtils.k(strR2);
                                        if (!TextUtils.isEmpty(attribute29) && !TemplateUtils.k(strR3)) {
                                            z2 = false;
                                        }
                                        if (!TextUtils.isEmpty(attribute30) && !TemplateUtils.k(strR4)) {
                                            z2 = false;
                                        }
                                        if (!TextUtils.isEmpty(attribute31) && !TemplateUtils.k(strR5)) {
                                            z2 = false;
                                        }
                                        if (z2) {
                                            int iB2 = TemplateConsts.b(-1, attribute33);
                                            int iB3 = TemplateConsts.b(-1, attribute34);
                                            int iB4 = TemplateConsts.b(-1, attribute35);
                                            int iB5 = TemplateConsts.b(-1, attribute36);
                                            int iB6 = TemplateConsts.b(-1, attribute37);
                                            int iB7 = TemplateConsts.b(-1, attribute38);
                                            try {
                                                JSONObject jSONObject = new JSONObject();
                                                jSONObject.put("attr_guid", attribute26);
                                                jSONObject.put("attr_thumbnail", string);
                                                jSONObject.put("attr_mask", strR2);
                                                jSONObject.put("attr_shadow", strR3);
                                                jSONObject.put("attr_highlight", strR4);
                                                jSONObject.put("attr_lip_shape_ombre", strR5);
                                                jSONObject.put("attr_height_intensity", iB2);
                                                jSONObject.put("attr_height_upper_intensity", iB3);
                                                jSONObject.put("attr_height_lower_intensity", iB4);
                                                jSONObject.put("attr_size_intensity", iB5);
                                                jSONObject.put("attr_width_intensity", iB6);
                                                jSONObject.put("attr_mshaped_intensity", iB7);
                                                jSONObject.put("attr_lip_shape_roi_start", attribute39 != 0 ? attribute39 : str111);
                                                jSONObject.put("attr_itemZIP", !TextUtils.isEmpty(attribute32) ? attribute32 : str111);
                                                string2 = jSONObject.toString();
                                                str2 = str101;
                                            } catch (Exception e2) {
                                                str2 = str101;
                                                Log.e(str2, "parseShapes: JSON build failed", e2);
                                                string2 = str111;
                                            }
                                            bVar8.o.add(new p(attribute26, string, string2));
                                        } else {
                                            str2 = str101;
                                        }
                                        i41 = i42 + 1;
                                        str101 = str2;
                                        str104 = str108;
                                        elementsByTagName33 = nodeList23;
                                        str106 = str111;
                                        str103 = str109;
                                        str107 = str110;
                                    }
                                }
                            }
                        }
                    }
                    rVar = this;
                }
                i10 = i2 + 1;
                rVar3 = rVar;
                childNodes = childNodes;
            }
            i10 = i2 + 1;
            rVar3 = rVar;
            childNodes = childNodes;
        }
    }

    /* JADX WARN: Code duplicated, block: B:337:0x0b53  */
    /* JADX WARN: Code duplicated, block: B:339:0x0b65  */
    /* JADX WARN: Code duplicated, block: B:340:0x0b6a  */
    /* JADX WARN: Code duplicated, block: B:343:0x0b76  */
    /* JADX WARN: Code duplicated, block: B:344:0x0b7b  */
    /* JADX WARN: Code duplicated, block: B:347:0x0b87  */
    public final void j(Element element, String str, float f2, int i2, Element element2, Element element3, ArrayList arrayList) {
        String strH;
        String attribute;
        String strH2;
        String attribute2;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        YMKPrimitiveData.SourceType sourceType;
        String str9;
        String str10;
        HashMap map;
        String str11;
        NodeList nodeList;
        String str12;
        String str13;
        String str14;
        String str15;
        String str16;
        String str17;
        String str18;
        String str19;
        String str20;
        String str21;
        String str22;
        String str23;
        ArrayList arrayList2;
        TemplateUtils.b bVar;
        String str24;
        String str25;
        String str26;
        String strH3;
        String strValueOf;
        boolean z;
        int length;
        String str27;
        int i3;
        String strH4;
        String str28;
        String str29;
        String str30;
        String str31;
        String str32;
        int i4;
        String str33;
        String str34;
        String str35;
        com.perfectcorp.perfectlib.ph.database.ymk.palette.f fVar;
        Object obj;
        JsonElement jsonElementR;
        String strN;
        JsonElement jsonElementR2;
        String strN2;
        boolean z2;
        NodeList nodeList2;
        NodeList nodeList3;
        NodeList nodeList4;
        List listA;
        NodeList elementsByTagName = element.getElementsByTagName("name");
        String strG = TemplateUtils.g();
        String strG2 = TemplateUtils.g();
        String strValueOf2 = String.valueOf(i2 + 1);
        List list = Collections.EMPTY_LIST;
        NodeList elementsByTagName2 = element.getElementsByTagName("pattern_guid");
        NodeList elementsByTagName3 = element.getElementsByTagName("palette_guid");
        NodeList elementsByTagName4 = element.getElementsByTagName("sku_guid");
        NodeList elementsByTagName5 = element.getElementsByTagName("effect_type");
        NodeList elementsByTagName6 = element.getElementsByTagName("global_intensity");
        NodeList elementsByTagName7 = element.getElementsByTagName("color");
        String str36 = strValueOf2;
        NodeList elementsByTagName8 = element.getElementsByTagName("color_intensity");
        String str37 = strG2;
        NodeList elementsByTagName9 = element.getElementsByTagName("color_is_shimmer");
        NodeList nodeList5 = elementsByTagName7;
        NodeList elementsByTagName10 = element.getElementsByTagName("shimmer_intensity");
        NodeList elementsByTagName11 = element.getElementsByTagName("glow_intensity");
        NodeList nodeList6 = elementsByTagName9;
        NodeList elementsByTagName12 = element.getElementsByTagName("shimmer_density");
        NodeList elementsByTagName13 = element.getElementsByTagName("intensity");
        NodeList nodeList7 = elementsByTagName12;
        NodeList elementsByTagName14 = element.getElementsByTagName("hidden_intensity");
        NodeList nodeList8 = elementsByTagName8;
        NodeList elementsByTagName15 = element.getElementsByTagName("shine_intensity");
        String str38 = strG;
        NodeList elementsByTagName16 = element.getElementsByTagName("metallic_intensity");
        NodeList elementsByTagName17 = element.getElementsByTagName("shimmer_color");
        NodeList elementsByTagName18 = element.getElementsByTagName("radius");
        NodeList nodeList9 = elementsByTagName17;
        NodeList elementsByTagName19 = element.getElementsByTagName("level_color");
        NodeList elementsByTagName20 = element.getElementsByTagName("feather_strength");
        NodeList elementsByTagName21 = element.getElementsByTagName("inner_ratio");
        NodeList elementsByTagName22 = element.getElementsByTagName("colored_mask_index");
        NodeList elementsByTagName23 = element.getElementsByTagName("position");
        NodeList elementsByTagName24 = element.getElementsByTagName("foundation_intensity_mode");
        NodeList elementsByTagName25 = element.getElementsByTagName("browdefinition");
        NodeList elementsByTagName26 = element.getElementsByTagName("browcurvature");
        NodeList elementsByTagName27 = element.getElementsByTagName("browthickness");
        NodeList elementsByTagName28 = element.getElementsByTagName("browpositionx");
        NodeList elementsByTagName29 = element.getElementsByTagName("browpositiony");
        NodeList elementsByTagName30 = element.getElementsByTagName("browheadlocation");
        NodeList elementsByTagName31 = element.getElementsByTagName("browtaillocation");
        NodeList elementsByTagName32 = element.getElementsByTagName("sku_set");
        NodeList elementsByTagName33 = element.getElementsByTagName("ombre_range");
        NodeList elementsByTagName34 = element.getElementsByTagName("ombre_line_offset");
        NodeList elementsByTagName35 = element.getElementsByTagName("textures");
        NodeList elementsByTagName36 = element.getElementsByTagName("thickness");
        NodeList elementsByTagName37 = element.getElementsByTagName("smoothness");
        NodeList elementsByTagName38 = element.getElementsByTagName("nail_position");
        NodeList elementsByTagName39 = element.getElementsByTagName("transparency");
        NodeList elementsByTagName40 = element.getElementsByTagName("light");
        NodeList elementsByTagName41 = element.getElementsByTagName("diffuse");
        NodeList elementsByTagName42 = element.getElementsByTagName("reflection");
        NodeList elementsByTagName43 = element.getElementsByTagName("contrast");
        NodeList elementsByTagName44 = element.getElementsByTagName("roughness");
        NodeList elementsByTagName45 = element.getElementsByTagName("finish_type");
        NodeList elementsByTagName46 = element.getElementsByTagName("shimmer_opacity");
        NodeList elementsByTagName47 = element.getElementsByTagName("textured_granularity");
        NodeList elementsByTagName48 = element.getElementsByTagName("shimmer_granularity");
        NodeList elementsByTagName49 = element.getElementsByTagName("object_distance_ratio");
        NodeList elementsByTagName50 = element.getElementsByTagName("is_rigid_body");
        NodeList elementsByTagName51 = element.getElementsByTagName("object_distance_ratio_back");
        NodeList elementsByTagName52 = element.getElementsByTagName("object_distance_ratio_palm");
        NodeList elementsByTagName53 = element.getElementsByTagName("adaptive_rotate");
        NodeList elementsByTagName54 = element.getElementsByTagName("fullness");
        NodeList elementsByTagName55 = element.getElementsByTagName("wrinkless");
        if (element2 != null) {
            strH = element2.getAttribute("pattern_guid");
            attribute = element2.getAttribute("pattern_mask_index");
        } else {
            strH = elementsByTagName2.getLength() > 0 ? z81.h(elementsByTagName2, 0) : null;
            attribute = null;
        }
        String str39 = strH;
        if (element3 != null) {
            strH2 = element3.getAttribute("palette_guid");
            attribute2 = element3.getAttribute("palette_color_index");
        } else {
            strH2 = elementsByTagName3.getLength() > 0 ? z81.h(elementsByTagName3, 0) : null;
            attribute2 = null;
        }
        String strH5 = elementsByTagName4.getLength() > 0 ? z81.h(elementsByTagName4, 0) : null;
        boolean zIsEmpty = TextUtils.isEmpty(strH5);
        TemplateUtils.b bVar2 = this.f41708c;
        if (!zIsEmpty) {
            bVar2.v.add(strH5);
        }
        String strH6 = elementsByTagName5.getLength() > 0 ? z81.h(elementsByTagName5, 0) : null;
        String strH7 = elementsByTagName6.getLength() > 0 ? z81.h(elementsByTagName6, 0) : "";
        String strH8 = elementsByTagName22.getLength() > 0 ? z81.h(elementsByTagName22, 0) : "";
        String strH9 = elementsByTagName23.getLength() > 0 ? z81.h(elementsByTagName23, 0) : "";
        String strH10 = elementsByTagName32.getLength() > 0 ? z81.h(elementsByTagName32, 0) : null;
        String strH11 = elementsByTagName33.getLength() > 0 ? z81.h(elementsByTagName33, 0) : null;
        String strH12 = elementsByTagName34.getLength() > 0 ? z81.h(elementsByTagName34, 0) : null;
        String strH13 = elementsByTagName36.getLength() > 0 ? z81.h(elementsByTagName36, 0) : "";
        String str40 = strH9;
        String strH14 = elementsByTagName37.getLength() > 0 ? z81.h(elementsByTagName37, 0) : "";
        String strH15 = elementsByTagName13.getLength() > 0 ? z81.h(elementsByTagName13, 0) : "";
        String strH16 = elementsByTagName14.getLength() > 0 ? z81.h(elementsByTagName14, 0) : "";
        String strH17 = elementsByTagName18.getLength() > 0 ? z81.h(elementsByTagName18, 0) : "";
        String strH18 = elementsByTagName15.getLength() > 0 ? z81.h(elementsByTagName15, 0) : "";
        if (!TextUtils.isEmpty(strH16)) {
            strH18 = strH16;
        }
        String strH19 = elementsByTagName24.getLength() > 0 ? z81.h(elementsByTagName24, 0) : "";
        String strH20 = elementsByTagName25.getLength() > 0 ? z81.h(elementsByTagName25, 0) : "";
        String strH21 = elementsByTagName26.getLength() > 0 ? z81.h(elementsByTagName26, 0) : "";
        String strH22 = elementsByTagName27.getLength() > 0 ? z81.h(elementsByTagName27, 0) : "";
        String strH23 = elementsByTagName28.getLength() > 0 ? z81.h(elementsByTagName28, 0) : "";
        String strH24 = elementsByTagName29.getLength() > 0 ? z81.h(elementsByTagName29, 0) : "";
        String strH25 = elementsByTagName30.getLength() > 0 ? z81.h(elementsByTagName30, 0) : "";
        String strH26 = elementsByTagName31.getLength() > 0 ? z81.h(elementsByTagName31, 0) : "";
        String str41 = "TemplateParser";
        if (nodeList6.getLength() != 0) {
            str2 = strH26;
            str3 = strH11;
            if (nodeList6.getLength() != nodeList5.getLength()) {
                Log.g(5, "TemplateParser", "parse() warning. colorCount(0) != isShimmerCount(" + nodeList6.getLength() + ") (presetGUID=" + str + ")");
            }
        } else {
            str2 = strH26;
            str3 = strH11;
        }
        HashMap map2 = bVar2.f41595c;
        ArrayList arrayList3 = bVar2.s;
        String str42 = strH13;
        ArrayList arrayList4 = bVar2.f41596e;
        HashMap map3 = bVar2.f41595c;
        ArrayList arrayList5 = arrayList3;
        TemplateUtils.b bVar3 = bVar2;
        map2.put(str38, new ArrayList());
        int length2 = nodeList5.getLength();
        YMKPrimitiveData.SourceType sourceType2 = this.f41710f;
        if (length2 > 0) {
            length = nodeList5.getLength();
            strValueOf = String.valueOf(length);
            String str43 = "engine_color";
            NodeList elementsByTagName56 = element.getElementsByTagName("engine_color");
            sourceType = sourceType2;
            NodeList elementsByTagName57 = element.getElementsByTagName("inner_text");
            HashMap map4 = map3;
            strH3 = null;
            int i5 = 0;
            while (i5 < nodeList5.getLength()) {
                String str44 = strH5;
                int i6 = nodeList8.getLength() > i5 ? (int) Float.parseFloat(nodeList8.item(i5).getTextContent().trim()) : -1;
                boolean zN = TemplateUtils.n(nodeList6, i5);
                String str45 = attribute2;
                NodeList nodeList10 = elementsByTagName10;
                String str46 = strH7;
                int iA = a(nodeList10, i5);
                NodeList nodeList11 = elementsByTagName11;
                String str47 = str37;
                int iA2 = a(nodeList11, i5);
                NodeList nodeList12 = nodeList7;
                int i7 = i6;
                int iA3 = a(nodeList12, i5);
                NodeList nodeList13 = elementsByTagName48;
                int iA4 = a(nodeList13, i5);
                String str48 = attribute;
                NodeList nodeList14 = elementsByTagName16;
                NodeList nodeList15 = nodeList8;
                int iA5 = a(nodeList14, i5);
                NodeList nodeList16 = nodeList9;
                String str49 = strH18;
                int iA6 = a(nodeList16, i5);
                String textContent = elementsByTagName57.getLength() > i5 ? elementsByTagName57.item(i5).getTextContent() : "";
                String textContent2 = elementsByTagName56.getLength() > i5 ? elementsByTagName56.item(i5).getTextContent() : "";
                if (textContent2.isEmpty()) {
                    if ("wig".equals(strH6)) {
                        List list2 = Collections.EMPTY_LIST;
                        d dVarM = m(strH2);
                        if (dVarM != null) {
                            String str50 = dVarM.f41625b;
                            nodeList2 = nodeList16;
                            ArrayList arrayList6 = new ArrayList();
                            nodeList3 = elementsByTagName57;
                            Iterator it = this.f41707b.f41602a.g.iterator();
                            while (it.hasNext()) {
                                Iterator it2 = it;
                                ColorInfo colorInfo = (ColorInfo) it.next();
                                NodeList nodeList17 = nodeList6;
                                if (colorInfo.f40929a.equals(str50)) {
                                    arrayList6.add(colorInfo);
                                }
                                it = it2;
                                nodeList6 = nodeList17;
                            }
                            nodeList4 = nodeList6;
                            listA = arrayList6;
                        } else {
                            nodeList2 = nodeList16;
                            nodeList3 = elementsByTagName57;
                            nodeList4 = nodeList6;
                            d dVarA = com.perfectcorp.perfectlib.ph.database.ymk.palette.a.a(YMKDatabase.b(), strH2);
                            listA = dVarA != null ? com.perfectcorp.perfectlib.ph.database.ymk.color.a.a(YMKDatabase.b(), dVarA.f41625b) : list2;
                        }
                        ColorInfo colorInfo2 = listA.size() > i5 ? (ColorInfo) listA.get(i5) : null;
                        try {
                            textContent2 = new JSONObject(colorInfo2 != null ? colorInfo2.f40933f : "").optString(str43);
                        } catch (Throwable th) {
                            Log.e(str41, th.getMessage(), th);
                            textContent2 = "";
                        }
                    } else {
                        nodeList2 = nodeList16;
                        nodeList3 = elementsByTagName57;
                        nodeList4 = nodeList6;
                    }
                    textContent2 = "";
                } else {
                    nodeList2 = nodeList16;
                    nodeList3 = elementsByTagName57;
                    nodeList4 = nodeList6;
                }
                NodeList nodeList18 = nodeList5;
                int i8 = i5;
                String str51 = strH19;
                NodeList nodeList19 = elementsByTagName56;
                String str52 = str40;
                String str53 = strH14;
                String str54 = strH12;
                String str55 = strH20;
                String str56 = strH21;
                String str57 = strH22;
                String str58 = strH23;
                String str59 = strH24;
                String str60 = strH25;
                String str61 = str2;
                String str62 = str3;
                String str63 = str42;
                ArrayList arrayList7 = arrayList5;
                String str64 = str43;
                String str65 = strH8;
                String str66 = str38;
                HashMap map5 = map4;
                String str67 = str36;
                String str68 = str41;
                String str69 = strH2;
                elementsByTagName48 = nodeList13;
                TemplateUtils.b bVar4 = bVar3;
                ColorInfo colorInfoC = c(str47, nodeList18.item(i5), i7, zN, iA, -1, strH6, textContent2, null, iA2, iA3, iA4, iA5, iA6, textContent, sourceType.name());
                String str70 = colorInfoC.g;
                String str71 = colorInfoC.d;
                strH3 = strH3 == null ? str71 : tr.h(strH3, ",", str71);
                strH2 = !str70.isEmpty() ? str70 : str69;
                ((List) map5.get(str66)).add(colorInfoC);
                i5 = i8 + 1;
                str41 = str68;
                arrayList5 = arrayList7;
                map4 = map5;
                bVar3 = bVar4;
                str37 = str47;
                strH5 = str44;
                nodeList5 = nodeList18;
                str36 = str67;
                nodeList8 = nodeList15;
                strH8 = str65;
                strH7 = str46;
                strH18 = str49;
                str43 = str64;
                attribute2 = str45;
                elementsByTagName11 = nodeList11;
                nodeList7 = nodeList12;
                elementsByTagName16 = nodeList14;
                strH17 = strH17;
                elementsByTagName56 = nodeList19;
                nodeList9 = nodeList2;
                elementsByTagName57 = nodeList3;
                nodeList6 = nodeList4;
                str40 = str52;
                str3 = str62;
                strH12 = str54;
                str42 = str63;
                strH14 = str53;
                strH19 = str51;
                strH20 = str55;
                strH21 = str56;
                strH22 = str57;
                strH23 = str58;
                strH24 = str59;
                strH25 = str60;
                str2 = str61;
                elementsByTagName10 = nodeList10;
                str38 = str66;
                attribute = str48;
            }
            str4 = str40;
            str5 = strH14;
            str6 = strH8;
            str7 = attribute;
            str8 = attribute2;
            String str72 = strH2;
            str9 = strH5;
            str10 = strH12;
            str11 = str37;
            nodeList = nodeList8;
            str12 = strH17;
            str13 = strH19;
            str14 = str38;
            str15 = strH20;
            str16 = strH21;
            str17 = strH22;
            str18 = strH23;
            str19 = strH24;
            str20 = strH25;
            str21 = str2;
            str22 = str3;
            str23 = str42;
            arrayList2 = arrayList5;
            bVar = bVar3;
            map = map4;
            str24 = str36;
            str25 = strH7;
            str26 = strH18;
            z = m(str72) == null && !l(str72);
            strH2 = str72;
        } else {
            str4 = str40;
            str5 = strH14;
            str6 = strH8;
            str7 = attribute;
            str8 = attribute2;
            sourceType = sourceType2;
            str9 = strH5;
            str10 = strH12;
            map = map3;
            str11 = str37;
            nodeList = nodeList8;
            str12 = strH17;
            str13 = strH19;
            str14 = str38;
            str15 = strH20;
            str16 = strH21;
            str17 = strH22;
            str18 = strH23;
            str19 = strH24;
            str20 = strH25;
            str21 = str2;
            str22 = str3;
            str23 = str42;
            arrayList2 = arrayList5;
            bVar = bVar3;
            str24 = str36;
            str25 = strH7;
            str26 = strH18;
            strH3 = null;
            strValueOf = null;
            z = false;
            length = 0;
        }
        if (elementsByTagName19.getLength() > 0) {
            length = elementsByTagName19.getLength();
            strValueOf = String.valueOf(length);
            int i9 = 0;
            while (i9 < elementsByTagName19.getLength()) {
                NodeList nodeList20 = nodeList;
                NodeList nodeList21 = elementsByTagName19;
                ColorInfo colorInfoB = b(str11, nodeList.getLength() > i9 ? (int) Float.parseFloat(nodeList20.item(i9).getTextContent().trim()) : -1, nodeList21.item(i9), strH6);
                String str73 = colorInfoB.g;
                if (!str73.isEmpty()) {
                    strH2 = str73;
                }
                ((List) map.get(str14)).add(colorInfoB);
                i9++;
                elementsByTagName19 = nodeList21;
                nodeList = nodeList20;
            }
            z = m(strH2) == null && !l(strH2);
        }
        String str74 = strH2;
        String str75 = str11;
        int i10 = length;
        String str76 = strValueOf;
        if (elementsByTagName20.getLength() <= 0 || elementsByTagName21.getLength() <= 0) {
            str27 = null;
        } else {
            String strG3 = TemplateUtils.g();
            String strH27 = z81.h(elementsByTagName20, 0);
            String strH28 = z81.h(elementsByTagName21, 0);
            bVar.n.add(new com.perfectcorp.perfectlib.ph.database.ymk.style.a(strG3, strH28, strH27));
            bVar.q.add(new com.perfectcorp.perfectlib.ph.database.ymk.palette.d(str74 != null ? str74 : str75, strG3, TemplateConsts.b(-1, strH28), TemplateConsts.b(-1, strH27), TemplateConsts.b(-1, "100")));
            str27 = strG3;
        }
        if (elementsByTagName35.getLength() > 0) {
            LinkedList linkedList = new LinkedList();
            for (int i11 = 0; i11 < elementsByTagName35.getLength(); i11++) {
                linkedList.add(elementsByTagName35.item(i11).getTextContent().trim());
            }
            list = linkedList;
        }
        if (elementsByTagName39.getLength() > 0) {
            i3 = 0;
            strH4 = z81.h(elementsByTagName39, 0);
        } else {
            i3 = 0;
            strH4 = "";
        }
        String strH29 = elementsByTagName40.getLength() > 0 ? z81.h(elementsByTagName40, i3) : "";
        String strH30 = elementsByTagName41.getLength() > 0 ? z81.h(elementsByTagName41, i3) : "";
        String strH31 = elementsByTagName42.getLength() > 0 ? z81.h(elementsByTagName42, i3) : "";
        String str77 = strH3;
        String strH32 = elementsByTagName43.getLength() > 0 ? z81.h(elementsByTagName43, i3) : "";
        String strH33 = elementsByTagName44.getLength() > 0 ? z81.h(elementsByTagName44, i3) : "";
        String strH34 = elementsByTagName45.getLength() > 0 ? z81.h(elementsByTagName45, i3) : "";
        String strH35 = elementsByTagName38.getLength() > 0 ? z81.h(elementsByTagName38, i3) : "";
        String strH36 = elementsByTagName46.getLength() > 0 ? z81.h(elementsByTagName46, i3) : "";
        String strH37 = elementsByTagName47.getLength() > 0 ? z81.h(elementsByTagName47, i3) : "";
        String strH38 = elementsByTagName48.getLength() > 0 ? z81.h(elementsByTagName48, i3) : "";
        String strH39 = elementsByTagName49.getLength() > 0 ? z81.h(elementsByTagName49, i3) : "";
        String strH40 = elementsByTagName50.getLength() > 0 ? z81.h(elementsByTagName50, i3) : "";
        String strH41 = elementsByTagName51.getLength() > 0 ? z81.h(elementsByTagName51, i3) : "";
        String strH42 = elementsByTagName52.getLength() > 0 ? z81.h(elementsByTagName52, i3) : "";
        String strH43 = elementsByTagName53.getLength() > 0 ? z81.h(elementsByTagName53, i3) : "";
        if (elementsByTagName54.getLength() > 0) {
            elementsByTagName54.item(i3).getTextContent().getClass();
        }
        if (elementsByTagName55.getLength() > 0) {
            elementsByTagName55.item(i3).getTextContent().getClass();
        }
        com.perfectcorp.perfectlib.ph.template.idc.d.f.a aVar = new com.perfectcorp.perfectlib.ph.template.idc.d.f.a();
        aVar.f41656a = strH4;
        aVar.f41657b = strH29;
        aVar.f41658c = strH30;
        aVar.d = strH31;
        aVar.f41659e = strH32;
        aVar.f41660f = strH33;
        aVar.g = strH34;
        com.perfectcorp.perfectlib.ph.template.idc.d.f fVar2 = new com.perfectcorp.perfectlib.ph.template.idc.d.f(aVar);
        if (z) {
            if (str74 != null) {
                String str78 = strH4;
                String string = n(elementsByTagName).toString();
                String str79 = strH6;
                YMKPrimitiveData.SourceType sourceType3 = sourceType;
                String str80 = strH34;
                str29 = str75;
                str30 = strH36;
                str28 = str80;
                str31 = strH37;
                str32 = strH38;
                str33 = str74;
                str35 = strH29;
                str34 = str78;
                i4 = i10;
                arrayList4.add(new d(str33, str29, i4, string, "", sourceType.name(), f2, sourceType3 == YMKPrimitiveData.SourceType.DOWNLOAD, "", str79, "", "", GsonHelper.f39261b.k(fVar2)));
                sourceType = sourceType3;
                strH6 = str79;
            } else {
                str28 = strH34;
                str30 = strH36;
                str31 = strH37;
                str32 = strH38;
                YMKPrimitiveData.SourceType sourceType4 = sourceType;
                str34 = strH4;
                str35 = strH29;
                String str81 = strH6;
                String string2 = n(elementsByTagName).toString();
                String strName = sourceType4.name();
                if (sourceType4 == YMKPrimitiveData.SourceType.DOWNLOAD) {
                    str29 = str75;
                    i4 = i10;
                    z2 = true;
                } else {
                    str29 = str75;
                    i4 = i10;
                    z2 = false;
                }
                str33 = str29;
                sourceType = sourceType4;
                d dVar = new d(str33, str29, i4, string2, "", strName, f2, z2, "", str81, "", "", GsonHelper.f39261b.k(new com.perfectcorp.perfectlib.ph.template.idc.d.f(new com.perfectcorp.perfectlib.ph.template.idc.d.f.a())));
                strH6 = str81;
                arrayList4.add(dVar);
            }
            bVar.f41594b.put(str33, new ArrayList());
        } else {
            strH33 = strH33;
            str28 = strH34;
            str29 = str75;
            str30 = strH36;
            str31 = strH37;
            str32 = strH38;
            strH39 = strH39;
            strH40 = strH40;
            strH41 = strH41;
            list = list;
            strH42 = strH42;
            strH43 = strH43;
            i4 = i10;
            str33 = str74;
            str76 = str76;
            str14 = str14;
            str27 = str27;
            strH32 = strH32;
            str34 = strH4;
            str35 = strH29;
            strH30 = strH30;
            strH31 = strH31;
            strH35 = strH35;
        }
        String str82 = str33;
        EffectInfo.Intensities.Builder builder = new EffectInfo.Intensities.Builder();
        builder.f40977a = TemplateConsts.b(-1, strH15);
        builder.f40978b = TemplateConsts.b(-1, str26);
        builder.f40979c = TemplateConsts.b(-1, str12);
        int iB = TemplateConsts.b(-1, str15);
        int iB2 = TemplateConsts.b(-1000, str16);
        int iB3 = TemplateConsts.b(-1000, str17);
        int iB4 = TemplateConsts.b(-1000, str18);
        int iB5 = TemplateConsts.b(-1000, str19);
        int i12 = i4;
        int iB6 = TemplateConsts.b(-1000, str20);
        String str83 = str29;
        int iB7 = TemplateConsts.b(-1000, str21);
        builder.d = iB;
        builder.f40980e = iB2;
        builder.f40981f = iB3;
        builder.g = iB4;
        builder.f40982h = iB5;
        builder.f40983i = iB6;
        builder.f40984j = iB7;
        EffectInfo.Intensities intensitiesA = builder.a();
        EffectInfo.Extras.Builder builder2 = new EffectInfo.Extras.Builder();
        builder2.f40960a = str82 != null ? str82 : "";
        builder2.f40961b = f2;
        builder2.f40962c = TemplateConsts.b(-1, str25);
        builder2.d = TemplateConsts.b(-1, str6);
        builder2.f40963e = str4;
        builder2.f40964f = str13;
        if (str7 != null && str8 != null) {
            String str84 = str7;
            builder2.g = TemplateConsts.b(-1, str84);
            String str85 = str8;
            builder2.f40965h = TemplateConsts.b(-1, str85);
            arrayList.add(new Pair(Integer.valueOf(TemplateConsts.b(-1, str84)), new com.perfectcorp.perfectlib.ph.database.ymk.pattern.b(str39, str82, str85, sourceType.name(), i12, str77, "", "", null)));
        }
        builder2.f40967j = str9 != null ? str9 : "";
        builder2.f40968k = strH10;
        builder2.l = str22;
        builder2.m = str10;
        builder2.f40966i = list;
        builder2.o = TemplateConsts.b(-1, str23);
        builder2.p = TemplateConsts.b(-1, str5);
        builder2.A = strH35;
        builder2.q = str34;
        builder2.r = str35;
        builder2.s = strH30;
        builder2.t = strH31;
        builder2.u = strH32;
        builder2.v = strH33;
        builder2.w = str28;
        builder2.x = str30;
        builder2.y = str31;
        builder2.z = str32;
        builder2.K = strH39;
        builder2.L = strH40;
        builder2.M = strH41;
        builder2.N = strH42;
        builder2.O = strH43;
        if ("blush".equals(strH6)) {
            if (MoreCollections.a(arrayList2)) {
                List listB = com.perfectcorp.perfectlib.ph.database.ymk.palette.g.b(YMKDatabase.b(), str82);
                if (listB.isEmpty()) {
                    fVar = null;
                } else {
                    obj = listB.get(0);
                }
                if (fVar != null) {
                    com.perfectcorp.perfectlib.ph.database.ymk.palette.f.a aVar2 = fVar.f41248c;
                    builder2.B = fVar.f41247b;
                    JsonObject jsonObject = aVar2.f41249a;
                    JsonObject jsonObject2 = aVar2.f41249a;
                    jsonElementR = jsonObject.r("glow_strength");
                    if (jsonElementR != null) {
                        strN = jsonElementR.n();
                    } else {
                        strN = null;
                    }
                    builder2.C = strN;
                    jsonElementR2 = jsonObject2.r("shimmer_density");
                    if (jsonElementR2 != null) {
                        strN2 = jsonElementR2.n();
                    } else {
                        strN2 = null;
                    }
                    builder2.E = strN2;
                    JsonElement jsonElementR3 = jsonObject2.r("shimmer_color");
                    builder2.D = jsonElementR3 != null ? jsonElementR3.n() : null;
                }
            } else {
                obj = arrayList2.get(0);
            }
            fVar = (com.perfectcorp.perfectlib.ph.database.ymk.palette.f) obj;
            if (fVar != null) {
                com.perfectcorp.perfectlib.ph.database.ymk.palette.f.a aVar3 = fVar.f41248c;
                builder2.B = fVar.f41247b;
                JsonObject jsonObject3 = aVar3.f41249a;
                JsonObject jsonObject4 = aVar3.f41249a;
                jsonElementR = jsonObject3.r("glow_strength");
                if (jsonElementR != null) {
                    strN = jsonElementR.n();
                } else {
                    strN = null;
                }
                builder2.C = strN;
                jsonElementR2 = jsonObject4.r("shimmer_density");
                if (jsonElementR2 != null) {
                    strN2 = jsonElementR2.n();
                } else {
                    strN2 = null;
                }
                builder2.E = strN2;
                JsonElement jsonElementR4 = jsonObject4.r("shimmer_color");
                builder2.D = jsonElementR4 != null ? jsonElementR4.n() : null;
            }
        }
        EffectInfo.Extras extras = new EffectInfo.Extras(builder2);
        ArrayList arrayList8 = bVar.f41601k;
        EffectInfo.Builder builder3 = new EffectInfo.Builder(str14, str, str39, strH6);
        builder3.f40947f = str83;
        builder3.f40946e = str76;
        builder3.g = intensitiesA.a().toString();
        builder3.f40948h = str24;
        builder3.f40949i = extras.i().toString();
        builder3.f40950j = str27;
        arrayList8.add(new EffectInfo(builder3));
        p(str39, strH6);
    }

    public final void k(NodeList nodeList) {
        for (int i2 = 0; i2 < nodeList.getLength(); i2++) {
            EnumMap enumMapE = e(nodeList.item(i2));
            for (TemplateConsts.LocaleEnum localeEnum : enumMapE.keySet()) {
                this.f41708c.m.add(new com.perfectcorp.perfectlib.ph.database.ymk.localization.a(localeEnum.name(), (String) enumMapE.get(TemplateConsts.LocaleEnum.def), (String) enumMapE.get(localeEnum)));
            }
        }
    }

    public final boolean l(String str) {
        return !TextUtils.isEmpty(str) && com.perfectcorp.perfectlib.ph.database.ymk.palette.a.d(this.f41706a, str, false);
    }

    public final d m(String str) {
        for (d dVar : this.f41707b.f41602a.f41596e) {
            if (dVar.f41624a.equals(str)) {
                return dVar;
            }
        }
        return null;
    }

    public final void o() {
        BeautyMode beautyModeD;
        u uVar;
        TemplateUtils.b bVar = this.f41708c;
        HashMap map = bVar.f41594b;
        ArrayList<d> arrayList = bVar.f41596e;
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            for (com.perfectcorp.perfectlib.ph.database.ymk.pattern.b bVar2 : (List) it.next()) {
                for (d dVar : arrayList) {
                    if (dVar.f41624a.equals(bVar2.f41252b)) {
                        p(bVar2.f41251a, dVar.f41632k);
                    }
                }
            }
        }
        Iterator it2 = bVar.f41593a.values().iterator();
        while (it2.hasNext()) {
            for (com.perfectcorp.perfectlib.ph.database.ymk.pattern.b bVar3 : (List) it2.next()) {
                Iterator it3 = bVar.d.iterator();
                while (it3.hasNext()) {
                    ((m) it3.next()).f41671a.equals(bVar3.f41251a);
                }
            }
        }
        for (com.perfectcorp.perfectlib.ph.database.ymk.palette.f fVar : bVar.s) {
            for (d dVar2 : arrayList) {
                String str = dVar2.f41624a;
                String str2 = dVar2.f41632k;
                if (str.equals(fVar.f41246a) && (beautyModeD = TemplateConsts.d(str2)) != BeautyMode.BLUSH && beautyModeD != BeautyMode.EYE_SHADOW) {
                    String str3 = fVar.f41247b;
                    if (!TextUtils.isEmpty(str3)) {
                        Iterator it4 = this.f41707b.f41602a.p.iterator();
                        do {
                            if (!it4.hasNext()) {
                                uVar = null;
                                break;
                            }
                            uVar = (u) it4.next();
                        } while (!uVar.f41715a.equals(str3));
                        if (uVar == null && !TextUtils.isEmpty(str3)) {
                            bVar.t.put(str3, new TemplateUtils.a(str3, TemplateUtils.a.EnumC0180a.f41592a, TemplateConsts.d(str2), this.f41710f));
                        }
                    }
                }
            }
        }
    }

    public final void p(String str, String str2) {
        m mVar;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Iterator it = this.f41707b.f41602a.d.iterator();
        do {
            if (!it.hasNext()) {
                mVar = null;
                break;
            }
            mVar = (m) it.next();
        } while (!mVar.f41671a.equals(str));
        if (mVar == null && !TextUtils.isEmpty(str)) {
            this.f41708c.t.put(str, new TemplateUtils.a(str, TemplateUtils.a.EnumC0180a.f41592a, TemplateConsts.d(str2), this.f41710f));
        }
    }

    public final void q(String str, Element element, float f2) throws JSONException {
        NodeList nodeList;
        String str2;
        ArrayList arrayList;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        String str13;
        String str14;
        String str15;
        String str16;
        YMKPrimitiveData.SourceType sourceType;
        int length;
        String[] strArrSplit;
        String str17;
        HashMap map;
        int i2;
        ArrayList arrayList2;
        String str18;
        String str19;
        String str20;
        int i3;
        String str21;
        NodeList nodeList2;
        String attribute = element.getAttribute("guid");
        String strName = e.f.EDIT.name();
        String strD = d(element.getAttribute("thumbnail"), Float.valueOf(f2));
        String attribute2 = element.getAttribute("texture_supported_mode");
        String attribute3 = element.getAttribute("hidden_in_room");
        element.getAttribute("wig_coloring_mode");
        String attribute4 = element.getAttribute("face_art_layer2");
        String attribute5 = element.getAttribute("wig_model_mode");
        String str22 = "type";
        String attribute6 = element.getAttribute("type");
        String attribute7 = element.getAttribute("ombre_range");
        String attribute8 = element.getAttribute("ombre_line_offset");
        String attribute9 = element.getAttribute("sku_guid");
        String attribute10 = element.getAttribute("width_enlarge");
        String attribute11 = element.getAttribute("upper_enlarge");
        String attribute12 = element.getAttribute("lower_enlarge");
        String attribute13 = element.getAttribute("transparency");
        String attribute14 = element.getAttribute("light");
        String attribute15 = element.getAttribute("reflection");
        String attribute16 = element.getAttribute("contrast");
        String attribute17 = element.getAttribute("roughness");
        String attribute18 = element.getAttribute("finish_type");
        String attribute19 = element.getAttribute("texture_mode");
        String str23 = "color";
        String attribute20 = element.getAttribute("color");
        String str24 = attribute19;
        String attribute21 = element.getAttribute("tip_ratio_thumb");
        String attribute22 = element.getAttribute("tip_ratio_fore");
        String attribute23 = element.getAttribute("tip_ratio_middle");
        String attribute24 = element.getAttribute("tip_ratio_ring");
        String attribute25 = element.getAttribute("tip_ratio_little");
        String attribute26 = element.getAttribute("shimmer_opacity");
        String attribute27 = element.getAttribute("textured_granularity");
        String attribute28 = element.getAttribute("shimmer_granularity");
        String str25 = "position";
        String str26 = "guid";
        String attribute29 = element.getAttribute("position");
        String str27 = attribute28;
        String attribute30 = element.getAttribute("fullness");
        String attribute31 = element.getAttribute("wrinkless");
        TemplateUtils.b bVar = this.f41708c;
        String str28 = attribute31;
        HashSet hashSet = bVar.v;
        String str29 = "thumbnail";
        HashMap map2 = bVar.f41593a;
        hashSet.add(attribute9);
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = arrayList3;
        String string = n(element.getElementsByTagName("name")).toString();
        NodeList elementsByTagName = element.getElementsByTagName("pattern_mask");
        String str30 = attribute;
        NodeList elementsByTagName2 = element.getElementsByTagName("pattern_mask_real_3D");
        NodeList elementsByTagName3 = element.getElementsByTagName("tattoo_mask");
        NodeList elementsByTagName4 = element.getElementsByTagName("lipstick_profile");
        NodeList elementsByTagName5 = element.getElementsByTagName("colored_mask");
        TemplateUtils.b bVar2 = bVar;
        NodeList elementsByTagName6 = element.getElementsByTagName("color");
        NodeList nodeList3 = elementsByTagName5;
        NodeList elementsByTagName7 = element.getElementsByTagName("palettes");
        NodeList elementsByTagName8 = element.getElementsByTagName("eyebrow_mode");
        NodeList elementsByTagName9 = element.getElementsByTagName("eyebrow_mode_3d");
        boolean z = true;
        NodeList nodeList4 = elementsByTagName6;
        String attribute32 = "";
        String attribute33 = attribute32;
        boolean z2 = true;
        int i4 = 0;
        int iA = 0;
        while (true) {
            int length2 = elementsByTagName.getLength();
            nodeList = elementsByTagName9;
            String str31 = "hair_warping_strength";
            str2 = str23;
            String str32 = "occluder_path";
            arrayList = arrayList4;
            str3 = "obb_path";
            str4 = attribute5;
            String str33 = "src";
            str5 = str22;
            str6 = attribute6;
            str7 = attribute7;
            str8 = attribute8;
            str9 = attribute9;
            str10 = attribute10;
            str11 = attribute11;
            str12 = "secondsrc";
            str13 = "modelanchorrightbottom";
            String str34 = "browtop";
            String str35 = "browhead";
            str14 = "modelanchorleftbottom";
            String str36 = "eyebottom";
            String str37 = "eyeright";
            String str38 = "eyetop";
            String str39 = "eyeleft";
            str15 = "browtail";
            str16 = WiimuPendingMask.Mask;
            if (i4 >= length2 || !z2) {
                break;
            }
            NodeList elementsByTagName10 = ((Element) elementsByTagName.item(i4)).getElementsByTagName(WiimuPendingMask.Mask);
            int i5 = i4;
            int i6 = 0;
            while (true) {
                if (i6 >= elementsByTagName10.getLength()) {
                    nodeList2 = elementsByTagName;
                    break;
                }
                Element element2 = (Element) elementsByTagName10.item(i6);
                nodeList2 = elementsByTagName;
                String attribute34 = element2.getAttribute(str33);
                String strR = r(attribute34);
                NodeList nodeList5 = elementsByTagName10;
                String str40 = str33;
                String attribute35 = element2.getAttribute("imagesrc");
                String strR2 = r(attribute35);
                String strR3 = r(element2.getAttribute("glpf_path"));
                if (TextUtils.isEmpty(strR3)) {
                    strR3 = r(element2.getAttribute("obc_path"));
                }
                if (TextUtils.isEmpty(strR3)) {
                    strR3 = r(element2.getAttribute("obb_path"));
                }
                String str41 = strR3;
                String strR4 = r(element2.getAttribute(str32));
                iA |= TemplateConsts.PatternPosition.c(element2.getAttribute(str25)).a();
                if (!TextUtils.isEmpty(attribute34) && !TemplateUtils.k(strR)) {
                    strR = DownloadFolderHelper.b().concat("/inplace") + attribute34;
                }
                if (!TextUtils.isEmpty(attribute35) && !TemplateUtils.k(strR2)) {
                    z2 = false;
                    break;
                }
                attribute32 = element2.getAttribute("defaultcolor");
                attribute33 = element2.getAttribute("defaultcolorguid");
                int iB = TemplateConsts.b(-1, element2.getAttribute(str31));
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(str39, z81.g(element2, str25, jSONObject, str25, str39));
                jSONObject.put(str37, z81.g(element2, str38, jSONObject, str38, str37));
                jSONObject.put("eyeshadowside", z81.g(element2, str36, jSONObject, str36, "eyeshadowside"));
                jSONObject.put("shapesrc", TemplatePaths.c(r(element2.getAttribute("shapesrc"))));
                jSONObject.put(str34, z81.g(element2, str35, jSONObject, str35, str34));
                String str42 = str15;
                jSONObject.put("basicbrowhead", z81.g(element2, str42, jSONObject, str42, "basicbrowhead"));
                jSONObject.put("basicbrowtail", z81.g(element2, "basicbrowtop", jSONObject, "basicbrowtop", "basicbrowtail"));
                jSONObject.put("basiceyetop", z81.g(element2, "basiceyehead", jSONObject, "basiceyehead", "basiceyetop"));
                jSONObject.put("shapesrc3d", TemplatePaths.c(r(z81.g(element2, "basiceyetail", jSONObject, "basiceyetail", "shapesrc3d"))));
                jSONObject.put("browtop3d", z81.g(element2, "browhead3d", jSONObject, "browhead3d", "browtop3d"));
                jSONObject.put("browcurvature", z81.g(element2, "browtail3d", jSONObject, "browtail3d", "browcurvature"));
                jSONObject.put("browpositionx", z81.g(element2, "browthickness", jSONObject, "browthickness", "browpositionx"));
                jSONObject.put("browdefinition", z81.g(element2, "browpositiony", jSONObject, "browpositiony", "browdefinition"));
                jSONObject.put("upperhead3d", z81.g(element2, "oversizedratio", jSONObject, "oversizedratio", "upperhead3d"));
                jSONObject.put("uppertail3d", z81.g(element2, "uppermiddle3d", jSONObject, "uppermiddle3d", "uppertail3d"));
                jSONObject.put("lowermiddle3d", z81.g(element2, "lowerhead3d", jSONObject, "lowerhead3d", "lowermiddle3d"));
                jSONObject.put("feathersrc3d", r(z81.g(element2, "lowertail3d", jSONObject, "lowertail3d", "feathersrc3d")));
                jSONObject.put("browmatchthickness", z81.g(element2, "browgoldenratio", jSONObject, "browgoldenratio", "browmatchthickness"));
                jSONObject.put("browtaillocation", z81.g(element2, "browheadlocation", jSONObject, "browheadlocation", "browtaillocation"));
                jSONObject.put("imagesrc", TemplatePaths.c(strR2));
                jSONObject.put("modelanchorright", z81.g(element2, "modelanchorleft", jSONObject, "modelanchorleft", "modelanchorright"));
                String str43 = str14;
                jSONObject.put(str43, z81.g(element2, "modelanchorlefttop", jSONObject, "modelanchorlefttop", str43));
                String str44 = str13;
                String str45 = str38;
                jSONObject.put(str44, z81.g(element2, "modelanchorrighttop", jSONObject, "modelanchorrighttop", str44));
                String str46 = str12;
                jSONObject.put(str46, TemplatePaths.c(r(z81.g(element2, "eyewearwidth", jSONObject, "eyewearwidth", str46))));
                jSONObject.put("left_obb_path", r(element2.getAttribute("left_obb_path")));
                jSONObject.put("left_obc_path", r(element2.getAttribute("left_obc_path")));
                jSONObject.put("left_glpf_path", r(element2.getAttribute("left_glpf_path")));
                jSONObject.put("right_obb_path", r(element2.getAttribute("right_obb_path")));
                jSONObject.put("right_obc_path", r(element2.getAttribute("right_obc_path")));
                jSONObject.put("right_glpf_path", r(element2.getAttribute("right_glpf_path")));
                jSONObject.put("modelanchorrighteye", z81.g(element2, "modelanchorlefteye", jSONObject, "modelanchorlefteye", "modelanchorrighteye"));
                jSONObject.put("modelanchorrightface", z81.g(element2, "modelanchorleftface", jSONObject, "modelanchorleftface", "modelanchorrightface"));
                jSONObject.put("object_distance_ratio", z81.g(element2, "wigshadowstrength", jSONObject, "wigshadowstrength", "object_distance_ratio"));
                jSONObject.put("object_distance_ratio_back", z81.g(element2, "is_rigid_body", jSONObject, "is_rigid_body", "object_distance_ratio_back"));
                jSONObject.put("adaptive_rotate", z81.g(element2, "object_distance_ratio_palm", jSONObject, "object_distance_ratio_palm", "adaptive_rotate"));
                int i7 = i6 + 1;
                str12 = str46;
                str15 = str42;
                arrayList5.add(new c(str30, String.valueOf(i7), Collections.singletonList(strR), jSONObject.toString(), Collections.singletonList(""), "", Collections.singletonList(str41), Collections.singletonList(strR4), iB));
                str38 = str45;
                str33 = str40;
                str39 = str39;
                str31 = str31;
                str25 = str25;
                str34 = str34;
                str36 = str36;
                str37 = str37;
                elementsByTagName = nodeList2;
                elementsByTagName10 = nodeList5;
                i6 = i7;
                str35 = str35;
                str32 = str32;
                attribute12 = attribute12;
                attribute13 = attribute13;
                attribute14 = attribute14;
                attribute15 = attribute15;
                attribute16 = attribute16;
                str13 = str44;
                str14 = str43;
            }
            arrayList5 = arrayList5;
            str30 = str30;
            str25 = str25;
            str23 = str2;
            arrayList4 = arrayList;
            attribute9 = str9;
            elementsByTagName = nodeList2;
            attribute5 = str4;
            attribute6 = str6;
            attribute7 = str7;
            attribute8 = str8;
            attribute10 = str10;
            attribute11 = str11;
            attribute12 = attribute12;
            attribute13 = attribute13;
            attribute14 = attribute14;
            attribute15 = attribute15;
            attribute16 = attribute16;
            attribute17 = attribute17;
            attribute18 = attribute18;
            str24 = str24;
            attribute21 = attribute21;
            attribute22 = attribute22;
            attribute23 = attribute23;
            attribute24 = attribute24;
            attribute25 = attribute25;
            attribute26 = attribute26;
            attribute27 = attribute27;
            str27 = str27;
            attribute30 = attribute30;
            str28 = str28;
            str22 = str5;
            i4 = i5 + 1;
            elementsByTagName9 = nodeList;
        }
        String str47 = "browhead";
        String str48 = "occluder_path";
        String str49 = attribute12;
        String str50 = attribute13;
        String str51 = attribute14;
        String str52 = attribute15;
        String str53 = attribute16;
        String str54 = attribute17;
        String str55 = attribute18;
        String str56 = str24;
        String str57 = attribute21;
        String str58 = attribute22;
        String str59 = attribute23;
        String str60 = attribute24;
        String str61 = attribute25;
        String str62 = attribute26;
        String str63 = attribute27;
        String str64 = str27;
        String str65 = attribute30;
        String str66 = str28;
        ArrayList arrayList6 = arrayList5;
        String str67 = str30;
        String str68 = "eyewearwidth";
        String str69 = str13;
        String str70 = "modelanchorrighttop";
        String str71 = str14;
        String str72 = "modelanchorlefttop";
        String str73 = "modelanchorleft";
        String str74 = "modelanchorright";
        String str75 = "src";
        String str76 = "eyetop";
        String str77 = "browtop";
        String str78 = "eyebottom";
        String str79 = "eyeright";
        String str80 = str25;
        int i8 = 0;
        while (i8 < elementsByTagName2.getLength() && z2) {
            NodeList nodeList6 = elementsByTagName2;
            NodeList elementsByTagName11 = ((Element) nodeList6.item(i8)).getElementsByTagName(str16);
            int i9 = 0;
            while (i9 < elementsByTagName11.getLength()) {
                Element element3 = (Element) elementsByTagName11.item(i9);
                String strR5 = r(element3.getAttribute(str3));
                String str81 = str48;
                String strR6 = r(element3.getAttribute(str81));
                int i10 = i8;
                JsonObject jsonObject = new JsonObject();
                NamedNodeMap attributes = element3.getAttributes();
                String str82 = str67;
                NodeList nodeList7 = nodeList6;
                int i11 = 0;
                while (i11 < attributes.getLength()) {
                    Node nodeItem = attributes.item(i11);
                    int i12 = i11;
                    String nodeName = nodeItem.getNodeName();
                    if (!str3.equals(nodeName) && !str81.equals(nodeName)) {
                        jsonObject.p(nodeName, nodeItem.getNodeValue());
                    }
                    i11 = i12 + 1;
                }
                int i13 = i9 + 1;
                str48 = str81;
                str67 = str82;
                arrayList6.add(new c(str67, String.valueOf(i13), Collections.EMPTY_LIST, GsonHelper.f39261b.k(jsonObject), Collections.singletonList(""), "", Collections.singletonList(strR5), Collections.singletonList(strR6), -1));
                str16 = str16;
                i8 = i10;
                i9 = i13;
                elementsByTagName11 = elementsByTagName11;
                str3 = str3;
                nodeList6 = nodeList7;
            }
            elementsByTagName2 = nodeList6;
            i8++;
            str3 = str3;
        }
        String str83 = str16;
        int i14 = 0;
        while (i14 < elementsByTagName3.getLength() && z2) {
            NodeList nodeList8 = elementsByTagName3;
            NodeList elementsByTagName12 = ((Element) nodeList8.item(i14)).getElementsByTagName(str83);
            int i15 = 0;
            while (true) {
                if (i15 >= elementsByTagName12.getLength()) {
                    str18 = str76;
                    str19 = str79;
                    str20 = str77;
                    i3 = i14;
                    str21 = str47;
                    break;
                }
                Element element4 = (Element) elementsByTagName12.item(i15);
                String strR7 = r(element4.getAttribute(str75));
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(str76, z81.g(element4, "eyeleft", jSONObject2, "eyeleft", str76));
                str18 = str76;
                String str84 = str78;
                String str85 = str79;
                jSONObject2.put(str84, z81.g(element4, str85, jSONObject2, str85, str84));
                int i16 = i15;
                String str86 = str77;
                i3 = i14;
                str21 = str47;
                jSONObject2.put(str86, z81.g(element4, str21, jSONObject2, str21, str86));
                str20 = str86;
                jSONObject2.put("side", z81.g(element4, str15, jSONObject2, str15, "side"));
                jSONObject2.put("blend_mode", z81.g(element4, str80, jSONObject2, str80, "blend_mode"));
                jSONObject2.put("intensity", element4.getAttribute("intensity"));
                String string2 = jSONObject2.toString();
                if (!TemplateUtils.k(strR7)) {
                    str78 = str84;
                    str19 = str85;
                    z2 = false;
                    break;
                }
                int i17 = i16 + 1;
                str78 = str84;
                arrayList.add(new com.perfectcorp.perfectlib.ph.database.ymk.tattooMask.a(str67, String.valueOf(i17), Collections.singletonList(strR7), string2, "", ""));
                str47 = str21;
                i14 = i3;
                str77 = str20;
                str79 = str85;
                i15 = i17;
                str76 = str18;
            }
            int i18 = i3 + 1;
            arrayList = arrayList;
            str47 = str21;
            elementsByTagName3 = nodeList8;
            str77 = str20;
            str79 = str19;
            i14 = i18;
            str76 = str18;
        }
        ArrayList arrayList7 = arrayList;
        int i19 = 0;
        while (true) {
            int length3 = nodeList3.getLength();
            sourceType = this.f41710f;
            if (i19 >= length3 || !z2) {
                break;
            }
            nodeList3 = nodeList3;
            NodeList elementsByTagName13 = ((Element) nodeList3.item(i19)).getElementsByTagName(str83);
            int i20 = 0;
            while (true) {
                if (i20 >= elementsByTagName13.getLength()) {
                    i2 = i19;
                    arrayList2 = arrayList7;
                    break;
                }
                Element element5 = (Element) elementsByTagName13.item(i20);
                String strR8 = r(element5.getAttribute(str75));
                String str87 = str12;
                String attribute36 = element5.getAttribute(str87);
                i2 = i19;
                String str88 = str29;
                String strR9 = r(element5.getAttribute(str88));
                String strR10 = r(attribute36);
                arrayList2 = arrayList7;
                int iB2 = TemplateConsts.b(-1, element5.getAttribute("hair_warping_strength"));
                if (!TemplateUtils.k(strR8) || (!TextUtils.isEmpty(attribute36) && !TemplateUtils.k(strR10))) {
                    str12 = str87;
                    str29 = str88;
                    z2 = false;
                    break;
                }
                JSONObject jSONObject3 = new JSONObject();
                String str89 = str75;
                String str90 = str83;
                String str91 = str74;
                String str92 = str73;
                jSONObject3.put(str91, z81.g(element5, str92, jSONObject3, str92, str91));
                String str93 = str67;
                String str94 = str71;
                String str95 = str72;
                jSONObject3.put(str94, z81.g(element5, str95, jSONObject3, str95, str94));
                String str96 = str69;
                String str97 = str70;
                jSONObject3.put(str96, z81.g(element5, str97, jSONObject3, str97, str96));
                String str98 = str68;
                jSONObject3.put(str98, element5.getAttribute(str98));
                if (TextUtils.isEmpty(attribute36)) {
                    strR10 = "";
                }
                jSONObject3.put(str87, TemplatePaths.c(strR10));
                String string3 = jSONObject3.toString();
                String strG = TemplateUtils.g();
                String str99 = str2;
                NodeList elementsByTagName14 = element5.getElementsByTagName(str99);
                int i21 = 0;
                while (i21 < elementsByTagName14.getLength()) {
                    bVar2.f41597f.add(c(strG, elementsByTagName14.item(i21), -1, false, -1, -1, str, null, null, -1, -1, -1, -1, -1, null, sourceType.name()));
                    i21++;
                    str98 = str98;
                    str97 = str97;
                }
                String str100 = str98;
                int i22 = i20 + 1;
                str12 = str87;
                str2 = str99;
                str29 = str88;
                str67 = str93;
                arrayList6.add(new c(str67, String.valueOf(i22), Collections.singletonList(strR8), string3, Collections.singletonList(strR9), strG, Collections.singletonList(""), Collections.singletonList(""), iB2));
                i20 = i22;
                str73 = str92;
                i19 = i2;
                elementsByTagName13 = elementsByTagName13;
                str83 = str90;
                nodeList3 = nodeList3;
                arrayList7 = arrayList2;
                str68 = str100;
                str69 = str96;
                str70 = str97;
                str71 = str94;
                str72 = str95;
                str74 = str91;
                str75 = str89;
            }
            i19 = i2 + 1;
            bVar2 = bVar2;
            str73 = str73;
            str83 = str83;
            arrayList7 = arrayList2;
            str68 = str68;
            str69 = str69;
            str70 = str70;
            str71 = str71;
            str72 = str72;
            str74 = str74;
            str75 = str75;
        }
        ArrayList arrayList8 = arrayList7;
        TemplateUtils.b bVar3 = bVar2;
        String attribute37 = "";
        for (int i23 = 0; i23 < elementsByTagName4.getLength(); i23++) {
            attribute37 = ((Element) elementsByTagName4.item(i23)).getAttribute(str5);
        }
        String attribute38 = "";
        for (int i24 = 0; i24 < elementsByTagName8.getLength(); i24++) {
            attribute38 = ((Element) elementsByTagName8.item(i24)).getAttribute(str5);
        }
        String attribute39 = "";
        for (int i25 = 0; i25 < nodeList.getLength(); i25++) {
            attribute39 = ((Element) nodeList.item(i25)).getAttribute(str5);
        }
        HashMap map3 = map2;
        map3.put(str67, new ArrayList());
        int i26 = 0;
        while (i26 < nodeList4.getLength()) {
            nodeList4 = nodeList4;
            str26 = str26;
            String attribute40 = ((Element) nodeList4.item(i26)).getAttribute(str26);
            if (TextUtils.isEmpty(attribute40)) {
                str17 = attribute39;
                map = map3;
            } else {
                str17 = attribute39;
                map = map3;
                ((List) map3.get(str67)).add(new com.perfectcorp.perfectlib.ph.database.ymk.pattern.b(str67, attribute40, sourceType.name(), 1, null, "", "", com.perfectcorp.perfectlib.ph.database.ymk.pattern.b.f41250j));
            }
            map3 = map;
            i26++;
            bVar3 = bVar3;
            attribute39 = str17;
            arrayList6 = arrayList6;
        }
        ArrayList arrayList9 = arrayList6;
        String str101 = attribute39;
        HashMap map4 = map3;
        TemplateUtils.b bVar4 = bVar3;
        if (elementsByTagName7.getLength() > 0) {
            NodeList elementsByTagName15 = ((Element) elementsByTagName7.item(0)).getElementsByTagName("palette_guid");
            int i27 = 0;
            while (i27 < elementsByTagName15.getLength()) {
                Element element6 = (Element) elementsByTagName15.item(i27);
                String strTrim = element6.getTextContent().trim();
                String attribute41 = element6.getAttribute("color_intensities");
                if (attribute41.isEmpty()) {
                    length = 0;
                    strArrSplit = new String[0];
                } else {
                    length = 0;
                    strArrSplit = attribute41.split(",");
                }
                if (strArrSplit != null) {
                    length = strArrSplit.length;
                }
                ((List) map4.get(str67)).add(new com.perfectcorp.perfectlib.ph.database.ymk.pattern.b(str67, strTrim, sourceType.name(), length, attribute41, element6.getAttribute("radius"), "", com.perfectcorp.perfectlib.ph.database.ymk.pattern.b.f41250j));
                i27++;
                map4 = map4;
            }
        }
        m.b.a aVar = new m.b.a();
        aVar.f41689a = attribute37;
        aVar.f41690b = attribute38;
        aVar.f41691c = str101;
        aVar.f41692e = attribute4;
        aVar.f41695i = str6;
        aVar.g = str7;
        aVar.f41694h = str8;
        aVar.f41693f = str4;
        aVar.f41696j = str10;
        aVar.f41697k = str11;
        aVar.l = str49;
        aVar.m = str50;
        aVar.n = str51;
        aVar.o = str52;
        aVar.p = str53;
        aVar.q = str54;
        aVar.r = str55;
        aVar.s = str56;
        aVar.t = attribute20;
        aVar.u = str57;
        aVar.v = str58;
        aVar.w = str59;
        aVar.x = str60;
        aVar.y = str61;
        aVar.z = str62;
        aVar.A = str63;
        aVar.B = str64;
        aVar.C = attribute29;
        aVar.D = str65;
        aVar.E = str66;
        m.b bVar5 = new m.b(aVar);
        List listSingletonList = Collections.singletonList(TextUtils.isEmpty(strD) ? "-_-" : n00.r(this.d, strD, new StringBuilder()));
        String strName2 = sourceType.name();
        boolean z3 = sourceType == YMKPrimitiveData.SourceType.DOWNLOAD;
        String strU = !TextUtils.isEmpty(attribute32) ? TemplateUtils.u(attribute32) : "";
        if (TextUtils.isEmpty(attribute2)) {
            attribute2 = "";
        }
        if (TextUtils.isEmpty(attribute3)) {
            attribute3 = "";
        }
        m mVar = new m(str67, str, string, listSingletonList, strName2, strName, f2, z3, str9, bVar5, strU, attribute33, attribute2, attribute3, iA);
        if (!TextUtils.isEmpty(mVar.a()) && !TemplateUtils.k(mVar.a())) {
            z = false;
        }
        if (z2 && z) {
            Iterator it = arrayList9.iterator();
            while (it.hasNext()) {
                bVar4.f41598h.add((c) it.next());
            }
            Iterator it2 = arrayList8.iterator();
            while (it2.hasNext()) {
                bVar4.f41599i.add((com.perfectcorp.perfectlib.ph.database.ymk.tattooMask.a) it2.next());
            }
            bVar4.d.add(mVar);
        }
    }

    public final String r(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        return n00.r(this.d, str, new StringBuilder());
    }
}
