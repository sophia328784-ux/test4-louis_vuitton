package com.perfectcorp.perfectlib.hc.database.ymk;

import android.text.TextUtils;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import com.perfectcorp.thirdparty.com.google.gson.JsonArray;
import com.perfectcorp.thirdparty.com.google.gson.JsonElement;
import com.perfectcorp.thirdparty.com.google.gson.JsonNull;
import com.perfectcorp.thirdparty.com.google.gson.JsonObject;
import com.perfectcorp.thirdparty.com.google.gson.JsonPrimitive;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
final class ao$b {
    public String thumbnail = "";
    public List<ao$a> colorReferences = Collections.EMPTY_LIST;
    public String ombreRange = "";
    public String ombreLineOffset = "";

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
    public final String a(String str) {
        Float fValueOf;
        JsonElement jsonElement;
        Float fValueOf2;
        JsonElement jsonElement2;
        JsonElement jsonElement3;
        JsonElement jsonElement4;
        JsonElement jsonElement5;
        JsonObject jsonObject = new JsonObject();
        jsonObject.p("pattern_guid", str);
        jsonObject.p("thumbnail", this.thumbnail);
        String str2 = this.ombreRange;
        JsonArray jsonArray = null;
        if (TextUtils.isEmpty(str2)) {
            fValueOf = null;
        } else {
            try {
                fValueOf = Float.valueOf(Float.parseFloat(str2));
            } catch (Throwable th) {
                Log.e("DatabaseUpgrade_1_32", "[tryParse] failed", th);
                fValueOf = null;
            }
        }
        if (fValueOf == null) {
            jsonElement = JsonNull.f42453b;
        } else {
            JsonPrimitive jsonPrimitive = new JsonPrimitive();
            jsonPrimitive.p(fValueOf);
            jsonElement = jsonPrimitive;
        }
        jsonObject.o("ombre_range", jsonElement);
        String str3 = this.ombreLineOffset;
        if (TextUtils.isEmpty(str3)) {
            fValueOf2 = null;
        } else {
            try {
                fValueOf2 = Float.valueOf(Float.parseFloat(str3));
            } catch (Throwable th2) {
                Log.e("DatabaseUpgrade_1_32", "[tryParse] failed", th2);
                fValueOf2 = null;
            }
        }
        if (fValueOf2 == null) {
            jsonElement2 = JsonNull.f42453b;
        } else {
            JsonPrimitive jsonPrimitive2 = new JsonPrimitive();
            jsonPrimitive2.p(fValueOf2);
            jsonElement2 = jsonPrimitive2;
        }
        jsonObject.o("ombre_line_offset", jsonElement2);
        if (this.colorReferences != null) {
            jsonArray = new JsonArray();
            for (ao$a ao_a : this.colorReferences) {
                ao_a.getClass();
                JsonObject jsonObject2 = new JsonObject();
                jsonObject2.p("palette_guid", ao_a.paletteGuid);
                Integer numA = ao$a.a(ao_a.paletteColorIndex);
                if (numA == null) {
                    jsonElement3 = JsonNull.f42453b;
                } else {
                    JsonPrimitive jsonPrimitive3 = new JsonPrimitive();
                    jsonPrimitive3.p(numA);
                    jsonElement3 = jsonPrimitive3;
                }
                jsonObject2.o("palette_color_index", jsonElement3);
                Integer numA2 = ao$a.a(ao_a.colorIntensity);
                if (numA2 == null) {
                    jsonElement4 = JsonNull.f42453b;
                } else {
                    JsonPrimitive jsonPrimitive4 = new JsonPrimitive();
                    jsonPrimitive4.p(numA2);
                    jsonElement4 = jsonPrimitive4;
                }
                jsonObject2.o("color_intensity", jsonElement4);
                Integer numA3 = ao$a.a(ao_a.shineIntensity);
                if (numA3 == null) {
                    jsonElement5 = JsonNull.f42453b;
                } else {
                    JsonPrimitive jsonPrimitive5 = new JsonPrimitive();
                    jsonPrimitive5.p(numA3);
                    jsonElement5 = jsonPrimitive5;
                }
                jsonObject2.o("shine_intensity", jsonElement5);
                jsonArray.o(jsonObject2);
            }
        }
        jsonObject.o("color_references", jsonArray);
        return GsonBaseResponse.f41999a.k(jsonObject);
    }
}
