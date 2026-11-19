package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.os.Parcel;
import android.text.TextUtils;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInClient;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.ApiExceptionMapper;
import com.google.android.gms.common.api.internal.StatusPendingResult;
import com.google.android.gms.common.api.internal.zabq;
import com.google.android.gms.common.internal.PendingResultUtil;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.logging.Logger;
import org.json.JSONException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zbo extends com.google.android.gms.internal.p000authapi.zbb implements zbp {
    public zbo() {
        super("com.google.android.gms.auth.api.signin.internal.IRevocationService");
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
    @Override // com.google.android.gms.internal.p000authapi.zbb
    public final boolean E2(int i2, Parcel parcel, Parcel parcel2) {
        PendingResult pendingResult;
        PendingResult pendingResultZba;
        String strE;
        if (i2 != 1) {
            if (i2 != 2) {
                return false;
            }
            zbt zbtVar = (zbt) this;
            zbtVar.F2();
            zbn.a(zbtVar.f28847a).b();
            return true;
        }
        zbt zbtVar2 = (zbt) this;
        zbtVar2.F2();
        Context context = zbtVar2.f28847a;
        Storage storageA = Storage.a(context);
        GoogleSignInAccount googleSignInAccountB = storageA.b();
        GoogleSignInOptions googleSignInOptionsW1 = GoogleSignInOptions.l;
        if (googleSignInAccountB != null) {
            String strE2 = storageA.e("defaultGoogleSignInAccount");
            if (TextUtils.isEmpty(strE2) || (strE = storageA.e(Storage.f("googleSignInOptions", strE2))) == null) {
                googleSignInOptionsW1 = null;
            } else {
                try {
                    googleSignInOptionsW1 = GoogleSignInOptions.W1(strE);
                } catch (JSONException unused) {
                    googleSignInOptionsW1 = null;
                }
            }
        }
        Preconditions.h(googleSignInOptionsW1);
        Api api = Auth.f28695a;
        GoogleApi.Settings.Builder builder = new GoogleApi.Settings.Builder();
        builder.f28997a = new ApiExceptionMapper();
        GoogleSignInClient googleSignInClient = new GoogleSignInClient(context, api, googleSignInOptionsW1, builder.a());
        Context context2 = googleSignInClient.f28985a;
        zabq zabqVar = googleSignInClient.f28991i;
        if (googleSignInAccountB != null) {
            boolean z = googleSignInClient.j() == 3;
            Logger logger = zbm.f28844a;
            Object[] objArr = new Object[0];
            if (logger.f29284c <= 3) {
                logger.a("Revoking access", objArr);
            }
            String strE3 = Storage.a(context2).e("refreshToken");
            zbm.a(context2);
            if (z) {
                pendingResultZba = zbb.zba(strE3);
            } else {
                zbk zbkVar = new zbk(zabqVar);
                zabqVar.b(zbkVar);
                pendingResultZba = zbkVar;
            }
            PendingResultUtil.a(pendingResultZba);
        } else {
            boolean z2 = googleSignInClient.j() == 3;
            Logger logger2 = zbm.f28844a;
            Object[] objArr2 = new Object[0];
            if (logger2.f29284c <= 3) {
                logger2.a("Signing out", objArr2);
            }
            zbm.a(context2);
            if (z2) {
                Status status = Status.f29004f;
                Preconditions.i(status, "Result must not be null");
                StatusPendingResult statusPendingResult = new StatusPendingResult(zabqVar);
                statusPendingResult.f(status);
                pendingResult = statusPendingResult;
            } else {
                zbi zbiVar = new zbi(zabqVar);
                zabqVar.b(zbiVar);
                pendingResult = zbiVar;
            }
            PendingResultUtil.a(pendingResult);
        }
        return true;
    }
}
