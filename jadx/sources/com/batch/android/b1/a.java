package com.batch.android.b1;

import com.batch.android.e.t;
import com.batch.android.json.JSONArray;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import com.networkbench.agent.impl.harvest.InitUrlConnection;
import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
public class a implements g<JSONObject> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f22975b = "InboxSyncPostDataProvider";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final JSONObject f22976a = new JSONObject();

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
    public a(Collection<com.batch.android.q.b> collection) {
        try {
            JSONArray jSONArray = new JSONArray();
            for (com.batch.android.q.b bVar : collection) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("notificationId", bVar.f23910a);
                jSONObject.put("read", !bVar.f23911b);
                jSONArray.put(jSONObject);
            }
            this.f22976a.put("notifications", jSONArray);
        } catch (JSONException e2) {
            t.a(f22975b, "Could not create post data", e2);
        }
    }

    @Override // com.batch.android.b1.g
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public JSONObject h() {
        return this.f22976a;
    }

    @Override // com.batch.android.b1.g
    public byte[] g() {
        return com.batch.android.e.b.a(this.f22976a.toString());
    }

    @Override // com.batch.android.b1.g
    public String i() {
        return InitUrlConnection.CONTENT_TYPE_VALUE;
    }

    @Override // com.batch.android.b1.g
    public boolean isEmpty() {
        return this.f22976a.keySet().isEmpty();
    }
}
