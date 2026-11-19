package com.batch.android.b;

import android.content.Context;
import com.batch.android.Batch;
import com.batch.android.BatchProfileAttributeEditor;
import com.batch.android.UserActionRunnable;
import com.batch.android.UserActionSource;
import com.batch.android.e.t;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class i implements UserActionRunnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f22962a = "UserDataBuiltinAction";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f22963b = "batch.user.tag";

    @Override // com.batch.android.UserActionRunnable
    public void performAction(Context context, String str, JSONObject jSONObject, UserActionSource userActionSource) {
        try {
            JSONObject jSONObject2 = new JSONObject(jSONObject);
            String string = jSONObject2.getString("c");
            if (string == null) {
                t.c(f22962a, "Could not perform tag edit action : collection's null");
                return;
            }
            if (string.length() == 0) {
                t.c(f22962a, "Could not perform tag edit action : collection name is empty");
                return;
            }
            String string2 = jSONObject2.getString("t");
            if (string2 == null) {
                t.c(f22962a, "Could not perform tag edit action : tag's null");
                return;
            }
            if (string2.length() == 0) {
                t.c(f22962a, "Could not perform tag edit action : tag name is empty");
                return;
            }
            String string3 = jSONObject2.getString("a");
            if (string3 == null) {
                t.c(f22962a, "Could not perform tag edit action : action's null");
                return;
            }
            String lowerCase = string3.toLowerCase(Locale.US);
            if (lowerCase.equals("add")) {
                t.c(f22962a, "Adding tag " + string2 + " to collection " + string);
                BatchProfileAttributeEditor batchProfileAttributeEditorEditor = Batch.Profile.editor();
                batchProfileAttributeEditorEditor.addToArray(string, string2);
                batchProfileAttributeEditorEditor.save();
                return;
            }
            if (!lowerCase.equals("remove")) {
                t.c(f22962a, "Could not perform tag edit action: Unknown action");
                return;
            }
            t.c(f22962a, "Removing tag " + string2 + " to collection " + string);
            BatchProfileAttributeEditor batchProfileAttributeEditorEditor2 = Batch.Profile.editor();
            batchProfileAttributeEditorEditor2.removeFromArray(string, string2);
            batchProfileAttributeEditorEditor2.save();
        } catch (JSONException e2) {
            t.c(f22962a, "Json object failure : " + e2.getLocalizedMessage());
        }
    }
}
