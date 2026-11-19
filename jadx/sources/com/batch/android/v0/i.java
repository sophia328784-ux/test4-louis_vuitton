package com.batch.android.v0;

import android.content.Context;
import android.text.TextUtils;
import com.batch.android.Batch;
import com.batch.android.BatchEventAttributes;
import com.batch.android.BatchMigration;
import com.batch.android.e.t;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import com.batch.android.n.a0;
import com.batch.android.n.d0;
import com.batch.android.n.e0;
import com.batch.android.n.f0;
import com.batch.android.n.z;
import defpackage.gy0;
import defpackage.w21;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class i extends b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f24120b = "Profile";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k f24121a;

    private i(k kVar) {
        this.f24121a = kVar;
    }

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
    private void b(String str) {
        Object obj;
        String installationID = Batch.User.getInstallationID();
        if (installationID == null) {
            t.a(f24120b, "Cannot send identify event since Installation ID is null.");
            return;
        }
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        if (str != null) {
            obj = str;
        } else {
            try {
                obj = JSONObject.NULL;
            } catch (JSONException e2) {
                t.a(f24120b, "Sending identify event failed", e2);
                return;
            }
        }
        jSONObject2.put("custom_id", obj);
        jSONObject2.put("install_id", installationID);
        jSONObject.put("identifiers", jSONObject2);
        this.f24121a.a(com.batch.android.o.g.r, jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public void b(Context context) {
        com.batch.android.c1.e eVar = new com.batch.android.c1.e();
        eVar.c(f0.a().c(context));
        eVar.e(f0.a().d(context));
        com.batch.android.l1.c cVarA = a0.a(context);
        for (Map.Entry<String, com.batch.android.l1.d> entry : cVarA.getAttributes().entrySet()) {
            eVar.a(entry.getKey().substring(2), entry.getValue());
        }
        for (Map.Entry<String, Set<String>> entry2 : cVarA.c().entrySet()) {
            eVar.a(entry2.getKey(), new com.batch.android.l1.d(new ArrayList(entry2.getValue()), com.batch.android.l1.a.STRING_ARRAY));
        }
        a(eVar);
    }

    public static i i() {
        return new i(e0.a());
    }

    public void a(String str, BatchEventAttributes batchEventAttributes) {
        if (TextUtils.isEmpty(str) || !com.batch.android.o.d.a(str)) {
            t.a(f24120b, "Invalid event name ('" + str + "'). Not tracking event.");
            return;
        }
        JSONObject jSONObject = new JSONObject();
        if (batchEventAttributes != null) {
            List<String> listValidateEventAttributes = batchEventAttributes.validateEventAttributes();
            if (!listValidateEventAttributes.isEmpty()) {
                t.a(f24120b, "Failed to validate event attributes:\n\n" + String.join("\n", listValidateEventAttributes) + "\n\nNot tracking event.");
                return;
            }
            try {
                jSONObject = com.batch.android.o.c.a(batchEventAttributes);
            } catch (JSONException | ClassCastException e2) {
                t.a(f24120b, "Could not process BatchEventAttributes, refusing to track event. This is an internal error: please contact us.");
                t.c(f24120b, "BatchEventAttributes serialization did failed - Not tracking event.", e2);
                return;
            }
        }
        this.f24121a.a("E." + str.toUpperCase(Locale.US), jSONObject);
    }

    @Override // com.batch.android.v0.b
    public String g() {
        return "profile";
    }

    @Override // com.batch.android.v0.b
    public int h() {
        return 1;
    }

    public void a(com.batch.android.c1.e eVar) {
        try {
            JSONObject jSONObjectA = com.batch.android.c1.b.a(eVar);
            if (jSONObjectA.length() == 0) {
                t.c(f24120b, "Trying to send an empty profile data changed event, aborting.");
            } else {
                this.f24121a.a(com.batch.android.o.g.f23859h, jSONObjectA);
            }
        } catch (JSONException e2) {
            t.a(f24120b, "Sending profile data changed event failed.", e2);
        }
    }

    public void a(String str, String str2) {
        Context contextC = z.a().c();
        if (contextC == null) {
            t.a(f24120b, "Batch does not have a context yet. Aborting profile data migrations.");
        } else if (str == null) {
            z.a().a((com.batch.android.j1.c) new gy0(this, contextC, 13));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Context context, com.batch.android.j1.b bVar) {
        Integer numE = bVar.e();
        if (BatchMigration.isCustomIDMigrationDisabled(numE)) {
            t.c(f24120b, "Custom ID migration has been explicitly disabled.");
        } else {
            String strB = f0.a().b(context);
            if (strB != null) {
                t.c(f24120b, "Automatic custom id migration.");
                b(strB);
            }
        }
        if (BatchMigration.isCustomDataMigrationDisabled(numE)) {
            t.c(f24120b, "Custom Data migration has been explicitly disabled.");
        } else {
            t.c(f24120b, "Automatic custom data migration.");
            d0.a(context).submit(new w21(this, context, 29));
        }
    }

    public void a(String str) {
        if (com.batch.android.c1.a.b(str)) {
            t.a(f24120b, "identify called with invalid identifier (must be less than 1024 chars)");
            return;
        }
        if (com.batch.android.c1.a.a(str)) {
            t.a(f24120b, "identify called with a blocklisted identifier: `" + str + "`, Please ensure you have correctly implemented the API.");
            return;
        }
        Context contextC = z.a().c();
        if (contextC == null) {
            t.a(f24120b, "Batch does not have a context yet. Make sure Batch is started.");
            return;
        }
        if (!Objects.equals(Batch.User.getIdentifier(contextC), str)) {
            com.batch.android.n.f.a().b();
        }
        f0.a().a(contextC, str);
        b(str);
    }
}
