package com.perfectcorp.perfectlib.ph.template.idc;

import android.text.TextUtils;
import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.makeupcam.template.TemplateConsts;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.al;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import com.perfectcorp.thirdparty.com.google.gson.JsonArray;
import com.perfectcorp.thirdparty.com.google.gson.JsonDeserializationContext;
import com.perfectcorp.thirdparty.com.google.gson.JsonDeserializer;
import com.perfectcorp.thirdparty.com.google.gson.JsonElement;
import com.perfectcorp.thirdparty.com.google.gson.JsonNull;
import com.perfectcorp.thirdparty.com.google.gson.JsonObject;
import com.perfectcorp.thirdparty.com.google.gson.JsonPrimitive;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class b {
    public final List<String> chs;
    public final List<String> cht;
    public final List<String> def;
    public final List<String> deu;
    public final List<String> enu;
    public final List<String> esp;
    public final List<String> fas;
    public final List<String> fra;
    public final List<String> idn;
    public final List<String> ita;
    public final List<String> jpn;
    public final List<String> kor;
    public final List<String> mys;
    public final List<String> nld;
    public final List<String> plk;
    public final List<String> prt;
    public final List<String> ptb;
    public final List<String> ptg;
    public final List<String> rus;
    public final List<String> tha;
    public final List<String> tur;

    public static final class a implements JsonDeserializer<b> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f41653a;

        public a() {
            bz bzVar = ImmutableList.f42200c;
            Object[] objArr = new Object[21];
            objArr[0] = "def";
            objArr[1] = "enu";
            objArr[2] = "cht";
            objArr[3] = "chs";
            objArr[4] = "jpn";
            objArr[5] = "kor";
            objArr[6] = "deu";
            objArr[7] = "esp";
            objArr[8] = "fra";
            objArr[9] = "ita";
            objArr[10] = "plk";
            objArr[11] = "ptb";
            System.arraycopy(new String[]{"ptg", "prt", "rus", "nld", "idn", "mys", "tha", "tur", "fas"}, 0, objArr, 12, 9);
            al.a.d(21, objArr);
            this.f41653a = ImmutableList.s(21, objArr);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // com.perfectcorp.thirdparty.com.google.gson.JsonDeserializer
        public final Object a(JsonElement jsonElement, JsonDeserializationContext jsonDeserializationContext) {
            jsonElement.getClass();
            int i2 = 0;
            if (!(jsonElement instanceof JsonObject)) {
                return new b(i2);
            }
            JsonObject jsonObjectM = jsonElement.m();
            JsonObject jsonObject = new JsonObject();
            bz bzVarListIterator = ((ImmutableList) this.f41653a).listIterator(0);
            while (bzVarListIterator.hasNext()) {
                String str = (String) bzVarListIterator.next();
                JsonElement jsonElementR = jsonObjectM.r(str);
                if (jsonElementR != null && (jsonElementR instanceof JsonArray)) {
                    ArrayList arrayList = ((JsonArray) jsonElementR).f42452b;
                    if (arrayList.size() != 0) {
                        JsonElement jsonElement2 = (JsonElement) arrayList.get(0);
                        jsonElement2.getClass();
                        if (jsonElement2 instanceof JsonPrimitive) {
                            JsonPrimitive jsonPrimitive = (JsonPrimitive) jsonElement2;
                            if (jsonPrimitive.f42456b instanceof String) {
                                JsonArray jsonArray = new JsonArray();
                                String strN = jsonPrimitive.n();
                                jsonArray.f42452b.add(strN == null ? JsonNull.f42453b : new JsonPrimitive(strN));
                                jsonObject.o(str, jsonArray);
                            }
                        }
                    }
                }
            }
            return (b) GsonHelper.f39260a.h(jsonObject, b.class);
        }
    }

    private b() {
        List<String> list = Collections.EMPTY_LIST;
        this.def = list;
        this.enu = list;
        this.cht = list;
        this.chs = list;
        this.jpn = list;
        this.kor = list;
        this.deu = list;
        this.esp = list;
        this.fra = list;
        this.ita = list;
        this.plk = list;
        this.ptb = list;
        this.ptg = list;
        this.prt = list;
        this.rus = list;
        this.nld = list;
        this.idn = list;
        this.mys = list;
        this.tha = list;
        this.tur = list;
        this.fas = list;
    }

    public static JSONObject a(b bVar) {
        String str;
        TemplateConsts.LocaleEnum[] localeEnumArrValues = TemplateConsts.LocaleEnum.values();
        JSONObject jSONObjectA = new com.perfectcorp.perfectlib.ph.template.e.d().a();
        for (TemplateConsts.LocaleEnum localeEnum : localeEnumArrValues) {
            try {
                String strTrim = "";
                switch (c.f41654a[localeEnum.ordinal()]) {
                    case 1:
                        if (!MoreCollections.a(bVar.enu)) {
                            str = bVar.enu.get(0);
                            strTrim = str.trim();
                        }
                        break;
                    case 2:
                        if (!MoreCollections.a(bVar.cht)) {
                            str = bVar.cht.get(0);
                            strTrim = str.trim();
                        }
                        break;
                    case 3:
                        if (!MoreCollections.a(bVar.chs)) {
                            str = bVar.chs.get(0);
                            strTrim = str.trim();
                        }
                        break;
                    case 4:
                        if (!MoreCollections.a(bVar.jpn)) {
                            str = bVar.jpn.get(0);
                            strTrim = str.trim();
                        }
                        break;
                    case 5:
                        if (!MoreCollections.a(bVar.kor)) {
                            str = bVar.kor.get(0);
                            strTrim = str.trim();
                        }
                        break;
                    case 6:
                        if (!MoreCollections.a(bVar.deu)) {
                            str = bVar.deu.get(0);
                            strTrim = str.trim();
                        }
                        break;
                    case 7:
                        if (!MoreCollections.a(bVar.esp)) {
                            str = bVar.esp.get(0);
                            strTrim = str.trim();
                        }
                        break;
                    case 8:
                        if (!MoreCollections.a(bVar.fra)) {
                            str = bVar.fra.get(0);
                            strTrim = str.trim();
                        }
                        break;
                    case 9:
                        if (!MoreCollections.a(bVar.ita)) {
                            str = bVar.ita.get(0);
                            strTrim = str.trim();
                        }
                        break;
                    case 10:
                        if (!MoreCollections.a(bVar.plk)) {
                            str = bVar.plk.get(0);
                            strTrim = str.trim();
                        }
                        break;
                    case 11:
                        if (!MoreCollections.a(bVar.ptb)) {
                            str = bVar.ptb.get(0);
                            strTrim = str.trim();
                        }
                        break;
                    case 12:
                        if (!MoreCollections.a(bVar.ptg)) {
                            str = bVar.ptg.get(0);
                            strTrim = str.trim();
                        }
                        break;
                    case 13:
                        if (!MoreCollections.a(bVar.prt)) {
                            str = bVar.prt.get(0);
                            strTrim = str.trim();
                        }
                        break;
                    case 14:
                        if (!MoreCollections.a(bVar.rus)) {
                            str = bVar.rus.get(0);
                            strTrim = str.trim();
                        }
                        break;
                    case 15:
                        if (!MoreCollections.a(bVar.nld)) {
                            str = bVar.nld.get(0);
                            strTrim = str.trim();
                        }
                        break;
                    case 16:
                        if (!MoreCollections.a(bVar.idn)) {
                            str = bVar.idn.get(0);
                            strTrim = str.trim();
                        }
                        break;
                    case 17:
                        if (!MoreCollections.a(bVar.mys)) {
                            str = bVar.mys.get(0);
                            strTrim = str.trim();
                        }
                        break;
                    case 18:
                        if (!MoreCollections.a(bVar.tha)) {
                            str = bVar.tha.get(0);
                            strTrim = str.trim();
                        }
                        break;
                    case 19:
                        if (!MoreCollections.a(bVar.tur)) {
                            str = bVar.tur.get(0);
                            strTrim = str.trim();
                        }
                        break;
                    case 20:
                        if (!MoreCollections.a(bVar.fas)) {
                            str = bVar.fas.get(0);
                            strTrim = str.trim();
                        }
                        break;
                    default:
                        if (!MoreCollections.a(bVar.def)) {
                            str = bVar.def.get(0);
                            strTrim = str.trim();
                        }
                        break;
                }
                if (!TextUtils.isEmpty(strTrim)) {
                    jSONObjectA.put(localeEnum.name(), strTrim);
                }
            } catch (Throwable th) {
                Log.e("IDC-MultiLangText", "[extractLookNameToJSON] error occur on assign a name to JSON from a field: " + localeEnum.name() + ", exception: " + th.getMessage(), th);
            }
        }
        return jSONObjectA;
    }

    public /* synthetic */ b(int i2) {
        this();
    }
}
