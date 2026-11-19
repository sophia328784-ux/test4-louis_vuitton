package defpackage;

import androidx.arch.core.util.Function;
import androidx.camera.core.ImageCapture;
import com.dynatrace.agent.events.enrichment.sanitation.AttributeRetentionRule;
import com.dynatrace.agent.events.enrichment.sanitation.AttributeSanitizer;
import com.dynatrace.agent.events.enrichment.sanitation.JsonAttribute;
import com.dynatrace.agent.events.enrichment.sanitation.JsonAttributeSanitationKt;
import com.dynatrace.android.agent.util.Utility;
import com.kakao.sdk.common.util.KakaoJson;
import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.LookHandler;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.ph.database.ymk.makeup.a;
import com.perfectcorp.perfectlib.ph.database.ymk.makeup.b;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.Lists;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.Predicate;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t;
import com.squareup.moshi.JsonDataException;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.reflect.jvm.internal.KotlinReflectionInternalError;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import org.bouncycastle.operator.OperatorStreamException;
import org.json.JSONArray;
import org.json.JSONObject;
import retrofit2.Converter;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d20 implements Function, com.perfectcorp.thirdparty.io.reactivex.functions.Function, Predicate, AttributeRetentionRule, AttributeSanitizer, Converter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68402b;

    public /* synthetic */ d20(int i2) {
        this.f68402b = i2;
    }

    public static /* synthetic */ void b(int i2, int i3) {
        throw new IndexOutOfBoundsException("position=" + i2 + ((Object) ", limit=") + i3);
    }

    public static /* synthetic */ void c(Object obj, String str) {
        throw new KotlinReflectionInternalError(str + obj);
    }

    public static /* synthetic */ void d(Object obj, Throwable th) throws OperatorStreamException {
        throw new OperatorStreamException("exception in content signer: " + obj, th);
    }

    public static /* synthetic */ void g(String str) throws EOFException {
        throw new EOFException(str);
    }

    public static /* synthetic */ void h(String str, Object obj, Object obj2) {
        throw new NumberFormatException(str + obj + obj2);
    }

    public static /* synthetic */ void i(String str, Object obj, Object obj2, Object obj3) {
        throw new JsonDataException(str + obj + obj2 + obj3);
    }

    public static /* synthetic */ void j(String str, Object[] objArr) {
        throw new IllegalArgumentException(String.format(str, objArr));
    }

    public static /* synthetic */ void k(StringBuilder sb, Object obj, Object obj2) {
        sb.append(obj);
        sb.append(obj2);
        throw new IllegalStateException(sb.toString());
    }

    public static /* synthetic */ void l(StringBuilder sb, Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        sb.append(obj);
        sb.append(obj2);
        sb.append(obj3);
        sb.append(obj4);
        sb.append(obj5);
        throw new JsonDataException(sb.toString());
    }

    public static /* synthetic */ void m(String str, Object obj, Object obj2, Object obj3) {
        throw new KotlinReflectionInternalError(str + obj + obj2 + obj3);
    }

    public static /* synthetic */ void n(StringBuilder sb, Object obj, Object obj2) {
        sb.append(obj);
        sb.append(obj2);
        throw new JsonDataException(sb.toString());
    }

    public static /* synthetic */ void o(StringBuilder sb, Object obj, Object obj2) {
        sb.append(obj);
        sb.append(obj2);
        sb.append(')');
        throw new KotlinReflectionInternalError(sb.toString());
    }

    @Override // com.dynatrace.agent.events.enrichment.sanitation.AttributeRetentionRule
    public boolean a(JsonAttribute jsonAttribute) {
        switch (this.f68402b) {
            case 12:
                Regex regex = JsonAttributeSanitationKt.f26788a;
                return StringsKt.P(jsonAttribute.f26786a, "session_properties.", false);
            case 13:
                Regex regex2 = JsonAttributeSanitationKt.f26788a;
                return StringsKt.P(jsonAttribute.f26786a, "event_properties.", false);
            case 14:
                return JsonAttributeSanitationKt.f26789b.contains(jsonAttribute.f26786a);
            default:
                return JsonAttributeSanitationKt.f26790c.contains(jsonAttribute.f26786a);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.arch.core.util.Function
    /* JADX INFO: renamed from: apply */
    public Object mo0apply(Object obj) {
        Object[] objArr = 0;
        switch (this.f68402b) {
            case 1:
                ImageCapture.Defaults defaults = ImageCapture.B;
                return null;
            case 2:
            case 3:
            case 4:
            case 7:
            default:
                List list = (List) obj;
                Single singleA = LookHandler.a(Lists.c(list, new g7(21)));
                c8 c8Var = new c8(list, 4);
                singleA.getClass();
                return new t(singleA, c8Var);
            case 5:
                return g.f42660b;
            case 6:
                String str = (String) obj;
                b bVarA = a.a(YMKDatabase.b(), str);
                if (bVarA == null) {
                    Log.d("JewelryLookHandler", "Can't find metadata of " + str);
                }
                return Optional.b(bVarA);
            case 8:
                return (b) ((Optional) obj).c();
            case 9:
                RequestTask.Response response = (RequestTask.Response) obj;
                if (response.f39357a == 304) {
                    return Single.h(Collections.EMPTY_LIST);
                }
                com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.jewelryLook.a aVar = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.jewelryLook.a) response.f39358b;
                Objects.requireNonNull(aVar);
                return new m(Single.h(aVar.b()), new d20(11)).f(new r40(response, objArr == true ? 1 : 0));
            case 10:
                return Single.h(Boolean.valueOf(((RequestTask.Response) obj).f39357a != 304));
        }
    }

    @Override // com.dynatrace.agent.events.enrichment.sanitation.AttributeSanitizer
    public JsonAttribute e(JsonAttribute jsonAttribute) {
        switch (this.f68402b) {
            case 16:
                Regex regex = JsonAttributeSanitationKt.f26788a;
                Object obj = jsonAttribute.f26787b;
                if (!(obj instanceof JSONObject) && !(obj instanceof JSONArray)) {
                    return jsonAttribute;
                }
                Utility.b("sanitation: key '" + jsonAttribute.f26786a + "' is a nested object or array and thus dropped");
                return null;
            case 17:
                Regex regex2 = JsonAttributeSanitationKt.f26788a;
                String str = jsonAttribute.f26786a;
                if (str.length() <= 100) {
                    return jsonAttribute;
                }
                Utility.b("sanitation: dropped a key because it was too long; limit: 100; actual length: " + str.length() + "; key: '" + str + '\'');
                return null;
            default:
                Regex regex3 = JsonAttributeSanitationKt.f26788a;
                String str2 = jsonAttribute.f26786a;
                if (regex3.e(str2) != null) {
                    return jsonAttribute;
                }
                Utility.b("sanitation: dropped a key because it does not conform to expected pattern; key: ".concat(str2));
                return null;
        }
    }

    @Override // retrofit2.Converter
    public Object f(Object obj) {
        switch (this.f68402b) {
            case 27:
                Enum r4 = (Enum) obj;
                r4.getClass();
                String json = KakaoJson.f35885a.toJson(r4);
                json.getClass();
                return json.substring(1, json.length() - 1);
            case 28:
                Date date = (Date) obj;
                date.getClass();
                return String.valueOf(date.getTime() / 1000);
            default:
                Map map = (Map) obj;
                map.getClass();
                if (map.isEmpty()) {
                    return "";
                }
                ArrayList arrayList = new ArrayList(map.size());
                for (Map.Entry entry : map.entrySet()) {
                    arrayList.add(((String) entry.getKey()) + '=' + ((String) entry.getValue()));
                }
                Iterator it = arrayList.iterator();
                if (!it.hasNext()) {
                    mt.i("Empty collection can't be reduced.");
                    return null;
                }
                Object next = it.next();
                while (it.hasNext()) {
                    next = ((String) next) + '&' + ((String) it.next());
                }
                return (String) next;
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Predicate
    public boolean test(Object obj) {
        return ((Optional) obj).d();
    }
}
