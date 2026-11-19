package ZjTIAZ;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.util.Base64;
import wcQZwr.GpYFMu;

/* JADX INFO: loaded from: classes.dex */
public class UxaBRS {
    public static String a(Application application) {
        String strA = CNATAC.a("#\u0014");
        try {
            Context baseContext = application.getBaseContext();
            if (baseContext == null) {
                GpYFMu.g("UxaBRS", CNATAC.a("GKfGR^CAeXZR\u0015B^ULY_M@^"), new Throwable[0]);
                return "";
            }
            SharedPreferences sharedPreferences = baseContext.getSharedPreferences(CNATAC.a("mJx\u001dRYNMpX\u001b^ZBZYG\u0004[^HHJBDL@AV"), 0);
            if (sharedPreferences.getString(CNATAC.a("gKfGR^CAeXZRjb^ULu\u007fE@K\\D@OS"), "").isEmpty()) {
                SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                editorEdit.putString(CNATAC.a("gKfGR^CAeXZRjb^ULu\u007fE@K\\D@OS"), Base64.encodeToString(String.valueOf(System.currentTimeMillis()).getBytes(), 0));
                editorEdit.commit();
            }
            String str = new String(Base64.decode(sharedPreferences.getString(CNATAC.a("gKfGR^CAeXZRjb^ULu\u007fE@K\\D@OS"), CNATAC.a("#\u0014")), 0));
            try {
                String strA2 = CNATAC.a("gKfGR^CAeXZRjb^ULY_M@^");
                SharedPreferences sharedPreferences2 = application.getSharedPreferences(CNATAC.a("mJx\u001dRYNMpX\u001b^ZBZYG\u0004[^HHJBDL@AV"), 0);
                if (sharedPreferences2.contains(strA2)) {
                    SharedPreferences.Editor editorEdit2 = sharedPreferences2.edit();
                    editorEdit2.remove(strA2);
                    editorEdit2.apply();
                }
                return str;
            } catch (Exception e2) {
                e = e2;
                strA = str;
                GpYFMu.g("UxaBRS", e.getMessage(), new Throwable[0]);
                return strA;
            }
        } catch (Exception e3) {
            e = e3;
        }
    }
}
